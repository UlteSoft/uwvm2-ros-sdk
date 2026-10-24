# Publish the complete original Array

This independent C example creates the full original `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray` in guest-owned memory. It initializes two distinct detections, eight complete corners, both stamped poses and all 72 covariance values, then encodes the complete canonical value with the public record API. The fixture differs from the native receive fixture. No native input is copied into the guest to construct its result.

Set UWVM_ROS_SDK_ROOT to the installed SDK and run `xmake f -a wasm32` followed by `xmake -vD -j1`. Use a separate directory with wasm64 for actual memory64/table64. The only application output is one Wasm file. Build selection grants no host authority. The shared LLVM23 producer and common Xmake lifecycle are used.

The arguments are the explicit alias and mode: 0 publishes/closes; 1 additionally checks close/reopen and the old handle; 2 revokes and checks that the alias cannot reopen. Twenty explicit 50 ms intervals allow DDS discovery under reliable/volatile keep-last QoS. They are ordinary application publication calls, not a hidden retry in the API. Each successful call increments publications.

For modes 1/2, a separate valid payload changes the top timestamp and first id. Only retired raw handles attempt that poisoned value. Both attempts must return 9, repeated close must return 9, and every native observation must remain the legitimate complete value. Reopen is 0 after close with a distinct owner, or 125 after revoke. All acquired owners are retired before JSON output.

One JSON line retains exact operation/encoding/cleanup statuses, publication count, complete legitimate/poison wires and retirement results. Native execution requires an independently running subscriber. Raw WASI/ROS statuses and Xmake's outer exit must be assessed separately. See DEPLOYMENT.en.md in this same example, or the installed manual `sdk/document/platform/nvidia-isaac-ros/en_US/language/c/guest_publish.md`.
