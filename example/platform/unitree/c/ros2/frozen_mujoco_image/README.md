# Unitree full Wasm ROS migration status

BLOCKED_REQUIRED_WASM_ROS_MIGRATION. The former SDK-authored host ROS image publisher and native observer candidate have been removed from the public SDK tree and preserved as historical component evidence. The observer sent no goals. The finite checks produced no rendered or matched image.

The unchanged common C application remains available as source. Its complete frozen Wasm is 20095 bytes, SHA256 `7061f671b91860cca2867d52bc38bca4c12234426598951451b481cf31c69100`. Every required scenario remains mandatory. The shared `required_implementation` declaration reports BLOCKED without an executable driver or a route to the quarantined implementation.

With the installed SDK configured, the normal commands remain:

    xmake
    xmake test

These public commands have not yet been qualified for this revised source. Tests must remain non-success until real Python-Wasm ROS execution, denied operations without native side effects, complete audited feedback and the applicable official simulator are qualified. Missing prerequisites and unfinished migration cannot be skipped or counted as a pass.

ROS2 rclpy and ROS1 rospy ports use the existing Python Wasm toolchain. Their required public paths are include/platform/ros/transplate/ros2/rclpy and include/platform/ros/transplate/ros1/rospy. No native client, host Python, JVM or shell may execute ROS business on the guest application behalf. Source compatibility, native helpers and engine hashes alone do not establish runtime support.

## 中文说明

宿主 ROS 发布和观察候选已从公开 SDK 移出并完整保存历史证据；原观察器不发送目标。当前公开测试明确 BLOCKED，不能经私有目录执行旧实现。保留完整冻结 Wasm、必需场景和标准命令；只有真实 Wasm 业务、统一权限审计、拒绝无原生副作用、反向反馈和相应官方仿真通过后才能恢复支持声明。
