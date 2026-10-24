# flexiv ros1_noetic full-state codec

This real C program reads at most 865 bytes from runtime standard
input, decodes every original field of `flexiv_msgs/RobotStates`, and computes the complete
encoded result during guest execution. No expected bytes are embedded.

Use this directory's `xmake.lua` and `UWVM_ROS_SDK_ROOT`; request wasm32 or wasm64
explicitly. The application deploys as one Wasm file. It requires runtime input,
not a deployment data/source sidecar.

The native fixture supplies independently observed ROS contents through the
reference test packer. That host-mediated continuity is separate from the
`observe` application's ROS transport and does not grant ROS authority.
