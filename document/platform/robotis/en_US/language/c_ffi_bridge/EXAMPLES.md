# robotis C FFI standalone examples

Each project has its own real `Main.c` and `xmake.lua`; it compiles the caller and exactly one complete profile ABI implementation into one application Wasm. Set `UWVM_ROS_SDK_ROOT` to the installed SDK and run `xmake` from the selected project. The shared C provider `tools/platform/ros/provider.lua` and pinned LLVM23 closure are required and remain unresolved dependencies for this candidate. Sources below have not yet passed a build or native execution gate.

`encode_value` explicitly initializes every chosen record field to zero, encodes the entire value through the foreign ABI, and writes the actual canonical bytes to stdout. This chosen value is separate from declared native defaults and is never published as a robot command.

`decode_value` reads bounded canonical stdin until EOF, decodes into a complete owning record, re-encodes it, and compares every byte. It prints the actual byte count only after complete equality. Oversize, malformed, truncated and trailing input are errors.

`reject_frame` encodes a complete chosen value, actually calls the decoder with a truncated frame and a frame with one extra byte, and checks that both failures preserve every destination byte. It reports completion only after both checks. No ROS endpoint, native peer or physical effect is requested by these codec tools.

Source selection is explicit through `ros.sdk.vendor_profile` and the ROS distribution API in each project. The shared compiler must honor the caller's architecture/WASI selection. No memory64 or QEMU qualification is implied. Production native ROS operations and permissions are a separate flow.

- `example/platform/robotis/c_ffi_bridge/ros1/noetic/encode_value` — `turtlebot3_msgs/SensorState`
- `example/platform/robotis/c_ffi_bridge/ros1/noetic/decode_value` — `turtlebot3_msgs/SensorState`
- `example/platform/robotis/c_ffi_bridge/ros1/noetic/reject_frame` — `turtlebot3_msgs/SensorState`
- `example/platform/robotis/c_ffi_bridge/ros2/jazzy/encode_value` — `turtlebot3_msgs/msg/SensorState`
- `example/platform/robotis/c_ffi_bridge/ros2/jazzy/decode_value` — `turtlebot3_msgs/msg/SensorState`
- `example/platform/robotis/c_ffi_bridge/ros2/jazzy/reject_frame` — `turtlebot3_msgs/msg/SensorState`
