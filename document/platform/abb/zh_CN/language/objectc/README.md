# 使用 Objective-C 开发 ABB SDK 应用

公共入口是 [observation.h](../../../../../../include/platform/abb/objectc/observation.h)，观察函数为 `abb_read_speed / abb_read_io / abb_wait_system_state`。三个独立应用分别是 [read_speed](../../../../../../example/platform/abb/objectc/read_speed)、[read_io](../../../../../../example/platform/abb/objectc/read_io) 和 [system_state](../../../../../../example/platform/abb/objectc/system_state)。每个目录均包含独立源码和带英文说明的 `xmake.lua`。

## 编译与产物契约

安装 Xmake 及包含锁定共享编译器或解释器的 SDK 分发包，然后进入示例目录执行。C 系列使用 LLVM 23，其余语言使用已声明的真实共享前端：

```sh
cd sdk/example/platform/abb/objectc/read_speed
xmake
```

实际产物是 `build/abb-objectc-read_speed.wasm`。另外两个目录分别生成 `build/abb-objectc-read_io.wasm` 和 `build/abb-objectc-system_state.wasm`。共享适配器在构建时恢复锁定的编译依赖；尚未具备合格实现的语言会报告缺失依赖，不能替换成其他语言。

构建只引用已安装 SDK 的实际路径，不依赖 origin、仓库测试、原生 ABB 源码检出或在线依赖解析。产物是导入 `uwvm_ros2_v1` 的 wasm32-wasip1 命令，需要启用 ROS 的 uwvm2 主机、独立配置的原生 Gateway/类型注册表，以及针对当前实例的准确别名权限。它不是原生 ELF 程序。

## 语言所有权与数据表示

main.m 必须通过真正的 Objective-C 前端编译。公共头文件拒绝非 Objective-C 编译，ABBObservationLayout 使用编译器的 @encode 表达式。此路径使用可移植的 C 兼容 ABB API，不拥有 Objective-C 对象，也不提供 Foundation、NSObject、ARC、动态消息机制或 Objective-C 运行时。ABBObservation 是完整 C 观察事实的别名，具有相同的内联记录、检查式解码、独立的 primary/cleanup 状态及调用者拥有的存储。需要 Objective-C 对象的应用必须另行提供受支持的 WASI 运行时。

C/C++ 下完整的 ROS1、ROS2 模式族目录仍然必需：它们分别提供原始完整记录、编解码器、服务和 Action，并保留各自的模式及原生身份域。包含类型不会创建 ROS 实体或授予操作权限。一个翻译单元不应混合不兼容的同名模式族。

## 三个示例的逐项解读

| 应用 | 程序名之后的参数 | 原生接口 | 流程及完整输出 |
| --- | --- | --- | --- |
| `read_speed` | `ALIAS` | `abb_robot_msgs/srv/GetSpeedRatio` | 发送原始空请求，完整保留 speed_ratio、result_code、message。RC_SUCCESS 为 1，速度倍率使用 [0,100] 范围内的整数百分比，不设置倍率。 |
| `read_io` | `ALIAS SIGNAL` | `abb_robot_msgs/srv/GetIOSignal` | 获取能力前验证非空严格 UTF-8 信号名，最多 512 字节；完整保留 value、result_code、message，不写 IO。 |
| `system_state` | `ALIAS` | `abb_robot_msgs/msg/SystemState` | 打开并订阅一次，同一个所有者最多轮询 250 次；空闲后等待 20 ms，首个完整样本解码后关闭。保留 Header、三个状态标志及全部 RAPID 任务和机械单元。空队列 11 保留为错误，不伪造默认状态。 |

别名必须已绑定到准确的服务或主题。例如速度服务可使用 abb-speed，IO 服务可使用 abb-io，状态订阅可使用 abb-state；这些只是命名示例，SDK 不会自动创建授权。di_ready 等 IO 名称必须真实存在于所选控制器配置中。所有新命令均使用标准 WASI argv，包括 AssemblyScript。

## 状态与输出处理

每个命令输出一行 JSON。primary 是首个操作或应用错误；cleanup 独立保留，cleanup_present 区分实际关闭与从未获取所有者。rpc_present、rpc_status、required_present、required 保留真正的传输及长度观察。只有 response_present 为真，wire_hex 才是完整有效的规范响应。它使用 SDK 有界小端格式，不是 ROS CDR，也不是原生 C 结构体内存转储。

