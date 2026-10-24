# ABB / js API

Install the complete SDK, set `UWVM_ROS_SDK_ROOT` to its root, and run `xmake` in an independent example directory. Only Xmake is a preinstalled build prerequisite. The central adapter verifies the locked dependencies; it must not replace the requested language, VM version or memory width. This route uses **QuickJS 2026-06-04**. JVM/CLR routes use genuine AOT; interpreted routes pack the actual implementation and application into the single Wasm.

## Configuration and deployment

`set_language("js")` selects the actual source; `set_ros_platform("abb")` selects this vendor. `set_ros1_version("noetic")` or `set_ros2_version("jazzy")` must match the catalog, real native installation and exported identities. `set_ros_config({catalog = "complete", transport = "native-ros"})` selects the immutable upstream interface set, separately from controller firmware.

`set_arch("wasm32")` / `set_arch("wasm64")` with `set_plat("wasm-wasip1")` request 32/64-bit memory and WASI Preview 1 respectively. Compiler, stdlib, VM, import ABI and actual uwvm2-ros must all match that width. WASI Preview 2, threads, exceptions and Wasm Core 3.0 features require explicit paired inputs; examples never downgrade. Controller model, joint order, groups, transport, ROS distribution, QoS and finite capacities come from `share/platform/abb/provider.json` and the real deployment configuration.

Deploy one `.wasm`; sources and intermediate files stay in caches. `xmake run` uses the installed uwvm2-ros and must not probe compilers or create permissions. The operator manually supplies exact aliases, native types, directions, byte budgets, deadlines, QoS and clock rights. Catalog presence alone creates no registry entry or capability.

## Values, errors and ownership

See the platform `CATALOG.md` and `share/platform/abb/catalogs` for every original declaration. Integer widths remain exact; 64-bit data uses native precise integers/words and never an R/PHP32 double. String bounds count UTF-8 bytes. Strict text rejects NUL, malformed encoding and truncation. Fixed arrays require their whole extent; sequences never truncate. Normalized nanoseconds lie in 0..999999999; all nonempty JointState arrays have equal length.

Explicit native-default construction differs from zero-filled storage: nonzero defaults such as Quaternion.w are retained. Read a value only after complete transactional decoding; failures never publish partial responses. Local errors are 22 for invalid values, 90 for capacity, 11 for idle and 13 for denied permission. Preserve original RPC status, observed length, controller result and the once-only close result separately. Complete controller refusals retain their diagnostics. An uncertain, timed-out or capacity-failed service is never automatically replayed.

Message publish/subscribe, service call/advertise/respond and action send-goal/cancel-own/feedback/result use the central owners. Each action role needs a separate explicit alias. A cancellation acknowledgement is distinct from a terminal result and physical stop. Keep context, capability, goal table and borrowed storage stable, close each acquired owner once, and inspect cleanup status.

## Complete public records

