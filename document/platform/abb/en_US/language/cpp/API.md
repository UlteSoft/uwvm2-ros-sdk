# ABB / cpp API

Install the complete SDK, set `UWVM_ROS_SDK_ROOT` to its root, and run `xmake` in an independent example directory. Only Xmake is a preinstalled build prerequisite. The central adapter verifies the locked dependencies; it must not replace the requested language, VM version or memory width. This route uses **LLVM 23.1.4**. JVM/CLR routes use genuine AOT; interpreted routes pack the actual implementation and application into the single Wasm.

## Configuration and deployment

`set_language("cpp")` selects the actual source; `set_ros_platform("abb")` selects this vendor. `set_ros1_version("noetic")` or `set_ros2_version("jazzy")` must match the catalog, real native installation and exported identities. `set_ros_config({catalog = "complete", transport = "native-ros"})` selects the immutable upstream interface set, separately from controller firmware.

`set_arch("wasm32")` / `set_arch("wasm64")` with `set_plat("wasm-wasip1")` request 32/64-bit memory and WASI Preview 1 respectively. Compiler, stdlib, VM, import ABI and actual uwvm2-ros must all match that width. WASI Preview 2, threads, exceptions and Wasm Core 3.0 features require explicit paired inputs; examples never downgrade. Controller model, joint order, groups, transport, ROS distribution, QoS and finite capacities come from `share/platform/abb/provider.json` and the real deployment configuration.

Deploy one `.wasm`; sources and intermediate files stay in caches. `xmake run` uses the installed uwvm2-ros and must not probe compilers or create permissions. The operator manually supplies exact aliases, native types, directions, byte budgets, deadlines, QoS and clock rights. Catalog presence alone creates no registry entry or capability.

## Values, errors and ownership

See the platform `CATALOG.md` and `share/platform/abb/catalogs` for every original declaration. Integer widths remain exact; 64-bit data uses native precise integers/words and never an R/PHP32 double. String bounds count UTF-8 bytes. Strict text rejects NUL, malformed encoding and truncation. Fixed arrays require their whole extent; sequences never truncate. Normalized nanoseconds lie in 0..999999999; all nonempty JointState arrays have equal length.

Explicit native-default construction differs from zero-filled storage: nonzero defaults such as Quaternion.w are retained. Read a value only after complete transactional decoding; failures never publish partial responses. Local errors are 22 for invalid values, 90 for capacity, 11 for idle and 13 for denied permission. Preserve original RPC status, observed length, controller result and the once-only close result separately. Complete controller refusals retain their diagnostics. An uncertain, timed-out or capacity-failed service is never automatically replayed.

Message publish/subscribe, service call/advertise/respond and action send-goal/cancel-own/feedback/result use the central owners. Each action role needs a separate explicit alias. A cancellation acknowledgement is distinct from a terminal result and physical stop. Keep context, capability, goal table and borrowed storage stable, close each acquired owner once, and inspect cleanup status.

## Complete public records

| ROS | Original record | Public language path/type |
| --- | --- | --- |
| 1 | `abb_egm_msgs/EGMChannelState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `time` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `std_msgs/Header` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_egm_msgs/EGMState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/ConfData` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/ExtJoint` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/RobJoint` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/JointTarget` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/Pos` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/Orient` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/LoadData` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/Pose` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/RobTarget` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/ToolData` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_msgs/WObjData` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/EGMActivateSettings` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/EGMRunSettings` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSetupSettings` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/EGMStopSettings` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSettings` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/StateMachineState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/RuntimeState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetFileContentsRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetFileContentsResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetIOSignalRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetIOSignalResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/RAPIDSymbolPath` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDBoolRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDBoolResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDDnumRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDDnumResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDNumRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDNumResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDStringRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDStringResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetSpeedRatioRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/GetSpeedRatioResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/MechanicalUnitState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/RAPIDTaskState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/ServiceResponses` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetFileContentsRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetFileContentsResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetIOSignalRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetIOSignalResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDBoolRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDBoolResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDDnumRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDDnumResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDNumRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDNumResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDStringRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDStringResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetSpeedRatioRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SetSpeedRatioResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/SystemState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeRequest` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeResponse` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `duration` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `trajectory_msgs/JointTrajectoryPoint` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `trajectory_msgs/JointTrajectory` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `control_msgs/JointTolerance` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `control_msgs/FollowJointTrajectoryGoal` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `control_msgs/FollowJointTrajectoryResult` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `control_msgs/FollowJointTrajectoryFeedback` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 1 | `sensor_msgs/JointState` | `abb/cpp/ros1/abb-ros1-complete/bounded_records.hpp` |
| 2 | `abb_egm_msgs/msg/EGMChannelState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `builtin_interfaces/msg/Time` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `std_msgs/msg/Header` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_egm_msgs/msg/EGMState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/ConfData` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/ExtJoint` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/RobJoint` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/JointTarget` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/Pos` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/Orient` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/LoadData` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/Pose` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/RobTarget` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/ToolData` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_msgs/msg/WObjData` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMActivateSettings` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMRunSettings` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSetupSettings` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMStopSettings` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSettings` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/StateMachineState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/msg/RuntimeState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/msg/MechanicalUnitState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/msg/RAPIDSymbolPath` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/msg/RAPIDTaskState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/msg/ServiceResponses` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/msg/SystemState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `builtin_interfaces/msg/Duration` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Vector3` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Quaternion` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Transform` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `geometry_msgs/msg/Twist` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/msg/JointTolerance` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `sensor_msgs/msg/JointState` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `std_srvs/srv/Trigger_Request` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |
| 2 | `std_srvs/srv/Trigger_Response` | `abb/cpp/ros2/abb-ros2-complete/bounded_records.hpp` |

ABB's ROS1 driver and ROS2 message fork are independently pinned. Two source families do not establish interchangeable native drivers or controller versions.
