# ABB / java API

Install the complete SDK, set `UWVM_ROS_SDK_ROOT` to its root, and run `xmake` in an independent example directory. Only Xmake is a preinstalled build prerequisite. The central adapter verifies the locked dependencies; it must not replace the requested language, VM version or memory width. This route uses **shared pinned JVM AOT closure**. JVM/CLR routes use genuine AOT; interpreted routes pack the actual implementation and application into the single Wasm.

## Configuration and deployment

`set_language("java")` selects the actual source; `set_ros_platform("abb")` selects this vendor. `set_ros1_version("noetic")` or `set_ros2_version("jazzy")` must match the catalog, real native installation and exported identities. `set_ros_config({catalog = "complete", transport = "native-ros"})` selects the immutable upstream interface set, separately from controller firmware.

`set_arch("wasm32")` / `set_arch("wasm64")` with `set_plat("wasm-wasip1")` request 32/64-bit memory and WASI Preview 1 respectively. Compiler, stdlib, VM, import ABI and actual uwvm2-ros must all match that width. WASI Preview 2, threads, exceptions and Wasm Core 3.0 features require explicit paired inputs; examples never downgrade. Controller model, joint order, groups, transport, ROS distribution, QoS and finite capacities come from `share/platform/abb/provider.json` and the real deployment configuration.

Deploy one `.wasm`; sources and intermediate files stay in caches. `xmake run` uses the installed uwvm2-ros and must not probe compilers or create permissions. The operator manually supplies exact aliases, native types, directions, byte budgets, deadlines, QoS and clock rights. Catalog presence alone creates no registry entry or capability.

## Values, errors and ownership

See the platform `CATALOG.md` and `share/platform/abb/catalogs` for every original declaration. Integer widths remain exact; 64-bit data uses native precise integers/words and never an R/PHP32 double. String bounds count UTF-8 bytes. Strict text rejects NUL, malformed encoding and truncation. Fixed arrays require their whole extent; sequences never truncate. Normalized nanoseconds lie in 0..999999999; all nonempty JointState arrays have equal length.

Explicit native-default construction differs from zero-filled storage: nonzero defaults such as Quaternion.w are retained. Read a value only after complete transactional decoding; failures never publish partial responses. Local errors are 22 for invalid values, 90 for capacity, 11 for idle and 13 for denied permission. Preserve original RPC status, observed length, controller result and the once-only close result separately. Complete controller refusals retain their diagnostics. An uncertain, timed-out or capacity-failed service is never automatically replayed.

Message publish/subscribe, service call/advertise/respond and action send-goal/cancel-own/feedback/result use the central owners. Each action role needs a separate explicit alias. A cancellation acknowledgement is distinct from a terminal result and physical stop. Keep context, capability, goal table and borrowed storage stable, close each acquired owner once, and inspect cleanup status.

## Complete public records

