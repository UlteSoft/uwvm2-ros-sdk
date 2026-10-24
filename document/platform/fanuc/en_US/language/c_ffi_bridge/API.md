# FANUC / c_ffi_bridge API

Install the complete SDK, set `UWVM_ROS_SDK_ROOT` to its root, and run `xmake` in an independent example directory. Only Xmake is a preinstalled build prerequisite. The central adapter verifies the locked dependencies; it must not replace the requested language, VM version or memory width. This route uses **LLVM 23.1.4 + shared numeric C FFI**. JVM/CLR routes use genuine AOT; interpreted routes pack the actual implementation and application into the single Wasm.

## Configuration and deployment

`set_language("c_ffi_bridge")` selects the actual source; `set_ros_platform("fanuc")` selects this vendor. `set_ros1_version("noetic")` or `set_ros2_version("jazzy")` must match the catalog, real native installation and exported identities. `set_ros_config({catalog = "complete", transport = "native-ros"})` selects the immutable upstream interface set, separately from controller firmware.

`set_arch("wasm32")` / `set_arch("wasm64")` with `set_plat("wasm-wasip1")` request 32/64-bit memory and WASI Preview 1 respectively. Compiler, stdlib, VM, import ABI and actual uwvm2-ros must all match that width. WASI Preview 2, threads, exceptions and Wasm Core 3.0 features require explicit paired inputs; examples never downgrade. Controller model, joint order, groups, transport, ROS distribution, QoS and finite capacities come from `share/platform/fanuc/provider.json` and the real deployment configuration.

Deploy one `.wasm`; sources and intermediate files stay in caches. `xmake run` uses the installed uwvm2-ros and must not probe compilers or create permissions. The operator manually supplies exact aliases, native types, directions, byte budgets, deadlines, QoS and clock rights. Catalog presence alone creates no registry entry or capability.

## Values, errors and ownership

See the platform `CATALOG.md` and `share/platform/fanuc/catalogs` for every original declaration. Integer widths remain exact; 64-bit data uses native precise integers/words and never an R/PHP32 double. String bounds count UTF-8 bytes. Strict text rejects NUL, malformed encoding and truncation. Fixed arrays require their whole extent; sequences never truncate. Normalized nanoseconds lie in 0..999999999; all nonempty JointState arrays have equal length.

Explicit native-default construction differs from zero-filled storage: nonzero defaults such as Quaternion.w are retained. Read a value only after complete transactional decoding; failures never publish partial responses. Local errors are 22 for invalid values, 90 for capacity, 11 for idle and 13 for denied permission. Preserve original RPC status, observed length, controller result and the once-only close result separately. Complete controller refusals retain their diagnostics. An uncertain, timed-out or capacity-failed service is never automatically replayed.

Message publish/subscribe, service call/advertise/respond and action send-goal/cancel-own/feedback/result use the central owners. Each action role needs a separate explicit alias. A cancellation acknowledgement is distinct from a terminal result and physical stop. Keep context, capability, goal table and borrowed storage stable, close each acquired owner once, and inspect cleanup status.

## Complete public records

| ROS | Original record | Public language path/type |
| --- | --- | --- |
| 2 | `builtin_interfaces/msg/Duration` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `builtin_interfaces/msg/Time` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `std_msgs/msg/Header` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `geometry_msgs/msg/Vector3` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `geometry_msgs/msg/Quaternion` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `geometry_msgs/msg/Transform` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `geometry_msgs/msg/Twist` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/msg/JointTolerance` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/IOType` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/AnalogIO` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/AnalogIOCmd` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/AnalogIOState` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/BoolIO` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/CollaborativeSpeedScaling` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/ConnectionStatus` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/ForceSensor` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/Frame` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/IOCmd` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/IOState` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/NumReg` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/NumRegCmd` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/NumRegState` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/RMIStatus` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/RobotStatus` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/msg/RobotStatusExt` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/CfgForceSensor_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/CfgForceSensor_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetAnalogIO_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetAnalogIO_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetBoolIO_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetBoolIO_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetCartesianPosition_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetCartesianPosition_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetGroupIO_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetGroupIO_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetNumReg_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetNumReg_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetPayloadComp_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetPayloadComp_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetPayloadID_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetPayloadID_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetPayloadValue_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetPayloadValue_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetPosReg_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetPosReg_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetTCPSpeed_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetTCPSpeed_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetUFrameData_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetUFrameData_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetUFrameUTool_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetUFrameUTool_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetUToolData_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/GetUToolData_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/ReadError_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/ReadError_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/Reset_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/Reset_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetAnalogIO_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetAnalogIO_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetBoolIO_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetBoolIO_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetGenOverride_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetGenOverride_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetGroupIO_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetGroupIO_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetNumReg_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetNumReg_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetPayloadComp_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetPayloadComp_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetPayloadID_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetPayloadID_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetPayloadValue_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetPayloadValue_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetPosReg_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetPosReg_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetUFrameData_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetUFrameData_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetUFrameUTool_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetUFrameUTool_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetUToolData_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SetUToolData_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SwitchControlState_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `fanuc_msgs/srv/SwitchControlState_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/msg/CallParam` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/msg/Cartesian` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/msg/Command` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/msg/CommandOptions` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/msg/Joint` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/msg/MotionInstructionOptions` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/msg/MotionType` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/msg/Representation` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/msg/SpeedType` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/msg/TermType` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddCall_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddCall_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddMotionInstruction_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddMotionInstruction_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddSetPayload_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddSetPayload_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddSetUFrame_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddSetUFrame_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddSetUTool_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddSetUTool_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddWaitDIN_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddWaitDIN_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddWaitTime_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/AddWaitTime_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/CallCommand_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `rmi_msgs/srv/CallCommand_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `sensor_msgs/msg/JointState` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `std_srvs/srv/Trigger_Request` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |
| 2 | `std_srvs/srv/Trigger_Response` | `fanuc/c/ros2/fanuc-ros2-complete/bounded_records.h` |

This platform selects the locked ROS2 Jazzy catalog. ROS1 and the distinct Humble branch require separate original source and locks; they cannot alias this selection.
