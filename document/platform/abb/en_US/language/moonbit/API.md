# ABB / moonbit API

Install the complete SDK, set `UWVM_ROS_SDK_ROOT` to its root, and run `xmake` in an independent example directory. Only Xmake is a preinstalled build prerequisite. The central adapter verifies the locked dependencies; it must not replace the requested language, VM version or memory width. This route uses **MoonBit 0.10.16+b1a0e846e**. JVM/CLR routes use genuine AOT; interpreted routes pack the actual implementation and application into the single Wasm.

## Configuration and deployment

`set_language("moonbit")` selects the actual source; `set_ros_platform("abb")` selects this vendor. `set_ros1_version("noetic")` or `set_ros2_version("jazzy")` must match the catalog, real native installation and exported identities. `set_ros_config({catalog = "complete", transport = "native-ros"})` selects the immutable upstream interface set, separately from controller firmware.

`set_arch("wasm32")` / `set_arch("wasm64")` with `set_plat("wasm-wasip1")` request 32/64-bit memory and WASI Preview 1 respectively. Compiler, stdlib, VM, import ABI and actual uwvm2-ros must all match that width. WASI Preview 2, threads, exceptions and Wasm Core 3.0 features require explicit paired inputs; examples never downgrade. Controller model, joint order, groups, transport, ROS distribution, QoS and finite capacities come from `share/platform/abb/provider.json` and the real deployment configuration.

Deploy one `.wasm`; sources and intermediate files stay in caches. `xmake run` uses the installed uwvm2-ros and must not probe compilers or create permissions. The operator manually supplies exact aliases, native types, directions, byte budgets, deadlines, QoS and clock rights. Catalog presence alone creates no registry entry or capability.

## Values, errors and ownership

See the platform `CATALOG.md` and `share/platform/abb/catalogs` for every original declaration. Integer widths remain exact; 64-bit data uses native precise integers/words and never an R/PHP32 double. String bounds count UTF-8 bytes. Strict text rejects NUL, malformed encoding and truncation. Fixed arrays require their whole extent; sequences never truncate. Normalized nanoseconds lie in 0..999999999; all nonempty JointState arrays have equal length.

Explicit native-default construction differs from zero-filled storage: nonzero defaults such as Quaternion.w are retained. Read a value only after complete transactional decoding; failures never publish partial responses. Local errors are 22 for invalid values, 90 for capacity, 11 for idle and 13 for denied permission. Preserve original RPC status, observed length, controller result and the once-only close result separately. Complete controller refusals retain their diagnostics. An uncertain, timed-out or capacity-failed service is never automatically replayed.

Message publish/subscribe, service call/advertise/respond and action send-goal/cancel-own/feedback/result use the central owners. Each action role needs a separate explicit alias. A cancellation acknowledgement is distinct from a terminal result and physical stop. Keep context, capability, goal table and borrowed storage stable, close each acquired owner once, and inspect cleanup status.

## Complete public records