| ROS | Original record | Public language path/type |
| --- | --- | --- |
| 1 | `abb_egm_msgs/EGMChannelState` | `uwvm.abb.ros1.Ros1Abb_egm_msgsEGMChannelState` |
| 1 | `time` | `uwvm.abb.ros1.Ros1Time` |
| 1 | `std_msgs/Header` | `uwvm.abb.ros1.Ros1Std_msgsHeader` |
| 1 | `abb_egm_msgs/EGMState` | `uwvm.abb.ros1.Ros1Abb_egm_msgsEGMState` |
| 1 | `abb_rapid_msgs/ConfData` | `uwvm.abb.ros1.Ros1Abb_rapid_msgsConfData` |
| 1 | `abb_rapid_msgs/ExtJoint` | `uwvm.abb.ros1.Ros1Abb_rapid_msgsExtJoint` |
| 1 | `abb_rapid_msgs/RobJoint` | `uwvm.abb.ros1.Ros1Abb_rapid_msgsRobJoint` |
| 1 | `abb_rapid_msgs/JointTarget` | `uwvm.abb.ros1.Ros1Abb_rapid_msgsJointTarget` |
| 1 | `abb_rapid_msgs/Pos` | `uwvm.abb.ros1.Ros1Abb_rapid_msgsPos` |
| 1 | `abb_rapid_msgs/Orient` | `uwvm.abb.ros1.Ros1Abb_rapid_msgsOrient` |
| 1 | `abb_rapid_msgs/LoadData` | `uwvm.abb.ros1.Ros1Abb_rapid_msgsLoadData` |
| 1 | `abb_rapid_msgs/Pose` | `uwvm.abb.ros1.Ros1Abb_rapid_msgsPose` |
| 1 | `abb_rapid_msgs/RobTarget` | `uwvm.abb.ros1.Ros1Abb_rapid_msgsRobTarget` |
| 1 | `abb_rapid_msgs/ToolData` | `uwvm.abb.ros1.Ros1Abb_rapid_msgsToolData` |
| 1 | `abb_rapid_msgs/WObjData` | `uwvm.abb.ros1.Ros1Abb_rapid_msgsWObjData` |
| 1 | `abb_rapid_sm_addin_msgs/EGMActivateSettings` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMRunSettings` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsEGMRunSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSetupSettings` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMStopSettings` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsEGMStopSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSettings` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsEGMSettings` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsRequest` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsResponse` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse` |
| 1 | `abb_rapid_sm_addin_msgs/StateMachineState` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsStateMachineState` |
| 1 | `abb_rapid_sm_addin_msgs/RuntimeState` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsRuntimeState` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsRequest` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsResponse` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandRequest` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandResponse` | `uwvm.abb.ros1.Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse` |
| 1 | `abb_robot_msgs/GetFileContentsRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetFileContentsRequest` |
| 1 | `abb_robot_msgs/GetFileContentsResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetFileContentsResponse` |
| 1 | `abb_robot_msgs/GetIOSignalRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetIOSignalRequest` |
| 1 | `abb_robot_msgs/GetIOSignalResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetIOSignalResponse` |
| 1 | `abb_robot_msgs/RAPIDSymbolPath` | `uwvm.abb.ros1.Ros1Abb_robot_msgsRAPIDSymbolPath` |
| 1 | `abb_robot_msgs/GetRAPIDBoolRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetRAPIDBoolRequest` |
| 1 | `abb_robot_msgs/GetRAPIDBoolResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetRAPIDBoolResponse` |
| 1 | `abb_robot_msgs/GetRAPIDDnumRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetRAPIDDnumRequest` |
| 1 | `abb_robot_msgs/GetRAPIDDnumResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetRAPIDDnumResponse` |
| 1 | `abb_robot_msgs/GetRAPIDNumRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetRAPIDNumRequest` |
| 1 | `abb_robot_msgs/GetRAPIDNumResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetRAPIDNumResponse` |
| 1 | `abb_robot_msgs/GetRAPIDStringRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetRAPIDStringRequest` |
| 1 | `abb_robot_msgs/GetRAPIDStringResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetRAPIDStringResponse` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetRAPIDSymbolRequest` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetRAPIDSymbolResponse` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse` |
| 1 | `abb_robot_msgs/GetSpeedRatioRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetSpeedRatioRequest` |
| 1 | `abb_robot_msgs/GetSpeedRatioResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsGetSpeedRatioResponse` |
| 1 | `abb_robot_msgs/MechanicalUnitState` | `uwvm.abb.ros1.Ros1Abb_robot_msgsMechanicalUnitState` |
| 1 | `abb_robot_msgs/RAPIDTaskState` | `uwvm.abb.ros1.Ros1Abb_robot_msgsRAPIDTaskState` |
| 1 | `abb_robot_msgs/ServiceResponses` | `uwvm.abb.ros1.Ros1Abb_robot_msgsServiceResponses` |
| 1 | `abb_robot_msgs/SetFileContentsRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetFileContentsRequest` |
| 1 | `abb_robot_msgs/SetFileContentsResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetFileContentsResponse` |
| 1 | `abb_robot_msgs/SetIOSignalRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetIOSignalRequest` |
| 1 | `abb_robot_msgs/SetIOSignalResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetIOSignalResponse` |
| 1 | `abb_robot_msgs/SetRAPIDBoolRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetRAPIDBoolRequest` |
| 1 | `abb_robot_msgs/SetRAPIDBoolResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetRAPIDBoolResponse` |
| 1 | `abb_robot_msgs/SetRAPIDDnumRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetRAPIDDnumRequest` |
| 1 | `abb_robot_msgs/SetRAPIDDnumResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetRAPIDDnumResponse` |
| 1 | `abb_robot_msgs/SetRAPIDNumRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetRAPIDNumRequest` |
| 1 | `abb_robot_msgs/SetRAPIDNumResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetRAPIDNumResponse` |
| 1 | `abb_robot_msgs/SetRAPIDStringRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetRAPIDStringRequest` |
| 1 | `abb_robot_msgs/SetRAPIDStringResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetRAPIDStringResponse` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetRAPIDSymbolRequest` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetRAPIDSymbolResponse` |
| 1 | `abb_robot_msgs/SetSpeedRatioRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetSpeedRatioRequest` |
| 1 | `abb_robot_msgs/SetSpeedRatioResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSetSpeedRatioResponse` |
| 1 | `abb_robot_msgs/SystemState` | `uwvm.abb.ros1.Ros1Abb_robot_msgsSystemState` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeRequest` | `uwvm.abb.ros1.Ros1Abb_robot_msgsTriggerWithResultCodeRequest` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeResponse` | `uwvm.abb.ros1.Ros1Abb_robot_msgsTriggerWithResultCodeResponse` |
| 1 | `duration` | `uwvm.abb.ros1.Ros1Duration` |
| 1 | `trajectory_msgs/JointTrajectoryPoint` | `uwvm.abb.ros1.Ros1Trajectory_msgsJointTrajectoryPoint` |
| 1 | `trajectory_msgs/JointTrajectory` | `uwvm.abb.ros1.Ros1Trajectory_msgsJointTrajectory` |
| 1 | `control_msgs/JointTolerance` | `uwvm.abb.ros1.Ros1Control_msgsJointTolerance` |
| 1 | `control_msgs/FollowJointTrajectoryGoal` | `uwvm.abb.ros1.Ros1Control_msgsFollowJointTrajectoryGoal` |
| 1 | `control_msgs/FollowJointTrajectoryResult` | `uwvm.abb.ros1.Ros1Control_msgsFollowJointTrajectoryResult` |
| 1 | `control_msgs/FollowJointTrajectoryFeedback` | `uwvm.abb.ros1.Ros1Control_msgsFollowJointTrajectoryFeedback` |
| 1 | `sensor_msgs/JointState` | `uwvm.abb.ros1.Ros1Sensor_msgsJointState` |
| 2 | `abb_egm_msgs/msg/EGMChannelState` | `uwvm.abb.ros2.Ros2Abb_egm_msgsMsgEGMChannelState` |
| 2 | `builtin_interfaces/msg/Time` | `uwvm.abb.ros2.Ros2Builtin_interfacesMsgTime` |
| 2 | `std_msgs/msg/Header` | `uwvm.abb.ros2.Ros2Std_msgsMsgHeader` |
| 2 | `abb_egm_msgs/msg/EGMState` | `uwvm.abb.ros2.Ros2Abb_egm_msgsMsgEGMState` |
| 2 | `abb_rapid_msgs/msg/ConfData` | `uwvm.abb.ros2.Ros2Abb_rapid_msgsMsgConfData` |
| 2 | `abb_rapid_msgs/msg/ExtJoint` | `uwvm.abb.ros2.Ros2Abb_rapid_msgsMsgExtJoint` |
| 2 | `abb_rapid_msgs/msg/RobJoint` | `uwvm.abb.ros2.Ros2Abb_rapid_msgsMsgRobJoint` |
| 2 | `abb_rapid_msgs/msg/JointTarget` | `uwvm.abb.ros2.Ros2Abb_rapid_msgsMsgJointTarget` |
| 2 | `abb_rapid_msgs/msg/Pos` | `uwvm.abb.ros2.Ros2Abb_rapid_msgsMsgPos` |
| 2 | `abb_rapid_msgs/msg/Orient` | `uwvm.abb.ros2.Ros2Abb_rapid_msgsMsgOrient` |
| 2 | `abb_rapid_msgs/msg/LoadData` | `uwvm.abb.ros2.Ros2Abb_rapid_msgsMsgLoadData` |
| 2 | `abb_rapid_msgs/msg/Pose` | `uwvm.abb.ros2.Ros2Abb_rapid_msgsMsgPose` |
| 2 | `abb_rapid_msgs/msg/RobTarget` | `uwvm.abb.ros2.Ros2Abb_rapid_msgsMsgRobTarget` |
| 2 | `abb_rapid_msgs/msg/ToolData` | `uwvm.abb.ros2.Ros2Abb_rapid_msgsMsgToolData` |
| 2 | `abb_rapid_msgs/msg/WObjData` | `uwvm.abb.ros2.Ros2Abb_rapid_msgsMsgWObjData` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMActivateSettings` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMRunSettings` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSetupSettings` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMStopSettings` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSettings` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/StateMachineState` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState` |
| 2 | `abb_rapid_sm_addin_msgs/msg/RuntimeState` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response` | `uwvm.abb.ros2.Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response` |
| 2 | `abb_robot_msgs/msg/MechanicalUnitState` | `uwvm.abb.ros2.Ros2Abb_robot_msgsMsgMechanicalUnitState` |
| 2 | `abb_robot_msgs/msg/RAPIDSymbolPath` | `uwvm.abb.ros2.Ros2Abb_robot_msgsMsgRAPIDSymbolPath` |
| 2 | `abb_robot_msgs/msg/RAPIDTaskState` | `uwvm.abb.ros2.Ros2Abb_robot_msgsMsgRAPIDTaskState` |
| 2 | `abb_robot_msgs/msg/ServiceResponses` | `uwvm.abb.ros2.Ros2Abb_robot_msgsMsgServiceResponses` |
| 2 | `abb_robot_msgs/msg/SystemState` | `uwvm.abb.ros2.Ros2Abb_robot_msgsMsgSystemState` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetFileContents_Request` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetFileContents_Response` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetIOSignal_Request` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetIOSignal_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetRAPIDBool_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetRAPIDBool_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetRAPIDNum_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetRAPIDNum_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetRAPIDString_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetRAPIDString_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetSpeedRatio_Request` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvGetSpeedRatio_Response` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetFileContents_Request` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetFileContents_Response` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetIOSignal_Request` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetIOSignal_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetRAPIDBool_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetRAPIDBool_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetRAPIDNum_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetRAPIDNum_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetRAPIDString_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetRAPIDString_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetSpeedRatio_Request` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvSetSpeedRatio_Response` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Request` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Response` | `uwvm.abb.ros2.Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response` |
| 2 | `builtin_interfaces/msg/Duration` | `uwvm.abb.ros2.Ros2Builtin_interfacesMsgDuration` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `uwvm.abb.ros2.Ros2Trajectory_msgsMsgJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `uwvm.abb.ros2.Ros2Trajectory_msgsMsgJointTrajectory` |
| 2 | `geometry_msgs/msg/Vector3` | `uwvm.abb.ros2.Ros2Geometry_msgsMsgVector3` |
| 2 | `geometry_msgs/msg/Quaternion` | `uwvm.abb.ros2.Ros2Geometry_msgsMsgQuaternion` |
| 2 | `geometry_msgs/msg/Transform` | `uwvm.abb.ros2.Ros2Geometry_msgsMsgTransform` |
| 2 | `geometry_msgs/msg/Twist` | `uwvm.abb.ros2.Ros2Geometry_msgsMsgTwist` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `uwvm.abb.ros2.Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `uwvm.abb.ros2.Ros2Trajectory_msgsMsgMultiDOFJointTrajectory` |
| 2 | `control_msgs/msg/JointTolerance` | `uwvm.abb.ros2.Ros2Control_msgsMsgJointTolerance` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `uwvm.abb.ros2.Ros2Control_msgsMsgJointComponentTolerance` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `uwvm.abb.ros2.Ros2Control_msgsActionFollowJointTrajectory_Goal` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `uwvm.abb.ros2.Ros2Control_msgsActionFollowJointTrajectory_Result` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `uwvm.abb.ros2.Ros2Control_msgsActionFollowJointTrajectory_Feedback` |
| 2 | `sensor_msgs/msg/JointState` | `uwvm.abb.ros2.Ros2Sensor_msgsMsgJointState` |
| 2 | `std_srvs/srv/Trigger_Request` | `uwvm.abb.ros2.Ros2Std_srvsSrvTrigger_Request` |
| 2 | `std_srvs/srv/Trigger_Response` | `uwvm.abb.ros2.Ros2Std_srvsSrvTrigger_Response` |

ABB's ROS1 driver and ROS2 message fork are independently pinned. Two source families do not establish interchangeable native drivers or controller versions.
