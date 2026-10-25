# 原生 ROS 运行与模块权限

`xmake` 负责生成应用 Wasm。`xmake run` 另需安装 uwvm2-ros，并由操作员提供
经过审查的部署 JSON。任一已加载模块启用 ROS 时，还必须安装匹配的原生网关
和所选 ROS 环境。使用
`set_ros_run_config`、`--ros-run-config` 或 `UWVM_ROS_RUN_CONFIG` 选择该文件。
构建操作不会授予 ROS 权限或额外 WASI 权限。

## 公共构建配置

```lua
includes(path.join(os.getenv("UWVM_ROS_SDK_ROOT"), "tools/xmake/ros.lua"))
target("abb_reader")
    set_kind("binary")
    set_language("cpp")
    set_ros_platform("abb")
    set_abb_version("complete")
    set_ros2_version("jazzy")
    set_ros_scenario("read_speed")
    set_arch(get_config("arch") or "wasm32")
    set_plat("wasm-wasip1")
    add_files("main.cpp")
target_end()
```

ROS1 使用 `set_ros1_version`。Agibot 另提供 `set_agibot_version` 和
`set_agibot_variant`，组合结果必须与原始源码 profile 一致。版本选择必须通过
平台描述校验；接口目录版本不等于控制器固件兼容性。公共 SDK 不保留无 `set_`
前缀的旧版本入口，也不保留另一个场景设置别名。

## 部署协议

`uwvm-native-ros-run-v2` 必须包含 `runtime`、`backend`、`distribution`、
`connection` 和 `examples`。主模块或任一预加载模块设置 `ros_enabled: true`
时，必须提供 `gateway`。运行时和网关均为明确的可执行文件
路径，相对路径以 JSON 所在目录为基准。可选的 `runtime_loader` 与
`runtime_library_path` 必须成对提供，用于选择原生 ELF loader 及其库目录。
启用原生 ROS 时，运行时和网关必须编入相互匹配的原生类型注册表。

当所有已加载模块均设置 `ros_enabled: false` 时，可以省略 `gateway`。
启动器只启动 VM，不解析未使用的网关路径，也不检查 shell 的 `ROS_DISTRO`。
仍须明确填写 `backend`、`distribution` 和 `connection`，以标识所选构建及策略
格式；这同样适用于仅处理数据编解码的程序。WASI 权限继续显式声明，ROS grants
必须为空。只要任一预加载模块启用 ROS，就恢复网关要求及已加载发行版的检查。

`examples` 中每个场景必须具有下列四个字段：

| 字段 | 含义 |
| --- | --- |
| `arguments` | 完整应用参数数组，包括权限别名、IO 信号名等。空字符串及类似选项的字符串仍按应用参数保留。 |
| `main_module` | 主模块名称，用于绑定运行时 Single 策略。 |
| `preloads` | 有序数组，每项明确填写 `module`、`path`、`attribute`（`none` 或 `copy`），加载真实编译的 `.wasm` 库。 |
| `modules` | 每个实际加载模块的策略，包含主模块。缺失、额外或重复身份均报错。 |

每个模块显式提供布尔 `ros_enabled`、`grants` 数组和 `wasi_grants` 数组。
`grants: []` 不授权任何 ROS 操作，禁用 ROS 的模块也不能声明 grant。每项 grant
完整填写 `alias`、`operation`、`resource`、`type`、`identity`、`limits`。
多项 grant 可以描述服务配对、动作、事件观察等能力，不再由启动器限制场景名称。
真正可用的类型、操作、配对关系、限额及 QoS 仍由生产运行时和网关校验。

ROS1 `identity` 必须来自真实生成的 native MD5，ROS2 必须来自真实生成的
RIHS01。规范 wire codec 的指纹填写在 `adapter-codec-identity` 中，不能冒充
native identity。完整消息、服务和动作 adapter 必须进入运行时注册表及原生
网关；仅安装 guest 头文件并不完成原生 adapter 安装。

模块可以用完整 `connection` 对象覆盖公共连接字段，以选择不同 ROS 节点身份。
启动器为每个启用 ROS 的模块创建独立网关，逐个绑定其精确授权、独立 socket 和
真实停止态 worker 的 UID/PID，不合并其他模块的权限。可选 `worker_limits` 和
`gateway_limits` 只能覆盖已有的本地超时、审计和会话限额。未知字段和重复 JSON
键会报错。

