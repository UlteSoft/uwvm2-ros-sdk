# Native ROS 2 infrastructure

The maintained native gateway implementation is shared with the existing
transport and is built from `sdk/src/gateway/ros2/CMakeLists.txt`. It uses the
selected original ROS 2 development SDK, generated type support and native RMW.
The SDK's `ros2` guest provider does not link a native ROS library into a Wasm
application or require this gateway during configuration or compilation.

For a deployment build, source the selected ROS 2 environment and configure that
CMake project with `UWVM_ROS2_BUILD_PROBES=OFF`. Build with one compiler job. The
default registry contains the admitted built-in interfaces; adding a custom
type requires its independent original native metadata and complete selected
provider. A native feature probe is source admission, not an execution receipt.

The independent acceptance driver is
`sdk/tools/platform/ros/acceptance/native_matrix.py`. It runs the compiled Wasm
through actual uwvm2 and this production gateway, with an original rclpy peer
on a dedicated test domain. Current measured coverage and limitations are in
`sdk/share/platform/ros/native_sdk/acceptance.json`.
