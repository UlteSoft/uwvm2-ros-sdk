# pal / vbnet 例子

每个目录是一个独立 Xmake 工程：

- `example/platform/pal/vbnet/ros1/ros1_noetic_devel/battery_state` — `subscribe/pal_device_msgs/BatteryState`; noetic.
- `example/platform/pal/vbnet/ros1/ros1_noetic_devel/bumper` — `subscribe/pal_device_msgs/Bumper`; noetic.
- `example/platform/pal/vbnet/ros1/ros1_noetic_devel/led_group` — `subscribe/pal_device_msgs/LedGroup`; noetic.
- `example/platform/pal/vbnet/ros2/ros2_humble_devel/battery_state` — `subscribe/pal_device_msgs/msg/BatteryState`; humble.
- `example/platform/pal/vbnet/ros2/ros2_humble_devel/bumper` — `subscribe/pal_device_msgs/msg/Bumper`; humble.
- `example/platform/pal/vbnet/ros2/ros2_humble_devel/led_group` — `subscribe/pal_device_msgs/msg/LedGroup`; humble.

显式授予一个 topic-subscribe alias，原生仿真 peer 持续发布该完整类型。应用最多轮询 250 次，每次空闲等待 20 ms；完整解码、重编码并完成一次 close 后输出完整 canonical bytes 和独立 primary/cleanup/RPC/length 状态。权限拒绝和坏 wire 仍输出真实失败；不进行扩容后重放。

确认构建只输出一个 `.wasm`，再用手动权限运行 `xmake run`。验收须记录真实 x86_64 和 QEMU AArch64 runtime/ELF 身份、ROS1/ROS2 消息/service/action 内容、拒绝权限、坏 wire、实际 cgroup 和清理结果。

## 共享模块例子

- `example/platform/pal/vbnet/ros2/ros2_humble_devel/shared_math` — [共享库构建、预加载及准确权限](LIBRARIES.md)。
