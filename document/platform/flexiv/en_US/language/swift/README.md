# flexiv / swift

This manual describes a reviewable source candidate. Source, compilation, Wasm execution, and native ROS observation are separate acceptance states.

Install the complete SDK and set `UWVM_ROS_SDK_ROOT`. Only Xmake is preinstalled on the build machine; compiler/interpreter acquisition uses the shared SHA-256-locked SDK dependencies. A vendor never carries its own language engine.

Each standalone example declares `set_language`, `set_ros_platform`, `set_ros1_version` or `set_ros2_version`, `set_arch`, and `set_plat`. Set `ros.vendor.profile` to an exact interface release below. Distribution substitution is refused.

```lua
set_language("swift")
set_ros_platform("flexiv")
set_ros1_version("noetic")
set_values("ros.vendor.profile", "ros1_noetic")
set_arch("wasm32")
set_plat("wasm-wasip1")
```

- `ros1_noetic`: `ros1` / `noetic`, `flexiv-ros1-noetic-complete`.
- `ros2_foxy`: `ros2` / `foxy`, `flexiv-ros2-foxy-complete`.
- `ros2_humble_v1`: `ros2` / `humble`, `flexiv-ros2-humble-v1-complete`.
- `ros2_humble_v2`: `ros2` / `humble`, `flexiv-ros2-humble-v2-complete`.
- `ros2_humble_v2_2`: `ros2` / `humble`, `flexiv-ros2-humble-v2-2-complete`.
- `ros2_jazzy_v1`: `ros2` / `jazzy`, `flexiv-ros2-jazzy-v1-complete`.
- `ros2_jazzy_v2`: `ros2` / `jazzy`, `flexiv-ros2-jazzy-v2-complete`.
- `ros2_jazzy_v2_2`: `ros2` / `jazzy`, `flexiv-ros2-jazzy-v2-2-complete`.
- `ros2_lyrical_v1`: `ros2` / `lyrical`, `flexiv-ros2-lyrical-v1-complete`.
- `controller_core_foxy`: `ros2` / `foxy`, `flexiv-controller-core-foxy-complete`.
- `controller_core_humble`: `ros2` / `humble`, `flexiv-controller-core-humble-complete`.

`wasm64` requires a real memory64 module and execution evidence. A rejected compiler or missing runtime remains an open gap. WASI preview, threads and exceptions require an explicitly qualified shared target profile.

## APIs and ownership

The locale's API.md and each selected share/catalog records.json describe every field, constant, service request/response and action goal/feedback/result.

Callers own values and buffers. Encoding validates the whole value; decoding consumes exactly one complete input. Capacities are bytes, UTF-8 quotas are byte counts, and sequence quotas are element counts. Codec identity never substitutes for native ROS type identity.

Service submission is separate from completion. Action cancel acknowledgement retains the goal until a matching terminal result arrives. Users grant each role alias independently. Error 11 is idle, 22 invalid data/arguments, and 90 insufficient capacity. Preserve primary and cleanup errors independently; never replay an uncertain operation.

Flexiv Mode, RecoveryPolicy, OperationalStatus and controller configuration retain each release's fields and constants. Only SetMaxContactWrench.request.max_wrench in the three selected v1 branches admits positive infinity to disable axis regulation. NaN and negative infinity remain invalid. Other floats keep their own declared policy.

## Sources and examples

- `include/platform/flexiv/swift/ros1/flexiv-ros1-noetic-complete/Records.swift`.
- `include/platform/flexiv/swift/ros2/flexiv-controller-core-foxy-complete/Records.swift`.
- `include/platform/flexiv/swift/ros2/flexiv-controller-core-humble-complete/Records.swift`.
- `include/platform/flexiv/swift/ros2/flexiv-ros2-foxy-complete/Records.swift`.
- `include/platform/flexiv/swift/ros2/flexiv-ros2-humble-v2-2-complete/Records.swift`.
- `include/platform/flexiv/swift/ros2/flexiv-ros2-humble-v2-complete/Records.swift`.
- `include/platform/flexiv/swift/ros2/flexiv-ros2-jazzy-v2-2-complete/Records.swift`.
- `include/platform/flexiv/swift/ros2/flexiv-ros2-jazzy-v2-complete/Records.swift`.