控制器拒绝映射为应用状态 5，同时保留整个有效响应。权限拒绝 13、空队列 11、输入/编码错误 22、容量错误 90、不支持 95、断连 107、超时 110 保留原始数值含义。容量错误未写长度槽时，不推断所需大小。超时和容量错误都不触发重试。进程退出优先保留 primary，其次 cleanup，再其次编码或 stdout 错误；大于 125 的退出码截为 125。

## ROS 接入与验证

先配置独立的 ABB ROS 驱动、原生类型注册表和 Gateway，再准入此命令。类型、规范编解码身份、资源、操作、完整 QoS、配额和截止时间必须准确匹配。[平台指南](../../README.md) 链接了所选上游驱动边界和当前验证记录。存储生命周期与同步执行规则以公共 API 的英文 Doxygen 注释为准。

Linux 验收目录为 `~/Documents/uwvm2-ros-test`，必须处于配置好的 64 GiB、禁用 swap 的 cgroup。完整头文件语法检查、确定性 ABI 测试环境中的真实 Wasm 执行、通过 Wasmtime 测试适配器的真实原生 ROS 通信、生产 uwvm2 Gateway 测试、实机测试属于不同证据类别。只有当前报告真实记录的类别才能计为完成。这三个只读观察示例尚不等于 RWS 凭据管理、EGM 控制、RAPID 编排或上游驱动完整教程套件。
## Xmake 配置与运行

独立示例通过 UWVM_ROS_SDK_ROOT 或向上查找已安装 SDK 来定位公共构建入口，源码只使用公共模块名称。`set_language` 选择真正的源语言，`set_ros_platform` 选择 ABB 适配器。平台与架构是不同参数：`wasm-wasip1` 配合 `wasm32` 得到编译器目标 `wasm32-wasip1`，不要把完整 triple 填入 `set_arch`。Linux 或 aarch64 是运行主机的架构，不是 guest 的架构。尚未完成该语言验收的目标组合必须明确报错，不能悄悄改成另一个目标。

```lua
-- Include the SDK entry using the SDK root discovered by the example.
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
-- Keep deployment independent from the source compiler installation.
set_policy("run.autobuild", false)
target("abb-objectc-read_speed")
    set_language("objectc")
    set_ros_platform("abb")
    set_ros2_version("jazzy")
    set_abb_version("complete")
    set_ros_scenario("read_speed")
    set_plat("wasm-wasip1")
    set_arch("wasm32")
    add_files("main.m")
target_end()
```

构建阶段无需安装或启动 ROS、Gateway 或 uwvm2-ros。只有 `xmake run` 才读取部署文件并启动真正的 uwvm2-ros 和原生 Gateway。部署文件使用 `uwvm-native-ros-run-v2` 格式，提供 `runtime`、`gateway`、`backend`、`distribution` 和原生 `connection`。每个场景必须声明 `arguments`、`main_module`、`preloads` 及完整 `modules` 权限映射。每个模块明确选择 `ros_enabled`、`grants`、`wasi_grants`；每个能力保留别名、操作、资源、原始原生类型身份和配额。IO 参数包含别名与实际信号名，另外两个观察命令只接收别名。完整配置见[统一部署手册](../../../../../native-run.zh_CN.md)及 C/C++ 的 `read_speed/deployment.template.json`；类型身份占位符必须按实际编译的注册表填写。构建选项不会隐式授权。

```sh
xmake f -c -p wasm-wasip1 -a wasm32 --ros-run-config=/absolute/abb-deployment.json
xmake
xmake run
```

构建与运行分离时，在开发主机先执行 `xmake`，部署主机安装 uwvm2-ros、原生 ROS/Gateway 及进程启动器所需 Python 3，并携带已生成的 `.wasm`。根项目中的 `run.autobuild=false` 防止运行阶段重建源码。运行日志和执行记录写入 `.uwvm-ros/native-ros/run`，`build` 只保留 `.wasm`。部署文件、编译器中间文件和记录均不属于 guest 的分发产物。

