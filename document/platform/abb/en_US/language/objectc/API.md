# ABB / objectc API

Install the complete SDK, set `UWVM_ROS_SDK_ROOT` to its root, and run `xmake` in an independent example directory. Only Xmake is a preinstalled build prerequisite. The central adapter verifies the locked dependencies; it must not replace the requested language, VM version or memory width. This route uses **LLVM 23.1.4 Objective-C C-interoperability route**. JVM/CLR routes use genuine AOT; interpreted routes pack the actual implementation and application into the single Wasm.

## Configuration and deployment

`set_language("objectc")` selects the actual source; `set_ros_platform("abb")` selects this vendor. `set_ros1_version("noetic")` or `set_ros2_version("jazzy")` must match the catalog, real native installation and exported identities. `set_ros_config({catalog = "complete", transport = "native-ros"})` selects the immutable upstream interface set, separately from controller firmware.

`set_arch("wasm32")` / `set_arch("wasm64")` with `set_plat("wasm-wasip1")` request 32/64-bit memory and WASI Preview 1 respectively. Compiler, stdlib, VM, import ABI and actual uwvm2-ros must all match that width. WASI Preview 2, threads, exceptions and Wasm Core 3.0 features require explicit paired inputs; examples never downgrade. Controller model, joint order, groups, transport, ROS distribution, QoS and finite capacities come from `share/platform/abb/provider.json` and the real deployment configuration.

Deploy one `.wasm`; sources and intermediate files stay in caches. `xmake run` uses the installed uwvm2-ros and must not probe compilers or create permissions. The operator manually supplies exact aliases, native types, directions, byte budgets, deadlines, QoS and clock rights. Catalog presence alone creates no registry entry or capability.

## Values, errors and ownership

See the platform `CATALOG.md` and `share/platform/abb/catalogs` for every original declaration. Integer widths remain exact; 64-bit data uses native precise integers/words and never an R/PHP32 double. String bounds count UTF-8 bytes. Strict text rejects NUL, malformed encoding and truncation. Fixed arrays require their whole extent; sequences never truncate. Normalized nanoseconds lie in 0..999999999; all nonempty JointState arrays have equal length.

Explicit native-default construction differs from zero-filled storage: nonzero defaults such as Quaternion.w are retained. Read a value only after complete transactional decoding; failures never publish partial responses. Local errors are 22 for invalid values, 90 for capacity, 11 for idle and 13 for denied permission. Preserve original RPC status, observed length, controller result and the once-only close result separately. Complete controller refusals retain their diagnostics. An uncertain, timed-out or capacity-failed service is never automatically replayed.

Message publish/subscribe, service call/advertise/respond and action send-goal/cancel-own/feedback/result use the central owners. Each action role needs a separate explicit alias. A cancellation acknowledgement is distinct from a terminal result and physical stop. Keep context, capability, goal table and borrowed storage stable, close each acquired owner once, and inspect cleanup status.

## Complete public records

| ROS | Original record | Public language path/type |
| --- | --- | --- |
| 1 | `abb_egm_msgs/EGMChannelState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `time` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `std_msgs/Header` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_egm_msgs/EGMState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/ConfData` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/ExtJoint` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/RobJoint` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/JointTarget` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/Pos` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/Orient` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/LoadData` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/Pose` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/RobTarget` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/ToolData` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_msgs/WObjData` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/EGMActivateSettings` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/EGMRunSettings` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSetupSettings` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/EGMStopSettings` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSettings` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/StateMachineState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/RuntimeState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetFileContentsRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetFileContentsResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetIOSignalRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetIOSignalResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/RAPIDSymbolPath` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDBoolRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDBoolResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDDnumRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDDnumResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDNumRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDNumResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDStringRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDStringResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetSpeedRatioRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/GetSpeedRatioResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/MechanicalUnitState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/RAPIDTaskState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/ServiceResponses` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetFileContentsRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetFileContentsResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetIOSignalRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetIOSignalResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDBoolRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDBoolResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDDnumRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDDnumResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDNumRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDNumResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDStringRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDStringResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetSpeedRatioRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SetSpeedRatioResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/SystemState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeRequest` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeResponse` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `duration` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `trajectory_msgs/JointTrajectoryPoint` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `trajectory_msgs/JointTrajectory` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `control_msgs/JointTolerance` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `control_msgs/FollowJointTrajectoryGoal` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `control_msgs/FollowJointTrajectoryResult` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `control_msgs/FollowJointTrajectoryFeedback` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 1 | `sensor_msgs/JointState` | `abb/c/ros1/abb-ros1-complete/bounded_records.h` |
| 2 | `abb_egm_msgs/msg/EGMChannelState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `builtin_interfaces/msg/Time` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `std_msgs/msg/Header` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_egm_msgs/msg/EGMState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/ConfData` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/ExtJoint` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/RobJoint` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/JointTarget` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/Pos` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/Orient` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/LoadData` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/Pose` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/RobTarget` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/ToolData` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_msgs/msg/WObjData` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMActivateSettings` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMRunSettings` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSetupSettings` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMStopSettings` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSettings` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/StateMachineState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/msg/RuntimeState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/msg/MechanicalUnitState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/msg/RAPIDSymbolPath` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/msg/RAPIDTaskState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/msg/ServiceResponses` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/msg/SystemState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `builtin_interfaces/msg/Duration` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `geometry_msgs/msg/Vector3` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `geometry_msgs/msg/Quaternion` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `geometry_msgs/msg/Transform` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `geometry_msgs/msg/Twist` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/msg/JointTolerance` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `sensor_msgs/msg/JointState` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `std_srvs/srv/Trigger_Request` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |
| 2 | `std_srvs/srv/Trigger_Response` | `abb/c/ros2/abb-ros2-complete/bounded_records.h` |

ABB's ROS1 driver and ROS2 message fork are independently pinned. Two source families do not establish interchangeable native drivers or controller versions.