| ROS | Original record | Public language path/type |
| --- | --- | --- |
| 1 | `abb_egm_msgs/EGMChannelState` | `abb/js/ros1/records::Ros1Abb_egm_msgsEGMChannelState` |
| 1 | `time` | `abb/js/ros1/records::Ros1Time` |
| 1 | `std_msgs/Header` | `abb/js/ros1/records::Ros1Std_msgsHeader` |
| 1 | `abb_egm_msgs/EGMState` | `abb/js/ros1/records::Ros1Abb_egm_msgsEGMState` |
| 1 | `abb_rapid_msgs/ConfData` | `abb/js/ros1/records::Ros1Abb_rapid_msgsConfData` |
| 1 | `abb_rapid_msgs/ExtJoint` | `abb/js/ros1/records::Ros1Abb_rapid_msgsExtJoint` |
| 1 | `abb_rapid_msgs/RobJoint` | `abb/js/ros1/records::Ros1Abb_rapid_msgsRobJoint` |
| 1 | `abb_rapid_msgs/JointTarget` | `abb/js/ros1/records::Ros1Abb_rapid_msgsJointTarget` |
| 1 | `abb_rapid_msgs/Pos` | `abb/js/ros1/records::Ros1Abb_rapid_msgsPos` |
| 1 | `abb_rapid_msgs/Orient` | `abb/js/ros1/records::Ros1Abb_rapid_msgsOrient` |
| 1 | `abb_rapid_msgs/LoadData` | `abb/js/ros1/records::Ros1Abb_rapid_msgsLoadData` |
| 1 | `abb_rapid_msgs/Pose` | `abb/js/ros1/records::Ros1Abb_rapid_msgsPose` |
| 1 | `abb_rapid_msgs/RobTarget` | `abb/js/ros1/records::Ros1Abb_rapid_msgsRobTarget` |
| 1 | `abb_rapid_msgs/ToolData` | `abb/js/ros1/records::Ros1Abb_rapid_msgsToolData` |
| 1 | `abb_rapid_msgs/WObjData` | `abb/js/ros1/records::Ros1Abb_rapid_msgsWObjData` |
| 1 | `abb_rapid_sm_addin_msgs/EGMActivateSettings` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMRunSettings` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsEGMRunSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSetupSettings` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMStopSettings` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsEGMStopSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSettings` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsEGMSettings` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsRequest` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsResponse` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse` |
| 1 | `abb_rapid_sm_addin_msgs/StateMachineState` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsStateMachineState` |
| 1 | `abb_rapid_sm_addin_msgs/RuntimeState` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsRuntimeState` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsRequest` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsResponse` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandRequest` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandResponse` | `abb/js/ros1/records::Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse` |
| 1 | `abb_robot_msgs/GetFileContentsRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetFileContentsRequest` |
| 1 | `abb_robot_msgs/GetFileContentsResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetFileContentsResponse` |
| 1 | `abb_robot_msgs/GetIOSignalRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetIOSignalRequest` |
| 1 | `abb_robot_msgs/GetIOSignalResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetIOSignalResponse` |
| 1 | `abb_robot_msgs/RAPIDSymbolPath` | `abb/js/ros1/records::Ros1Abb_robot_msgsRAPIDSymbolPath` |
| 1 | `abb_robot_msgs/GetRAPIDBoolRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetRAPIDBoolRequest` |
| 1 | `abb_robot_msgs/GetRAPIDBoolResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetRAPIDBoolResponse` |
| 1 | `abb_robot_msgs/GetRAPIDDnumRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetRAPIDDnumRequest` |
| 1 | `abb_robot_msgs/GetRAPIDDnumResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetRAPIDDnumResponse` |
| 1 | `abb_robot_msgs/GetRAPIDNumRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetRAPIDNumRequest` |
| 1 | `abb_robot_msgs/GetRAPIDNumResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetRAPIDNumResponse` |
| 1 | `abb_robot_msgs/GetRAPIDStringRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetRAPIDStringRequest` |
| 1 | `abb_robot_msgs/GetRAPIDStringResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetRAPIDStringResponse` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetRAPIDSymbolRequest` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetRAPIDSymbolResponse` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse` |
| 1 | `abb_robot_msgs/GetSpeedRatioRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetSpeedRatioRequest` |
| 1 | `abb_robot_msgs/GetSpeedRatioResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsGetSpeedRatioResponse` |
| 1 | `abb_robot_msgs/MechanicalUnitState` | `abb/js/ros1/records::Ros1Abb_robot_msgsMechanicalUnitState` |
| 1 | `abb_robot_msgs/RAPIDTaskState` | `abb/js/ros1/records::Ros1Abb_robot_msgsRAPIDTaskState` |
| 1 | `abb_robot_msgs/ServiceResponses` | `abb/js/ros1/records::Ros1Abb_robot_msgsServiceResponses` |
| 1 | `abb_robot_msgs/SetFileContentsRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetFileContentsRequest` |
| 1 | `abb_robot_msgs/SetFileContentsResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetFileContentsResponse` |
| 1 | `abb_robot_msgs/SetIOSignalRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetIOSignalRequest` |
| 1 | `abb_robot_msgs/SetIOSignalResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetIOSignalResponse` |
| 1 | `abb_robot_msgs/SetRAPIDBoolRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetRAPIDBoolRequest` |
| 1 | `abb_robot_msgs/SetRAPIDBoolResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetRAPIDBoolResponse` |
| 1 | `abb_robot_msgs/SetRAPIDDnumRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetRAPIDDnumRequest` |
| 1 | `abb_robot_msgs/SetRAPIDDnumResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetRAPIDDnumResponse` |
| 1 | `abb_robot_msgs/SetRAPIDNumRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetRAPIDNumRequest` |
| 1 | `abb_robot_msgs/SetRAPIDNumResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetRAPIDNumResponse` |
| 1 | `abb_robot_msgs/SetRAPIDStringRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetRAPIDStringRequest` |
| 1 | `abb_robot_msgs/SetRAPIDStringResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetRAPIDStringResponse` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetRAPIDSymbolRequest` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetRAPIDSymbolResponse` |
| 1 | `abb_robot_msgs/SetSpeedRatioRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetSpeedRatioRequest` |
| 1 | `abb_robot_msgs/SetSpeedRatioResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsSetSpeedRatioResponse` |
| 1 | `abb_robot_msgs/SystemState` | `abb/js/ros1/records::Ros1Abb_robot_msgsSystemState` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeRequest` | `abb/js/ros1/records::Ros1Abb_robot_msgsTriggerWithResultCodeRequest` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeResponse` | `abb/js/ros1/records::Ros1Abb_robot_msgsTriggerWithResultCodeResponse` |
| 1 | `duration` | `abb/js/ros1/records::Ros1Duration` |
| 1 | `trajectory_msgs/JointTrajectoryPoint` | `abb/js/ros1/records::Ros1Trajectory_msgsJointTrajectoryPoint` |
| 1 | `trajectory_msgs/JointTrajectory` | `abb/js/ros1/records::Ros1Trajectory_msgsJointTrajectory` |
| 1 | `control_msgs/JointTolerance` | `abb/js/ros1/records::Ros1Control_msgsJointTolerance` |
| 1 | `control_msgs/FollowJointTrajectoryGoal` | `abb/js/ros1/records::Ros1Control_msgsFollowJointTrajectoryGoal` |
| 1 | `control_msgs/FollowJointTrajectoryResult` | `abb/js/ros1/records::Ros1Control_msgsFollowJointTrajectoryResult` |
| 1 | `control_msgs/FollowJointTrajectoryFeedback` | `abb/js/ros1/records::Ros1Control_msgsFollowJointTrajectoryFeedback` |
| 1 | `sensor_msgs/JointState` | `abb/js/ros1/records::Ros1Sensor_msgsJointState` |
| 2 | `abb_egm_msgs/msg/EGMChannelState` | `abb/js/ros2/records::Ros2Abb_egm_msgsMsgEGMChannelState` |
| 2 | `builtin_interfaces/msg/Time` | `abb/js/ros2/records::Ros2Builtin_interfacesMsgTime` |
| 2 | `std_msgs/msg/Header` | `abb/js/ros2/records::Ros2Std_msgsMsgHeader` |
| 2 | `abb_egm_msgs/msg/EGMState` | `abb/js/ros2/records::Ros2Abb_egm_msgsMsgEGMState` |
| 2 | `abb_rapid_msgs/msg/ConfData` | `abb/js/ros2/records::Ros2Abb_rapid_msgsMsgConfData` |
| 2 | `abb_rapid_msgs/msg/ExtJoint` | `abb/js/ros2/records::Ros2Abb_rapid_msgsMsgExtJoint` |
| 2 | `abb_rapid_msgs/msg/RobJoint` | `abb/js/ros2/records::Ros2Abb_rapid_msgsMsgRobJoint` |
| 2 | `abb_rapid_msgs/msg/JointTarget` | `abb/js/ros2/records::Ros2Abb_rapid_msgsMsgJointTarget` |
| 2 | `abb_rapid_msgs/msg/Pos` | `abb/js/ros2/records::Ros2Abb_rapid_msgsMsgPos` |
| 2 | `abb_rapid_msgs/msg/Orient` | `abb/js/ros2/records::Ros2Abb_rapid_msgsMsgOrient` |
| 2 | `abb_rapid_msgs/msg/LoadData` | `abb/js/ros2/records::Ros2Abb_rapid_msgsMsgLoadData` |
| 2 | `abb_rapid_msgs/msg/Pose` | `abb/js/ros2/records::Ros2Abb_rapid_msgsMsgPose` |
| 2 | `abb_rapid_msgs/msg/RobTarget` | `abb/js/ros2/records::Ros2Abb_rapid_msgsMsgRobTarget` |
| 2 | `abb_rapid_msgs/msg/ToolData` | `abb/js/ros2/records::Ros2Abb_rapid_msgsMsgToolData` |
| 2 | `abb_rapid_msgs/msg/WObjData` | `abb/js/ros2/records::Ros2Abb_rapid_msgsMsgWObjData` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMActivateSettings` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMRunSettings` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSetupSettings` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMStopSettings` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSettings` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/StateMachineState` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState` |
| 2 | `abb_rapid_sm_addin_msgs/msg/RuntimeState` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response` | `abb/js/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response` |
| 2 | `abb_robot_msgs/msg/MechanicalUnitState` | `abb/js/ros2/records::Ros2Abb_robot_msgsMsgMechanicalUnitState` |
| 2 | `abb_robot_msgs/msg/RAPIDSymbolPath` | `abb/js/ros2/records::Ros2Abb_robot_msgsMsgRAPIDSymbolPath` |
| 2 | `abb_robot_msgs/msg/RAPIDTaskState` | `abb/js/ros2/records::Ros2Abb_robot_msgsMsgRAPIDTaskState` |
| 2 | `abb_robot_msgs/msg/ServiceResponses` | `abb/js/ros2/records::Ros2Abb_robot_msgsMsgServiceResponses` |
| 2 | `abb_robot_msgs/msg/SystemState` | `abb/js/ros2/records::Ros2Abb_robot_msgsMsgSystemState` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetFileContents_Request` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetFileContents_Response` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetIOSignal_Request` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetIOSignal_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDBool_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDBool_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDNum_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDNum_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDString_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDString_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetSpeedRatio_Request` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvGetSpeedRatio_Response` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetFileContents_Request` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetFileContents_Response` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetIOSignal_Request` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetIOSignal_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDBool_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDBool_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDNum_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDNum_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDString_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDString_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetSpeedRatio_Request` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvSetSpeedRatio_Response` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Request` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Response` | `abb/js/ros2/records::Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response` |
| 2 | `builtin_interfaces/msg/Duration` | `abb/js/ros2/records::Ros2Builtin_interfacesMsgDuration` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `abb/js/ros2/records::Ros2Trajectory_msgsMsgJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `abb/js/ros2/records::Ros2Trajectory_msgsMsgJointTrajectory` |
| 2 | `geometry_msgs/msg/Vector3` | `abb/js/ros2/records::Ros2Geometry_msgsMsgVector3` |
| 2 | `geometry_msgs/msg/Quaternion` | `abb/js/ros2/records::Ros2Geometry_msgsMsgQuaternion` |
| 2 | `geometry_msgs/msg/Transform` | `abb/js/ros2/records::Ros2Geometry_msgsMsgTransform` |
| 2 | `geometry_msgs/msg/Twist` | `abb/js/ros2/records::Ros2Geometry_msgsMsgTwist` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `abb/js/ros2/records::Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `abb/js/ros2/records::Ros2Trajectory_msgsMsgMultiDOFJointTrajectory` |
| 2 | `control_msgs/msg/JointTolerance` | `abb/js/ros2/records::Ros2Control_msgsMsgJointTolerance` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `abb/js/ros2/records::Ros2Control_msgsMsgJointComponentTolerance` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `abb/js/ros2/records::Ros2Control_msgsActionFollowJointTrajectory_Goal` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `abb/js/ros2/records::Ros2Control_msgsActionFollowJointTrajectory_Result` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `abb/js/ros2/records::Ros2Control_msgsActionFollowJointTrajectory_Feedback` |
| 2 | `sensor_msgs/msg/JointState` | `abb/js/ros2/records::Ros2Sensor_msgsMsgJointState` |
| 2 | `std_srvs/srv/Trigger_Request` | `abb/js/ros2/records::Ros2Std_srvsSrvTrigger_Request` |
| 2 | `std_srvs/srv/Trigger_Response` | `abb/js/ros2/records::Ros2Std_srvsSrvTrigger_Response` |

ABB's ROS1 driver and ROS2 message fork are independently pinned. Two source families do not establish interchangeable native drivers or controller versions.
