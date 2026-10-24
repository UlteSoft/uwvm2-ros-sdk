# Unitree Swift

真实 Swift 路线提供 ROS1 Noetic、ROS2 Jazzy 的完整原始记录、严格完整 codec 和六个独立只读观察。全部 11 种 ROS1 记录/115 字段、43 种 ROS2 记录/257 字段保留原类型、顺序、位宽及形状。

- [API.md](API.md)：真实导入、全部完整类型/字段映射、codec 调用/错误与所有权。
- [EXAMPLES.md](EXAMPLES.md)：六个真实 main 与 Xmake 描述，逐步行为、结果、构建和可信原生部署。
- [完整原始 schema](../NATIVE_SCHEMA.md)：每个原字段、原生/codec 身份及规范长度界限。

支持的命令配置为 wasm32 WASI Preview 1、noeh、单线程，使用 Noetic/Jazzy 原始原生接口。随 SDK 的源码编译工具链已在 Linux x86_64 验收；同 SHA 产物的 AArch64 原生通信通过 x86_64 内核上的 QEMU user mode 单独验收，不代表 ARM 编译宿主或物理硬件。x86 源码、codec、构建证据记载于 [native-source-qualification.json](../../../../../../share/platform/unitree/native-source-qualification.json)，固定前端出处见 [原始编译器版本及源码闭包](../../../../../../share/platform/unitree/native-compiler-sources.json)。54 种完整记录的 codec 覆盖与六种观察类型的实时传输分别计数。Memory64、Preview 2、线程、Wasm EH、其他发行版、物理控制及机器人 CRC/安全行为不在本路线验收范围内。

当前可接受的配置选择见[共享 provider 配置](../../CONFIGURATION.md)。
