# clearpath / c

已保留完整源语言记录目录；仍需完整示例、编译器和原生通信验收。源码存在不等于路线已通过验证。

## 安装与选择

安装 Xmake 与完整 SDK 分发包。宿主 manifest 和配套 XMZ 压缩包是经过 SHA-256 锁定的构建输入。普通构建通过 Xmake 恢复真实前端，不依赖系统编译器、ROS 或 uwvm2-ros。该路线的版本为 LLVM 23.1.4。

独立项目声明 `set_language`、`set_ros_platform`、一个 `set_ros1_version` 或 `set_ros2_version`、`set_arch("wasm32")` 与 `set_plat("wasm-wasip1")`。通过普通 `set_values` 明确设置 `ros.vendor.profile`、完整 `ros.vendor.revision` 源码锁 SHA-256 和 `ros.vendor.model`。provider 检查选择是否一致；任何选择都不自动证明物理型号或固件兼容性。

导入采用 `clearpath/c/` 公共命名空间及明确的 profile。SDK 根目录通过 `UWVM_ROS_SDK_ROOT`或实际父目录搜索发现，显式无效路径会报告错误，示例不编码目录深度。公共原生动作支持选择固定的 memory32 Preview1/noeh 配置。D、Zig、Objective-C 另有使用配套 LLVM 23 闭包的显式 memory64 试验动作，构建与执行状态必须分别核实。其他固定前端尚缺真实 memory64 生产者或标准库，因而明确拒绝该配置，禁止静默降为 memory32。

## 原始目录与 API

这些 profile 共保留 445 个完整记录或接口组件，覆盖原始字段顺序、整数宽度、定长数组、有界序列、文本/字节域、常量与声明默认值。原始定义位于 `share/platform/clearpath/catalogs/`。同目录 API 指导完整列出类型、组件、符号、字节范围和字段。

支持的源码型号选择为 `generic`, `husky`, `jackal`。每个应用只编入一套原始目录。

- `ros1`：ROS 1，`noetic`；源码锁 SHA-256 `d115cb3a7b78461e92304dc07d5f46923a867acdc1679e4e8a38bfe86e895e9f`。

- `ros2_humble`：ROS 2，`humble`；源码锁 SHA-256 `f9ef0e6a0ba26ac1d98da59f5d0dbf2b4f0b6081abdd079e18d1d27f073ea212`。

- `ros2_jazzy`：ROS 2，`jazzy`；源码锁 SHA-256 `19b7fa51844109a4185a2079c51dea250bc265bc9081891918fae8f7dd5bfad4`。

- `ros2_main`：ROS 2，`rolling`；源码锁 SHA-256 `d8d3f08fa94a14aee2aa7d0291e7e8f619237f636423dc305732b10e42436b83`。

canonical 数据是 SDK gateway 的格式，不等同于原生 C 布局、ROS1 serialization、DDS CDR 或 protobuf。codec identity 不等于 ROS MD5/RIHS；原生注册必须依据独立导出的原版 ROS 元数据。

六种原生语言提供完整消息的 `wait...` 强类型观测接口，以及只提交一次的 `call...` 服务客户端。新原生字段以 `field_` 避免关键字冲突，Doxygen 保留原始字段名。完整 action 的 goal/result/feedback 组件及其 codec 已保留；完整便捷 action 流程仍待原生验收。

## 错误、所有权与单位

首个 operation/codec 失败与独立 close 结果分别保留。22 表示无效值，90 表示容量限制，13 表示拒绝授权，9 表示失效或外来 handle，11 表示空闲，95 表示当前 ABI 功能不可用，107 表示断连，110 表示结果不确定的超时，125 表示撤销。只有消息观测的空闲 11 可在明确预算内等待后再次 poll；服务与效果性请求失败或超时均不得重放。普通 acquired owner 在输出前只 close 一次；致命 trap 或分配失败无法保证 guest 正常清理。

alias 必须为无 NUL 的严格 UTF-8，长度为 1..255 字节。owner 和长度槽保留完整 64 位。配额分别按字节或元素计数，不是原生对象 sizeof。时间保持原始秒/纳秒字段，规范化纳秒小于 1,000,000,000。速度构造使用米/秒与弧度/秒，限制由调用方明确提供。

## 示例、部署与验证

