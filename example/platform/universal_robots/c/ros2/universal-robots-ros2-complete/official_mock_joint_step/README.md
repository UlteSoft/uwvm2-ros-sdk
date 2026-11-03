# UR5e official mock: Wasm ROS migration required

**BLOCKED. The previous SDK-native ROS candidate has been removed from the
public SDK tree. This directory does not provide a qualified application.**

Both documented entry points, `xmake` and `xmake test`, deliberately report a
non-success configuration prerequisite error. No runnable application, skipped
test or native fallback is supplied. This notice never executes quarantined code or a
private qualification runner.

A replacement must compile the actual supported ROS client implementation to
Wasm and execute its business calls, queries, callbacks, feedback and required
assertions in uwvm2-ros through the unified permission and audit boundary.
ROS2 rcl/rclcpp, rclpy inside python.wasm and rcljava AOT-to-Wasm require their
versioned shared ports. Applicable historical ROS1 client libraries remain a
separate migration requirement. Vendor bindings use
`include/platform/universal_robots/transplate/ros1/` and
`include/platform/universal_robots/transplate/ros2/{rcl,rclcpp,rclpy,rcljava}/`.

The previous native rclpy observer never sent motion goals. It subscribed to
state/status and queried controller readiness as independent native evidence.
Those callbacks cannot establish ROS callbacks or feedback inside Wasm.
Historical finite portable-Host/mock records retain their original scope.

The genuine official simulator/controller may remain external, with exact
identity, lifecycle admission and resource evidence. The VM-owned bounded ROS
host remains necessary. Neither can be replaced by SDK host Python/JVM/client
business logic. Full Wasm bytes must remain unchanged across compatible
vendors, with independent official post-result state and audited reverse
feedback. All model/mode/release/ABI/language/link/security/performance and
world-model requirements, plus the five-target single-product dev release,
remain incomplete.

中文：旧的宿主 ROS 候选实现已移出 SDK 公开树。这里只保留明确失败的迁移
入口；真实 Wasm ROS 客户端、回调、反馈和统一审计通过 Linux 公开构建及测试
之前，不会恢复原实现，也不会执行隔离目录中的代码。
