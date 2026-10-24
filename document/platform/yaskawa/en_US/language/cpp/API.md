# YASKAWA / cpp API

Install the complete SDK, set `UWVM_ROS_SDK_ROOT` to its root, and run `xmake` in an independent example directory. Only Xmake is a preinstalled build prerequisite. The central adapter verifies the locked dependencies; it must not replace the requested language, VM version or memory width. This route uses **LLVM 23.1.4**. JVM/CLR routes use genuine AOT; interpreted routes pack the actual implementation and application into the single Wasm.

## Configuration and deployment

`set_language("cpp")` selects the actual source; `set_ros_platform("yaskawa")` selects this vendor. `set_ros1_version("noetic")` or `set_ros2_version("jazzy")` must match the catalog, real native installation and exported identities. `set_ros_config({catalog = "complete", transport = "native-ros"})` selects the immutable upstream interface set, separately from controller firmware.

`set_arch("wasm32")` / `set_arch("wasm64")` with `set_plat("wasm-wasip1")` request 32/64-bit memory and WASI Preview 1 respectively. Compiler, stdlib, VM, import ABI and actual uwvm2-ros must all match that width. WASI Preview 2, threads, exceptions and Wasm Core 3.0 features require explicit paired inputs; examples never downgrade. Controller model, joint order, groups, transport, ROS distribution, QoS and finite capacities come from `share/platform/yaskawa/provider.json` and the real deployment configuration.

Deploy one `.wasm`; sources and intermediate files stay in caches. `xmake run` uses the installed uwvm2-ros and must not probe compilers or create permissions. The operator manually supplies exact aliases, native types, directions, byte budgets, deadlines, QoS and clock rights. Catalog presence alone creates no registry entry or capability.

## Values, errors and ownership

See the platform `CATALOG.md` and `share/platform/yaskawa/catalogs` for every original declaration. Integer widths remain exact; 64-bit data uses native precise integers/words and never an R/PHP32 double. String bounds count UTF-8 bytes. Strict text rejects NUL, malformed encoding and truncation. Fixed arrays require their whole extent; sequences never truncate. Normalized nanoseconds lie in 0..999999999; all nonempty JointState arrays have equal length.

Explicit native-default construction differs from zero-filled storage: nonzero defaults such as Quaternion.w are retained. Read a value only after complete transactional decoding; failures never publish partial responses. Local errors are 22 for invalid values, 90 for capacity, 11 for idle and 13 for denied permission. Preserve original RPC status, observed length, controller result and the once-only close result separately. Complete controller refusals retain their diagnostics. An uncertain, timed-out or capacity-failed service is never automatically replayed.

Message publish/subscribe, service call/advertise/respond and action send-goal/cancel-own/feedback/result use the central owners. Each action role needs a separate explicit alias. A cancellation acknowledgement is distinct from a terminal result and physical stop. Keep context, capability, goal table and borrowed storage stable, close each acquired owner once, and inspect cleanup status.

## Complete public records

| ROS | Original record | Public language path/type |
| --- | --- | --- |
| 2 | `builtin_interfaces/msg/Duration` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `builtin_interfaces/msg/Time` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `std_msgs/msg/Header` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Vector3` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Quaternion` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Transform` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Twist` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/msg/JointTolerance` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/TransformStamped` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/msg/DebugLevel` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/msg/DeviceInfo` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/msg/RobotMode` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/msg/TriState` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/msg/RobotStatus` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/msg/ServiceReturnCode` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/CmdJointTrajectory_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/CmdJointTrajectory_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/GetRobotInfo_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/GetRobotInfo_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/SetDrivePower_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/SetDrivePower_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/SetRemoteLoggerLevel_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/SetRemoteLoggerLevel_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/StartMotion_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/StartMotion_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/StopMotion_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `industrial_msgs/srv/StopMotion_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/AlarmCauseRemedy` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/AlarmInfo` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/ErrorInfo` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/InformJobCrudResultCodes` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/InitTrajEnum` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/IoResultCodes` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/MotionReadyEnum` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/QueueResultEnum` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/msg/SelectionResultCodes` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/GetActiveAlarmInfo_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/GetActiveAlarmInfo_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ListInformJobs_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ListInformJobs_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/QueueTrajPoint_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/QueueTrajPoint_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ReadGroupIO_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ReadGroupIO_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ReadMRegister_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ReadMRegister_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ReadSingleIO_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ReadSingleIO_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ResetError_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/ResetError_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/SelectMotionTool_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/SelectMotionTool_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/StartPointQueueMode_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/StartPointQueueMode_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/StartTrajMode_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/StartTrajMode_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/WriteGroupIO_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/WriteGroupIO_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/WriteMRegister_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/WriteMRegister_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/WriteSingleIO_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `motoros2_interfaces/srv/WriteSingleIO_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `sensor_msgs/msg/JointState` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `std_srvs/srv/Trigger_Request` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `std_srvs/srv/Trigger_Response` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |
| 2 | `tf2_msgs/msg/TFMessage` | `yaskawa/cpp/ros2/yaskawa-ros2-complete/bounded_records.hpp` |

This platform uses its ROS2 catalog. The driver source lists Foxy/Galactic/Humble/Jazzy; actual compatibility still requires matching installed native exports. No ROS1 family is declared here.
