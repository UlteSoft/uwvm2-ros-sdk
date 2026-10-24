# ros：c_ffi_bridge API 与示例

本路线使用 **LLVM 23.1.4 explicit C FFI**。本文说明候选源码和明确的 API 契约。源码存在、历史日志或描述清单均不代表本次编译、原生 ROS 或 AArch64 运行验收完成。

## 安装和构建

安装 Xmake 2.9.8 或更高版本和匹配的完整 SDK。示例通过结构化祖先目录搜索 SDK，必要时设置主变量 `UWVM_ROS_SDK_ROOT`。C 系公共根目录为 `include`、`include/platform`；其余语言由公共适配器传递全局模块根。编译不依赖已安装的原生 ROS 或 uwvm2-ros。依赖包和每个内容文件必须通过 SHA-256 校验，不允许按厂商私自下载不同的解释器或使用未固定身份的编译器。

每个示例都有独立的 `xmake.lua`，在其目录运行 `xmake`。真实前端、字节码 AOT 或解释器必须生成唯一 `build/*.wasm`。应用源码、数据和所需真实语言引擎在需要时打包进入该文件；中间文件和收据位于缓存或 `.uwvm-ros`，部署不需要源码、数据旁车或原生伴随可执行文件。

## 配置选择

`set_wasm_entry("command")` 是默认入口方式；普通 C/C++ `main` 应用链接当前选择的真实标准库与命令启动代码。自带完整 `_start` 的 C 系应用显式填写 `set_wasm_entry("freestanding")`，原生示例已逐个声明。入口方式由所有 provider 共用的编译层处理；其他真实语言引擎必须声明支持某个非默认入口后才能编译，不静默忽略明确请求。

`set_language` 选择真实语言前端，`c_ffi_bridge` 是明确的 C FFI 路线。`set_ros_platform("ros")` 必须结合 `set_ros1_version` 或 `set_ros2_version`；固定 `ros1`、`ros2` 不允许与后端选择冲突。ROS1 明确声明 `noetic`；ROS2 清单声明 `humble` 和 `jazzy`，声明不构成已经安装或已经验收的证据。WASI 平台没有 ROS distribution。`set_ros_scenario` 选择明确场景。`set_ros_config` 仅接受当前 provider schema 声明的 version、model、transport、ABI、feature 等选项；未知字段或值立即报错，ROS 自身没有厂商配置项。

`set_arch("wasm32")` 与 `set_plat("wasm-wasip1")` 选择 `wasm32-wasip1`，明确的 `wasm64` 选择 `wasm64-wasip1`。memory64 使用 Uwvm 的 Preview 1 扩展和带后缀的 WASI 导入名，并非上游 WASI 标准。Preview、线程、异常处理和 Core feature 单独校验，不把未知目标静默降为 wasm32。`set_wasm_exceptions("eh")` 要求匹配的真实库和运行时指令特性；运行权限仍由用户手动填写。当前示例建议的异常 profile 为 `noeh`。

## API、完整字段和生命周期

公共导入示意：

```text
#include <ros/c_ffi_bridge/backend.h>
```

保留的完整旧接口包含 capability/session、节点、发布和订阅、同步服务与显式异步完成、动作 goal/feedback/result 和取消角色、调用者驱动的 executor、参数及参数事件、图查询、时钟、坐标变换、生命周期、日志与有界规范编码器；每个后端继续遵守原始接口是否存在的事实。`share/platform/ros/abi-v1.json` 给出精确导入签名；C FFI 私有数字索引取自独立 numeric inventory，不是运行时导入 ID。

ROS 导入的 offset、length、handle 始终保留完整 u64 位模式。handle 仅属于当前实例及后端，不是指针或可转移权限。调用期间保持借用缓冲区存活和稳定；借用的解码视图不能超出后备存储生命周期，明确复制的语言值才拥有独立存储。相同可变 owner 应串行访问。close 在唯一一次原生清理尝试前撤销本地所有权；清理失败不允许自动重试。

String 是 u32 UTF-8 字节数及完整文本，不含终止符。原生示例在 256 字节帧中接收至多 252 字节 String data，Trigger 的 Bool 加计数字符串至多接收 251 字节 message。这些是明确的示例准入额度，不改变上游不定长 ROS 定义。畸形 UTF-8、NUL、非规范 Bool、尾随字节、错误长度必须拒绝；空字符串和作为实际数据的开头 BOM 必须保留。固定数组默认值、字段顺序、符号位和单位不得改变，不同实例的可变默认数组不能共享。

真实 API 源文件：

- `include/platform/ros/c_ffi_bridge/backend.h`
- `include/platform/ros/c_ffi_bridge/roswasm_c_ffi.h`

## 示例流程

