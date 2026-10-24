# FANUC / nim API

Install the complete SDK, set `UWVM_ROS_SDK_ROOT` to its root, and run `xmake` in an independent example directory. Only Xmake is a preinstalled build prerequisite. The central adapter verifies the locked dependencies; it must not replace the requested language, VM version or memory width. This route uses **Nim 2.2.4**. JVM/CLR routes use genuine AOT; interpreted routes pack the actual implementation and application into the single Wasm.

## Configuration and deployment

`set_language("nim")` selects the actual source; `set_ros_platform("fanuc")` selects this vendor. `set_ros1_version("noetic")` or `set_ros2_version("jazzy")` must match the catalog, real native installation and exported identities. `set_ros_config({catalog = "complete", transport = "native-ros"})` selects the immutable upstream interface set, separately from controller firmware.

`set_arch("wasm32")` / `set_arch("wasm64")` with `set_plat("wasm-wasip1")` request 32/64-bit memory and WASI Preview 1 respectively. Compiler, stdlib, VM, import ABI and actual uwvm2-ros must all match that width. WASI Preview 2, threads, exceptions and Wasm Core 3.0 features require explicit paired inputs; examples never downgrade. Controller model, joint order, groups, transport, ROS distribution, QoS and finite capacities come from `share/platform/fanuc/provider.json` and the real deployment configuration.

Deploy one `.wasm`; sources and intermediate files stay in caches. `xmake run` uses the installed uwvm2-ros and must not probe compilers or create permissions. The operator manually supplies exact aliases, native types, directions, byte budgets, deadlines, QoS and clock rights. Catalog presence alone creates no registry entry or capability.

## Values, errors and ownership

See the platform `CATALOG.md` and `share/platform/fanuc/catalogs` for every original declaration. Integer widths remain exact; 64-bit data uses native precise integers/words and never an R/PHP32 double. String bounds count UTF-8 bytes. Strict text rejects NUL, malformed encoding and truncation. Fixed arrays require their whole extent; sequences never truncate. Normalized nanoseconds lie in 0..999999999; all nonempty JointState arrays have equal length.

Explicit native-default construction differs from zero-filled storage: nonzero defaults such as Quaternion.w are retained. Read a value only after complete transactional decoding; failures never publish partial responses. Local errors are 22 for invalid values, 90 for capacity, 11 for idle and 13 for denied permission. Preserve original RPC status, observed length, controller result and the once-only close result separately. Complete controller refusals retain their diagnostics. An uncertain, timed-out or capacity-failed service is never automatically replayed.

Message publish/subscribe, service call/advertise/respond and action send-goal/cancel-own/feedback/result use the central owners. Each action role needs a separate explicit alias. A cancellation acknowledgement is distinct from a terminal result and physical stop. Keep context, capability, goal table and borrowed storage stable, close each acquired owner once, and inspect cleanup status.

## Complete public records

