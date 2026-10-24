# FANUC / java API

Install the complete SDK, set `UWVM_ROS_SDK_ROOT` to its root, and run `xmake` in an independent example directory. Only Xmake is a preinstalled build prerequisite. The central adapter verifies the locked dependencies; it must not replace the requested language, VM version or memory width. This route uses **shared pinned JVM AOT closure**. JVM/CLR routes use genuine AOT; interpreted routes pack the actual implementation and application into the single Wasm.

## Configuration and deployment

`set_language("java")` selects the actual source; `set_ros_platform("fanuc")` selects this vendor. `set_ros1_version("noetic")` or `set_ros2_version("jazzy")` must match the catalog, real native installation and exported identities. `set_ros_config({catalog = "complete", transport = "native-ros"})` selects the immutable upstream interface set, separately from controller firmware.

`set_arch("wasm32")` / `set_arch("wasm64")` with `set_plat("wasm-wasip1")` request 32/64-bit memory and WASI Preview 1 respectively. Compiler, stdlib, VM, import ABI and actual uwvm2-ros must all match that width. WASI Preview 2, threads, exceptions and Wasm Core 3.0 features require explicit paired inputs; examples never downgrade. Controller model, joint order, groups, transport, ROS distribution, QoS and finite capacities come from `share/platform/fanuc/provider.json` and the real deployment configuration.

Deploy one `.wasm`; sources and intermediate files stay in caches. `xmake run` uses the installed uwvm2-ros and must not probe compilers or create permissions. The operator manually supplies exact aliases, native types, directions, byte budgets, deadlines, QoS and clock rights. Catalog presence alone creates no registry entry or capability.

## Values, errors and ownership

See the platform `CATALOG.md` and `share/platform/fanuc/catalogs` for every original declaration. Integer widths remain exact; 64-bit data uses native precise integers/words and never an R/PHP32 double. String bounds count UTF-8 bytes. Strict text rejects NUL, malformed encoding and truncation. Fixed arrays require their whole extent; sequences never truncate. Normalized nanoseconds lie in 0..999999999; all nonempty JointState arrays have equal length.

Explicit native-default construction differs from zero-filled storage: nonzero defaults such as Quaternion.w are retained. Read a value only after complete transactional decoding; failures never publish partial responses. Local errors are 22 for invalid values, 90 for capacity, 11 for idle and 13 for denied permission. Preserve original RPC status, observed length, controller result and the once-only close result separately. Complete controller refusals retain their diagnostics. An uncertain, timed-out or capacity-failed service is never automatically replayed.

Message publish/subscribe, service call/advertise/respond and action send-goal/cancel-own/feedback/result use the central owners. Each action role needs a separate explicit alias. A cancellation acknowledgement is distinct from a terminal result and physical stop. Keep context, capability, goal table and borrowed storage stable, close each acquired owner once, and inspect cleanup status.

## Complete public records

