# hello_robot / zig 例子

本路线尚无三个已编译并在双架构原生 ROS 验收的独立例子。完整类型源码或本手册都不作为这项要求的完成证据；需要消费公共语言 provider 后补齐实际应用、每例 xmake.lua 和原始日志。

确认构建只输出一个 `.wasm`，再用手动权限运行 `xmake run`。验收须记录真实 x86_64 和 QEMU AArch64 runtime/ELF 身份、ROS1/ROS2 消息/service/action 内容、拒绝权限、坏 wire、实际 cgroup 和清理结果。