- `example/platform/flexiv/swift/ros1/noetic/decode_state/main.swift`: `decode_state`, `flexiv_msgs/RobotStates`.
- `example/platform/flexiv/swift/ros1/noetic/validate_goal/main.swift`: `validate_goal`, `flexiv_msgs/JointPosVel`.
- `example/platform/flexiv/swift/ros1/noetic/inspect_response/main.swift`: `inspect_response`, `flexiv_msgs/Mode`.
- `example/platform/flexiv/swift/ros2/foxy/decode_state/main.swift`: `decode_state`, `flexiv_msgs/msg/RobotStates`.
- `example/platform/flexiv/swift/ros2/foxy/validate_goal/main.swift`: `validate_goal`, `flexiv_msgs/msg/JointPosVel`.
- `example/platform/flexiv/swift/ros2/foxy/inspect_response/main.swift`: `inspect_response`, `flexiv_msgs/msg/Mode`.
- `example/platform/flexiv/swift/ros2/humble_v2/decode_state/main.swift`: `decode_state`, `flexiv_msgs/msg/RobotStates`.
- `example/platform/flexiv/swift/ros2/humble_v2/validate_goal/main.swift`: `validate_goal`, `flexiv_msgs/action/Grasp_Goal`.
- `example/platform/flexiv/swift/ros2/humble_v2/inspect_response/main.swift`: `inspect_response`, `flexiv_msgs/action/Grasp_Result`.
- `example/platform/flexiv/swift/ros2/humble_v2_2/decode_state/main.swift`: `decode_state`, `flexiv_msgs/msg/RobotStates`.
- `example/platform/flexiv/swift/ros2/humble_v2_2/validate_goal/main.swift`: `validate_goal`, `flexiv_msgs/action/Grasp_Goal`.
- `example/platform/flexiv/swift/ros2/humble_v2_2/inspect_response/main.swift`: `inspect_response`, `flexiv_msgs/srv/GetOperationalStatus_Response`.
- `example/platform/flexiv/swift/ros2/jazzy_v2/decode_state/main.swift`: `decode_state`, `flexiv_msgs/msg/RobotStates`.
- `example/platform/flexiv/swift/ros2/jazzy_v2/validate_goal/main.swift`: `validate_goal`, `flexiv_msgs/action/Grasp_Goal`.
- `example/platform/flexiv/swift/ros2/jazzy_v2/inspect_response/main.swift`: `inspect_response`, `flexiv_msgs/action/Grasp_Result`.
- `example/platform/flexiv/swift/ros2/jazzy_v2_2/decode_state/main.swift`: `decode_state`, `flexiv_msgs/msg/RobotStates`.
- `example/platform/flexiv/swift/ros2/jazzy_v2_2/validate_goal/main.swift`: `validate_goal`, `flexiv_msgs/action/Grasp_Goal`.
- `example/platform/flexiv/swift/ros2/jazzy_v2_2/inspect_response/main.swift`: `inspect_response`, `flexiv_msgs/srv/GetOperationalStatus_Response`.
- `example/platform/flexiv/swift/controller_core_foxy/decode_state/main.swift`: `decode_state`, `sensor_msgs/msg/JointState`.
- `example/platform/flexiv/swift/controller_core_foxy/validate_goal/main.swift`: `validate_goal`, `sensor_msgs/msg/JointState`.
- `example/platform/flexiv/swift/controller_core_foxy/inspect_response/main.swift`: `inspect_response`, `trajectory_msgs/msg/JointTrajectory`.
- `example/platform/flexiv/swift/controller_core_humble/decode_state/main.swift`: `decode_state`, `sensor_msgs/msg/JointState`.
- `example/platform/flexiv/swift/controller_core_humble/validate_goal/main.swift`: `validate_goal`, `sensor_msgs/msg/JointState`.
- `example/platform/flexiv/swift/controller_core_humble/inspect_response/main.swift`: `inspect_response`, `trajectory_msgs/msg/JointTrajectory`.

The C/C++/Objective-C/C FFI/Python/JS observe examples decode a complete event from a manually granted topic alias. Other languages use decode_state to validate complete runtime input. validate_goal checks complete standard-input payloads. inspect_response checks a whole response/result payload. The latter two are codec applications and do not count as native service/action completion. Each directory has its own xmake.lua and a sole .wasm deployment output.

## Run and verification

xmake run uses installed uwvm2-ros and the common deployment dispatcher. Users explicitly supply topic, service, action-role, clock and file permissions; builds never change policy. Verify native ROS1/ROS2 contents, denied permissions, error paths, cleanup, x86_64 and QEMU AArch64 execution separately. Physical hardware and real controller loops are unqualified.