| ROS | Original record | Public language path/type |
| --- | --- | --- |
| 2 | `builtin_interfaces/msg/Duration` | `uwvm.fanuc.ros2.Ros2Builtin_interfacesMsgDuration` |
| 2 | `builtin_interfaces/msg/Time` | `uwvm.fanuc.ros2.Ros2Builtin_interfacesMsgTime` |
| 2 | `std_msgs/msg/Header` | `uwvm.fanuc.ros2.Ros2Std_msgsMsgHeader` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `uwvm.fanuc.ros2.Ros2Trajectory_msgsMsgJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `uwvm.fanuc.ros2.Ros2Trajectory_msgsMsgJointTrajectory` |
| 2 | `geometry_msgs/msg/Vector3` | `uwvm.fanuc.ros2.Ros2Geometry_msgsMsgVector3` |
| 2 | `geometry_msgs/msg/Quaternion` | `uwvm.fanuc.ros2.Ros2Geometry_msgsMsgQuaternion` |
| 2 | `geometry_msgs/msg/Transform` | `uwvm.fanuc.ros2.Ros2Geometry_msgsMsgTransform` |
| 2 | `geometry_msgs/msg/Twist` | `uwvm.fanuc.ros2.Ros2Geometry_msgsMsgTwist` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `uwvm.fanuc.ros2.Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `uwvm.fanuc.ros2.Ros2Trajectory_msgsMsgMultiDOFJointTrajectory` |
| 2 | `control_msgs/msg/JointTolerance` | `uwvm.fanuc.ros2.Ros2Control_msgsMsgJointTolerance` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `uwvm.fanuc.ros2.Ros2Control_msgsMsgJointComponentTolerance` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `uwvm.fanuc.ros2.Ros2Control_msgsActionFollowJointTrajectory_Goal` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `uwvm.fanuc.ros2.Ros2Control_msgsActionFollowJointTrajectory_Result` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `uwvm.fanuc.ros2.Ros2Control_msgsActionFollowJointTrajectory_Feedback` |
| 2 | `fanuc_msgs/msg/IOType` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgIOType` |
| 2 | `fanuc_msgs/msg/AnalogIO` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgAnalogIO` |
| 2 | `fanuc_msgs/msg/AnalogIOCmd` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgAnalogIOCmd` |
| 2 | `fanuc_msgs/msg/AnalogIOState` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgAnalogIOState` |
| 2 | `fanuc_msgs/msg/BoolIO` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgBoolIO` |
| 2 | `fanuc_msgs/msg/CollaborativeSpeedScaling` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgCollaborativeSpeedScaling` |
| 2 | `fanuc_msgs/msg/ConnectionStatus` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgConnectionStatus` |
| 2 | `fanuc_msgs/msg/ForceSensor` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgForceSensor` |
| 2 | `fanuc_msgs/msg/Frame` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgFrame` |
| 2 | `fanuc_msgs/msg/IOCmd` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgIOCmd` |
| 2 | `fanuc_msgs/msg/IOState` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgIOState` |
| 2 | `fanuc_msgs/msg/NumReg` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgNumReg` |
| 2 | `fanuc_msgs/msg/NumRegCmd` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgNumRegCmd` |
| 2 | `fanuc_msgs/msg/NumRegState` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgNumRegState` |
| 2 | `fanuc_msgs/msg/RMIStatus` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgRMIStatus` |
| 2 | `fanuc_msgs/msg/RobotStatus` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgRobotStatus` |
| 2 | `fanuc_msgs/msg/RobotStatusExt` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsMsgRobotStatusExt` |
| 2 | `fanuc_msgs/srv/CfgForceSensor_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvCfgForceSensor_Request` |
| 2 | `fanuc_msgs/srv/CfgForceSensor_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvCfgForceSensor_Response` |
| 2 | `fanuc_msgs/srv/GetAnalogIO_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetAnalogIO_Request` |
| 2 | `fanuc_msgs/srv/GetAnalogIO_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetAnalogIO_Response` |
| 2 | `fanuc_msgs/srv/GetBoolIO_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetBoolIO_Request` |
| 2 | `fanuc_msgs/srv/GetBoolIO_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetBoolIO_Response` |
| 2 | `fanuc_msgs/srv/GetCartesianPosition_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetCartesianPosition_Request` |
| 2 | `fanuc_msgs/srv/GetCartesianPosition_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetCartesianPosition_Response` |
| 2 | `fanuc_msgs/srv/GetGroupIO_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetGroupIO_Request` |
| 2 | `fanuc_msgs/srv/GetGroupIO_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetGroupIO_Response` |
| 2 | `fanuc_msgs/srv/GetNumReg_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetNumReg_Request` |
| 2 | `fanuc_msgs/srv/GetNumReg_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetNumReg_Response` |
| 2 | `fanuc_msgs/srv/GetPayloadComp_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetPayloadComp_Request` |
| 2 | `fanuc_msgs/srv/GetPayloadComp_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetPayloadComp_Response` |
| 2 | `fanuc_msgs/srv/GetPayloadID_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetPayloadID_Request` |
| 2 | `fanuc_msgs/srv/GetPayloadID_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetPayloadID_Response` |
| 2 | `fanuc_msgs/srv/GetPayloadValue_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetPayloadValue_Request` |
| 2 | `fanuc_msgs/srv/GetPayloadValue_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetPayloadValue_Response` |
| 2 | `fanuc_msgs/srv/GetPosReg_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetPosReg_Request` |
| 2 | `fanuc_msgs/srv/GetPosReg_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetPosReg_Response` |
| 2 | `fanuc_msgs/srv/GetTCPSpeed_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetTCPSpeed_Request` |
| 2 | `fanuc_msgs/srv/GetTCPSpeed_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetTCPSpeed_Response` |
| 2 | `fanuc_msgs/srv/GetUFrameData_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetUFrameData_Request` |
| 2 | `fanuc_msgs/srv/GetUFrameData_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetUFrameData_Response` |
| 2 | `fanuc_msgs/srv/GetUFrameUTool_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetUFrameUTool_Request` |
| 2 | `fanuc_msgs/srv/GetUFrameUTool_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetUFrameUTool_Response` |
| 2 | `fanuc_msgs/srv/GetUToolData_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetUToolData_Request` |
| 2 | `fanuc_msgs/srv/GetUToolData_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvGetUToolData_Response` |
| 2 | `fanuc_msgs/srv/ReadError_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvReadError_Request` |
| 2 | `fanuc_msgs/srv/ReadError_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvReadError_Response` |
| 2 | `fanuc_msgs/srv/Reset_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvReset_Request` |
| 2 | `fanuc_msgs/srv/Reset_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvReset_Response` |
| 2 | `fanuc_msgs/srv/SetAnalogIO_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetAnalogIO_Request` |
| 2 | `fanuc_msgs/srv/SetAnalogIO_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetAnalogIO_Response` |
| 2 | `fanuc_msgs/srv/SetBoolIO_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetBoolIO_Request` |
| 2 | `fanuc_msgs/srv/SetBoolIO_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetBoolIO_Response` |
| 2 | `fanuc_msgs/srv/SetGenOverride_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetGenOverride_Request` |
| 2 | `fanuc_msgs/srv/SetGenOverride_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetGenOverride_Response` |
| 2 | `fanuc_msgs/srv/SetGroupIO_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetGroupIO_Request` |
| 2 | `fanuc_msgs/srv/SetGroupIO_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetGroupIO_Response` |
| 2 | `fanuc_msgs/srv/SetNumReg_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetNumReg_Request` |
| 2 | `fanuc_msgs/srv/SetNumReg_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetNumReg_Response` |
| 2 | `fanuc_msgs/srv/SetPayloadComp_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetPayloadComp_Request` |
| 2 | `fanuc_msgs/srv/SetPayloadComp_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetPayloadComp_Response` |
| 2 | `fanuc_msgs/srv/SetPayloadID_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetPayloadID_Request` |
| 2 | `fanuc_msgs/srv/SetPayloadID_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetPayloadID_Response` |
| 2 | `fanuc_msgs/srv/SetPayloadValue_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetPayloadValue_Request` |
| 2 | `fanuc_msgs/srv/SetPayloadValue_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetPayloadValue_Response` |
| 2 | `fanuc_msgs/srv/SetPosReg_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetPosReg_Request` |
| 2 | `fanuc_msgs/srv/SetPosReg_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetPosReg_Response` |
| 2 | `fanuc_msgs/srv/SetUFrameData_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetUFrameData_Request` |
| 2 | `fanuc_msgs/srv/SetUFrameData_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetUFrameData_Response` |
| 2 | `fanuc_msgs/srv/SetUFrameUTool_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetUFrameUTool_Request` |
| 2 | `fanuc_msgs/srv/SetUFrameUTool_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetUFrameUTool_Response` |
| 2 | `fanuc_msgs/srv/SetUToolData_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetUToolData_Request` |
| 2 | `fanuc_msgs/srv/SetUToolData_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSetUToolData_Response` |
| 2 | `fanuc_msgs/srv/SwitchControlState_Request` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSwitchControlState_Request` |
| 2 | `fanuc_msgs/srv/SwitchControlState_Response` | `uwvm.fanuc.ros2.Ros2Fanuc_msgsSrvSwitchControlState_Response` |
| 2 | `rmi_msgs/msg/CallParam` | `uwvm.fanuc.ros2.Ros2Rmi_msgsMsgCallParam` |
| 2 | `rmi_msgs/msg/Cartesian` | `uwvm.fanuc.ros2.Ros2Rmi_msgsMsgCartesian` |
| 2 | `rmi_msgs/msg/Command` | `uwvm.fanuc.ros2.Ros2Rmi_msgsMsgCommand` |
| 2 | `rmi_msgs/msg/CommandOptions` | `uwvm.fanuc.ros2.Ros2Rmi_msgsMsgCommandOptions` |
| 2 | `rmi_msgs/msg/Joint` | `uwvm.fanuc.ros2.Ros2Rmi_msgsMsgJoint` |
| 2 | `rmi_msgs/msg/MotionInstructionOptions` | `uwvm.fanuc.ros2.Ros2Rmi_msgsMsgMotionInstructionOptions` |
| 2 | `rmi_msgs/msg/MotionType` | `uwvm.fanuc.ros2.Ros2Rmi_msgsMsgMotionType` |
| 2 | `rmi_msgs/msg/Representation` | `uwvm.fanuc.ros2.Ros2Rmi_msgsMsgRepresentation` |
| 2 | `rmi_msgs/msg/SpeedType` | `uwvm.fanuc.ros2.Ros2Rmi_msgsMsgSpeedType` |
| 2 | `rmi_msgs/msg/TermType` | `uwvm.fanuc.ros2.Ros2Rmi_msgsMsgTermType` |
| 2 | `rmi_msgs/srv/AddCall_Request` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddCall_Request` |
| 2 | `rmi_msgs/srv/AddCall_Response` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddCall_Response` |
| 2 | `rmi_msgs/srv/AddMotionInstruction_Request` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddMotionInstruction_Request` |
| 2 | `rmi_msgs/srv/AddMotionInstruction_Response` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddMotionInstruction_Response` |
| 2 | `rmi_msgs/srv/AddSetPayload_Request` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddSetPayload_Request` |
| 2 | `rmi_msgs/srv/AddSetPayload_Response` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddSetPayload_Response` |
| 2 | `rmi_msgs/srv/AddSetUFrame_Request` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddSetUFrame_Request` |
| 2 | `rmi_msgs/srv/AddSetUFrame_Response` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddSetUFrame_Response` |
| 2 | `rmi_msgs/srv/AddSetUTool_Request` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddSetUTool_Request` |
| 2 | `rmi_msgs/srv/AddSetUTool_Response` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddSetUTool_Response` |
| 2 | `rmi_msgs/srv/AddWaitDIN_Request` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddWaitDIN_Request` |
| 2 | `rmi_msgs/srv/AddWaitDIN_Response` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddWaitDIN_Response` |
| 2 | `rmi_msgs/srv/AddWaitTime_Request` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddWaitTime_Request` |
| 2 | `rmi_msgs/srv/AddWaitTime_Response` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvAddWaitTime_Response` |
| 2 | `rmi_msgs/srv/CallCommand_Request` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvCallCommand_Request` |
| 2 | `rmi_msgs/srv/CallCommand_Response` | `uwvm.fanuc.ros2.Ros2Rmi_msgsSrvCallCommand_Response` |
| 2 | `sensor_msgs/msg/JointState` | `uwvm.fanuc.ros2.Ros2Sensor_msgsMsgJointState` |
| 2 | `std_srvs/srv/Trigger_Request` | `uwvm.fanuc.ros2.Ros2Std_srvsSrvTrigger_Request` |
| 2 | `std_srvs/srv/Trigger_Response` | `uwvm.fanuc.ros2.Ros2Std_srvsSrvTrigger_Response` |

This platform selects the locked ROS2 Jazzy catalog. ROS1 and the distinct Humble branch require separate original source and locks; they cannot alias this selection.