- `example/platform/clearpath/c/ros1/codec_ros1clearpath_platform_msgsdrivefeedback`：编码、解码并再次编码完整原始值 `clearpath_platform_msgs/DriveFeedback`。在该目录执行 `xmake`；每个示例都有独立 `xmake.lua`。
- `example/platform/clearpath/c/ros1/codec_ros1clearpath_platform_msgsstopstatus`：编码、解码并再次编码完整原始值 `clearpath_platform_msgs/StopStatus`。在该目录执行 `xmake`；每个示例都有独立 `xmake.lua`。
- `example/platform/clearpath/c/ros1/codec_ros1clearpath_platform_msgsrgb`：编码、解码并再次编码完整原始值 `clearpath_platform_msgs/RGB`。在该目录执行 `xmake`；每个示例都有独立 `xmake.lua`。
- `example/platform/clearpath/c/ros2/humble/codec_ros2clearpath_platform_msgsmsgdrivefeedback`：编码、解码并再次编码完整原始值 `clearpath_platform_msgs/msg/DriveFeedback`。在该目录执行 `xmake`；每个示例都有独立 `xmake.lua`。
- `example/platform/clearpath/c/ros2/humble/codec_ros2clearpath_platform_msgsmsgstopstatus`：编码、解码并再次编码完整原始值 `clearpath_platform_msgs/msg/StopStatus`。在该目录执行 `xmake`；每个示例都有独立 `xmake.lua`。
- `example/platform/clearpath/c/ros2/humble/codec_ros2clearpath_platform_msgsmsgrgb`：编码、解码并再次编码完整原始值 `clearpath_platform_msgs/msg/RGB`。在该目录执行 `xmake`；每个示例都有独立 `xmake.lua`。
- `example/platform/clearpath/c/ros2/jazzy/codec_ros2clearpath_platform_msgsmsgdrivefeedback`：编码、解码并再次编码完整原始值 `clearpath_platform_msgs/msg/DriveFeedback`。在该目录执行 `xmake`；每个示例都有独立 `xmake.lua`。
- `example/platform/clearpath/c/ros2/jazzy/codec_ros2clearpath_platform_msgsmsgstopstatus`：编码、解码并再次编码完整原始值 `clearpath_platform_msgs/msg/StopStatus`。在该目录执行 `xmake`；每个示例都有独立 `xmake.lua`。
- `example/platform/clearpath/c/ros2/jazzy/codec_ros2clearpath_platform_msgsmsgrgb`：编码、解码并再次编码完整原始值 `clearpath_platform_msgs/msg/RGB`。在该目录执行 `xmake`；每个示例都有独立 `xmake.lua`。
- `example/platform/clearpath/c/ros2/main/codec_ros2clearpath_platform_msgsmsgdrivefeedback`：编码、解码并再次编码完整原始值 `clearpath_platform_msgs/msg/DriveFeedback`。在该目录执行 `xmake`；每个示例都有独立 `xmake.lua`。
- `example/platform/clearpath/c/ros2/main/codec_ros2clearpath_platform_msgsmsgstopstatus`：编码、解码并再次编码完整原始值 `clearpath_platform_msgs/msg/StopStatus`。在该目录执行 `xmake`；每个示例都有独立 `xmake.lua`。
- `example/platform/clearpath/c/ros2/main/codec_ros2clearpath_platform_msgsmsgrgb`：编码、解码并再次编码完整原始值 `clearpath_platform_msgs/msg/RGB`。在该目录执行 `xmake`；每个示例都有独立 `xmake.lua`。

通信示例要求一个显式配置的 alias 参数；纯 codec 示例不接收 alias，也不执行原生操作。`build/` 中只能有一个应用 `.wasm`；前端缓存与中间对象留在构建缓存中，部署不需要 sidecar。

`xmake run` 单独使用已安装的 uwvm2-ros、配对原生 gateway 和精确的 ROS 类型。通过 `--ros-run-config` 或 `UWVM_ROS_RUN_CONFIG` 提供人工审核权限配置。SDK 不写入或自动授权策略，默认源码目录没有权限。

验收必须分别证明裸 Xmake 冷构建、唯一 Wasm、真实目标内存宽度、完整目录有效/无效 codec、拒绝权限、原生 ROS1/ROS2 通信、独立清理，以及相同产物在 QEMU AArch64 原生运行时中的实际执行。源码生成或旧收据不能替代这些证明。
