# C++ 原生 ROS 1 应用开发手册

本包把真实 `main.cpp` 编译为一个 WebAssembly WASI Preview 1 命令。示例使用
`C++20`，平台 `wasm-wasip1`，架构 `wasm32`，编译器三元组严格为
`wasm32-wasip1`。来宾不启用线程和 C++ 异常。原生 ROS 1 Gateway 是部署基础设施，
来宾不会链接原生 ROS 库。编译成功和通过原生通信验收是两项独立结论。

## 公开入口与完整 API

公开入口是 `<ros1/cpp/roswasm.hpp>`。它显式选择 `uwvm_ros1_v1`，不会推断另一代 ROS。
C 层 `<ros1/c/abi.h>` 提供所有数值 import 和指针/长度封装；
`<ros1/c/roswasm.h>` 提供 `roswasmc_context`、能力 owner 与资源分发。
先用 `roswasmc_ros1_backend()` 初始化稳定 context，再用
`roswasmc_capability_init()` 初始化 owner，之后 `roswasmc_open()` 才尝试获取别名。
context 与 dispatch 必须比所有借用它们的 owner 活得更久。

C++ 的 `uwvm_ros1::freestanding_capability` 为不可复制的独占 owner，构造时不获取权限。
`open()`、`publish()`、`subscribe()`、`poll()` 与 `service_call()` 分别进行一次明确操作。
现代标准下 move 转移所有权并清空源；需要读取清理错误时显式 `close()`。
析构只对仍有效的 owner 尝试关闭一次且丢弃清理状态，不能替代示例退出前的检查。
完整 typed C++ 库位于 `<ros/cpp/roswasm/roswasmcpp.hpp>`，需要另外匹配的来宾 C++
标准库；本手册的无分配 freestanding 路线不代表该 hosted 标准库闭包已经验收。

AssemblyScript 从 `ros1/as/index` 导入 `NativeApi`、`Capability`、
`Publisher`、`Subscription`、`Client`、`StringCodec`、`Status`。
`Capability.open("sample")` 返回数值状态，成功后才能建立依赖资源。
`Publisher<string>` 把完整托管字符串编码为 canonical bytes；`Subscription<string>`
仅在调用者执行 `spinOnce()`、完成字节校验后才调用来宾 handler，绝不会把托管对象或函数指针
交给原生 ROS。`Client.trigger()` 只调用一次服务，`response(reply)` 保留 Bool 和 String
的完整内容，应分别检查 `valid`、`success`、`message`。
AssemblyScript 增量 GC 运行时真实链接入同一个 Wasm，Node.js 仅参与构建，部署不需要 Node.js。

各后端还提供本地 Node/Session/Executor、事件 observer、服务/动作、参数、图、TF、时钟及后端
支持的 lifecycle API。它们仍要求每种操作自己的别名；创建本地对象不等于创建原生节点、原生
rcl context、线程或权限。C 解码得到的 `roswasmc_string` 是借用视图，`.size` 为字节数，
`.data` 不保证 NUL 结尾；覆盖接收缓冲区后不能继续使用该视图。

## 每个示例的独立构建

每个目录都有注释完整的 `xmake.lua`，使用同一公开 DSL：

```lua
set_language("cpp")
set_ros_platform("ros1")
set_plat("wasm-wasip1")
set_arch("wasm32")
add_files("main.cpp")
```

`UWVM_ROS_SDK_ROOT` 指定可重定位 SDK 根目录；未设置时逐层向父目录查找，不在示例源文件、配置或
manifest 中编码目录深度。`UWVM_ROS_CC`、`UWVM_ROS_CXX`、`UWVM_ROS_ASC` 分别选择真正
安装的源语言编译器，`UWVM_ROS_PYTHON` 可指定构建/部署编排 Python。构建过程离线，不下载
工具链，不把其他语言替换成 C，也不生成原生来宾可执行文件。执行 `xmake` 后，`build/` 中
唯一可分发应用是 `.wasm`；构建回执和运行日志位于独立 `.xmake/` 目录。

根 DSL 通过 `tools/platform/ros/provider.lua` 的 `configure(target)`、`build(target)`、
`run(target)` 调度。目标元数据为 `ros.sdk.language`、`ros.sdk.platform`、`ros.sdk.root`、
`ros.sdk.triple`。当前真实实现 C/C++/AssemblyScript 的 wasm32-wasip1 路线。其他语言、
wasm64、线程和异常闭包必须独立实现与验收，不允许用参数改名声称支持。

## 三个具有实际通信行为的示例

| 目录 | 原生通信 | 校验行为 |
| --- | --- | --- |
| `publish_string` | `std_msgs/String` 发布 | 显式发送两个 `hello native ROS` 样本，原生订阅者必须观察完整文本 |
| `subscribe_string` | `std_msgs/String` 订阅 | 最多 500 次轮询；仅空队列状态 11 后等待 20 ms，完整解码并比较文本 |
| `call_trigger` | `std_srvs/Trigger` 客户端 | 空请求只发送一次；完整响应必须为 true 和 `native ready` |

所有示例显式请求别名 `sample`。两次发布展示中间件异步发现；第一次失败立即终止，不能把
业务失败当成重试许可。订阅等待预算约十秒，另加 host 调用开销。一般 String 允许合法空值，
但此教程要求固定非空样本。Trigger 主操作或验证失败优先于之后的清理失败。成功 stdout
回执只在 owner 显式清理成功后输出，WASI `proc_exit` 不负责 C++ 栈展开。