原生 `publish_string` 显式发布两个完整样本，中间等待一个发现周期，失败时不重放。`subscribe_string` 在一个持有的订阅上有限轮询，仅错误 11 允许继续等待。`call_trigger` 仅发送一次完整空请求，保留原始 success 和完整 message；false 是原生业务拒绝，不可伪装为成功。每个正常取得的 owner 显式 close 一次，传输状态、长度槽是否写入、完整响应是否存在、清理结果分别记录。WASI 的 C 系示例分别执行参数精确求和、真实输入字节校验和和完整流复制；其余 WASI 语言示例仍须补齐并完成公共适配器集成，不记为已完成。

- `call_trigger`: `example/platform/ros/c_ffi_bridge/call_trigger`.
- `call_trigger_memory64`: `example/platform/ros/c_ffi_bridge/call_trigger_memory64`.
- `publish_string`: `example/platform/ros/c_ffi_bridge/publish_string`.
- `publish_string_memory64`: `example/platform/ros/c_ffi_bridge/publish_string_memory64`.
- `ros1_call_trigger`: `example/platform/ros/c_ffi_bridge/ros1/call_trigger`.
- `ros1_call_trigger_memory64`: `example/platform/ros/c_ffi_bridge/ros1/call_trigger_memory64`.
- `ros1_publish_string`: `example/platform/ros/c_ffi_bridge/ros1/publish_string`.
- `ros1_publish_string_memory64`: `example/platform/ros/c_ffi_bridge/ros1/publish_string_memory64`.
- `ros1_subscribe_string`: `example/platform/ros/c_ffi_bridge/ros1/subscribe_string`.
- `ros1_subscribe_string_memory64`: `example/platform/ros/c_ffi_bridge/ros1/subscribe_string_memory64`.
- `subscribe_string`: `example/platform/ros/c_ffi_bridge/subscribe_string`.
- `subscribe_string_memory64`: `example/platform/ros/c_ffi_bridge/subscribe_string_memory64`.

memory64 变体使用独立声明和原来的操作场景。各目录仅使用公共导入和全局根，不依赖父目录深度。

## 错误、权限和部署

错误码：0 成功；2 缺失；9 失效或外来 owner；11 空队列或额度拒绝；13 权限拒绝；17 契约冲突；22 非法参数、内存或规范值；90 容量或额度；95 操作不可用；107 断连；110 超时且可能已有外部效果；125 已撤销。仅在八字节长度 sentinel 确实被改写后使用该槽；错误 90 本身不表示必然获得所需大小。不得自动重放服务、发布或已消费事件。trap、进程终止、不可恢复的运行时分配失败可能阻止普通语言清理。

`xmake run` 使用另外安装的 `uwvm2-ros`。通过 `set_ros_run_config`、`--ros-run-config` 或 `UWVM_ROS_RUN_CONFIG` 指定手动准备的可信部署。通用 `uwvm-ros-command-run-v1` 原样传递显式运行时参数，仅追加实际 `.wasm` 的 `--run` 和显式应用参数，不增加权限或特性开关。

原生部署采用 `uwvm-native-ros-run-v2`，明确填写匹配的 backend/distribution、runtime/gateway 路径和原生连接数据。每个场景声明完整 `arguments`、`main_module`、有序 `preloads`，以及每个已加载模块的 `modules` 策略。每个模块必须明确填写布尔 `ros_enabled`、`grants` 数组和 `wasi_grants`；空 ROS grants 数组拒绝全部 ROS 操作。每项 grant 保留准确 alias、operation、resource、type、identity 和完整限额，不根据厂商名、场景名或应用参数推断授权。公共运行器支持厂商自定义场景和原样应用参数，包括空字符串。每个启用 ROS 的模块使用独立网关与 Single 绑定，不生成全局 ROS grant。`call_boundary` 默认 `same-module`；明确的 ROS 库导出接口需要手动选择 `module-exports`，并使用实现 `--ros1/2-single-call-boundary` 的匹配运行时，该选项本身不增加 capability。默认 WASI 仍保留基本标准流描述符权限。运行前载入匹配的原生 ROS 环境，保留受控原生观察、完整载荷和独立清理证据。

## 验证与当前范围

最终接受需要将实际 `.wasm` 的 SHA-256 与 Xmake-only 冷编译、唯一输出、内核 64 GiB/零 swap cgroup 收据、原生 ROS1/ROS2 观察、畸形输入及明确拒绝权限、一次性清理、x86_64 实际 runtime、QEMU 下真实 AArch64 runtime 一一关联。检查架构或仅交叉编译不等于 ARM 执行。三例之外仍需完整类型、服务、动作回归。独立交付清单分别记录 implemented、built、executed、documented，不把源码候选和部分路线称为全部完成。
