# YASKAWA / haskell API

Install the complete SDK, set `UWVM_ROS_SDK_ROOT` to its root, and run `xmake` in an independent example directory. Only Xmake is a preinstalled build prerequisite. The central adapter verifies the locked dependencies; it must not replace the requested language, VM version or memory width. This route uses **GHC 9.14.1.20260731**. JVM/CLR routes use genuine AOT; interpreted routes pack the actual implementation and application into the single Wasm.

## Configuration and deployment

`set_language("haskell")` selects the actual source; `set_ros_platform("yaskawa")` selects this vendor. `set_ros1_version("noetic")` or `set_ros2_version("jazzy")` must match the catalog, real native installation and exported identities. `set_ros_config({catalog = "complete", transport = "native-ros"})` selects the immutable upstream interface set, separately from controller firmware.

`set_arch("wasm32")` / `set_arch("wasm64")` with `set_plat("wasm-wasip1")` request 32/64-bit memory and WASI Preview 1 respectively. Compiler, stdlib, VM, import ABI and actual uwvm2-ros must all match that width. WASI Preview 2, threads, exceptions and Wasm Core 3.0 features require explicit paired inputs; examples never downgrade. Controller model, joint order, groups, transport, ROS distribution, QoS and finite capacities come from `share/platform/yaskawa/provider.json` and the real deployment configuration.

Deploy one `.wasm`; sources and intermediate files stay in caches. `xmake run` uses the installed uwvm2-ros and must not probe compilers or create permissions. The operator manually supplies exact aliases, native types, directions, byte budgets, deadlines, QoS and clock rights. Catalog presence alone creates no registry entry or capability.

## Values, errors and ownership

See the platform `CATALOG.md` and `share/platform/yaskawa/catalogs` for every original declaration. Integer widths remain exact; 64-bit data uses native precise integers/words and never an R/PHP32 double. String bounds count UTF-8 bytes. Strict text rejects NUL, malformed encoding and truncation. Fixed arrays require their whole extent; sequences never truncate. Normalized nanoseconds lie in 0..999999999; all nonempty JointState arrays have equal length.

Explicit native-default construction differs from zero-filled storage: nonzero defaults such as Quaternion.w are retained. Read a value only after complete transactional decoding; failures never publish partial responses. Local errors are 22 for invalid values, 90 for capacity, 11 for idle and 13 for denied permission. Preserve original RPC status, observed length, controller result and the once-only close result separately. Complete controller refusals retain their diagnostics. An uncertain, timed-out or capacity-failed service is never automatically replayed.

Message publish/subscribe, service call/advertise/respond and action send-goal/cancel-own/feedback/result use the central owners. Each action role needs a separate explicit alias. A cancellation acknowledgement is distinct from a terminal result and physical stop. Keep context, capability, goal table and borrowed storage stable, close each acquired owner once, and inspect cleanup status.

## Complete public records