## Preload：io、algorithm 与 ros_comm

完整可编辑结构位于 `share/platform/ros/native-preload.template.json`。
必须根据实际编译的库替换路径、操作和原生类型标识；应用的 import 名称及函数
签名必须与库 export 一致。部署 JSON 不能把普通命令程序变成动态库。

| 模块 | 额外 WASI 权限 | ROS 策略 |
| --- | --- | --- |
| `main` | 无 | 禁用；调用经过审查的库导出。 |
| `io` | 模板显式授予 `monotonic-clock` | 禁用。 |
| `algorithm` | 无；保留默认 WASI 基本标准流 | 禁用。 |
| `ros_comm` | 无 | 仅手工列出的 ROS 操作，并显式允许导出委托。 |

ROS 默认拒绝具有跨模块调用祖先的导入。经过审查的通信库可以显式设置
`call_boundary: "module-exports"`，对应
`--ros2-single-call-boundary ros_comm module-exports`，ROS1 使用相应前缀。
省略该字段时仍为 `same-module`。此设置只允许绑定明确名称的 Single 模块，
不会把 ROS 权限转移给调用者。`algorithm` 中直接调用 ROS 导入仍应被拒绝；
句柄仍属于原模块及其运行代际，撤销和永久退休检查继续生效。

导出委托允许其他模块调用这个通信库公开的操作。因此通信库必须验证参数，只
公开预期操作。它不是调用者白名单。如果某模块不应代表其他模块执行 ROS 操作，
应保留 `same-module`。

`runtime_features` 使用运行时注册的 Core 功能名称，在加载 Preload 前启用。
`wasm64-wasip1` 启用 memory64 和 table64，与 LLVM 23 目标依赖一致。这是 Uwvm 的
Preview 1 扩展 ABI；解析特性不会授予原生主机权限。所有模块均禁用宿主环境继承，不提供目录或 socket preopen；
默认标准流访问不能描述成“完全没有任何权限”。

## ABB read_speed

C、C++ 的 `read_speed` 目录内提供 `deployment.template.json`。将其中的类型
标识占位符替换为独立导出的 `abb_robot_msgs/srv/GetSpeedRatio` RIHS01，并选择
匹配网关。`arguments: ["sample"]` 是实际权限别名。`read_io` 需要别名和信号名，
并使用它自身的原始类型、codec 和限额，不能复用 read_speed 的类型声明。

加载 ROS 环境后先执行 `xmake`，再将 `UWVM_ROS_RUN_CONFIG` 设置为已审查 JSON
的绝对路径，执行 `xmake run`。启动器不启动实体控制器或验证 peer。完整日志、
策略、产物哈希和进程结果写入 `.uwvm-ros/native-ros/run`，应用产物目录仅保留
Wasm 文件。

## 验收范围

当前源码迁移和部署实现可供审查。厂商正向通信、多语言动静态库以及 QEMU
AArch64 运行必须分别取得真实测试记录。尤其是尚未包含新 call-boundary 实现的
运行时，无法运行该显式委托示例。公共审查索引保留这些待验收项。

## 显式网关启动参数

模块策略可声明可选的 `gateway_arguments` 数组，最多包含 16 个 UTF-8
字符串，编码后的总长度上限为 8192 字节，默认值为空数组。启动器将数组
逐项原样放在生成的网关策略路径之后，不通过 shell；空字符串与空格均
保留。NUL、非法 UTF-8，以及 `ros_enabled: false` 模块的非空启动参数，
都会在创建进程前被拒绝。

当网关构建包含原始 owned RMW 服务配置支持时，可在 ROS 模块中手动设置
`"gateway_arguments": ["--owned-rmw-service-profile", "/opt/uwvm-ros/profiles/services.json"]`。
配置文件应使用该网关可读取的绝对路径。各模块独立保有参数数组、策略、
socket、worker 绑定和授权；启动参数不会增加 ROS 权限或改写用户策略。
所选网关必须实现对应选项；不支持的参数仍按启动失败处理并保留日志。