| ROS | Original record | Public language path/type |
| --- | --- | --- |
| 1 | `abb_egm_msgs/EGMChannelState` | `abb/moonbit/ros1/records::Ros1Abb_egm_msgsEGMChannelState` |
| 1 | `time` | `abb/moonbit/ros1/records::Ros1Time` |
| 1 | `std_msgs/Header` | `abb/moonbit/ros1/records::Ros1Std_msgsHeader` |
| 1 | `abb_egm_msgs/EGMState` | `abb/moonbit/ros1/records::Ros1Abb_egm_msgsEGMState` |
| 1 | `abb_rapid_msgs/ConfData` | `abb/moonbit/ros1/records::Ros1Abb_rapid_msgsConfData` |
| 1 | `abb_rapid_msgs/ExtJoint` | `abb/moonbit/ros1/records::Ros1Abb_rapid_msgsExtJoint` |
| 1 | `abb_rapid_msgs/RobJoint` | `abb/moonbit/ros1/records::Ros1Abb_rapid_msgsRobJoint` |
| 1 | `abb_rapid_msgs/JointTarget` | `abb/moonbit/ros1/records::Ros1Abb_rapid_msgsJointTarget` |
| 1 | `abb_rapid_msgs/Pos` | `abb/moonbit/ros1/records::Ros1Abb_rapid_msgsPos` |
| 1 | `abb_rapid_msgs/Orient` | `abb/moonbit/ros1/records::Ros1Abb_rapid_msgsOrient` |
| 1 | `abb_rapid_msgs/LoadData` | `abb/moonbit/ros1/records::Ros1Abb_rapid_msgsLoadData` |
| 1 | `abb_rapid_msgs/Pose` | `abb/moonbit/ros1/records::Ros1Abb_rapid_msgsPose` |
| 1 | `abb_rapid_msgs/RobTarget` | `abb/moonbit/ros1/records::Ros1Abb_rapid_msgsRobTarget` |
| 1 | `abb_rapid_msgs/ToolData` | `abb/moonbit/ros1/records::Ros1Abb_rapid_msgsToolData` |
| 1 | `abb_rapid_msgs/WObjData` | `abb/moonbit/ros1/records::Ros1Abb_rapid_msgsWObjData` |
| 1 | `abb_rapid_sm_addin_msgs/EGMActivateSettings` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMRunSettings` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsEGMRunSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSetupSettings` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMStopSettings` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsEGMStopSettings` |
| 1 | `abb_rapid_sm_addin_msgs/EGMSettings` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsEGMSettings` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsRequest` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest` |
| 1 | `abb_rapid_sm_addin_msgs/GetEGMSettingsResponse` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse` |
| 1 | `abb_rapid_sm_addin_msgs/StateMachineState` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsStateMachineState` |
| 1 | `abb_rapid_sm_addin_msgs/RuntimeState` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsRuntimeState` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsRequest` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest` |
| 1 | `abb_rapid_sm_addin_msgs/SetEGMSettingsResponse` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest` |
| 1 | `abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandRequest` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest` |
| 1 | `abb_rapid_sm_addin_msgs/SetSGCommandResponse` | `abb/moonbit/ros1/records::Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse` |
| 1 | `abb_robot_msgs/GetFileContentsRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetFileContentsRequest` |
| 1 | `abb_robot_msgs/GetFileContentsResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetFileContentsResponse` |
| 1 | `abb_robot_msgs/GetIOSignalRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetIOSignalRequest` |
| 1 | `abb_robot_msgs/GetIOSignalResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetIOSignalResponse` |
| 1 | `abb_robot_msgs/RAPIDSymbolPath` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsRAPIDSymbolPath` |
| 1 | `abb_robot_msgs/GetRAPIDBoolRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetRAPIDBoolRequest` |
| 1 | `abb_robot_msgs/GetRAPIDBoolResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetRAPIDBoolResponse` |
| 1 | `abb_robot_msgs/GetRAPIDDnumRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetRAPIDDnumRequest` |
| 1 | `abb_robot_msgs/GetRAPIDDnumResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetRAPIDDnumResponse` |
| 1 | `abb_robot_msgs/GetRAPIDNumRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetRAPIDNumRequest` |
| 1 | `abb_robot_msgs/GetRAPIDNumResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetRAPIDNumResponse` |
| 1 | `abb_robot_msgs/GetRAPIDStringRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetRAPIDStringRequest` |
| 1 | `abb_robot_msgs/GetRAPIDStringResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetRAPIDStringResponse` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetRAPIDSymbolRequest` |
| 1 | `abb_robot_msgs/GetRAPIDSymbolResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetRAPIDSymbolResponse` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest` |
| 1 | `abb_robot_msgs/GetRobotControllerDescriptionResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse` |
| 1 | `abb_robot_msgs/GetSpeedRatioRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetSpeedRatioRequest` |
| 1 | `abb_robot_msgs/GetSpeedRatioResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsGetSpeedRatioResponse` |
| 1 | `abb_robot_msgs/MechanicalUnitState` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsMechanicalUnitState` |
| 1 | `abb_robot_msgs/RAPIDTaskState` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsRAPIDTaskState` |
| 1 | `abb_robot_msgs/ServiceResponses` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsServiceResponses` |
| 1 | `abb_robot_msgs/SetFileContentsRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetFileContentsRequest` |
| 1 | `abb_robot_msgs/SetFileContentsResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetFileContentsResponse` |
| 1 | `abb_robot_msgs/SetIOSignalRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetIOSignalRequest` |
| 1 | `abb_robot_msgs/SetIOSignalResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetIOSignalResponse` |
| 1 | `abb_robot_msgs/SetRAPIDBoolRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetRAPIDBoolRequest` |
| 1 | `abb_robot_msgs/SetRAPIDBoolResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetRAPIDBoolResponse` |
| 1 | `abb_robot_msgs/SetRAPIDDnumRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetRAPIDDnumRequest` |
| 1 | `abb_robot_msgs/SetRAPIDDnumResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetRAPIDDnumResponse` |
| 1 | `abb_robot_msgs/SetRAPIDNumRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetRAPIDNumRequest` |
| 1 | `abb_robot_msgs/SetRAPIDNumResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetRAPIDNumResponse` |
| 1 | `abb_robot_msgs/SetRAPIDStringRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetRAPIDStringRequest` |
| 1 | `abb_robot_msgs/SetRAPIDStringResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetRAPIDStringResponse` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetRAPIDSymbolRequest` |
| 1 | `abb_robot_msgs/SetRAPIDSymbolResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetRAPIDSymbolResponse` |
| 1 | `abb_robot_msgs/SetSpeedRatioRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetSpeedRatioRequest` |
| 1 | `abb_robot_msgs/SetSpeedRatioResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSetSpeedRatioResponse` |
| 1 | `abb_robot_msgs/SystemState` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsSystemState` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeRequest` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsTriggerWithResultCodeRequest` |
| 1 | `abb_robot_msgs/TriggerWithResultCodeResponse` | `abb/moonbit/ros1/records::Ros1Abb_robot_msgsTriggerWithResultCodeResponse` |
| 1 | `duration` | `abb/moonbit/ros1/records::Ros1Duration` |
| 1 | `trajectory_msgs/JointTrajectoryPoint` | `abb/moonbit/ros1/records::Ros1Trajectory_msgsJointTrajectoryPoint` |
| 1 | `trajectory_msgs/JointTrajectory` | `abb/moonbit/ros1/records::Ros1Trajectory_msgsJointTrajectory` |
| 1 | `control_msgs/JointTolerance` | `abb/moonbit/ros1/records::Ros1Control_msgsJointTolerance` |
| 1 | `control_msgs/FollowJointTrajectoryGoal` | `abb/moonbit/ros1/records::Ros1Control_msgsFollowJointTrajectoryGoal` |
| 1 | `control_msgs/FollowJointTrajectoryResult` | `abb/moonbit/ros1/records::Ros1Control_msgsFollowJointTrajectoryResult` |
| 1 | `control_msgs/FollowJointTrajectoryFeedback` | `abb/moonbit/ros1/records::Ros1Control_msgsFollowJointTrajectoryFeedback` |
| 1 | `sensor_msgs/JointState` | `abb/moonbit/ros1/records::Ros1Sensor_msgsJointState` |
| 2 | `abb_egm_msgs/msg/EGMChannelState` | `abb/moonbit/ros2/records::Ros2Abb_egm_msgsMsgEGMChannelState` |
| 2 | `builtin_interfaces/msg/Time` | `abb/moonbit/ros2/records::Ros2Builtin_interfacesMsgTime` |
| 2 | `std_msgs/msg/Header` | `abb/moonbit/ros2/records::Ros2Std_msgsMsgHeader` |
| 2 | `abb_egm_msgs/msg/EGMState` | `abb/moonbit/ros2/records::Ros2Abb_egm_msgsMsgEGMState` |
| 2 | `abb_rapid_msgs/msg/ConfData` | `abb/moonbit/ros2/records::Ros2Abb_rapid_msgsMsgConfData` |
| 2 | `abb_rapid_msgs/msg/ExtJoint` | `abb/moonbit/ros2/records::Ros2Abb_rapid_msgsMsgExtJoint` |
| 2 | `abb_rapid_msgs/msg/RobJoint` | `abb/moonbit/ros2/records::Ros2Abb_rapid_msgsMsgRobJoint` |
| 2 | `abb_rapid_msgs/msg/JointTarget` | `abb/moonbit/ros2/records::Ros2Abb_rapid_msgsMsgJointTarget` |
| 2 | `abb_rapid_msgs/msg/Pos` | `abb/moonbit/ros2/records::Ros2Abb_rapid_msgsMsgPos` |
| 2 | `abb_rapid_msgs/msg/Orient` | `abb/moonbit/ros2/records::Ros2Abb_rapid_msgsMsgOrient` |
| 2 | `abb_rapid_msgs/msg/LoadData` | `abb/moonbit/ros2/records::Ros2Abb_rapid_msgsMsgLoadData` |
| 2 | `abb_rapid_msgs/msg/Pose` | `abb/moonbit/ros2/records::Ros2Abb_rapid_msgsMsgPose` |
| 2 | `abb_rapid_msgs/msg/RobTarget` | `abb/moonbit/ros2/records::Ros2Abb_rapid_msgsMsgRobTarget` |
| 2 | `abb_rapid_msgs/msg/ToolData` | `abb/moonbit/ros2/records::Ros2Abb_rapid_msgsMsgToolData` |
| 2 | `abb_rapid_msgs/msg/WObjData` | `abb/moonbit/ros2/records::Ros2Abb_rapid_msgsMsgWObjData` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMActivateSettings` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMRunSettings` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSetupSettings` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMStopSettings` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/EGMSettings` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings` |
| 2 | `abb_rapid_sm_addin_msgs/msg/StateMachineState` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState` |
| 2 | `abb_rapid_sm_addin_msgs/msg/RuntimeState` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request` |
| 2 | `abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response` | `abb/moonbit/ros2/records::Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response` |
| 2 | `abb_robot_msgs/msg/MechanicalUnitState` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsMsgMechanicalUnitState` |
| 2 | `abb_robot_msgs/msg/RAPIDSymbolPath` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsMsgRAPIDSymbolPath` |
| 2 | `abb_robot_msgs/msg/RAPIDTaskState` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsMsgRAPIDTaskState` |
| 2 | `abb_robot_msgs/msg/ServiceResponses` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsMsgServiceResponses` |
| 2 | `abb_robot_msgs/msg/SystemState` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsMsgSystemState` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetFileContents_Request` |
| 2 | `abb_robot_msgs/srv/GetFileContents_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetFileContents_Response` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetIOSignal_Request` |
| 2 | `abb_robot_msgs/srv/GetIOSignal_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetIOSignal_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDBool_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDBool_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDBool_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDDnum_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDNum_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDNum_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDNum_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDString_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDString_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDString_Response` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request` |
| 2 | `abb_robot_msgs/srv/GetRAPIDSymbol_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request` |
| 2 | `abb_robot_msgs/srv/GetRobotControllerDescription_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetSpeedRatio_Request` |
| 2 | `abb_robot_msgs/srv/GetSpeedRatio_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvGetSpeedRatio_Response` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetFileContents_Request` |
| 2 | `abb_robot_msgs/srv/SetFileContents_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetFileContents_Response` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetIOSignal_Request` |
| 2 | `abb_robot_msgs/srv/SetIOSignal_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetIOSignal_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDBool_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDBool_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDBool_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDDnum_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDNum_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDNum_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDNum_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDString_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDString_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDString_Response` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request` |
| 2 | `abb_robot_msgs/srv/SetRAPIDSymbol_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetSpeedRatio_Request` |
| 2 | `abb_robot_msgs/srv/SetSpeedRatio_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvSetSpeedRatio_Response` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Request` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request` |
| 2 | `abb_robot_msgs/srv/TriggerWithResultCode_Response` | `abb/moonbit/ros2/records::Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response` |
| 2 | `builtin_interfaces/msg/Duration` | `abb/moonbit/ros2/records::Ros2Builtin_interfacesMsgDuration` |
| 2 | `trajectory_msgs/msg/JointTrajectoryPoint` | `abb/moonbit/ros2/records::Ros2Trajectory_msgsMsgJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/JointTrajectory` | `abb/moonbit/ros2/records::Ros2Trajectory_msgsMsgJointTrajectory` |
| 2 | `geometry_msgs/msg/Vector3` | `abb/moonbit/ros2/records::Ros2Geometry_msgsMsgVector3` |
| 2 | `geometry_msgs/msg/Quaternion` | `abb/moonbit/ros2/records::Ros2Geometry_msgsMsgQuaternion` |
| 2 | `geometry_msgs/msg/Transform` | `abb/moonbit/ros2/records::Ros2Geometry_msgsMsgTransform` |
| 2 | `geometry_msgs/msg/Twist` | `abb/moonbit/ros2/records::Ros2Geometry_msgsMsgTwist` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | `abb/moonbit/ros2/records::Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint` |
| 2 | `trajectory_msgs/msg/MultiDOFJointTrajectory` | `abb/moonbit/ros2/records::Ros2Trajectory_msgsMsgMultiDOFJointTrajectory` |
| 2 | `control_msgs/msg/JointTolerance` | `abb/moonbit/ros2/records::Ros2Control_msgsMsgJointTolerance` |
| 2 | `control_msgs/msg/JointComponentTolerance` | `abb/moonbit/ros2/records::Ros2Control_msgsMsgJointComponentTolerance` |
| 2 | `control_msgs/action/FollowJointTrajectory_Goal` | `abb/moonbit/ros2/records::Ros2Control_msgsActionFollowJointTrajectory_Goal` |
| 2 | `control_msgs/action/FollowJointTrajectory_Result` | `abb/moonbit/ros2/records::Ros2Control_msgsActionFollowJointTrajectory_Result` |
| 2 | `control_msgs/action/FollowJointTrajectory_Feedback` | `abb/moonbit/ros2/records::Ros2Control_msgsActionFollowJointTrajectory_Feedback` |
| 2 | `sensor_msgs/msg/JointState` | `abb/moonbit/ros2/records::Ros2Sensor_msgsMsgJointState` |
| 2 | `std_srvs/srv/Trigger_Request` | `abb/moonbit/ros2/records::Ros2Std_srvsSrvTrigger_Request` |
| 2 | `std_srvs/srv/Trigger_Response` | `abb/moonbit/ros2/records::Ros2Std_srvsSrvTrigger_Response` |

ABB's ROS1 driver and ROS2 message fork are independently pinned. Two source families do not establish interchangeable native drivers or controller versions.
