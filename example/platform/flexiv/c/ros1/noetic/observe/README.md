# flexiv ros1_noetic observe

This actual c source preserves every field of `flexiv_msgs/RobotStates`.
Build with `UWVM_ROS_SDK_ROOT` pointing to the installed SDK, then run `xmake`.
The final application is one `.wasm`; no source or data sidecar is deployed.

`observe` takes one manually granted receive alias. An idle poll returns 11; it is not a new observation.
The printed bytes are produced by the actual complete codec. Check primary and cleanup separately.
