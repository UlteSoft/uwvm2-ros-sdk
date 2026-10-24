# flexiv controller_core_foxy validate_goal

This actual js source preserves every field of `sensor_msgs/msg/JointState`.
Build with `UWVM_ROS_SDK_ROOT` pointing to the installed SDK, then run `xmake`.
The final application is one `.wasm`; no source or data sidecar is deployed.

Supply a complete original canonical payload on standard input. The source decodes and validates it at execution time.
The printed bytes are produced by the actual complete codec. Check primary and cleanup separately.
