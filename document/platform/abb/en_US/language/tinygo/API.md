# ABB / tinygo API

Install the complete SDK, set `UWVM_ROS_SDK_ROOT` to its root, and run `xmake` in an independent example directory. Only Xmake is a preinstalled build prerequisite. The central adapter verifies the locked dependencies; it must not replace the requested language, VM version or memory width. This route uses **TinyGo 0.38.0**. JVM/CLR routes use genuine AOT; interpreted routes pack the actual implementation and application into the single Wasm.

## Configuration and deployment

`set_language("tinygo")` selects the actual source; `set_ros_platform("abb")` selects this vendor. `set_ros1_version("noetic")` or `set_ros2_version("jazzy")` must match the catalog, real native installation and exported identities. `set_ros_config({catalog = "complete", transport = "native-ros"})` selects the immutable upstream interface set, separately from controller firmware.

`set_arch("wasm32")` / `set_arch("wasm64")` with `set_plat("wasm-wasip1")` request 32/64-bit memory and WASI Preview 1 respectively. Compiler, stdlib, VM, import ABI and actual uwvm2-ros must all match that width. WASI Preview 2, threads, exceptions and Wasm Core 3.0 features require explicit paired inputs; examples never downgrade. Controller model, joint order, groups, transport, ROS distribution, QoS and finite capacities come from `share/platform/abb/provider.json` and the real deployment configuration.

Deploy one `.wasm`; sources and intermediate files stay in caches. `xmake run` uses the installed uwvm2-ros and must not probe compilers or create permissions. The operator manually supplies exact aliases, native types, directions, byte budgets, deadlines, QoS and clock rights. Catalog presence alone creates no registry entry or capability.

## Values, errors and ownership

See the platform `CATALOG.md` and `share/platform/abb/catalogs` for every original declaration. Integer widths remain exact; 64-bit data uses native precise integers/words and never an R/PHP32 double. String bounds count UTF-8 bytes. Strict text rejects NUL, malformed encoding and truncation. Fixed arrays require their whole extent; sequences never truncate. Normalized nanoseconds lie in 0..999999999; all nonempty JointState arrays have equal length.

Explicit native-default construction differs from zero-filled storage: nonzero defaults such as Quaternion.w are retained. Read a value only after complete transactional decoding; failures never publish partial responses. Local errors are 22 for invalid values, 90 for capacity, 11 for idle and 13 for denied permission. Preserve original RPC status, observed length, controller result and the once-only close result separately. Complete controller refusals retain their diagnostics. An uncertain, timed-out or capacity-failed service is never automatically replayed.

Message publish/subscribe, service call/advertise/respond and action send-goal/cancel-own/feedback/result use the central owners. Each action role needs a separate explicit alias. A cancellation acknowledgement is distinct from a terminal result and physical stop. Keep context, capability, goal table and borrowed storage stable, close each acquired owner once, and inspect cleanup status.

## Complete public records