| ROS | Original record | Public language path/type |
| --- | --- | --- |
| 2 | `builtin_interfaces/msg/Duration` | `YASKAWA.Ros2.Records.Ros2Builtin_interfacesMsgDuration` |
| 2 | `builtin_interfaces/msg/Time` | `YASKAWA.Ros2.Records.Ros2Builtin_interfacesMsgTime` |
| 2 | `std_msgs/msg/Header` | `YASKAWA.Ros2.Records.Ros2Std_msgsMsgHeader` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `YASKAWA.Ros2.Records.Ros2Trajectory_msgsMsgJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `YASKAWA.Ros2.Records.Ros2Trajectory_msgsMsgJointTrajectory` |
| 2 | `geometry_msgs/msg/Vector3` | `YASKAWA.Ros2.Records.Ros2Geometry_msgsMsgVector3` |
| 2 | `geometry_msgs/msg/Quaternion` | `YASKAWA.Ros2.Records.Ros2Geometry_msgsMsgQuaternion` |
| 2 | `geometry_msgs/msg/Transform` | `YASKAWA.Ros2.Records.Ros2Geometry_msgsMsgTransform` |
| 2 | `geometry_msgs/msg/Twist` | `YASKAWA.Ros2.Records.Ros2Geometry_msgsMsgTwist` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `YASKAWA.Ros2.Records.Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `YASKAWA.Ros2.Records.Ros2Trajectory_msgsMsgMultiDOFJointTrajectory` |
| 2 | `control_msgs/msg/JointTolerance` | `YASKAWA.Ros2.Records.Ros2Control_msgsMsgJointTolerance` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `YASKAWA.Ros2.Records.Ros2Control_msgsMsgJointComponentTolerance` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `YASKAWA.Ros2.Records.Ros2Control_msgsActionFollowJointTrajectory_Goal` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `YASKAWA.Ros2.Records.Ros2Control_msgsActionFollowJointTrajectory_Result` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `YASKAWA.Ros2.Records.Ros2Control_msgsActionFollowJointTrajectory_Feedback` |
| 2 | `geometry_msgs/msg/TransformStamped` | `YASKAWA.Ros2.Records.Ros2Geometry_msgsMsgTransformStamped` |
| 2 | `industrial_msgs/msg/DebugLevel` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsMsgDebugLevel` |
| 2 | `industrial_msgs/msg/DeviceInfo` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsMsgDeviceInfo` |
| 2 | `industrial_msgs/msg/RobotMode` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsMsgRobotMode` |
| 2 | `industrial_msgs/msg/TriState` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsMsgTriState` |
| 2 | `industrial_msgs/msg/RobotStatus` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsMsgRobotStatus` |
| 2 | `industrial_msgs/msg/ServiceReturnCode` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsMsgServiceReturnCode` |
| 2 | `industrial_msgs/srv/CmdJointTrajectory_Request` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsSrvCmdJointTrajectory_Request` |
| 2 | `industrial_msgs/srv/CmdJointTrajectory_Response` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsSrvCmdJointTrajectory_Response` |
| 2 | `industrial_msgs/srv/GetRobotInfo_Request` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsSrvGetRobotInfo_Request` |
| 2 | `industrial_msgs/srv/GetRobotInfo_Response` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsSrvGetRobotInfo_Response` |
| 2 | `industrial_msgs/srv/SetDrivePower_Request` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsSrvSetDrivePower_Request` |
| 2 | `industrial_msgs/srv/SetDrivePower_Response` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsSrvSetDrivePower_Response` |
| 2 | `industrial_msgs/srv/SetRemoteLoggerLevel_Request` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request` |
| 2 | `industrial_msgs/srv/SetRemoteLoggerLevel_Response` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response` |
| 2 | `industrial_msgs/srv/StartMotion_Request` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsSrvStartMotion_Request` |
| 2 | `industrial_msgs/srv/StartMotion_Response` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsSrvStartMotion_Response` |
| 2 | `industrial_msgs/srv/StopMotion_Request` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsSrvStopMotion_Request` |
| 2 | `industrial_msgs/srv/StopMotion_Response` | `YASKAWA.Ros2.Records.Ros2Industrial_msgsSrvStopMotion_Response` |
| 2 | `motoros2_interfaces/msg/AlarmCauseRemedy` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesMsgAlarmCauseRemedy` |
| 2 | `motoros2_interfaces/msg/AlarmInfo` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesMsgAlarmInfo` |
| 2 | `motoros2_interfaces/msg/ErrorInfo` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesMsgErrorInfo` |
| 2 | `motoros2_interfaces/msg/InformJobCrudResultCodes` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesMsgInformJobCrudResultCodes` |
| 2 | `motoros2_interfaces/msg/InitTrajEnum` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesMsgInitTrajEnum` |
| 2 | `motoros2_interfaces/msg/IoResultCodes` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesMsgIoResultCodes` |
| 2 | `motoros2_interfaces/msg/MotionReadyEnum` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesMsgMotionReadyEnum` |
| 2 | `motoros2_interfaces/msg/QueueResultEnum` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesMsgQueueResultEnum` |
| 2 | `motoros2_interfaces/msg/SelectionResultCodes` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesMsgSelectionResultCodes` |
| 2 | `motoros2_interfaces/srv/GetActiveAlarmInfo_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request` |
| 2 | `motoros2_interfaces/srv/GetActiveAlarmInfo_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response` |
| 2 | `motoros2_interfaces/srv/ListInformJobs_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvListInformJobs_Request` |
| 2 | `motoros2_interfaces/srv/ListInformJobs_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvListInformJobs_Response` |
| 2 | `motoros2_interfaces/srv/QueueTrajPoint_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvQueueTrajPoint_Request` |
| 2 | `motoros2_interfaces/srv/QueueTrajPoint_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvQueueTrajPoint_Response` |
| 2 | `motoros2_interfaces/srv/ReadGroupIO_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvReadGroupIO_Request` |
| 2 | `motoros2_interfaces/srv/ReadGroupIO_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvReadGroupIO_Response` |
| 2 | `motoros2_interfaces/srv/ReadMRegister_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvReadMRegister_Request` |
| 2 | `motoros2_interfaces/srv/ReadMRegister_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvReadMRegister_Response` |
| 2 | `motoros2_interfaces/srv/ReadSingleIO_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvReadSingleIO_Request` |
| 2 | `motoros2_interfaces/srv/ReadSingleIO_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvReadSingleIO_Response` |
| 2 | `motoros2_interfaces/srv/ResetError_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvResetError_Request` |
| 2 | `motoros2_interfaces/srv/ResetError_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvResetError_Response` |
| 2 | `motoros2_interfaces/srv/SelectMotionTool_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvSelectMotionTool_Request` |
| 2 | `motoros2_interfaces/srv/SelectMotionTool_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvSelectMotionTool_Response` |
| 2 | `motoros2_interfaces/srv/StartPointQueueMode_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvStartPointQueueMode_Request` |
| 2 | `motoros2_interfaces/srv/StartPointQueueMode_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvStartPointQueueMode_Response` |
| 2 | `motoros2_interfaces/srv/StartTrajMode_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvStartTrajMode_Request` |
| 2 | `motoros2_interfaces/srv/StartTrajMode_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvStartTrajMode_Response` |
| 2 | `motoros2_interfaces/srv/WriteGroupIO_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvWriteGroupIO_Request` |
| 2 | `motoros2_interfaces/srv/WriteGroupIO_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvWriteGroupIO_Response` |
| 2 | `motoros2_interfaces/srv/WriteMRegister_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvWriteMRegister_Request` |
| 2 | `motoros2_interfaces/srv/WriteMRegister_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvWriteMRegister_Response` |
| 2 | `motoros2_interfaces/srv/WriteSingleIO_Request` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvWriteSingleIO_Request` |
| 2 | `motoros2_interfaces/srv/WriteSingleIO_Response` | `YASKAWA.Ros2.Records.Ros2Motoros2_interfacesSrvWriteSingleIO_Response` |
| 2 | `sensor_msgs/msg/JointState` | `YASKAWA.Ros2.Records.Ros2Sensor_msgsMsgJointState` |
| 2 | `std_srvs/srv/Trigger_Request` | `YASKAWA.Ros2.Records.Ros2Std_srvsSrvTrigger_Request` |
| 2 | `std_srvs/srv/Trigger_Response` | `YASKAWA.Ros2.Records.Ros2Std_srvsSrvTrigger_Response` |
| 2 | `tf2_msgs/msg/TFMessage` | `YASKAWA.Ros2.Records.Ros2Tf2_msgsMsgTFMessage` |

This platform uses its ROS2 catalog. The driver source lists Foxy/Galactic/Humble/Jazzy; actual compatibility still requires matching installed native exports. No ROS1 family is declared here.
