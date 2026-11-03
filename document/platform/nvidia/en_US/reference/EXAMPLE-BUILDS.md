# NVIDIA example build and migration status

SDK applications must execute in Wasm through uwvm2-ros and its unified permission and operation audit. SDK-authored host ROS programs, scene/control callbacks, observers and inference services have been removed from the public SDK. Their complete earlier sources remain historical qualification material; they are not dependencies of any public target.

The retained source examples cover typed values, codecs and selected Wasm language routes. Those limited results do not establish an upstream rcl/rclcpp, rclpy, rcljava, roscpp, rospy or rosjava port. All newly required legacy migration and official all-Wasm simulation profiles remain unqualified.

The simulation source candidate is `example/platform/nvidia-isaac-sim/c/ros2/frozen_joint_simulation`. From that directory the public commands are:

```sh
xmake
xmake test
```

This revision has not been executed in Linux. All nine mandatory scenarios are explicitly BLOCKED until the qualified shared SDK entry, actual guest libraries/callbacks/feedback, VM-owned production audit contracts and matching official simulator environment exist. Missing prerequisites and zero executed tests cannot pass. Tests must not compile, relink, patch or replace the frozen application Wasm.

The NVIDIA build backend retains genuine Wasm builds and ROSIDL interface generation. Native CPU exchange/component application builds and host Python application packaging are unavailable and report a non-success migration blocker. Native type identity export is a build-time metadata operation, not SDK business execution or migration support.

Official simulator/controller processes and their exact supplied plugins may provide the external environment. SDK-created host ROS clients cannot provide guest queries, feedback, sensors or callbacks. Only a qualified VM-owned controlled host may implement the approved Wasm imports; it must not run arbitrary native/Python/JVM application code.

The same full application Wasm SHA256 must be preserved across compatible platform bindings. Runtime grants, provider identities and resources are selected externally. Historical native reference measurements retain their original scope and provide no all-Wasm simulation credit.
