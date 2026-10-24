# franka / nim

This manual describes a reviewable source candidate. Source, compilation, Wasm execution, and native ROS observation are separate acceptance states.

Install the complete SDK and set `UWVM_ROS_SDK_ROOT`. Only Xmake is preinstalled on the build machine; compiler/interpreter acquisition uses the shared SHA-256-locked SDK dependencies. A vendor never carries its own language engine.

Each standalone example declares `set_language`, `set_ros_platform`, `set_ros1_version` or `set_ros2_version`, `set_arch`, and `set_plat`. Set `ros.vendor.profile` to an exact interface release below. Distribution substitution is refused.

```lua
set_language("nim")
set_ros_platform("franka")
set_ros1_version("noetic")
set_values("ros.vendor.profile", "ros1")
set_arch("wasm32")
set_plat("wasm-wasip1")
```

- `ros1`: `ros1` / `noetic`, `franka-ros1-complete`.
- `ros2`: `ros2` / `jazzy`, `franka-ros2-complete`.

`wasm64` requires a real memory64 module and execution evidence. A rejected compiler or missing runtime remains an open gap. WASI preview, threads and exceptions require an explicitly qualified shared target profile.

## APIs and ownership

The locale's API.md and each selected share/catalog records.json describe every field, constant, service request/response and action goal/feedback/result.

Callers own values and buffers. Encoding validates the whole value; decoding consumes exactly one complete input. Capacities are bytes, UTF-8 quotas are byte counts, and sequence quotas are element counts. Codec identity never substitutes for native ROS type identity.

Service submission is separate from completion. Action cancel acknowledgement retains the goal until a matching terminal result arrives. Users grant each role alias independently. Error 11 is idle, 22 invalid data/arguments, and 90 insufficient capacity. Preserve primary and cleanup errors independently; never replay an uncertain operation.

Franka uses ROS joint radians and gripper metres, metres/second and newtons. ROS1 impedance and EE/K services remain distinct from ROS2 stiffness and TCP/stiffness-frame services. PTPMotion preserves all seven-joint inputs and TargetStatus.

## Sources and examples

- `include/platform/franka/nim/ros1/franka-ros1-complete/records.nim`.
- `include/platform/franka/nim/ros2/franka-ros2-complete/records.nim`.

- `example/platform/franka/nim/ros1/decode_state/main.nim`: `decode_state`, `franka_msgs/FrankaState`.
- `example/platform/franka/nim/ros1/validate_goal/main.nim`: `validate_goal`, `franka_gripper/GraspGoal`.
- `example/platform/franka/nim/ros1/inspect_response/main.nim`: `inspect_response`, `franka_msgs/SetCartesianImpedanceResponse`.
- `example/platform/franka/nim/ros2/decode_state/main.nim`: `decode_state`, `franka_msgs/msg/FrankaRobotState`.
- `example/platform/franka/nim/ros2/validate_goal/main.nim`: `validate_goal`, `franka_msgs/action/Grasp_Goal`.
- `example/platform/franka/nim/ros2/inspect_response/main.nim`: `inspect_response`, `franka_msgs/srv/SetCartesianStiffness_Response`.

The C/C++/Objective-C/C FFI/Python/JS observe examples decode a complete event from a manually granted topic alias. Other languages use decode_state to validate complete runtime input. validate_goal checks complete standard-input payloads. inspect_response checks a whole response/result payload. The latter two are codec applications and do not count as native service/action completion. Each directory has its own xmake.lua and a sole .wasm deployment output.

## Run and verification

xmake run uses installed uwvm2-ros and the common deployment dispatcher. Users explicitly supply topic, service, action-role, clock and file permissions; builds never change policy. Verify native ROS1/ROS2 contents, denied permissions, error paths, cleanup, x86_64 and QEMU AArch64 execution separately. Physical hardware and real controller loops are unqualified.