## 原生部署与配置

先加载所选原生 ROS 安装环境，将 `UWVM_ROS_RUN_CONFIG` 指向可信部署 JSON，再执行
`xmake run`。部署格式为 `uwvm-native-ros-run-v2`，明确填写匹配的 `backend`、
`distribution`、实际 `runtime` 和 `gateway` 路径以及原生 `connection`。每个场景声明
`arguments`、`main_module`、有序 `preloads`，并用 `modules` 为每个已加载模块提供策略。
每个模块明确填写布尔 `ros_enabled`、`grants` 和 `wasi_grants`；每项 grant 完整填写 alias、
operation、resource、type、identity 和 limits。空 grants 拒绝全部 ROS 操作；默认 WASI
仍保留基本标准流权限。每个启用 ROS 的模块使用独立 Gateway 和 Single 绑定，不产生全局
ROS grant，不根据场景、厂商或应用参数推断授权。本组教程的应用参数为空。必须从所选原生
ROS 安装读取准确类型身份，并在其他图运行前审查路径、资源、QoS 与配额。`call_boundary`
默认 `same-module`；由主模块调用其导出接口的 ROS 库需要显式 `module-exports`，且运行时
必须实现对应 `--ros1/2-single-call-boundary` 选项；该选项本身不授予额外操作。

launcher 先暂停真实 worker，把 Gateway policy 绑定到它准确的 UID/PID，再启动真实 Gateway，
最后恢复同一个 worker 并 exec uwvm2。它不实现 Wasm import，也不解释来宾源语言。
正常或异常结束都回收自己创建的进程，保留应用 hash、runtime/Gateway hash、完整 argv、
状态与原生日志。部署主机只需 `.wasm`、uwvm2、Gateway 和原生 ROS，不需要来宾编译器及源码。

ROS 1 显式选择数值 ROS_MASTER_URI、advertise-host 与 TCPROS。原生 Gateway 源码位于 sdk/src/platform/ros1/native_gateway，需匹配真实 catkin SDK。CMake 的 C++17 特性/链接探针只证明源码准入，不代表原生执行。服务传输使用自己拥有的非阻塞 TCPROS socket 和有限 deadline，避免无限期同步 ServiceClient。

旧原生 ROS 用户空间与 runtime 所需 ELF 库版本不同时，可以显式提供完整匹配的
`runtime_loader` 和 `runtime_library_path`。该闭包只供 runtime 进程使用，实际 runtime
二进制仍被明确命名和计算 hash。原生 Gateway 保持其原始 ROS 用户空间；这不会更换 Wasm
引擎、ROS 编码或来宾解释器。不能只复制一个不匹配 libc 的 libstdc++ 就声称兼容。

## canonical 字节与错误处理

ROS import 的 memory index 为 i32，offset、length、capacity、handle 为 i64，即使 C 指针
只有 32 位。handle 和输出 length slot 都是 8 字节小端。String 为四字节小端 UTF-8 字节数
加原文；Trigger 响应为单字节规范 Bool 加 canonical String。禁止把原生结构体 padding、
DDS 封装或 TCPROS 帧直接当成来宾 canonical bytes。

| 状态 | 意义和处理要求 |
| --- | --- |
| 0 | 所选操作成功；只读取该操作约定已经初始化的输出 |
| 2 | 缺少资源/import namespace，检查实际安装 |
| 9 | 无效、过期、已退役、外来或错误后端 handle，不能伪造复用 |
| 11 | 空队列或配额拒绝；仅明确的空队列轮询可等待后再次调用 |
| 13 | 缺少或不匹配的授权，构建参数不能授予 ROS 权限 |
| 17 | 合同或重入冲突，应串行访问同一 owner |
| 22 | 参数、范围、canonical bytes、完整值或教程预期非法 |
| 90 | 容量/配额不足；仅 length slot 覆盖 UINT64_MAX 哨兵后才可读取所需长度 |
| 95 | 未实现的操作或工具链闭包，不能自动选择另一后端 |
| 107 | 原生/IPC 断连，外部效果可能已经发生 |
| 110 | 有限 deadline 到期，已经接纳的外部效果可能继续存在 |
| 125 | 别名被撤销，复制 handle 不能恢复权限 |
| 5 | 示例 IO 失败，或 RPC 成功但完整 Trigger 响应明确拒绝 |

不要重放结果不确定的服务调用、发布、取消或响应。legacy event poll 可能先消费事件再返回
容量 90；若需固定事件并查询长度，应使用单独文档中的版本化 observer API。关闭/撤销在
原生清理通知返回前就退役本地 owner，错误不能恢复其有效性。ROS 模拟时钟可以合法为零，
与 WASI 单调调度时钟完全独立。

## 可审计验收边界

`build_matrix.py` 一次仅运行一个编译器作业，分别记录真实源、编译命令和 Wasm hash。
`native_matrix.py` 要求：本 `C++` 实际 Wasm → uwvm2 → 原生 ROS 1 Gateway → 原始
ROS 通信 → 独立原生 peer，并校验完整结果与原生副作用。peer 没有 Wasm 引擎，不能模拟
来宾 import。`share/platform/ros/native_sdk/acceptance.json` 记录当前实际数量、工具与
runtime/source hash；缺失证据必须标记 pending。

三个示例通过并不证明其他发行版/架构、hosted C++ 标准库、自定义消息/动作、memory64、
线程/异常或真实机器人已经通过。部署到机器人需要该平台自己的独立验收。