| ROS | Original record | Public language path/type |
| --- | --- | --- |
| 1 | `abb_egm_msgs/EGMChannelState` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_egm_msgsEGMChannelState` |
| 1 | `time` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Time` |
| 1 | `std_msgs/Header` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Std_msgsHeader` |
| 1 | `abb_egm_msgs/EGMState` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_egm_msgsEGMState` |
| 1 | `abb_rapid_msgs/ConfData` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_msgsConfData` |
| 1 | `abb_rapid_msgs/ExtJoint` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_msgsExtJoint` |
| 1 | `abb_rapid_msgs/RobJoint` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_msgsRobJoint` |
| 1 | `abb_rapid_msgs/JointTarget` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_msgsJointTarget` |
| 1 | `abb_rapid_msgs/Pos` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_msgsPos` |
| 1 | `abb_rapid_msgs/Orient` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_msgsOrient` |
| 1 | `abb_rapid_msgs/LoadData` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_msgsLoadData` |
| 1 | `abb_rapid_msgs/Pose` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_msgsPose` |
| 1 | `abb_rapid_msgs/RobTarget` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_msgsRobTarget` |
| 1 | `abb_rapid_msgs/ToolData` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_msgsToolData` |
| 1 | `abb_rapid_msgs/WObjData` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_msgsWObjData` |
| 1 | `abb_rapid_sm_addin_msgs/EGMActivateSettings` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMRunSettings` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsEGMRunSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSetupSettings` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMStopSettings` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsEGMStopSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSettings` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsEGMSettings` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse` |
| 1 | `abb_rapid_sm_addin_msgs/StateMachineState` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsStateMachineState` |
| 1 | `abb_rapid_sm_addin_msgs/RuntimeState` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsRuntimeState` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse` |
| 1 | `abb_robot_msgs/GetFileContentsRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetFileContentsRequest` |
| 1 | `abb_robot_msgs/GetFileContentsResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetFileContentsResponse` |
| 1 | `abb_robot_msgs/GetIOSignalRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetIOSignalRequest` |
| 1 | `abb_robot_msgs/GetIOSignalResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetIOSignalResponse` |
| 1 | `abb_robot_msgs/RAPIDSymbolPath` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsRAPIDSymbolPath` |
| 1 | `abb_robot_msgs/GetRAPIDBoolRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetRAPIDBoolRequest` |
| 1 | `abb_robot_msgs/GetRAPIDBoolResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetRAPIDBoolResponse` |
| 1 | `abb_robot_msgs/GetRAPIDDnumRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetRAPIDDnumRequest` |
| 1 | `abb_robot_msgs/GetRAPIDDnumResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetRAPIDDnumResponse` |
| 1 | `abb_robot_msgs/GetRAPIDNumRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetRAPIDNumRequest` |
| 1 | `abb_robot_msgs/GetRAPIDNumResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetRAPIDNumResponse` |
| 1 | `abb_robot_msgs/GetRAPIDStringRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetRAPIDStringRequest` |
| 1 | `abb_robot_msgs/GetRAPIDStringResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetRAPIDStringResponse` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetRAPIDSymbolRequest` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetRAPIDSymbolResponse` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse` |
| 1 | `abb_robot_msgs/GetSpeedRatioRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetSpeedRatioRequest` |
| 1 | `abb_robot_msgs/GetSpeedRatioResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsGetSpeedRatioResponse` |
| 1 | `abb_robot_msgs/MechanicalUnitState` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsMechanicalUnitState` |
| 1 | `abb_robot_msgs/RAPIDTaskState` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsRAPIDTaskState` |
| 1 | `abb_robot_msgs/ServiceResponses` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsServiceResponses` |
| 1 | `abb_robot_msgs/SetFileContentsRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetFileContentsRequest` |
| 1 | `abb_robot_msgs/SetFileContentsResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetFileContentsResponse` |
| 1 | `abb_robot_msgs/SetIOSignalRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetIOSignalRequest` |
| 1 | `abb_robot_msgs/SetIOSignalResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetIOSignalResponse` |
| 1 | `abb_robot_msgs/SetRAPIDBoolRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetRAPIDBoolRequest` |
| 1 | `abb_robot_msgs/SetRAPIDBoolResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetRAPIDBoolResponse` |
| 1 | `abb_robot_msgs/SetRAPIDDnumRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetRAPIDDnumRequest` |
| 1 | `abb_robot_msgs/SetRAPIDDnumResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetRAPIDDnumResponse` |
| 1 | `abb_robot_msgs/SetRAPIDNumRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetRAPIDNumRequest` |
| 1 | `abb_robot_msgs/SetRAPIDNumResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetRAPIDNumResponse` |
| 1 | `abb_robot_msgs/SetRAPIDStringRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetRAPIDStringRequest` |
| 1 | `abb_robot_msgs/SetRAPIDStringResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetRAPIDStringResponse` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetRAPIDSymbolRequest` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetRAPIDSymbolResponse` |
| 1 | `abb_robot_msgs/SetSpeedRatioRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetSpeedRatioRequest` |
| 1 | `abb_robot_msgs/SetSpeedRatioResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSetSpeedRatioResponse` |
| 1 | `abb_robot_msgs/SystemState` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsSystemState` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeRequest` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsTriggerWithResultCodeRequest` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeResponse` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Abb_robot_msgsTriggerWithResultCodeResponse` |
| 1 | `duration` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Duration` |
| 1 | `trajectory_msgs/JointTrajectoryPoint` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Trajectory_msgsJointTrajectoryPoint` |
| 1 | `trajectory_msgs/JointTrajectory` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Trajectory_msgsJointTrajectory` |
| 1 | `control_msgs/JointTolerance` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Control_msgsJointTolerance` |
| 1 | `control_msgs/FollowJointTrajectoryGoal` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Control_msgsFollowJointTrajectoryGoal` |
| 1 | `control_msgs/FollowJointTrajectoryResult` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Control_msgsFollowJointTrajectoryResult` |
| 1 | `control_msgs/FollowJointTrajectoryFeedback` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Control_msgsFollowJointTrajectoryFeedback` |
| 1 | `sensor_msgs/JointState` | `abb/tinygo/ros1/abb-ros1-complete::Ros1Sensor_msgsJointState` |
| 2 | `abb_egm_msgs/msg/EGMChannelState` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_egm_msgsMsgEGMChannelState` |
| 2 | `builtin_interfaces/msg/Time` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Builtin_interfacesMsgTime` |
| 2 | `std_msgs/msg/Header` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Std_msgsMsgHeader` |
| 2 | `abb_egm_msgs/msg/EGMState` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_egm_msgsMsgEGMState` |
| 2 | `abb_rapid_msgs/msg/ConfData` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_msgsMsgConfData` |
| 2 | `abb_rapid_msgs/msg/ExtJoint` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_msgsMsgExtJoint` |
| 2 | `abb_rapid_msgs/msg/RobJoint` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_msgsMsgRobJoint` |
| 2 | `abb_rapid_msgs/msg/JointTarget` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_msgsMsgJointTarget` |
| 2 | `abb_rapid_msgs/msg/Pos` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_msgsMsgPos` |
| 2 | `abb_rapid_msgs/msg/Orient` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_msgsMsgOrient` |
| 2 | `abb_rapid_msgs/msg/LoadData` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_msgsMsgLoadData` |
| 2 | `abb_rapid_msgs/msg/Pose` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_msgsMsgPose` |
| 2 | `abb_rapid_msgs/msg/RobTarget` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_msgsMsgRobTarget` |
| 2 | `abb_rapid_msgs/msg/ToolData` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_msgsMsgToolData` |
| 2 | `abb_rapid_msgs/msg/WObjData` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_msgsMsgWObjData` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMActivateSettings` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMRunSettings` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSetupSettings` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMStopSettings` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSettings` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/StateMachineState` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState` |
| 2 | `abb_rapid_sm_addin_msgs/msg/RuntimeState` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response` |
| 2 | `abb_robot_msgs/msg/MechanicalUnitState` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsMsgMechanicalUnitState` |
| 2 | `abb_robot_msgs/msg/RAPIDSymbolPath` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsMsgRAPIDSymbolPath` |
| 2 | `abb_robot_msgs/msg/RAPIDTaskState` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsMsgRAPIDTaskState` |
| 2 | `abb_robot_msgs/msg/ServiceResponses` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsMsgServiceResponses` |
| 2 | `abb_robot_msgs/msg/SystemState` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsMsgSystemState` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetFileContents_Request` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetFileContents_Response` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetIOSignal_Request` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetIOSignal_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetRAPIDBool_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetRAPIDBool_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetRAPIDNum_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetRAPIDNum_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetRAPIDString_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetRAPIDString_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetSpeedRatio_Request` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvGetSpeedRatio_Response` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetFileContents_Request` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetFileContents_Response` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetIOSignal_Request` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetIOSignal_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetRAPIDBool_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetRAPIDBool_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetRAPIDNum_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetRAPIDNum_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetRAPIDString_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetRAPIDString_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetSpeedRatio_Request` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvSetSpeedRatio_Response` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response` |
| 2 | `builtin_interfaces/msg/Duration` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Builtin_interfacesMsgDuration` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Trajectory_msgsMsgJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Trajectory_msgsMsgJointTrajectory` |
| 2 | `geometry_msgs/msg/Vector3` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Geometry_msgsMsgVector3` |
| 2 | `geometry_msgs/msg/Quaternion` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Geometry_msgsMsgQuaternion` |
| 2 | `geometry_msgs/msg/Transform` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Geometry_msgsMsgTransform` |
| 2 | `geometry_msgs/msg/Twist` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Geometry_msgsMsgTwist` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Trajectory_msgsMsgMultiDOFJointTrajectory` |
| 2 | `control_msgs/msg/JointTolerance` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Control_msgsMsgJointTolerance` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Control_msgsMsgJointComponentTolerance` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Control_msgsActionFollowJointTrajectory_Goal` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Control_msgsActionFollowJointTrajectory_Result` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Control_msgsActionFollowJointTrajectory_Feedback` |
| 2 | `sensor_msgs/msg/JointState` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Sensor_msgsMsgJointState` |
| 2 | `std_srvs/srv/Trigger_Request` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Std_srvsSrvTrigger_Request` |
| 2 | `std_srvs/srv/Trigger_Response` | `abb/tinygo/ros2/abb-ros2-complete::Ros2Std_srvsSrvTrigger_Response` |

ABB's ROS1 driver and ROS2 message fork are independently pinned. Two source families do not establish interchangeable native drivers or controller versions.