| ROS | Original record | Public language path/type |
| --- | --- | --- |
| 2 | `builtin_interfaces/msg/Duration` | `fanuc/nim/ros2/records::Ros2Builtin_interfacesMsgDuration` |
| 2 | `builtin_interfaces/msg/Time` | `fanuc/nim/ros2/records::Ros2Builtin_interfacesMsgTime` |
| 2 | `std_msgs/msg/Header` | `fanuc/nim/ros2/records::Ros2Std_msgsMsgHeader` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `fanuc/nim/ros2/records::Ros2Trajectory_msgsMsgJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `fanuc/nim/ros2/records::Ros2Trajectory_msgsMsgJointTrajectory` |
| 2 | `geometry_msgs/msg/Vector3` | `fanuc/nim/ros2/records::Ros2Geometry_msgsMsgVector3` |
| 2 | `geometry_msgs/msg/Quaternion` | `fanuc/nim/ros2/records::Ros2Geometry_msgsMsgQuaternion` |
| 2 | `geometry_msgs/msg/Transform` | `fanuc/nim/ros2/records::Ros2Geometry_msgsMsgTransform` |
| 2 | `geometry_msgs/msg/Twist` | `fanuc/nim/ros2/records::Ros2Geometry_msgsMsgTwist` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `fanuc/nim/ros2/records::Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `fanuc/nim/ros2/records::Ros2Trajectory_msgsMsgMultiDOFJointTrajectory` |
| 2 | `control_msgs/msg/JointTolerance` | `fanuc/nim/ros2/records::Ros2Control_msgsMsgJointTolerance` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `fanuc/nim/ros2/records::Ros2Control_msgsMsgJointComponentTolerance` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `fanuc/nim/ros2/records::Ros2Control_msgsActionFollowJointTrajectory_Goal` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `fanuc/nim/ros2/records::Ros2Control_msgsActionFollowJointTrajectory_Result` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `fanuc/nim/ros2/records::Ros2Control_msgsActionFollowJointTrajectory_Feedback` |
| 2 | `fanuc_msgs/msg/IOType` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgIOType` |
| 2 | `fanuc_msgs/msg/AnalogIO` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgAnalogIO` |
| 2 | `fanuc_msgs/msg/AnalogIOCmd` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgAnalogIOCmd` |
| 2 | `fanuc_msgs/msg/AnalogIOState` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgAnalogIOState` |
| 2 | `fanuc_msgs/msg/BoolIO` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgBoolIO` |
| 2 | `fanuc_msgs/msg/CollaborativeSpeedScaling` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgCollaborativeSpeedScaling` |
| 2 | `fanuc_msgs/msg/ConnectionStatus` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgConnectionStatus` |
| 2 | `fanuc_msgs/msg/ForceSensor` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgForceSensor` |
| 2 | `fanuc_msgs/msg/Frame` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgFrame` |
| 2 | `fanuc_msgs/msg/IOCmd` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgIOCmd` |
| 2 | `fanuc_msgs/msg/IOState` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgIOState` |
| 2 | `fanuc_msgs/msg/NumReg` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgNumReg` |
| 2 | `fanuc_msgs/msg/NumRegCmd` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgNumRegCmd` |
| 2 | `fanuc_msgs/msg/NumRegState` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgNumRegState` |
| 2 | `fanuc_msgs/msg/RMIStatus` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgRMIStatus` |
| 2 | `fanuc_msgs/msg/RobotStatus` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgRobotStatus` |
| 2 | `fanuc_msgs/msg/RobotStatusExt` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsMsgRobotStatusExt` |
| 2 | `fanuc_msgs/srv/CfgForceSensor_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvCfgForceSensor_Request` |
| 2 | `fanuc_msgs/srv/CfgForceSensor_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvCfgForceSensor_Response` |
| 2 | `fanuc_msgs/srv/GetAnalogIO_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetAnalogIO_Request` |
| 2 | `fanuc_msgs/srv/GetAnalogIO_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetAnalogIO_Response` |
| 2 | `fanuc_msgs/srv/GetBoolIO_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetBoolIO_Request` |
| 2 | `fanuc_msgs/srv/GetBoolIO_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetBoolIO_Response` |
| 2 | `fanuc_msgs/srv/GetCartesianPosition_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetCartesianPosition_Request` |
| 2 | `fanuc_msgs/srv/GetCartesianPosition_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetCartesianPosition_Response` |
| 2 | `fanuc_msgs/srv/GetGroupIO_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetGroupIO_Request` |
| 2 | `fanuc_msgs/srv/GetGroupIO_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetGroupIO_Response` |
| 2 | `fanuc_msgs/srv/GetNumReg_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetNumReg_Request` |
| 2 | `fanuc_msgs/srv/GetNumReg_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetNumReg_Response` |
| 2 | `fanuc_msgs/srv/GetPayloadComp_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetPayloadComp_Request` |
| 2 | `fanuc_msgs/srv/GetPayloadComp_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetPayloadComp_Response` |
| 2 | `fanuc_msgs/srv/GetPayloadID_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetPayloadID_Request` |
| 2 | `fanuc_msgs/srv/GetPayloadID_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetPayloadID_Response` |
| 2 | `fanuc_msgs/srv/GetPayloadValue_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetPayloadValue_Request` |
| 2 | `fanuc_msgs/srv/GetPayloadValue_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetPayloadValue_Response` |
| 2 | `fanuc_msgs/srv/GetPosReg_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetPosReg_Request` |
| 2 | `fanuc_msgs/srv/GetPosReg_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetPosReg_Response` |
| 2 | `fanuc_msgs/srv/GetTCPSpeed_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetTCPSpeed_Request` |
| 2 | `fanuc_msgs/srv/GetTCPSpeed_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetTCPSpeed_Response` |
| 2 | `fanuc_msgs/srv/GetUFrameData_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetUFrameData_Request` |
| 2 | `fanuc_msgs/srv/GetUFrameData_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetUFrameData_Response` |
| 2 | `fanuc_msgs/srv/GetUFrameUTool_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetUFrameUTool_Request` |
| 2 | `fanuc_msgs/srv/GetUFrameUTool_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetUFrameUTool_Response` |
| 2 | `fanuc_msgs/srv/GetUToolData_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetUToolData_Request` |
| 2 | `fanuc_msgs/srv/GetUToolData_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvGetUToolData_Response` |
| 2 | `fanuc_msgs/srv/ReadError_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvReadError_Request` |
| 2 | `fanuc_msgs/srv/ReadError_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvReadError_Response` |
| 2 | `fanuc_msgs/srv/Reset_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvReset_Request` |
| 2 | `fanuc_msgs/srv/Reset_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvReset_Response` |
| 2 | `fanuc_msgs/srv/SetAnalogIO_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetAnalogIO_Request` |
| 2 | `fanuc_msgs/srv/SetAnalogIO_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetAnalogIO_Response` |
| 2 | `fanuc_msgs/srv/SetBoolIO_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetBoolIO_Request` |
| 2 | `fanuc_msgs/srv/SetBoolIO_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetBoolIO_Response` |
| 2 | `fanuc_msgs/srv/SetGenOverride_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetGenOverride_Request` |
| 2 | `fanuc_msgs/srv/SetGenOverride_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetGenOverride_Response` |
| 2 | `fanuc_msgs/srv/SetGroupIO_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetGroupIO_Request` |
| 2 | `fanuc_msgs/srv/SetGroupIO_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetGroupIO_Response` |
| 2 | `fanuc_msgs/srv/SetNumReg_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetNumReg_Request` |
| 2 | `fanuc_msgs/srv/SetNumReg_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetNumReg_Response` |
| 2 | `fanuc_msgs/srv/SetPayloadComp_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetPayloadComp_Request` |
| 2 | `fanuc_msgs/srv/SetPayloadComp_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetPayloadComp_Response` |
| 2 | `fanuc_msgs/srv/SetPayloadID_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetPayloadID_Request` |
| 2 | `fanuc_msgs/srv/SetPayloadID_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetPayloadID_Response` |
| 2 | `fanuc_msgs/srv/SetPayloadValue_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetPayloadValue_Request` |
| 2 | `fanuc_msgs/srv/SetPayloadValue_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetPayloadValue_Response` |
| 2 | `fanuc_msgs/srv/SetPosReg_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetPosReg_Request` |
| 2 | `fanuc_msgs/srv/SetPosReg_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetPosReg_Response` |
| 2 | `fanuc_msgs/srv/SetUFrameData_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetUFrameData_Request` |
| 2 | `fanuc_msgs/srv/SetUFrameData_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetUFrameData_Response` |
| 2 | `fanuc_msgs/srv/SetUFrameUTool_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetUFrameUTool_Request` |
| 2 | `fanuc_msgs/srv/SetUFrameUTool_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetUFrameUTool_Response` |
| 2 | `fanuc_msgs/srv/SetUToolData_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetUToolData_Request` |
| 2 | `fanuc_msgs/srv/SetUToolData_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSetUToolData_Response` |
| 2 | `fanuc_msgs/srv/SwitchControlState_Request` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSwitchControlState_Request` |
| 2 | `fanuc_msgs/srv/SwitchControlState_Response` | `fanuc/nim/ros2/records::Ros2Fanuc_msgsSrvSwitchControlState_Response` |
| 2 | `rmi_msgs/msg/CallParam` | `fanuc/nim/ros2/records::Ros2Rmi_msgsMsgCallParam` |
| 2 | `rmi_msgs/msg/Cartesian` | `fanuc/nim/ros2/records::Ros2Rmi_msgsMsgCartesian` |
| 2 | `rmi_msgs/msg/Command` | `fanuc/nim/ros2/records::Ros2Rmi_msgsMsgCommand` |
| 2 | `rmi_msgs/msg/CommandOptions` | `fanuc/nim/ros2/records::Ros2Rmi_msgsMsgCommandOptions` |
| 2 | `rmi_msgs/msg/Joint` | `fanuc/nim/ros2/records::Ros2Rmi_msgsMsgJoint` |
| 2 | `rmi_msgs/msg/MotionInstructionOptions` | `fanuc/nim/ros2/records::Ros2Rmi_msgsMsgMotionInstructionOptions` |
| 2 | `rmi_msgs/msg/MotionType` | `fanuc/nim/ros2/records::Ros2Rmi_msgsMsgMotionType` |
| 2 | `rmi_msgs/msg/Representation` | `fanuc/nim/ros2/records::Ros2Rmi_msgsMsgRepresentation` |
| 2 | `rmi_msgs/msg/SpeedType` | `fanuc/nim/ros2/records::Ros2Rmi_msgsMsgSpeedType` |
| 2 | `rmi_msgs/msg/TermType` | `fanuc/nim/ros2/records::Ros2Rmi_msgsMsgTermType` |
| 2 | `rmi_msgs/srv/AddCall_Request` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddCall_Request` |
| 2 | `rmi_msgs/srv/AddCall_Response` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddCall_Response` |
| 2 | `rmi_msgs/srv/AddMotionInstruction_Request` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddMotionInstruction_Request` |
| 2 | `rmi_msgs/srv/AddMotionInstruction_Response` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddMotionInstruction_Response` |
| 2 | `rmi_msgs/srv/AddSetPayload_Request` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddSetPayload_Request` |
| 2 | `rmi_msgs/srv/AddSetPayload_Response` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddSetPayload_Response` |
| 2 | `rmi_msgs/srv/AddSetUFrame_Request` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddSetUFrame_Request` |
| 2 | `rmi_msgs/srv/AddSetUFrame_Response` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddSetUFrame_Response` |
| 2 | `rmi_msgs/srv/AddSetUTool_Request` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddSetUTool_Request` |
| 2 | `rmi_msgs/srv/AddSetUTool_Response` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddSetUTool_Response` |
| 2 | `rmi_msgs/srv/AddWaitDIN_Request` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddWaitDIN_Request` |
| 2 | `rmi_msgs/srv/AddWaitDIN_Response` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddWaitDIN_Response` |
| 2 | `rmi_msgs/srv/AddWaitTime_Request` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddWaitTime_Request` |
| 2 | `rmi_msgs/srv/AddWaitTime_Response` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvAddWaitTime_Response` |
| 2 | `rmi_msgs/srv/CallCommand_Request` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvCallCommand_Request` |
| 2 | `rmi_msgs/srv/CallCommand_Response` | `fanuc/nim/ros2/records::Ros2Rmi_msgsSrvCallCommand_Response` |
| 2 | `sensor_msgs/msg/JointState` | `fanuc/nim/ros2/records::Ros2Sensor_msgsMsgJointState` |
| 2 | `std_srvs/srv/Trigger_Request` | `fanuc/nim/ros2/records::Ros2Std_srvsSrvTrigger_Request` |
| 2 | `std_srvs/srv/Trigger_Response` | `fanuc/nim/ros2/records::Ros2Std_srvsSrvTrigger_Response` |

This platform selects the locked ROS2 Jazzy catalog. ROS1 and the distinct Humble branch require separate original source and locks; they cannot alias this selection.
