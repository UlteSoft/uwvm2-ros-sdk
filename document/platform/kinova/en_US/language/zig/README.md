# kinova / zig

This manual describes a reviewable source candidate. Source, compilation, Wasm execution, and native ROS observation are separate acceptance states.

Install the complete SDK and set `UWVM_ROS_SDK_ROOT`. Only Xmake is preinstalled on the build machine; compiler/interpreter acquisition uses the shared SHA-256-locked SDK dependencies. A vendor never carries its own language engine.

Each standalone example declares `set_language`, `set_ros_platform`, `set_ros1_version` or `set_ros2_version`, `set_arch`, and `set_plat`. Set `ros.vendor.profile` to an exact interface release below. Distribution substitution is refused.

```lua
set_language("zig")
set_ros_platform("kinova")
set_ros2_version("humble")
set_values("ros.vendor.profile", "ros2_humble")
set_arch("wasm32")
set_plat("wasm-wasip1")
```

- `ros2_humble`: `ros2` / `humble`, `mobile-fjt-humble-complete`.

`wasm64` requires a real memory64 module and execution evidence. A rejected compiler or missing runtime remains an open gap. WASI preview, threads and exceptions require an explicitly qualified shared target profile.

## APIs and ownership

The locale's API.md and each selected share/catalog records.json describe every field, constant, service request/response and action goal/feedback/result.

Callers own values and buffers. Encoding validates the whole value; decoding consumes exactly one complete input. Capacities are bytes, UTF-8 quotas are byte counts, and sequence quotas are element counts. Codec identity never substitutes for native ROS type identity.

Service submission is separate from completion. Action cancel acknowledgement retains the goal until a matching terminal result arrives. Users grant each role alias independently. Error 11 is idle, 22 invalid data/arguments, and 90 insufficient capacity. Preserve primary and cleanup errors independently; never replay an uncertain operation.

ROS FollowJointTrajectory uses radians and SI derivatives. Native Kortex 2.8.0 protobuf APIs retain their own units, including degrees, without reinterpretation or implicit conversion. Gen3 six/seven-joint validation and complete native RPC wrappers remain distinct from Wasm application code.

## Sources and examples

- `include/platform/kinova/zig/ros2/mobile-fjt-humble-complete/records.zig`.

- `example/platform/kinova/zig/ros2/humble/decode_state/main.zig`: `decode_state`, `sensor_msgs/msg/JointState`.
- `example/platform/kinova/zig/ros2/humble/validate_goal/main.zig`: `validate_goal`, `control_msgs/action/FollowJointTrajectory_Goal`.
- `example/platform/kinova/zig/ros2/humble/inspect_response/main.zig`: `inspect_response`, `control_msgs/action/FollowJointTrajectory_Result`.

The C/C++/Objective-C/C FFI/Python/JS observe examples decode a complete event from a manually granted topic alias. Other languages use decode_state to validate complete runtime input. validate_goal checks complete standard-input payloads. inspect_response checks a whole response/result payload. The latter two are codec applications and do not count as native service/action completion. Each directory has its own xmake.lua and a sole .wasm deployment output.

## Run and verification

xmake run uses installed uwvm2-ros and the common deployment dispatcher. Users explicitly supply topic, service, action-role, clock and file permissions; builds never change policy. Verify native ROS1/ROS2 contents, denied permissions, error paths, cleanup, x86_64 and QEMU AArch64 execution separately. Physical hardware and real controller loops are unqualified.
