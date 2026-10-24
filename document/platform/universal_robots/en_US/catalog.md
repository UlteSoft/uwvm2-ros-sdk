# universal_robots complete API catalog

Original field spellings are preserved. Array capacities count elements; text capacities count UTF-8 bytes. Numeric units, frames and clock domains come from the unchanged original `.msg/.srv/.action` comments; codecs never scale values. Source names and canonical identities do not establish native type identities.

## universal-robots-ros1-complete

| Interface | Kind | Complete component types |
| --- | --- | --- |
| `geometry_msgs/Point` | message | `message: Ros1Geometry_msgsPoint` |
| `geometry_msgs/Pose` | message | `message: Ros1Geometry_msgsPose` |
| `geometry_msgs/PoseStamped` | message | `message: Ros1Geometry_msgsPoseStamped` |
| `geometry_msgs/Quaternion` | message | `message: Ros1Geometry_msgsQuaternion` |
| `geometry_msgs/Twist` | message | `message: Ros1Geometry_msgsTwist` |
| `geometry_msgs/Vector3` | message | `message: Ros1Geometry_msgsVector3` |
| `geometry_msgs/Wrench` | message | `message: Ros1Geometry_msgsWrench` |
| `std_msgs/Header` | message | `message: Ros1Std_msgsHeader` |
| `ur_dashboard_msgs/AddToLog` | service | `request: Ros1Ur_dashboard_msgsAddToLogRequest`, `response: Ros1Ur_dashboard_msgsAddToLogResponse` |
| `ur_dashboard_msgs/GetLoadedProgram` | service | `request: Ros1Ur_dashboard_msgsGetLoadedProgramRequest`, `response: Ros1Ur_dashboard_msgsGetLoadedProgramResponse` |
| `ur_dashboard_msgs/GetProgramState` | service | `request: Ros1Ur_dashboard_msgsGetProgramStateRequest`, `response: Ros1Ur_dashboard_msgsGetProgramStateResponse` |
| `ur_dashboard_msgs/GetRobotMode` | service | `request: Ros1Ur_dashboard_msgsGetRobotModeRequest`, `response: Ros1Ur_dashboard_msgsGetRobotModeResponse` |
| `ur_dashboard_msgs/GetSafetyMode` | service | `request: Ros1Ur_dashboard_msgsGetSafetyModeRequest`, `response: Ros1Ur_dashboard_msgsGetSafetyModeResponse` |
| `ur_dashboard_msgs/IsInRemoteControl` | service | `request: Ros1Ur_dashboard_msgsIsInRemoteControlRequest`, `response: Ros1Ur_dashboard_msgsIsInRemoteControlResponse` |
| `ur_dashboard_msgs/IsProgramRunning` | service | `request: Ros1Ur_dashboard_msgsIsProgramRunningRequest`, `response: Ros1Ur_dashboard_msgsIsProgramRunningResponse` |
| `ur_dashboard_msgs/IsProgramSaved` | service | `request: Ros1Ur_dashboard_msgsIsProgramSavedRequest`, `response: Ros1Ur_dashboard_msgsIsProgramSavedResponse` |
| `ur_dashboard_msgs/Load` | service | `request: Ros1Ur_dashboard_msgsLoadRequest`, `response: Ros1Ur_dashboard_msgsLoadResponse` |
| `ur_dashboard_msgs/Popup` | service | `request: Ros1Ur_dashboard_msgsPopupRequest`, `response: Ros1Ur_dashboard_msgsPopupResponse` |
| `ur_dashboard_msgs/ProgramState` | message | `message: Ros1Ur_dashboard_msgsProgramState` |
| `ur_dashboard_msgs/RawRequest` | service | `request: Ros1Ur_dashboard_msgsRawRequestRequest`, `response: Ros1Ur_dashboard_msgsRawRequestResponse` |
| `ur_dashboard_msgs/RobotMode` | message | `message: Ros1Ur_dashboard_msgsRobotMode` |
| `ur_dashboard_msgs/SafetyMode` | message | `message: Ros1Ur_dashboard_msgsSafetyMode` |
| `ur_dashboard_msgs/SetMode` | action | `goal: Ros1Ur_dashboard_msgsSetModeGoal`, `result: Ros1Ur_dashboard_msgsSetModeResult`, `feedback: Ros1Ur_dashboard_msgsSetModeFeedback` |
| `ur_msgs/Analog` | message | `message: Ros1Ur_msgsAnalog` |
| `ur_msgs/Digital` | message | `message: Ros1Ur_msgsDigital` |
| `ur_msgs/GetRobotSoftwareVersion` | service | `request: Ros1Ur_msgsGetRobotSoftwareVersionRequest`, `response: Ros1Ur_msgsGetRobotSoftwareVersionResponse` |
| `ur_msgs/IOStates` | message | `message: Ros1Ur_msgsIOStates` |
| `ur_msgs/MasterboardDataMsg` | message | `message: Ros1Ur_msgsMasterboardDataMsg` |
| `ur_msgs/RobotModeDataMsg` | message | `message: Ros1Ur_msgsRobotModeDataMsg` |
| `ur_msgs/RobotStateRTMsg` | message | `message: Ros1Ur_msgsRobotStateRTMsg` |
| `ur_msgs/SetAnalogOutput` | service | `request: Ros1Ur_msgsSetAnalogOutputRequest`, `response: Ros1Ur_msgsSetAnalogOutputResponse` |
| `ur_msgs/SetForceMode` | service | `request: Ros1Ur_msgsSetForceModeRequest`, `response: Ros1Ur_msgsSetForceModeResponse` |
| `ur_msgs/SetIO` | service | `request: Ros1Ur_msgsSetIORequest`, `response: Ros1Ur_msgsSetIOResponse` |
| `ur_msgs/SetPayload` | service | `request: Ros1Ur_msgsSetPayloadRequest`, `response: Ros1Ur_msgsSetPayloadResponse` |
| `ur_msgs/SetSpeedSliderFraction` | service | `request: Ros1Ur_msgsSetSpeedSliderFractionRequest`, `response: Ros1Ur_msgsSetSpeedSliderFractionResponse` |
| `ur_msgs/ToolDataMsg` | message | `message: Ros1Ur_msgsToolDataMsg` |

### geometry_msgs/Point

`Ros1Geometry_msgsPoint`; 24..24 canonical bytes. Codec identity: `UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/Quaternion

`Ros1Geometry_msgsQuaternion`; 32..32 canonical bytes. Codec identity: `UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `w` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/Pose

`Ros1Geometry_msgsPose`; 56..56 canonical bytes. Codec identity: `UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `position` | `geometry_msgs/Point` | scalar | — | `implicit zero/empty/nested` |
| `orientation` | `geometry_msgs/Quaternion` | scalar | — | `implicit zero/empty/nested` |

### time

`Ros1Time`; 8..8 canonical bytes. Codec identity: `UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `sec` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `nsec` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### std_msgs/Header

`Ros1Std_msgsHeader`; 16..144 canonical bytes. Codec identity: `UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `seq` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `stamp` | `time` | scalar | — | `implicit zero/empty/nested` |
| `frame_id` | `string` | scalar | 128 | `implicit zero/empty/nested` |

### geometry_msgs/PoseStamped

`Ros1Geometry_msgsPoseStamped`; 72..200 canonical bytes. Codec identity: `UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/Header` | scalar | — | `implicit zero/empty/nested` |
| `pose` | `geometry_msgs/Pose` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/Vector3

`Ros1Geometry_msgsVector3`; 24..24 canonical bytes. Codec identity: `UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/Twist

`Ros1Geometry_msgsTwist`; 48..48 canonical bytes. Codec identity: `UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `linear` | `geometry_msgs/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `angular` | `geometry_msgs/Vector3` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/Wrench

`Ros1Geometry_msgsWrench`; 48..48 canonical bytes. Codec identity: `UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `force` | `geometry_msgs/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `torque` | `geometry_msgs/Vector3` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/AddToLogRequest

`Ros1Ur_dashboard_msgsAddToLogRequest`; 4..260 canonical bytes. Codec identity: `UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/AddToLogResponse

`Ros1Ur_dashboard_msgsAddToLogResponse`; 5..261 canonical bytes. Codec identity: `UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/GetLoadedProgramRequest

`Ros1Ur_dashboard_msgsGetLoadedProgramRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/GetLoadedProgramResponse

`Ros1Ur_dashboard_msgsGetLoadedProgramResponse`; 9..521 canonical bytes. Codec identity: `UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/GetProgramStateRequest

`Ros1Ur_dashboard_msgsGetProgramStateRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/ProgramState

`Ros1Ur_dashboard_msgsProgramState`; 4..260 canonical bytes. Codec identity: `UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `state` | `string` | scalar | 256 | `implicit zero/empty/nested` |

Original constants: `STOPPED: string = STOPPED`; `PLAYING: string = PLAYING`; `PAUSED: string = PAUSED`.

### ur_dashboard_msgs/GetProgramStateResponse

`Ros1Ur_dashboard_msgsGetProgramStateResponse`; 13..781 canonical bytes. Codec identity: `UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `state` | `ur_dashboard_msgs/ProgramState` | scalar | — | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/GetRobotModeRequest

`Ros1Ur_dashboard_msgsGetRobotModeRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/RobotMode

`Ros1Ur_dashboard_msgsRobotMode`; 1..1 canonical bytes. Codec identity: `UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mode` | `int8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `NO_CONTROLLER: int8 = -1`; `DISCONNECTED: int8 = 0`; `CONFIRM_SAFETY: int8 = 1`; `BOOTING: int8 = 2`; `POWER_OFF: int8 = 3`; `POWER_ON: int8 = 4`; `IDLE: int8 = 5`; `BACKDRIVE: int8 = 6`; `RUNNING: int8 = 7`; `UPDATING_FIRMWARE: int8 = 8`.

### ur_dashboard_msgs/GetRobotModeResponse

`Ros1Ur_dashboard_msgsGetRobotModeResponse`; 6..262 canonical bytes. Codec identity: `UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `robot_mode` | `ur_dashboard_msgs/RobotMode` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/GetSafetyModeRequest

`Ros1Ur_dashboard_msgsGetSafetyModeRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/SafetyMode

`Ros1Ur_dashboard_msgsSafetyMode`; 1..1 canonical bytes. Codec identity: `UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mode` | `uint8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `NORMAL: uint8 = 1`; `REDUCED: uint8 = 2`; `PROTECTIVE_STOP: uint8 = 3`; `RECOVERY: uint8 = 4`; `SAFEGUARD_STOP: uint8 = 5`; `SYSTEM_EMERGENCY_STOP: uint8 = 6`; `ROBOT_EMERGENCY_STOP: uint8 = 7`; `VIOLATION: uint8 = 8`; `FAULT: uint8 = 9`; `VALIDATE_JOINT_ID: uint8 = 10`; `UNDEFINED_SAFETY_MODE: uint8 = 11`; `AUTOMATIC_MODE_SAFEGUARD_STOP: uint8 = 12`; `SYSTEM_THREE_POSITION_ENABLING_STOP: uint8 = 13`.

### ur_dashboard_msgs/GetSafetyModeResponse

`Ros1Ur_dashboard_msgsGetSafetyModeResponse`; 6..262 canonical bytes. Codec identity: `UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `safety_mode` | `ur_dashboard_msgs/SafetyMode` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/IsInRemoteControlRequest

`Ros1Ur_dashboard_msgsIsInRemoteControlRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/IsInRemoteControlResponse

`Ros1Ur_dashboard_msgsIsInRemoteControlResponse`; 6..262 canonical bytes. Codec identity: `UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `in_remote_control` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/IsProgramRunningRequest

`Ros1Ur_dashboard_msgsIsProgramRunningRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/IsProgramRunningResponse

`Ros1Ur_dashboard_msgsIsProgramRunningResponse`; 6..262 canonical bytes. Codec identity: `UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_running` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/IsProgramSavedRequest

`Ros1Ur_dashboard_msgsIsProgramSavedRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/IsProgramSavedResponse

`Ros1Ur_dashboard_msgsIsProgramSavedResponse`; 10..522 canonical bytes. Codec identity: `UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_saved` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/LoadRequest

`Ros1Ur_dashboard_msgsLoadRequest`; 4..260 canonical bytes. Codec identity: `UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `filename` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/LoadResponse

`Ros1Ur_dashboard_msgsLoadResponse`; 5..261 canonical bytes. Codec identity: `UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/PopupRequest

`Ros1Ur_dashboard_msgsPopupRequest`; 4..260 canonical bytes. Codec identity: `UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/PopupResponse

`Ros1Ur_dashboard_msgsPopupResponse`; 5..261 canonical bytes. Codec identity: `UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/RawRequestRequest

`Ros1Ur_dashboard_msgsRawRequestRequest`; 4..260 canonical bytes. Codec identity: `UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `query` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/RawRequestResponse

`Ros1Ur_dashboard_msgsRawRequestResponse`; 4..260 canonical bytes. Codec identity: `UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/SetModeGoal

`Ros1Ur_dashboard_msgsSetModeGoal`; 3..3 canonical bytes. Codec identity: `UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `target_robot_mode` | `ur_dashboard_msgs/RobotMode` | scalar | — | `implicit zero/empty/nested` |
| `stop_program` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `play_program` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/SetModeResult

`Ros1Ur_dashboard_msgsSetModeResult`; 5..261 canonical bytes. Codec identity: `UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/SetModeFeedback

`Ros1Ur_dashboard_msgsSetModeFeedback`; 2..2 canonical bytes. Codec identity: `UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `current_robot_mode` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `current_safety_mode` | `int8` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/Analog

`Ros1Ur_msgsAnalog`; 6..6 canonical bytes. Codec identity: `UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `pin` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `domain` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `float32` | scalar | — | `implicit zero/empty/nested` |

Original constants: `CURRENT: uint8 = 0`; `VOLTAGE: uint8 = 1`.

### ur_msgs/Digital

`Ros1Ur_msgsDigital`; 2..2 canonical bytes. Codec identity: `UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `pin` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/GetRobotSoftwareVersionRequest

`Ros1Ur_msgsGetRobotSoftwareVersionRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_msgs/GetRobotSoftwareVersionResponse

`Ros1Ur_msgsGetRobotSoftwareVersionResponse`; 16..16 canonical bytes. Codec identity: `UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `major` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `minor` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `bugfix` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `build` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/IOStates

`Ros1Ur_msgsIOStates`; 20..404 canonical bytes. Codec identity: `UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `digital_in_states` | `ur_msgs/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `digital_out_states` | `ur_msgs/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `flag_states` | `ur_msgs/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `analog_in_states` | `ur_msgs/Analog` | sequence | 16 | `implicit zero/empty/nested` |
| `analog_out_states` | `ur_msgs/Analog` | sequence | 16 | `implicit zero/empty/nested` |

### ur_msgs/MasterboardDataMsg

`Ros1Ur_msgsMasterboardDataMsg`; 62..62 canonical bytes. Codec identity: `UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `digital_input_bits` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `digital_output_bits` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `analog_input_range0` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input_range1` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input0` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_input1` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_output_domain0` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_output_domain1` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_output0` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_output1` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `masterboard_temperature` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `robot_voltage_48V` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `robot_current` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `master_io_current` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `master_safety_state` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `master_onoff_state` | `uint8` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/RobotModeDataMsg

`Ros1Ur_msgsRobotModeDataMsg`; 15..15 canonical bytes. Codec identity: `UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `timestamp` | `uint64` | scalar | — | `implicit zero/empty/nested` |
| `is_robot_connected` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_real_robot_enabled` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_power_on_robot` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_emergency_stopped` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_protective_stopped` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_program_running` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_program_paused` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/RobotStateRTMsg

`Ros1Ur_msgsRobotStateRTMsg`; 96..768 canonical bytes. Codec identity: `UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `time` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `q_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `qd_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `qdd_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `i_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `m_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `q_actual` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `qd_actual` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `i_actual` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tool_acc_values` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tcp_force` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tool_vector` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tcp_speed` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `digital_input_bits` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `motor_temperatures` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `controller_timer` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `test_value` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `robot_mode` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `joint_modes` | `float64` | sequence | 6 | `implicit zero/empty/nested` |

### ur_msgs/SetAnalogOutputRequest

`Ros1Ur_msgsSetAnalogOutputRequest`; 6..6 canonical bytes. Codec identity: `UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `data` | `ur_msgs/Analog` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetAnalogOutputResponse

`Ros1Ur_msgsSetAnalogOutputResponse`; 1..1 canonical bytes. Codec identity: `UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetForceModeRequest

`Ros1Ur_msgsSetForceModeRequest`; 207..335 canonical bytes. Codec identity: `UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `task_frame` | `geometry_msgs/PoseStamped` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_x` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_y` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_z` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_rx` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_ry` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_rz` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `wrench` | `geometry_msgs/Wrench` | scalar | — | `implicit zero/empty/nested` |
| `type` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `speed_limits` | `geometry_msgs/Twist` | scalar | — | `implicit zero/empty/nested` |
| `deviation_limits` | `float32` | array | 6 | `implicit zero/empty/nested` |
| `damping_factor` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `gain_scaling` | `float32` | scalar | — | `implicit zero/empty/nested` |

Original constants: `TCP_TO_ORIGIN: uint8 = 1`; `NO_TRANSFORM: uint8 = 2`; `TCP_VELOCITY_TO_X_Y: uint8 = 3`.

### ur_msgs/SetForceModeResponse

`Ros1Ur_msgsSetForceModeResponse`; 1..1 canonical bytes. Codec identity: `UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetIORequest

`Ros1Ur_msgsSetIORequest`; 6..6 canonical bytes. Codec identity: `UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `fun` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `pin` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `float32` | scalar | — | `implicit zero/empty/nested` |

Original constants: `PIN_AOUT0: int8 = 0`; `PIN_AOUT1: int8 = 1`; `PIN_DOUT0: int8 = 0`; `PIN_DOUT1: int8 = 1`; `PIN_DOUT2: int8 = 2`; `PIN_DOUT3: int8 = 3`; `PIN_DOUT4: int8 = 4`; `PIN_DOUT5: int8 = 5`; `PIN_DOUT6: int8 = 6`; `PIN_DOUT7: int8 = 7`; `PIN_CONF_OUT0: int8 = 8`; `PIN_CONF_OUT1: int8 = 9`; `PIN_CONF_OUT2: int8 = 10`; `PIN_CONF_OUT3: int8 = 11`; `PIN_CONF_OUT4: int8 = 12`; `PIN_CONF_OUT5: int8 = 13`; `PIN_CONF_OUT6: int8 = 14`; `PIN_CONF_OUT7: int8 = 15`; `PIN_TOOL_DOUT0: int8 = 16`; `PIN_TOOL_DOUT1: int8 = 17`; `FUN_SET_DIGITAL_OUT: int8 = 1`; `FUN_SET_FLAG: int8 = 2`; `FUN_SET_ANALOG_OUT: int8 = 3`; `FUN_SET_TOOL_VOLTAGE: int8 = 4`; `STATE_OFF: int8 = 0`; `STATE_ON: int8 = 1`; `STATE_TOOL_VOLTAGE_0V: int8 = 0`; `STATE_TOOL_VOLTAGE_12V: int8 = 12`; `STATE_TOOL_VOLTAGE_24V: int8 = 24`.

### ur_msgs/SetIOResponse

`Ros1Ur_msgsSetIOResponse`; 1..1 canonical bytes. Codec identity: `UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetPayloadRequest

`Ros1Ur_msgsSetPayloadRequest`; 28..28 canonical bytes. Codec identity: `UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mass` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `center_of_gravity` | `geometry_msgs/Vector3` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetPayloadResponse

`Ros1Ur_msgsSetPayloadResponse`; 1..1 canonical bytes. Codec identity: `UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetSpeedSliderFractionRequest

`Ros1Ur_msgsSetSpeedSliderFractionRequest`; 8..8 canonical bytes. Codec identity: `UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `speed_slider_fraction` | `float64` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetSpeedSliderFractionResponse

`Ros1Ur_msgsSetSpeedSliderFractionResponse`; 1..1 canonical bytes. Codec identity: `UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/ToolDataMsg

`Ros1Ur_msgsToolDataMsg`; 32..32 canonical bytes. Codec identity: `UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `analog_input_range2` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input_range3` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input2` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_input3` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `tool_voltage_48v` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `tool_output_voltage` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `tool_current` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `tool_temperature` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `tool_mode` | `uint8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `ANALOG_INPUT_RANGE_CURRENT: int8 = 0`; `ANALOG_INPUT_RANGE_VOLTAGE: int8 = 1`; `TOOL_BOOTLOADER_MODE: uint8 = 249`; `TOOL_RUNNING_MODE: uint8 = 253`; `TOOL_IDLE_MODE: uint8 = 255`.
## universal-robots-ros1-trajectory-complete

| Interface | Kind | Complete component types |
| --- | --- | --- |
| `control_msgs/FollowJointTrajectory` | action | `goal: Ros1Control_msgsFollowJointTrajectoryGoal`, `result: Ros1Control_msgsFollowJointTrajectoryResult`, `feedback: Ros1Control_msgsFollowJointTrajectoryFeedback` |
| `control_msgs/JointTolerance` | message | `message: Ros1Control_msgsJointTolerance` |
| `geometry_msgs/Point` | message | `message: Ros1Geometry_msgsPoint` |
| `geometry_msgs/Pose` | message | `message: Ros1Geometry_msgsPose` |
| `geometry_msgs/PoseStamped` | message | `message: Ros1Geometry_msgsPoseStamped` |
| `geometry_msgs/Quaternion` | message | `message: Ros1Geometry_msgsQuaternion` |
| `geometry_msgs/Twist` | message | `message: Ros1Geometry_msgsTwist` |
| `geometry_msgs/Vector3` | message | `message: Ros1Geometry_msgsVector3` |
| `geometry_msgs/Wrench` | message | `message: Ros1Geometry_msgsWrench` |
| `sensor_msgs/JointState` | message | `message: Ros1Sensor_msgsJointState` |
| `std_msgs/Header` | message | `message: Ros1Std_msgsHeader` |
| `trajectory_msgs/JointTrajectory` | message | `message: Ros1Trajectory_msgsJointTrajectory` |
| `trajectory_msgs/JointTrajectoryPoint` | message | `message: Ros1Trajectory_msgsJointTrajectoryPoint` |
| `ur_dashboard_msgs/AddToLog` | service | `request: Ros1Ur_dashboard_msgsAddToLogRequest`, `response: Ros1Ur_dashboard_msgsAddToLogResponse` |
| `ur_dashboard_msgs/GetLoadedProgram` | service | `request: Ros1Ur_dashboard_msgsGetLoadedProgramRequest`, `response: Ros1Ur_dashboard_msgsGetLoadedProgramResponse` |
| `ur_dashboard_msgs/GetProgramState` | service | `request: Ros1Ur_dashboard_msgsGetProgramStateRequest`, `response: Ros1Ur_dashboard_msgsGetProgramStateResponse` |
| `ur_dashboard_msgs/GetRobotMode` | service | `request: Ros1Ur_dashboard_msgsGetRobotModeRequest`, `response: Ros1Ur_dashboard_msgsGetRobotModeResponse` |
| `ur_dashboard_msgs/GetSafetyMode` | service | `request: Ros1Ur_dashboard_msgsGetSafetyModeRequest`, `response: Ros1Ur_dashboard_msgsGetSafetyModeResponse` |
| `ur_dashboard_msgs/IsInRemoteControl` | service | `request: Ros1Ur_dashboard_msgsIsInRemoteControlRequest`, `response: Ros1Ur_dashboard_msgsIsInRemoteControlResponse` |
| `ur_dashboard_msgs/IsProgramRunning` | service | `request: Ros1Ur_dashboard_msgsIsProgramRunningRequest`, `response: Ros1Ur_dashboard_msgsIsProgramRunningResponse` |
| `ur_dashboard_msgs/IsProgramSaved` | service | `request: Ros1Ur_dashboard_msgsIsProgramSavedRequest`, `response: Ros1Ur_dashboard_msgsIsProgramSavedResponse` |
| `ur_dashboard_msgs/Load` | service | `request: Ros1Ur_dashboard_msgsLoadRequest`, `response: Ros1Ur_dashboard_msgsLoadResponse` |
| `ur_dashboard_msgs/Popup` | service | `request: Ros1Ur_dashboard_msgsPopupRequest`, `response: Ros1Ur_dashboard_msgsPopupResponse` |
| `ur_dashboard_msgs/ProgramState` | message | `message: Ros1Ur_dashboard_msgsProgramState` |
| `ur_dashboard_msgs/RawRequest` | service | `request: Ros1Ur_dashboard_msgsRawRequestRequest`, `response: Ros1Ur_dashboard_msgsRawRequestResponse` |
| `ur_dashboard_msgs/RobotMode` | message | `message: Ros1Ur_dashboard_msgsRobotMode` |
| `ur_dashboard_msgs/SafetyMode` | message | `message: Ros1Ur_dashboard_msgsSafetyMode` |
| `ur_dashboard_msgs/SetMode` | action | `goal: Ros1Ur_dashboard_msgsSetModeGoal`, `result: Ros1Ur_dashboard_msgsSetModeResult`, `feedback: Ros1Ur_dashboard_msgsSetModeFeedback` |
| `ur_msgs/Analog` | message | `message: Ros1Ur_msgsAnalog` |
| `ur_msgs/Digital` | message | `message: Ros1Ur_msgsDigital` |
| `ur_msgs/GetRobotSoftwareVersion` | service | `request: Ros1Ur_msgsGetRobotSoftwareVersionRequest`, `response: Ros1Ur_msgsGetRobotSoftwareVersionResponse` |
| `ur_msgs/IOStates` | message | `message: Ros1Ur_msgsIOStates` |
| `ur_msgs/MasterboardDataMsg` | message | `message: Ros1Ur_msgsMasterboardDataMsg` |
| `ur_msgs/RobotModeDataMsg` | message | `message: Ros1Ur_msgsRobotModeDataMsg` |
| `ur_msgs/RobotStateRTMsg` | message | `message: Ros1Ur_msgsRobotStateRTMsg` |
| `ur_msgs/SetAnalogOutput` | service | `request: Ros1Ur_msgsSetAnalogOutputRequest`, `response: Ros1Ur_msgsSetAnalogOutputResponse` |
| `ur_msgs/SetForceMode` | service | `request: Ros1Ur_msgsSetForceModeRequest`, `response: Ros1Ur_msgsSetForceModeResponse` |
| `ur_msgs/SetIO` | service | `request: Ros1Ur_msgsSetIORequest`, `response: Ros1Ur_msgsSetIOResponse` |
| `ur_msgs/SetPayload` | service | `request: Ros1Ur_msgsSetPayloadRequest`, `response: Ros1Ur_msgsSetPayloadResponse` |
| `ur_msgs/SetSpeedSliderFraction` | service | `request: Ros1Ur_msgsSetSpeedSliderFractionRequest`, `response: Ros1Ur_msgsSetSpeedSliderFractionResponse` |
| `ur_msgs/ToolDataMsg` | message | `message: Ros1Ur_msgsToolDataMsg` |

### time

`Ros1Time`; 8..8 canonical bytes. Codec identity: `UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `sec` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `nsec` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### std_msgs/Header

`Ros1Std_msgsHeader`; 16..144 canonical bytes. Codec identity: `UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `seq` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `stamp` | `time` | scalar | — | `implicit zero/empty/nested` |
| `frame_id` | `string` | scalar | 128 | `implicit zero/empty/nested` |

### duration

`Ros1Duration`; 8..8 canonical bytes. Codec identity: `UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `sec` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `nsec` | `int32` | scalar | — | `implicit zero/empty/nested` |

### trajectory_msgs/JointTrajectoryPoint

`Ros1Trajectory_msgsJointTrajectoryPoint`; 24..216 canonical bytes. Codec identity: `UWVMROS1_5fbdf1845c522d88461d06d5dfae1f35cef5d7f00a87e405c0d458c8e1a9e64d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `positions` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `velocities` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `accelerations` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `effort` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `time_from_start` | `duration` | scalar | — | `implicit zero/empty/nested` |

### trajectory_msgs/JointTrajectory

`Ros1Trajectory_msgsJointTrajectory`; 24..5168 canonical bytes. Codec identity: `UWVMROS1_522dc1a8799adc4be16ce5a35a19a217de1095f018af0a7eb57eb6114c69adda`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/Header` | scalar | — | `implicit zero/empty/nested` |
| `joint_names` | `string` | sequence | 6 | `implicit zero/empty/nested` |
| `points` | `trajectory_msgs/JointTrajectoryPoint` | sequence | 16 | `implicit zero/empty/nested` |

### control_msgs/JointTolerance

`Ros1Control_msgsJointTolerance`; 28..156 canonical bytes. Codec identity: `UWVMROS1_dfb80a25d10bc883359720da419af0baa78217e72619922a762a5a96a06d0738`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `name` | `string` | scalar | 128 | `implicit zero/empty/nested` |
| `position` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `velocity` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `acceleration` | `float64` | scalar | — | `implicit zero/empty/nested` |

### control_msgs/FollowJointTrajectoryGoal

`Ros1Control_msgsFollowJointTrajectoryGoal`; 40..7056 canonical bytes. Codec identity: `UWVMROS1_bcbae7a4976e04bd115e5916808d63bd18da9eade34d35aab26439c1971b6c78`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `trajectory` | `trajectory_msgs/JointTrajectory` | scalar | — | `implicit zero/empty/nested` |
| `path_tolerance` | `control_msgs/JointTolerance` | sequence | 6 | `implicit zero/empty/nested` |
| `goal_tolerance` | `control_msgs/JointTolerance` | sequence | 6 | `implicit zero/empty/nested` |
| `goal_time_tolerance` | `duration` | scalar | — | `implicit zero/empty/nested` |

### control_msgs/FollowJointTrajectoryResult

`Ros1Control_msgsFollowJointTrajectoryResult`; 8..4104 canonical bytes. Codec identity: `UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `error_code` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `error_string` | `string` | scalar | 4096 | `implicit zero/empty/nested` |

Original constants: `SUCCESSFUL: int32 = 0`; `INVALID_GOAL: int32 = -1`; `INVALID_JOINTS: int32 = -2`; `OLD_HEADER_TIMESTAMP: int32 = -3`; `PATH_TOLERANCE_VIOLATED: int32 = -4`; `GOAL_TOLERANCE_VIOLATED: int32 = -5`.

### control_msgs/FollowJointTrajectoryFeedback

`Ros1Control_msgsFollowJointTrajectoryFeedback`; 92..2356 canonical bytes. Codec identity: `UWVMROS1_fbb2813fa8fe3e2b4a0c7e968fb5ef037df0af707b9439e8615bc3d447db6913`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/Header` | scalar | — | `implicit zero/empty/nested` |
| `joint_names` | `string` | sequence | 6 | `implicit zero/empty/nested` |
| `desired` | `trajectory_msgs/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `actual` | `trajectory_msgs/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `error` | `trajectory_msgs/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/Point

`Ros1Geometry_msgsPoint`; 24..24 canonical bytes. Codec identity: `UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/Quaternion

`Ros1Geometry_msgsQuaternion`; 32..32 canonical bytes. Codec identity: `UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `w` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/Pose

`Ros1Geometry_msgsPose`; 56..56 canonical bytes. Codec identity: `UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `position` | `geometry_msgs/Point` | scalar | — | `implicit zero/empty/nested` |
| `orientation` | `geometry_msgs/Quaternion` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/PoseStamped

`Ros1Geometry_msgsPoseStamped`; 72..200 canonical bytes. Codec identity: `UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/Header` | scalar | — | `implicit zero/empty/nested` |
| `pose` | `geometry_msgs/Pose` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/Vector3

`Ros1Geometry_msgsVector3`; 24..24 canonical bytes. Codec identity: `UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/Twist

`Ros1Geometry_msgsTwist`; 48..48 canonical bytes. Codec identity: `UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `linear` | `geometry_msgs/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `angular` | `geometry_msgs/Vector3` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/Wrench

`Ros1Geometry_msgsWrench`; 48..48 canonical bytes. Codec identity: `UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `force` | `geometry_msgs/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `torque` | `geometry_msgs/Vector3` | scalar | — | `implicit zero/empty/nested` |

### sensor_msgs/JointState

`Ros1Sensor_msgsJointState`; 32..1864 canonical bytes. Codec identity: `UWVMROS1_ee28116009ad317c6a8db950f43d6a712b328b93740460dc70f97a632c3b5e0f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/Header` | scalar | — | `implicit zero/empty/nested` |
| `name` | `string` | sequence | 6 | `implicit zero/empty/nested` |
| `position` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `velocity` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `effort` | `float64` | sequence | 6 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/AddToLogRequest

`Ros1Ur_dashboard_msgsAddToLogRequest`; 4..260 canonical bytes. Codec identity: `UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/AddToLogResponse

`Ros1Ur_dashboard_msgsAddToLogResponse`; 5..261 canonical bytes. Codec identity: `UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/GetLoadedProgramRequest

`Ros1Ur_dashboard_msgsGetLoadedProgramRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/GetLoadedProgramResponse

`Ros1Ur_dashboard_msgsGetLoadedProgramResponse`; 9..521 canonical bytes. Codec identity: `UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/GetProgramStateRequest

`Ros1Ur_dashboard_msgsGetProgramStateRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/ProgramState

`Ros1Ur_dashboard_msgsProgramState`; 4..260 canonical bytes. Codec identity: `UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `state` | `string` | scalar | 256 | `implicit zero/empty/nested` |

Original constants: `STOPPED: string = STOPPED`; `PLAYING: string = PLAYING`; `PAUSED: string = PAUSED`.

### ur_dashboard_msgs/GetProgramStateResponse

`Ros1Ur_dashboard_msgsGetProgramStateResponse`; 13..781 canonical bytes. Codec identity: `UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `state` | `ur_dashboard_msgs/ProgramState` | scalar | — | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/GetRobotModeRequest

`Ros1Ur_dashboard_msgsGetRobotModeRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/RobotMode

`Ros1Ur_dashboard_msgsRobotMode`; 1..1 canonical bytes. Codec identity: `UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mode` | `int8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `NO_CONTROLLER: int8 = -1`; `DISCONNECTED: int8 = 0`; `CONFIRM_SAFETY: int8 = 1`; `BOOTING: int8 = 2`; `POWER_OFF: int8 = 3`; `POWER_ON: int8 = 4`; `IDLE: int8 = 5`; `BACKDRIVE: int8 = 6`; `RUNNING: int8 = 7`; `UPDATING_FIRMWARE: int8 = 8`.

### ur_dashboard_msgs/GetRobotModeResponse

`Ros1Ur_dashboard_msgsGetRobotModeResponse`; 6..262 canonical bytes. Codec identity: `UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `robot_mode` | `ur_dashboard_msgs/RobotMode` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/GetSafetyModeRequest

`Ros1Ur_dashboard_msgsGetSafetyModeRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/SafetyMode

`Ros1Ur_dashboard_msgsSafetyMode`; 1..1 canonical bytes. Codec identity: `UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mode` | `uint8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `NORMAL: uint8 = 1`; `REDUCED: uint8 = 2`; `PROTECTIVE_STOP: uint8 = 3`; `RECOVERY: uint8 = 4`; `SAFEGUARD_STOP: uint8 = 5`; `SYSTEM_EMERGENCY_STOP: uint8 = 6`; `ROBOT_EMERGENCY_STOP: uint8 = 7`; `VIOLATION: uint8 = 8`; `FAULT: uint8 = 9`; `VALIDATE_JOINT_ID: uint8 = 10`; `UNDEFINED_SAFETY_MODE: uint8 = 11`; `AUTOMATIC_MODE_SAFEGUARD_STOP: uint8 = 12`; `SYSTEM_THREE_POSITION_ENABLING_STOP: uint8 = 13`.

### ur_dashboard_msgs/GetSafetyModeResponse

`Ros1Ur_dashboard_msgsGetSafetyModeResponse`; 6..262 canonical bytes. Codec identity: `UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `safety_mode` | `ur_dashboard_msgs/SafetyMode` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/IsInRemoteControlRequest

`Ros1Ur_dashboard_msgsIsInRemoteControlRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/IsInRemoteControlResponse

`Ros1Ur_dashboard_msgsIsInRemoteControlResponse`; 6..262 canonical bytes. Codec identity: `UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `in_remote_control` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/IsProgramRunningRequest

`Ros1Ur_dashboard_msgsIsProgramRunningRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/IsProgramRunningResponse

`Ros1Ur_dashboard_msgsIsProgramRunningResponse`; 6..262 canonical bytes. Codec identity: `UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_running` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/IsProgramSavedRequest

`Ros1Ur_dashboard_msgsIsProgramSavedRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/IsProgramSavedResponse

`Ros1Ur_dashboard_msgsIsProgramSavedResponse`; 10..522 canonical bytes. Codec identity: `UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_saved` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/LoadRequest

`Ros1Ur_dashboard_msgsLoadRequest`; 4..260 canonical bytes. Codec identity: `UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `filename` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/LoadResponse

`Ros1Ur_dashboard_msgsLoadResponse`; 5..261 canonical bytes. Codec identity: `UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/PopupRequest

`Ros1Ur_dashboard_msgsPopupRequest`; 4..260 canonical bytes. Codec identity: `UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/PopupResponse

`Ros1Ur_dashboard_msgsPopupResponse`; 5..261 canonical bytes. Codec identity: `UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/RawRequestRequest

`Ros1Ur_dashboard_msgsRawRequestRequest`; 4..260 canonical bytes. Codec identity: `UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `query` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/RawRequestResponse

`Ros1Ur_dashboard_msgsRawRequestResponse`; 4..260 canonical bytes. Codec identity: `UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/SetModeGoal

`Ros1Ur_dashboard_msgsSetModeGoal`; 3..3 canonical bytes. Codec identity: `UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `target_robot_mode` | `ur_dashboard_msgs/RobotMode` | scalar | — | `implicit zero/empty/nested` |
| `stop_program` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `play_program` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/SetModeResult

`Ros1Ur_dashboard_msgsSetModeResult`; 5..261 canonical bytes. Codec identity: `UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/SetModeFeedback

`Ros1Ur_dashboard_msgsSetModeFeedback`; 2..2 canonical bytes. Codec identity: `UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `current_robot_mode` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `current_safety_mode` | `int8` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/Analog

`Ros1Ur_msgsAnalog`; 6..6 canonical bytes. Codec identity: `UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `pin` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `domain` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `float32` | scalar | — | `implicit zero/empty/nested` |

Original constants: `CURRENT: uint8 = 0`; `VOLTAGE: uint8 = 1`.

### ur_msgs/Digital

`Ros1Ur_msgsDigital`; 2..2 canonical bytes. Codec identity: `UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `pin` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/GetRobotSoftwareVersionRequest

`Ros1Ur_msgsGetRobotSoftwareVersionRequest`; 0..0 canonical bytes. Codec identity: `UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_msgs/GetRobotSoftwareVersionResponse

`Ros1Ur_msgsGetRobotSoftwareVersionResponse`; 16..16 canonical bytes. Codec identity: `UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `major` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `minor` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `bugfix` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `build` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/IOStates

`Ros1Ur_msgsIOStates`; 20..404 canonical bytes. Codec identity: `UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `digital_in_states` | `ur_msgs/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `digital_out_states` | `ur_msgs/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `flag_states` | `ur_msgs/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `analog_in_states` | `ur_msgs/Analog` | sequence | 16 | `implicit zero/empty/nested` |
| `analog_out_states` | `ur_msgs/Analog` | sequence | 16 | `implicit zero/empty/nested` |

### ur_msgs/MasterboardDataMsg

`Ros1Ur_msgsMasterboardDataMsg`; 62..62 canonical bytes. Codec identity: `UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `digital_input_bits` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `digital_output_bits` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `analog_input_range0` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input_range1` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input0` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_input1` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_output_domain0` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_output_domain1` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_output0` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_output1` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `masterboard_temperature` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `robot_voltage_48V` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `robot_current` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `master_io_current` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `master_safety_state` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `master_onoff_state` | `uint8` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/RobotModeDataMsg

`Ros1Ur_msgsRobotModeDataMsg`; 15..15 canonical bytes. Codec identity: `UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `timestamp` | `uint64` | scalar | — | `implicit zero/empty/nested` |
| `is_robot_connected` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_real_robot_enabled` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_power_on_robot` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_emergency_stopped` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_protective_stopped` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_program_running` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_program_paused` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/RobotStateRTMsg

`Ros1Ur_msgsRobotStateRTMsg`; 96..768 canonical bytes. Codec identity: `UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `time` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `q_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `qd_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `qdd_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `i_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `m_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `q_actual` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `qd_actual` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `i_actual` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tool_acc_values` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tcp_force` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tool_vector` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tcp_speed` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `digital_input_bits` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `motor_temperatures` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `controller_timer` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `test_value` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `robot_mode` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `joint_modes` | `float64` | sequence | 6 | `implicit zero/empty/nested` |

### ur_msgs/SetAnalogOutputRequest

`Ros1Ur_msgsSetAnalogOutputRequest`; 6..6 canonical bytes. Codec identity: `UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `data` | `ur_msgs/Analog` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetAnalogOutputResponse

`Ros1Ur_msgsSetAnalogOutputResponse`; 1..1 canonical bytes. Codec identity: `UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetForceModeRequest

`Ros1Ur_msgsSetForceModeRequest`; 207..335 canonical bytes. Codec identity: `UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `task_frame` | `geometry_msgs/PoseStamped` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_x` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_y` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_z` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_rx` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_ry` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_rz` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `wrench` | `geometry_msgs/Wrench` | scalar | — | `implicit zero/empty/nested` |
| `type` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `speed_limits` | `geometry_msgs/Twist` | scalar | — | `implicit zero/empty/nested` |
| `deviation_limits` | `float32` | array | 6 | `implicit zero/empty/nested` |
| `damping_factor` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `gain_scaling` | `float32` | scalar | — | `implicit zero/empty/nested` |

Original constants: `TCP_TO_ORIGIN: uint8 = 1`; `NO_TRANSFORM: uint8 = 2`; `TCP_VELOCITY_TO_X_Y: uint8 = 3`.

### ur_msgs/SetForceModeResponse

`Ros1Ur_msgsSetForceModeResponse`; 1..1 canonical bytes. Codec identity: `UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetIORequest

`Ros1Ur_msgsSetIORequest`; 6..6 canonical bytes. Codec identity: `UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `fun` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `pin` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `float32` | scalar | — | `implicit zero/empty/nested` |

Original constants: `PIN_AOUT0: int8 = 0`; `PIN_AOUT1: int8 = 1`; `PIN_DOUT0: int8 = 0`; `PIN_DOUT1: int8 = 1`; `PIN_DOUT2: int8 = 2`; `PIN_DOUT3: int8 = 3`; `PIN_DOUT4: int8 = 4`; `PIN_DOUT5: int8 = 5`; `PIN_DOUT6: int8 = 6`; `PIN_DOUT7: int8 = 7`; `PIN_CONF_OUT0: int8 = 8`; `PIN_CONF_OUT1: int8 = 9`; `PIN_CONF_OUT2: int8 = 10`; `PIN_CONF_OUT3: int8 = 11`; `PIN_CONF_OUT4: int8 = 12`; `PIN_CONF_OUT5: int8 = 13`; `PIN_CONF_OUT6: int8 = 14`; `PIN_CONF_OUT7: int8 = 15`; `PIN_TOOL_DOUT0: int8 = 16`; `PIN_TOOL_DOUT1: int8 = 17`; `FUN_SET_DIGITAL_OUT: int8 = 1`; `FUN_SET_FLAG: int8 = 2`; `FUN_SET_ANALOG_OUT: int8 = 3`; `FUN_SET_TOOL_VOLTAGE: int8 = 4`; `STATE_OFF: int8 = 0`; `STATE_ON: int8 = 1`; `STATE_TOOL_VOLTAGE_0V: int8 = 0`; `STATE_TOOL_VOLTAGE_12V: int8 = 12`; `STATE_TOOL_VOLTAGE_24V: int8 = 24`.

### ur_msgs/SetIOResponse

`Ros1Ur_msgsSetIOResponse`; 1..1 canonical bytes. Codec identity: `UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetPayloadRequest

`Ros1Ur_msgsSetPayloadRequest`; 28..28 canonical bytes. Codec identity: `UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mass` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `center_of_gravity` | `geometry_msgs/Vector3` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetPayloadResponse

`Ros1Ur_msgsSetPayloadResponse`; 1..1 canonical bytes. Codec identity: `UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetSpeedSliderFractionRequest

`Ros1Ur_msgsSetSpeedSliderFractionRequest`; 8..8 canonical bytes. Codec identity: `UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `speed_slider_fraction` | `float64` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/SetSpeedSliderFractionResponse

`Ros1Ur_msgsSetSpeedSliderFractionResponse`; 1..1 canonical bytes. Codec identity: `UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/ToolDataMsg

`Ros1Ur_msgsToolDataMsg`; 32..32 canonical bytes. Codec identity: `UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `analog_input_range2` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input_range3` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input2` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_input3` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `tool_voltage_48v` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `tool_output_voltage` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `tool_current` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `tool_temperature` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `tool_mode` | `uint8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `ANALOG_INPUT_RANGE_CURRENT: int8 = 0`; `ANALOG_INPUT_RANGE_VOLTAGE: int8 = 1`; `TOOL_BOOTLOADER_MODE: uint8 = 249`; `TOOL_RUNNING_MODE: uint8 = 253`; `TOOL_IDLE_MODE: uint8 = 255`.
## universal-robots-polyscopex-complete

| Interface | Kind | Complete component types |
| --- | --- | --- |
| `builtin_interfaces/msg/Time` | message | `message: Ros2Builtin_interfacesMsgTime` |
| `geometry_msgs/msg/Point` | message | `message: Ros2Geometry_msgsMsgPoint` |
| `geometry_msgs/msg/Pose` | message | `message: Ros2Geometry_msgsMsgPose` |
| `geometry_msgs/msg/Quaternion` | message | `message: Ros2Geometry_msgsMsgQuaternion` |
| `geometry_msgs/msg/Twist` | message | `message: Ros2Geometry_msgsMsgTwist` |
| `geometry_msgs/msg/Vector3` | message | `message: Ros2Geometry_msgsMsgVector3` |
| `std_msgs/msg/Header` | message | `message: Ros2Std_msgsMsgHeader` |
| `std_msgs/msg/String` | message | `message: Ros2Std_msgsMsgString` |
| `urinterfaces/action/SetMode` | action | `goal: Ros2UrinterfacesActionSetMode_Goal`, `result: Ros2UrinterfacesActionSetMode_Result`, `feedback: Ros2UrinterfacesActionSetMode_Feedback` |
| `urinterfaces/msg/ActiveTCP` | message | `message: Ros2UrinterfacesMsgActiveTCP` |
| `urinterfaces/msg/Analog` | message | `message: Ros2UrinterfacesMsgAnalog` |
| `urinterfaces/msg/AnalogIO` | message | `message: Ros2UrinterfacesMsgAnalogIO` |
| `urinterfaces/msg/AnalogIOStateStamped` | message | `message: Ros2UrinterfacesMsgAnalogIOStateStamped` |
| `urinterfaces/msg/AnalogStamped` | message | `message: Ros2UrinterfacesMsgAnalogStamped` |
| `urinterfaces/msg/BoolStamped` | message | `message: Ros2UrinterfacesMsgBoolStamped` |
| `urinterfaces/msg/ControlCycle` | message | `message: Ros2UrinterfacesMsgControlCycle` |
| `urinterfaces/msg/Current` | message | `message: Ros2UrinterfacesMsgCurrent` |
| `urinterfaces/msg/Digital` | message | `message: Ros2UrinterfacesMsgDigital` |
| `urinterfaces/msg/DigitalIO` | message | `message: Ros2UrinterfacesMsgDigitalIO` |
| `urinterfaces/msg/DigitalIOStateStamped` | message | `message: Ros2UrinterfacesMsgDigitalIOStateStamped` |
| `urinterfaces/msg/DigitalStamped` | message | `message: Ros2UrinterfacesMsgDigitalStamped` |
| `urinterfaces/msg/DoubleMultiArrayStamped` | message | `message: Ros2UrinterfacesMsgDoubleMultiArrayStamped` |
| `urinterfaces/msg/Float32Stamped` | message | `message: Ros2UrinterfacesMsgFloat32Stamped` |
| `urinterfaces/msg/Float64Stamped` | message | `message: Ros2UrinterfacesMsgFloat64Stamped` |
| `urinterfaces/msg/JointMode` | message | `message: Ros2UrinterfacesMsgJointMode` |
| `urinterfaces/msg/JointTemperature` | message | `message: Ros2UrinterfacesMsgJointTemperature` |
| `urinterfaces/msg/JointVoltage` | message | `message: Ros2UrinterfacesMsgJointVoltage` |
| `urinterfaces/msg/JsonStringType` | message | `message: Ros2UrinterfacesMsgJsonStringType` |
| `urinterfaces/msg/RobotMode` | message | `message: Ros2UrinterfacesMsgRobotMode` |
| `urinterfaces/msg/RuntimeState` | message | `message: Ros2UrinterfacesMsgRuntimeState` |
| `urinterfaces/msg/SafetyStatus` | message | `message: Ros2UrinterfacesMsgSafetyStatus` |
| `urinterfaces/msg/SharedVariablesEditResponse` | message | `message: Ros2UrinterfacesMsgSharedVariablesEditResponse` |
| `urinterfaces/msg/SpeedSliderFraction` | message | `message: Ros2UrinterfacesMsgSpeedSliderFraction` |
| `urinterfaces/msg/TCPState` | message | `message: Ros2UrinterfacesMsgTCPState` |
| `urinterfaces/msg/ToolOutputMode` | message | `message: Ros2UrinterfacesMsgToolOutputMode` |
| `urinterfaces/msg/VariableUpdate` | message | `message: Ros2UrinterfacesMsgVariableUpdate` |
| `urinterfaces/msg/VoltageCurrentStamped` | message | `message: Ros2UrinterfacesMsgVoltageCurrentStamped` |
| `urinterfaces/msg/WorldModelNames` | message | `message: Ros2UrinterfacesMsgWorldModelNames` |
| `urinterfaces/srv/SetAnalogOutput` | service | `request: Ros2UrinterfacesSrvSetAnalogOutput_Request`, `response: Ros2UrinterfacesSrvSetAnalogOutput_Response` |
| `urinterfaces/srv/SetDigitalOutput` | service | `request: Ros2UrinterfacesSrvSetDigitalOutput_Request`, `response: Ros2UrinterfacesSrvSetDigitalOutput_Response` |
| `urinterfaces/srv/SetSpeedFraction` | service | `request: Ros2UrinterfacesSrvSetSpeedFraction_Request`, `response: Ros2UrinterfacesSrvSetSpeedFraction_Response` |
| `urinterfaces/srv/SharedVariablesEditor` | service | `request: Ros2UrinterfacesSrvSharedVariablesEditor_Request`, `response: Ros2UrinterfacesSrvSharedVariablesEditor_Response` |
| `urinterfaces/srv/VariablesViewer` | service | `request: Ros2UrinterfacesSrvVariablesViewer_Request`, `response: Ros2UrinterfacesSrvVariablesViewer_Response` |

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 canonical bytes. Codec identity: `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `sec` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `nanosec` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Point

`Ros2Geometry_msgsMsgPoint`; 24..24 canonical bytes. Codec identity: `UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Quaternion

`Ros2Geometry_msgsMsgQuaternion`; 32..32 canonical bytes. Codec identity: `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `0.0` |
| `y` | `float64` | scalar | — | `0.0` |
| `z` | `float64` | scalar | — | `0.0` |
| `w` | `float64` | scalar | — | `1.0` |

### geometry_msgs/msg/Pose

`Ros2Geometry_msgsMsgPose`; 56..56 canonical bytes. Codec identity: `UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `position` | `geometry_msgs/msg/Point` | scalar | — | `implicit zero/empty/nested` |
| `orientation` | `geometry_msgs/msg/Quaternion` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Vector3

`Ros2Geometry_msgsMsgVector3`; 24..24 canonical bytes. Codec identity: `UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Twist

`Ros2Geometry_msgsMsgTwist`; 48..48 canonical bytes. Codec identity: `UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `linear` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `angular` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..140 canonical bytes. Codec identity: `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `stamp` | `builtin_interfaces/msg/Time` | scalar | — | `implicit zero/empty/nested` |
| `frame_id` | `string` | scalar | 128 | `implicit zero/empty/nested` |

### std_msgs/msg/String

`Ros2Std_msgsMsgString`; 4..1028 canonical bytes. Codec identity: `UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `data` | `string` | scalar | 1024 | `implicit zero/empty/nested` |

### urinterfaces/msg/RobotMode

`Ros2UrinterfacesMsgRobotMode`; 13..141 canonical bytes. Codec identity: `UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `int8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `DISCONNECTED: int8 = 0`; `CONFIRM_SAFETY: int8 = 1`; `BOOTING: int8 = 2`; `POWER_OFF: int8 = 3`; `POWER_ON: int8 = 4`; `IDLE: int8 = 5`; `BACKDRIVE: int8 = 6`; `RUNNING: int8 = 7`; `UPDATING_FIRMWARE: int8 = 8`.

### urinterfaces/action/SetMode_Goal

`Ros2UrinterfacesActionSetMode_Goal`; 15..143 canonical bytes. Codec identity: `UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `target_robot_mode` | `urinterfaces/msg/RobotMode` | scalar | — | `implicit zero/empty/nested` |
| `stop_program` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `play_program` | `bool` | scalar | — | `False` |

### urinterfaces/action/SetMode_Result

`Ros2UrinterfacesActionSetMode_Result`; 5..261 canonical bytes. Codec identity: `UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### urinterfaces/action/SetMode_Feedback

`Ros2UrinterfacesActionSetMode_Feedback`; 2..2 canonical bytes. Codec identity: `UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `current_robot_mode` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `current_safety_mode` | `int8` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/ActiveTCP

`Ros2UrinterfacesMsgActiveTCP`; 16..400 canonical bytes. Codec identity: `UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### urinterfaces/msg/Analog

`Ros2UrinterfacesMsgAnalog`; 6..6 canonical bytes. Codec identity: `UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `pin` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `domain` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `value` | `float32` | scalar | — | `implicit zero/empty/nested` |

Original constants: `CURRENT: uint8 = 0`; `VOLTAGE: uint8 = 1`.

### urinterfaces/msg/AnalogIO

`Ros2UrinterfacesMsgAnalogIO`; 8..200 canonical bytes. Codec identity: `UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `analog_inputs` | `urinterfaces/msg/Analog` | sequence | 16 | `implicit zero/empty/nested` |
| `analog_outputs` | `urinterfaces/msg/Analog` | sequence | 16 | `implicit zero/empty/nested` |

### urinterfaces/msg/AnalogIOStateStamped

`Ros2UrinterfacesMsgAnalogIOStateStamped`; 20..340 canonical bytes. Codec identity: `UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `io_state` | `urinterfaces/msg/AnalogIO` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/AnalogStamped

`Ros2UrinterfacesMsgAnalogStamped`; 18..146 canonical bytes. Codec identity: `UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `urinterfaces/msg/Analog` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/BoolStamped

`Ros2UrinterfacesMsgBoolStamped`; 13..141 canonical bytes. Codec identity: `UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `bool` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/ControlCycle

`Ros2UrinterfacesMsgControlCycle`; 20..148 canonical bytes. Codec identity: `UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `uint64` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/Current

`Ros2UrinterfacesMsgCurrent`; 16..144 canonical bytes. Codec identity: `UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `float32` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/Digital

`Ros2UrinterfacesMsgDigital`; 2..2 canonical bytes. Codec identity: `UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `pin` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `bool` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/DigitalIO

`Ros2UrinterfacesMsgDigitalIO`; 8..136 canonical bytes. Codec identity: `UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `digital_inputs` | `urinterfaces/msg/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `digital_outputs` | `urinterfaces/msg/Digital` | sequence | 32 | `implicit zero/empty/nested` |

### urinterfaces/msg/DigitalIOStateStamped

`Ros2UrinterfacesMsgDigitalIOStateStamped`; 28..412 canonical bytes. Codec identity: `UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `configurable_io` | `urinterfaces/msg/DigitalIO` | scalar | — | `implicit zero/empty/nested` |
| `standard_io` | `urinterfaces/msg/DigitalIO` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/DigitalStamped

`Ros2UrinterfacesMsgDigitalStamped`; 14..142 canonical bytes. Codec identity: `UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `urinterfaces/msg/Digital` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/DoubleMultiArrayStamped

`Ros2UrinterfacesMsgDoubleMultiArrayStamped`; 16..272 canonical bytes. Codec identity: `UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `float64` | sequence | 16 | `implicit zero/empty/nested` |

### urinterfaces/msg/Float32Stamped

`Ros2UrinterfacesMsgFloat32Stamped`; 16..144 canonical bytes. Codec identity: `UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `float32` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/Float64Stamped

`Ros2UrinterfacesMsgFloat64Stamped`; 20..148 canonical bytes. Codec identity: `UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `float64` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/JointMode

`Ros2UrinterfacesMsgJointMode`; 19..147 canonical bytes. Codec identity: `UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `joint_modes` | `uint8` | array | 6 | `implicit zero/empty/nested` |
| `tool_mode` | `uint8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `JOINT_MODE_RESET: uint8 = 235`; `JOINT_MODE_SHUTTING_DOWN: uint8 = 236`; `JOINT_MODE_PART_D_CALIBRATION: uint8 = 237`; `JOINT_MODE_BACKDRIVE: uint8 = 238`; `JOINT_MODE_POWER_OFF: uint8 = 239`; `JOINT_MODE_READY_FOR_POWER_OFF: uint8 = 240`; `JOINT_MODE_NOT_RESPONDING: uint8 = 245`; `JOINT_MODE_MOTOR_INITIALISATION: uint8 = 246`; `JOINT_MODE_BOOTING: uint8 = 247`; `JOINT_MODE_PART_D_CALIBRATION_ERROR: uint8 = 248`; `JOINT_MODE_BOOTLOADER: uint8 = 249`; `JOINT_MODE_CALIBRATION: uint8 = 250`; `JOINT_MODE_VIOLATION: uint8 = 251`; `JOINT_MODE_FAULT: uint8 = 252`; `JOINT_MODE_RUNNING: uint8 = 253`; `JOINT_MODE_IDLE: uint8 = 255`.

### urinterfaces/msg/JointTemperature

`Ros2UrinterfacesMsgJointTemperature`; 36..164 canonical bytes. Codec identity: `UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `float32` | array | 6 | `implicit zero/empty/nested` |

### urinterfaces/msg/JointVoltage

`Ros2UrinterfacesMsgJointVoltage`; 60..188 canonical bytes. Codec identity: `UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `float64` | array | 6 | `implicit zero/empty/nested` |

### urinterfaces/msg/JsonStringType

`Ros2UrinterfacesMsgJsonStringType`; 4..1028 canonical bytes. Codec identity: `UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `json_string` | `std_msgs/msg/String` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/RuntimeState

`Ros2UrinterfacesMsgRuntimeState`; 13..141 canonical bytes. Codec identity: `UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `int8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `PROGRAM_STATE_UNDEFINED: int8 = -1`; `PROGRAM_STATE_STOPPING: int8 = 0`; `PROGRAM_STATE_STOPPED: int8 = 1`; `PROGRAM_STATE_RUNNING: int8 = 2`; `PROGRAM_STATE_PAUSING: int8 = 3`; `PROGRAM_STATE_PAUSED: int8 = 4`; `PROGRAM_STATE_RESUMING: int8 = 5`; `PROGRAM_STATE_RETRACTING: int8 = 6`.

### urinterfaces/msg/SafetyStatus

`Ros2UrinterfacesMsgSafetyStatus`; 13..141 canonical bytes. Codec identity: `UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `int8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `NORMAL: int8 = 1`; `REDUCED: int8 = 2`; `PROTECTIVE_STOP: int8 = 3`; `RECOVERY: int8 = 4`; `SAFEGUARD_STOP: int8 = 5`; `SYSTEM_EMERGENCY_STOP: int8 = 6`; `ROBOT_EMERGENCY_STOP: int8 = 7`; `VIOLATION: int8 = 8`; `FAULT: int8 = 9`; `VALIDATE_JOINT_ID: int8 = 10`; `UNDEFINED_SAFETY_MODE: int8 = 11`; `AUTOMATIC_MODE_SAFEGUARD_STOP: int8 = 12`; `SYSTEM_THREE_POSITION_ENABLING_STOP: int8 = 13`; `TP_THREE_POSITION_ENABLING_STOP: int8 = 14`; `IMMI_EMERGENCY_STOP: int8 = 15`; `IMMI_SAFEGUARD_STOP: int8 = 16`; `PROFISAFE_WAITING_FOR_PARAMETERS: int8 = 17`; `PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP: int8 = 18`; `PROFISAFE_SAFEGUARD_STOP: int8 = 19`; `PROFISAFE_EMERGENCY_STOP: int8 = 20`; `SAFETY_API_SAFEGUARD_STOP: int8 = 22`; `IO_PLANE_STOP: int8 = 23`.

### urinterfaces/msg/SharedVariablesEditResponse

`Ros2UrinterfacesMsgSharedVariablesEditResponse`; 5..1029 canonical bytes. Codec identity: `UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `result_message` | `std_msgs/msg/String` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/SpeedSliderFraction

`Ros2UrinterfacesMsgSpeedSliderFraction`; 20..148 canonical bytes. Codec identity: `UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `float64` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/TCPState

`Ros2UrinterfacesMsgTCPState`; 116..244 canonical bytes. Codec identity: `UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `pose` | `geometry_msgs/msg/Pose` | scalar | — | `implicit zero/empty/nested` |
| `speed` | `geometry_msgs/msg/Twist` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/ToolOutputMode

`Ros2UrinterfacesMsgToolOutputMode`; 15..143 canonical bytes. Codec identity: `UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `output_mode` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `output_pin_mode` | `uint8` | array | 2 | `implicit zero/empty/nested` |

Original constants: `TOOL_OUTPUT: uint8 = 0`; `TOOL_POWER: uint8 = 1`; `TOOL_SAFE: uint8 = 2`; `OUTPUT_MODE_DISABLED: uint8 = 0`; `OUTPUT_MODE_SINKING: uint8 = 1`; `OUTPUT_MODE_SOURCING: uint8 = 2`; `OUTPUT_MODE_PUSH_PULL: uint8 = 3`.

### urinterfaces/msg/VariableUpdate

`Ros2UrinterfacesMsgVariableUpdate`; 16..1168 canonical bytes. Codec identity: `UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `urinterfaces/msg/JsonStringType` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/VoltageCurrentStamped

`Ros2UrinterfacesMsgVoltageCurrentStamped`; 28..156 canonical bytes. Codec identity: `UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `voltage` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `current` | `float64` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/msg/WorldModelNames

`Ros2UrinterfacesMsgWorldModelNames`; 16..16592 canonical bytes. Codec identity: `UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `data` | `std_msgs/msg/String` | sequence | 16 | `implicit zero/empty/nested` |

### urinterfaces/srv/SetAnalogOutput_Request

`Ros2UrinterfacesSrvSetAnalogOutput_Request`; 4..100 canonical bytes. Codec identity: `UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `data` | `urinterfaces/msg/Analog` | sequence | 16 | `implicit zero/empty/nested` |

### urinterfaces/srv/SetAnalogOutput_Response

`Ros2UrinterfacesSrvSetAnalogOutput_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/srv/SetDigitalOutput_Request

`Ros2UrinterfacesSrvSetDigitalOutput_Request`; 4..36 canonical bytes. Codec identity: `UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `data` | `urinterfaces/msg/Digital` | sequence | 16 | `implicit zero/empty/nested` |

### urinterfaces/srv/SetDigitalOutput_Response

`Ros2UrinterfacesSrvSetDigitalOutput_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/srv/SetSpeedFraction_Request

`Ros2UrinterfacesSrvSetSpeedFraction_Request`; 4..4 canonical bytes. Codec identity: `UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `value` | `float32` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/srv/SetSpeedFraction_Response

`Ros2UrinterfacesSrvSetSpeedFraction_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/srv/SharedVariablesEditor_Request

`Ros2UrinterfacesSrvSharedVariablesEditor_Request`; 4..1028 canonical bytes. Codec identity: `UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `request` | `urinterfaces/msg/JsonStringType` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/srv/SharedVariablesEditor_Response

`Ros2UrinterfacesSrvSharedVariablesEditor_Response`; 5..1029 canonical bytes. Codec identity: `UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `response` | `urinterfaces/msg/SharedVariablesEditResponse` | scalar | — | `implicit zero/empty/nested` |

### urinterfaces/srv/VariablesViewer_Request

`Ros2UrinterfacesSrvVariablesViewer_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### urinterfaces/srv/VariablesViewer_Response

`Ros2UrinterfacesSrvVariablesViewer_Response`; 16..1168 canonical bytes. Codec identity: `UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `response` | `urinterfaces/msg/VariableUpdate` | scalar | — | `implicit zero/empty/nested` |
## universal-robots-ros2-complete

| Interface | Kind | Complete component types |
| --- | --- | --- |
| `builtin_interfaces/msg/Duration` | message | `message: Ros2Builtin_interfacesMsgDuration` |
| `builtin_interfaces/msg/Time` | message | `message: Ros2Builtin_interfacesMsgTime` |
| `control_msgs/msg/JointTolerance` | message | `message: Ros2Control_msgsMsgJointTolerance` |
| `geometry_msgs/msg/Point` | message | `message: Ros2Geometry_msgsMsgPoint` |
| `geometry_msgs/msg/Pose` | message | `message: Ros2Geometry_msgsMsgPose` |
| `geometry_msgs/msg/PoseStamped` | message | `message: Ros2Geometry_msgsMsgPoseStamped` |
| `geometry_msgs/msg/Quaternion` | message | `message: Ros2Geometry_msgsMsgQuaternion` |
| `geometry_msgs/msg/Twist` | message | `message: Ros2Geometry_msgsMsgTwist` |
| `geometry_msgs/msg/Vector3` | message | `message: Ros2Geometry_msgsMsgVector3` |
| `geometry_msgs/msg/Vector3Stamped` | message | `message: Ros2Geometry_msgsMsgVector3Stamped` |
| `geometry_msgs/msg/Wrench` | message | `message: Ros2Geometry_msgsMsgWrench` |
| `std_msgs/msg/Header` | message | `message: Ros2Std_msgsMsgHeader` |
| `trajectory_msgs/msg/JointTrajectory` | message | `message: Ros2Trajectory_msgsMsgJointTrajectory` |
| `trajectory_msgs/msg/JointTrajectoryPoint` | message | `message: Ros2Trajectory_msgsMsgJointTrajectoryPoint` |
| `ur_dashboard_msgs/action/SetMode` | action | `goal: Ros2Ur_dashboard_msgsActionSetMode_Goal`, `result: Ros2Ur_dashboard_msgsActionSetMode_Result`, `feedback: Ros2Ur_dashboard_msgsActionSetMode_Feedback` |
| `ur_dashboard_msgs/msg/OperationalMode` | message | `message: Ros2Ur_dashboard_msgsMsgOperationalMode` |
| `ur_dashboard_msgs/msg/ProgramInformation` | message | `message: Ros2Ur_dashboard_msgsMsgProgramInformation` |
| `ur_dashboard_msgs/msg/ProgramState` | message | `message: Ros2Ur_dashboard_msgsMsgProgramState` |
| `ur_dashboard_msgs/msg/RobotMode` | message | `message: Ros2Ur_dashboard_msgsMsgRobotMode` |
| `ur_dashboard_msgs/msg/SafetyMode` | message | `message: Ros2Ur_dashboard_msgsMsgSafetyMode` |
| `ur_dashboard_msgs/msg/SafetyStatus` | message | `message: Ros2Ur_dashboard_msgsMsgSafetyStatus` |
| `ur_dashboard_msgs/msg/UserRole` | message | `message: Ros2Ur_dashboard_msgsMsgUserRole` |
| `ur_dashboard_msgs/msg/VersionInformation` | message | `message: Ros2Ur_dashboard_msgsMsgVersionInformation` |
| `ur_dashboard_msgs/srv/AddToLog` | service | `request: Ros2Ur_dashboard_msgsSrvAddToLog_Request`, `response: Ros2Ur_dashboard_msgsSrvAddToLog_Response` |
| `ur_dashboard_msgs/srv/DownloadProgram` | service | `request: Ros2Ur_dashboard_msgsSrvDownloadProgram_Request`, `response: Ros2Ur_dashboard_msgsSrvDownloadProgram_Response` |
| `ur_dashboard_msgs/srv/DownloadSupportFile` | service | `request: Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request`, `response: Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response` |
| `ur_dashboard_msgs/srv/GenerateFlightReport` | service | `request: Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request`, `response: Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response` |
| `ur_dashboard_msgs/srv/GenerateSupportFile` | service | `request: Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request`, `response: Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response` |
| `ur_dashboard_msgs/srv/GetLoadedProgram` | service | `request: Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request`, `response: Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response` |
| `ur_dashboard_msgs/srv/GetOperationalMode` | service | `request: Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request`, `response: Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response` |
| `ur_dashboard_msgs/srv/GetPolyScopeVersion` | service | `request: Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request`, `response: Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response` |
| `ur_dashboard_msgs/srv/GetProgramState` | service | `request: Ros2Ur_dashboard_msgsSrvGetProgramState_Request`, `response: Ros2Ur_dashboard_msgsSrvGetProgramState_Response` |
| `ur_dashboard_msgs/srv/GetPrograms` | service | `request: Ros2Ur_dashboard_msgsSrvGetPrograms_Request`, `response: Ros2Ur_dashboard_msgsSrvGetPrograms_Response` |
| `ur_dashboard_msgs/srv/GetRobotMode` | service | `request: Ros2Ur_dashboard_msgsSrvGetRobotMode_Request`, `response: Ros2Ur_dashboard_msgsSrvGetRobotMode_Response` |
| `ur_dashboard_msgs/srv/GetRobotModel` | service | `request: Ros2Ur_dashboard_msgsSrvGetRobotModel_Request`, `response: Ros2Ur_dashboard_msgsSrvGetRobotModel_Response` |
| `ur_dashboard_msgs/srv/GetSafetyMode` | service | `request: Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request`, `response: Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response` |
| `ur_dashboard_msgs/srv/GetSafetyStatus` | service | `request: Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request`, `response: Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response` |
| `ur_dashboard_msgs/srv/GetSerialNumber` | service | `request: Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request`, `response: Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response` |
| `ur_dashboard_msgs/srv/GetUserRole` | service | `request: Ros2Ur_dashboard_msgsSrvGetUserRole_Request`, `response: Ros2Ur_dashboard_msgsSrvGetUserRole_Response` |
| `ur_dashboard_msgs/srv/IsInRemoteControl` | service | `request: Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request`, `response: Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response` |
| `ur_dashboard_msgs/srv/IsProgramRunning` | service | `request: Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request`, `response: Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response` |
| `ur_dashboard_msgs/srv/IsProgramSaved` | service | `request: Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request`, `response: Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response` |
| `ur_dashboard_msgs/srv/Load` | service | `request: Ros2Ur_dashboard_msgsSrvLoad_Request`, `response: Ros2Ur_dashboard_msgsSrvLoad_Response` |
| `ur_dashboard_msgs/srv/Popup` | service | `request: Ros2Ur_dashboard_msgsSrvPopup_Request`, `response: Ros2Ur_dashboard_msgsSrvPopup_Response` |
| `ur_dashboard_msgs/srv/RawRequest` | service | `request: Ros2Ur_dashboard_msgsSrvRawRequest_Request`, `response: Ros2Ur_dashboard_msgsSrvRawRequest_Response` |
| `ur_dashboard_msgs/srv/SetOperationalMode` | service | `request: Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request`, `response: Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response` |
| `ur_dashboard_msgs/srv/SetUserRole` | service | `request: Ros2Ur_dashboard_msgsSrvSetUserRole_Request`, `response: Ros2Ur_dashboard_msgsSrvSetUserRole_Response` |
| `ur_dashboard_msgs/srv/UploadProgram` | service | `request: Ros2Ur_dashboard_msgsSrvUploadProgram_Request`, `response: Ros2Ur_dashboard_msgsSrvUploadProgram_Response` |
| `ur_msgs/action/FollowJointTrajectoryUntil` | action | `goal: Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal`, `result: Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result`, `feedback: Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback` |
| `ur_msgs/action/SendScript` | action | `goal: Ros2Ur_msgsActionSendScript_Goal`, `result: Ros2Ur_msgsActionSendScript_Result`, `feedback: Ros2Ur_msgsActionSendScript_Feedback` |
| `ur_msgs/action/ToolContact` | action | `goal: Ros2Ur_msgsActionToolContact_Goal`, `result: Ros2Ur_msgsActionToolContact_Result`, `feedback: Ros2Ur_msgsActionToolContact_Feedback` |
| `ur_msgs/msg/Analog` | message | `message: Ros2Ur_msgsMsgAnalog` |
| `ur_msgs/msg/Digital` | message | `message: Ros2Ur_msgsMsgDigital` |
| `ur_msgs/msg/FrictionModelParameters` | message | `message: Ros2Ur_msgsMsgFrictionModelParameters` |
| `ur_msgs/msg/IOStates` | message | `message: Ros2Ur_msgsMsgIOStates` |
| `ur_msgs/msg/MasterboardDataMsg` | message | `message: Ros2Ur_msgsMsgMasterboardDataMsg` |
| `ur_msgs/msg/RobotModeDataMsg` | message | `message: Ros2Ur_msgsMsgRobotModeDataMsg` |
| `ur_msgs/msg/RobotStateRTMsg` | message | `message: Ros2Ur_msgsMsgRobotStateRTMsg` |
| `ur_msgs/msg/ToolDataMsg` | message | `message: Ros2Ur_msgsMsgToolDataMsg` |
| `ur_msgs/srv/GetRobotSoftwareVersion` | service | `request: Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request`, `response: Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response` |
| `ur_msgs/srv/SetAnalogOutput` | service | `request: Ros2Ur_msgsSrvSetAnalogOutput_Request`, `response: Ros2Ur_msgsSrvSetAnalogOutput_Response` |
| `ur_msgs/srv/SetForceMode` | service | `request: Ros2Ur_msgsSrvSetForceMode_Request`, `response: Ros2Ur_msgsSrvSetForceMode_Response` |
| `ur_msgs/srv/SetFrictionModelParameters` | service | `request: Ros2Ur_msgsSrvSetFrictionModelParameters_Request`, `response: Ros2Ur_msgsSrvSetFrictionModelParameters_Response` |
| `ur_msgs/srv/SetGravity` | service | `request: Ros2Ur_msgsSrvSetGravity_Request`, `response: Ros2Ur_msgsSrvSetGravity_Response` |
| `ur_msgs/srv/SetIO` | service | `request: Ros2Ur_msgsSrvSetIO_Request`, `response: Ros2Ur_msgsSrvSetIO_Response` |
| `ur_msgs/srv/SetPayload` | service | `request: Ros2Ur_msgsSrvSetPayload_Request`, `response: Ros2Ur_msgsSrvSetPayload_Response` |
| `ur_msgs/srv/SetSpeedSliderFraction` | service | `request: Ros2Ur_msgsSrvSetSpeedSliderFraction_Request`, `response: Ros2Ur_msgsSrvSetSpeedSliderFraction_Response` |

### builtin_interfaces/msg/Duration

`Ros2Builtin_interfacesMsgDuration`; 8..8 canonical bytes. Codec identity: `UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `sec` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `nanosec` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 canonical bytes. Codec identity: `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `sec` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `nanosec` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### control_msgs/msg/JointTolerance

`Ros2Control_msgsMsgJointTolerance`; 28..156 canonical bytes. Codec identity: `UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `name` | `string` | scalar | 128 | `implicit zero/empty/nested` |
| `position` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `velocity` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `acceleration` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Point

`Ros2Geometry_msgsMsgPoint`; 24..24 canonical bytes. Codec identity: `UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Quaternion

`Ros2Geometry_msgsMsgQuaternion`; 32..32 canonical bytes. Codec identity: `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `0.0` |
| `y` | `float64` | scalar | — | `0.0` |
| `z` | `float64` | scalar | — | `0.0` |
| `w` | `float64` | scalar | — | `1.0` |

### geometry_msgs/msg/Pose

`Ros2Geometry_msgsMsgPose`; 56..56 canonical bytes. Codec identity: `UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `position` | `geometry_msgs/msg/Point` | scalar | — | `implicit zero/empty/nested` |
| `orientation` | `geometry_msgs/msg/Quaternion` | scalar | — | `implicit zero/empty/nested` |

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..140 canonical bytes. Codec identity: `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `stamp` | `builtin_interfaces/msg/Time` | scalar | — | `implicit zero/empty/nested` |
| `frame_id` | `string` | scalar | 128 | `implicit zero/empty/nested` |

### geometry_msgs/msg/PoseStamped

`Ros2Geometry_msgsMsgPoseStamped`; 68..196 canonical bytes. Codec identity: `UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `pose` | `geometry_msgs/msg/Pose` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Vector3

`Ros2Geometry_msgsMsgVector3`; 24..24 canonical bytes. Codec identity: `UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Twist

`Ros2Geometry_msgsMsgTwist`; 48..48 canonical bytes. Codec identity: `UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `linear` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `angular` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Vector3Stamped

`Ros2Geometry_msgsMsgVector3Stamped`; 36..164 canonical bytes. Codec identity: `UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `vector` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Wrench

`Ros2Geometry_msgsMsgWrench`; 48..48 canonical bytes. Codec identity: `UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `force` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `torque` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |

### trajectory_msgs/msg/JointTrajectoryPoint

`Ros2Trajectory_msgsMsgJointTrajectoryPoint`; 24..216 canonical bytes. Codec identity: `UWVMROS1_c4eafb6efd22d299b5c6fc21844d8bf69789cf27ee5414a1d7d2371f0b1acbbf`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `positions` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `velocities` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `accelerations` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `effort` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |

### trajectory_msgs/msg/JointTrajectory

`Ros2Trajectory_msgsMsgJointTrajectory`; 20..5164 canonical bytes. Codec identity: `UWVMROS1_e77c37c75123e442edb6a7f6f2a21dcbe33d8bb8fd2577f9906653a6ad5f8225`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `joint_names` | `string` | sequence | 6 | `implicit zero/empty/nested` |
| `points` | `trajectory_msgs/msg/JointTrajectoryPoint` | sequence | 16 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/action/SetMode_Goal

`Ros2Ur_dashboard_msgsActionSetMode_Goal`; 3..3 canonical bytes. Codec identity: `UWVMROS1_8a7484a60bad21933df3f847d3fd554e41098ed596dee270335ce9f092dc313d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `target_robot_mode` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `stop_program` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `play_program` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/action/SetMode_Result

`Ros2Ur_dashboard_msgsActionSetMode_Result`; 5..261 canonical bytes. Codec identity: `UWVMROS1_ef2a557ff27171319d46170ab16a80f5cba5fbd59e44c21cc1b704d01764b913`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/action/SetMode_Feedback

`Ros2Ur_dashboard_msgsActionSetMode_Feedback`; 2..2 canonical bytes. Codec identity: `UWVMROS1_afd74cd0a79174b53499a40b23b040ba96ec3d3e332129999525dcf6ca287ac6`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `current_robot_mode` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `current_safety_mode` | `int8` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/msg/OperationalMode

`Ros2Ur_dashboard_msgsMsgOperationalMode`; 4..260 canonical bytes. Codec identity: `UWVMROS1_7a0be8522cdc20e01d382218499030176a0f6565376fadc5bbdd871a01b9316e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mode` | `string` | scalar | 256 | `implicit zero/empty/nested` |

Original constants: `MANUAL: string = MANUAL`; `AUTOMATIC: string = AUTOMATIC`.

### ur_dashboard_msgs/msg/ProgramInformation

`Ros2Ur_dashboard_msgsMsgProgramInformation`; 36..676 canonical bytes. Codec identity: `UWVMROS1_9299ce545acd0b6ff064998334820fbe503b71dc47a475ef93545d2cdb41f965`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `name` | `string` | scalar | 128 | `implicit zero/empty/nested` |
| `description` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `created_date` | `uint64` | scalar | — | `implicit zero/empty/nested` |
| `last_saved_date` | `uint64` | scalar | — | `implicit zero/empty/nested` |
| `last_modified_date` | `uint64` | scalar | — | `implicit zero/empty/nested` |
| `program_state` | `string` | scalar | 256 | `implicit zero/empty/nested` |

Original constants: `PROGRAM_STATE_DRAFT: string = DRAFT`; `PROGRAM_STATE_FINAL: string = FINAL`.

### ur_dashboard_msgs/msg/ProgramState

`Ros2Ur_dashboard_msgsMsgProgramState`; 4..260 canonical bytes. Codec identity: `UWVMROS1_1462a3c2323792afbbfc6d48a600a6ab66a50a6f6f583e57a62da2458ea81f26`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `state` | `string` | scalar | 256 | `implicit zero/empty/nested` |

Original constants: `STOPPED: string = STOPPED`; `PLAYING: string = PLAYING`; `PAUSED: string = PAUSED`.

### ur_dashboard_msgs/msg/RobotMode

`Ros2Ur_dashboard_msgsMsgRobotMode`; 1..1 canonical bytes. Codec identity: `UWVMROS1_81a79c84083520d911de108a728ad1877de78a57ec9e27b5cc432590be4616bb`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mode` | `int8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `NO_CONTROLLER: int8 = -1`; `DISCONNECTED: int8 = 0`; `CONFIRM_SAFETY: int8 = 1`; `BOOTING: int8 = 2`; `POWER_OFF: int8 = 3`; `POWER_ON: int8 = 4`; `IDLE: int8 = 5`; `BACKDRIVE: int8 = 6`; `RUNNING: int8 = 7`; `UPDATING_FIRMWARE: int8 = 8`.

### ur_dashboard_msgs/msg/SafetyMode

`Ros2Ur_dashboard_msgsMsgSafetyMode`; 1..1 canonical bytes. Codec identity: `UWVMROS1_2eb3d5075a2d7d1765a604c1d1d198379010867d83a98d0327488ca51f5e1aac`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mode` | `uint8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `NORMAL: uint8 = 1`; `REDUCED: uint8 = 2`; `PROTECTIVE_STOP: uint8 = 3`; `RECOVERY: uint8 = 4`; `SAFEGUARD_STOP: uint8 = 5`; `SYSTEM_EMERGENCY_STOP: uint8 = 6`; `ROBOT_EMERGENCY_STOP: uint8 = 7`; `VIOLATION: uint8 = 8`; `FAULT: uint8 = 9`; `VALIDATE_JOINT_ID: uint8 = 10`; `UNDEFINED_SAFETY_MODE: uint8 = 11`; `AUTOMATIC_MODE_SAFEGUARD_STOP: uint8 = 12`; `SYSTEM_THREE_POSITION_ENABLING_STOP: uint8 = 13`.

### ur_dashboard_msgs/msg/SafetyStatus

`Ros2Ur_dashboard_msgsMsgSafetyStatus`; 1..1 canonical bytes. Codec identity: `UWVMROS1_1b1a7257c40d9c62e0b6291f241825d029fe38f3f3695265a182a270899a79e9`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `status` | `int8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `NORMAL: int8 = 1`; `REDUCED: int8 = 2`; `PROTECTIVE_STOP: int8 = 3`; `RECOVERY: int8 = 4`; `SAFEGUARD_STOP: int8 = 5`; `SYSTEM_EMERGENCY_STOP: int8 = 6`; `ROBOT_EMERGENCY_STOP: int8 = 7`; `VIOLATION: int8 = 8`; `FAULT: int8 = 9`; `VALIDATE_JOINT_ID: int8 = 10`; `UNDEFINED_SAFETY_MODE: int8 = 11`; `AUTOMATIC_MODE_SAFEGUARD_STOP: int8 = 12`; `SYSTEM_THREE_POSITION_ENABLING_STOP: int8 = 13`; `TP_THREE_POSITION_ENABLING_STOP: int8 = 14`; `IMMI_EMERGENCY_STOP: int8 = 15`; `IMMI_SAFEGUARD_STOP: int8 = 16`; `PROFISAFE_WAITING_FOR_PARAMETERS: int8 = 17`; `PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP: int8 = 18`; `PROFISAFE_SAFEGUARD_STOP: int8 = 19`; `PROFISAFE_EMERGENCY_STOP: int8 = 20`; `SAFETY_API_SAFEGUARD_STOP: int8 = 22`; `IO_PLANE_STOP: int8 = 23`.

### ur_dashboard_msgs/msg/UserRole

`Ros2Ur_dashboard_msgsMsgUserRole`; 4..260 canonical bytes. Codec identity: `UWVMROS1_7568bc9417685a9bc56cfdd2b41ff81ab99bd8e20fbe5f9e537b5b5d0689440a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `role` | `string` | scalar | 256 | `implicit zero/empty/nested` |

Original constants: `PROGRAMMER: string = PROGRAMMER`; `OPERATOR: string = OPERATOR`; `NONE: string = NONE`; `LOCKED: string = LOCKED`; `RESTRICTED: string = RESTRICTED`.

### ur_dashboard_msgs/msg/VersionInformation

`Ros2Ur_dashboard_msgsMsgVersionInformation`; 16..16 canonical bytes. Codec identity: `UWVMROS1_450c41c4361f1bca51f864dd9ef596851b17ebc79d4f784e7abb8b721752443d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `major` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `minor` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `bugfix` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `build` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/AddToLog_Request

`Ros2Ur_dashboard_msgsSrvAddToLog_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_ecfe5bb0d0db92bc5dfdec9bf82fbe730e3b3b4d65680812d0540b9055590142`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/AddToLog_Response

`Ros2Ur_dashboard_msgsSrvAddToLog_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_57b0c150a353d3fca6e96c4dc86e72f71b452663ede1eeb69e51069992d07e4c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/DownloadProgram_Request

`Ros2Ur_dashboard_msgsSrvDownloadProgram_Request`; 8..520 canonical bytes. Codec identity: `UWVMROS1_5c84420393aae13ea448d171a7b2956a55a39f3321f504b9f3bd5b4a38960c2f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `target_path` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/DownloadProgram_Response

`Ros2Ur_dashboard_msgsSrvDownloadProgram_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_46b0a73805282bad5f819f712275b7dd2ca4a6bb8c73c445ea8ae0a3d0f9e8e0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/DownloadSupportFile_Request

`Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_d919563629f81d5a8c10f1d2921ea16f3c912a49b8d3bcf65d17b8daa0a38140`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `target_path` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/DownloadSupportFile_Response

`Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response`; 6..262 canonical bytes. Codec identity: `UWVMROS1_76e190e6e9f1ddfff3082ea2adb0463d21ba9fb6795153fe6bbacee8a3334667`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `support_files_present` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GenerateFlightReport_Request

`Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_7246d97690c0c827e9cfab2f8297cf27a10e60e41ebb3ba345f361a109057099`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `report_type` | `string` | scalar | 256 | `SYSTEM` |

Original constants: `CONTROLLER: string = controller`; `SOFTWARE: string = software`; `SYSTEM: string = system`.

### ur_dashboard_msgs/srv/GenerateFlightReport_Response

`Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_adebf67876b5ae3377cec0aa04138c2ab73ef7c0d7942c77c6c06b248a836445`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `report_id` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GenerateSupportFile_Request

`Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_10b0371b77db32d75a77dcb0605b325caa1915ccfb7d0917896fd75234e6ada7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `dir_path` | `string` | scalar | 256 | `.` |

### ur_dashboard_msgs/srv/GenerateSupportFile_Response

`Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_f370623fe690f218073f8538aa9fcf41c94d4abd3e0507e09607ef11e10edf38`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `generated_file_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetLoadedProgram_Request

`Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_030e5746e6a4da8f266e37d11cc3826715099ff1aa1c845a97042aec987707e3`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetLoadedProgram_Response

`Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_3e8c7f3c8711faea01de37b9a011f34a9c6dd660cc222e46177b2c1898ec2f7e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetOperationalMode_Request

`Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_3f348b5d9e04a8ba01f5277ad259c34a6816ae0693f47c49e348a5497a90a325`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetOperationalMode_Response

`Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_6c2da335fd551162020eb394b91e99aaeca17e34e7c2e98de935c81912efb5f6`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `operational_mode` | `ur_dashboard_msgs/msg/OperationalMode` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetPolyScopeVersion_Request

`Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_88193ae202f0cb02746bc5556e8e8ee277fb4fae72ee4b96a6539c980dc86f13`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetPolyScopeVersion_Response

`Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response`; 21..277 canonical bytes. Codec identity: `UWVMROS1_c8d53d0a920806e86ceb6d2ac5a692a92e62b057432554bed9dcf57bed0ff9bd`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `version` | `ur_dashboard_msgs/msg/VersionInformation` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetProgramState_Request

`Ros2Ur_dashboard_msgsSrvGetProgramState_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_fe42d1d1aa3d7bdbaa410bce045120d6dd841213ef10c5dd158c2b76fa157f65`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetProgramState_Response

`Ros2Ur_dashboard_msgsSrvGetProgramState_Response`; 13..781 canonical bytes. Codec identity: `UWVMROS1_b20731b8552f323837c5939f390060a6c7c92e9447df5e620891708cfce51ff4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `state` | `ur_dashboard_msgs/msg/ProgramState` | scalar | — | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetPrograms_Request

`Ros2Ur_dashboard_msgsSrvGetPrograms_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_8d7b4f3fb9a15854b59c85c5205bf20d3e0f6a1a972ccbdf77ee8377c9e40d6d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetPrograms_Response

`Ros2Ur_dashboard_msgsSrvGetPrograms_Response`; 9..11081 canonical bytes. Codec identity: `UWVMROS1_111b67c562ba0c77c2924b97058e4126055ad6deb7f99049b8caf8990b3f979c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `programs` | `ur_dashboard_msgs/msg/ProgramInformation` | sequence | 16 | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetRobotMode_Request

`Ros2Ur_dashboard_msgsSrvGetRobotMode_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_d1d9cd94a443b20ec0d41a8db1a6d87291657597abc014e7da0f46a58c6c5614`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetRobotMode_Response

`Ros2Ur_dashboard_msgsSrvGetRobotMode_Response`; 6..262 canonical bytes. Codec identity: `UWVMROS1_67db750ad95b3b207d61b18513a117c868040c22c93638f07fa74645d87bcfba`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `robot_mode` | `ur_dashboard_msgs/msg/RobotMode` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetRobotModel_Request

`Ros2Ur_dashboard_msgsSrvGetRobotModel_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_9db08f07993bd5786aea5b6bd567f9e9f49329883326ea16e6c49eef1586dc43`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetRobotModel_Response

`Ros2Ur_dashboard_msgsSrvGetRobotModel_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_faf0124c542ef7420915527c27e99a7d26c5d6274f55d869bc9416e6b7d9b3c9`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `robot_model` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetSafetyMode_Request

`Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_5866cc4b0e10508eeb45ceecf9f9b6036ba55d04c9613622e189ccde2781dcb0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetSafetyMode_Response

`Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response`; 6..262 canonical bytes. Codec identity: `UWVMROS1_f65d7ff83dc97f891032d8ab16bf71a9c2326c6ae6a033fe1d6e06f011c5a40b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `safety_mode` | `ur_dashboard_msgs/msg/SafetyMode` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetSafetyStatus_Request

`Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_0e2958bcd7b121682361c94b2926bcc4552d7ef07dc2af4609d04b1bb7054602`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetSafetyStatus_Response

`Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response`; 6..262 canonical bytes. Codec identity: `UWVMROS1_bb96aaa96f5c78b97ad80a14eb96865dc10b5a1d12524fcbcc75fc6d481c53e4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `safety_status` | `ur_dashboard_msgs/msg/SafetyStatus` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetSerialNumber_Request

`Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_bbb1ca066c77ed459352de69d566f3ea87b94fe593c31c911193416f92a73c9b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetSerialNumber_Response

`Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response`; 13..269 canonical bytes. Codec identity: `UWVMROS1_f389641d089fa6fd421348f047732de2122cd714bdb2bd4d1e611592aca349e7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `serial_number` | `uint64` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetUserRole_Request

`Ros2Ur_dashboard_msgsSrvGetUserRole_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_a331be09dd2093e4584e6dc80f83caaadd3a8e43cca6a1c8fcfa1e2ea632c9f0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetUserRole_Response

`Ros2Ur_dashboard_msgsSrvGetUserRole_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_ed4f53e59fbe4cd33cfbf5d190b60fbe8371dda7da9d7af6e270a882eb142df8`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `user_role` | `ur_dashboard_msgs/msg/UserRole` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/IsInRemoteControl_Request

`Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_4b6b86fc4337c36589e8781b46ddbe6992f750b565ff413ea0b069982d87a463`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/IsInRemoteControl_Response

`Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response`; 6..262 canonical bytes. Codec identity: `UWVMROS1_f2705c1be319c7c667f4f2224851b06c24b15b4211c2828fab89f09455e4c816`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `remote_control` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/IsProgramRunning_Request

`Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_f28274c0dc01d8aa2f981f969c05a614e6b3922601d578f99c6321a4b20fc80f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/IsProgramRunning_Response

`Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response`; 6..262 canonical bytes. Codec identity: `UWVMROS1_c57cc7ecd7e81f7359824b43884a58f65748a4c77cacbcc45be17aa9147cf499`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_running` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/IsProgramSaved_Request

`Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_c53d57cffc0480d66257150a8450ba90563fda5153742784831d38abcbc0b099`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/IsProgramSaved_Response

`Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response`; 10..522 canonical bytes. Codec identity: `UWVMROS1_aa171247f31fd00a1b8820ee21cf20d159bd10d0d2887dc96b3a4dd4d372d115`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_saved` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/Load_Request

`Ros2Ur_dashboard_msgsSrvLoad_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_1d0cd6cdeaaafce999a7e9924721246b9f4954f22da40fd0a27fb7b657324876`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `filename` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/Load_Response

`Ros2Ur_dashboard_msgsSrvLoad_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_4e694de8079133a8e789add3640dfe19805cad92991a650167c2aae7067da415`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/Popup_Request

`Ros2Ur_dashboard_msgsSrvPopup_Request`; 8..520 canonical bytes. Codec identity: `UWVMROS1_369e6eab4f689a846c52fcc5cb539da63fab3939fab254dd1e04c7b274d5f770`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `title` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/Popup_Response

`Ros2Ur_dashboard_msgsSrvPopup_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_0b54f7c477c1ddf8ccb18d12d50eaf308225d4927ee377377ed354426e58f984`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/RawRequest_Request

`Ros2Ur_dashboard_msgsSrvRawRequest_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_2bf66d87b20ca2de9ed94c04c79042a50239728320b43b27c9942405795b4555`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `query` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/RawRequest_Response

`Ros2Ur_dashboard_msgsSrvRawRequest_Response`; 4..260 canonical bytes. Codec identity: `UWVMROS1_7c37f54149bab54f6e7bbfed41992eb54416b31346bc889a9632d5497111267f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/SetOperationalMode_Request

`Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_8cc61f7c64211c46e01e52eee2c05f6e709f4f0900cf24fdfd4079b0f7581a00`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `operational_mode` | `ur_dashboard_msgs/msg/OperationalMode` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/SetOperationalMode_Response

`Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_f5009de077224371e9d2f6c0aecbabd24c80148f2c7e1b1383a64f6f214b202a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/SetUserRole_Request

`Ros2Ur_dashboard_msgsSrvSetUserRole_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_7bd499947803efca81401a2de496d24e7e54ba97f4f86ec2b3089146a0655f5e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `user_role` | `ur_dashboard_msgs/msg/UserRole` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/SetUserRole_Response

`Ros2Ur_dashboard_msgsSrvSetUserRole_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_4cab2bba5030f4e4b9e90252d64ec2e02d6eb87070b75cf43190fecd21da59fd`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/UploadProgram_Request

`Ros2Ur_dashboard_msgsSrvUploadProgram_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_f7501d0115f8d36b1942ce610b1bbc197d0276de508ac8175d539f40494f437b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `file_path` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/UploadProgram_Response

`Ros2Ur_dashboard_msgsSrvUploadProgram_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_ae9a28c1cd4729f54968d18a16e2f8f417bdc5e9bc15809de7481f1f20e6b398`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/action/FollowJointTrajectoryUntil_Goal

`Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal`; 37..7053 canonical bytes. Codec identity: `UWVMROS1_78fda8f2d20c502e24b1ad4fe55f34bba41de20ff88e71b56d7a0631d7a3905a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `trajectory` | `trajectory_msgs/msg/JointTrajectory` | scalar | — | `implicit zero/empty/nested` |
| `path_tolerance` | `control_msgs/msg/JointTolerance` | sequence | 6 | `implicit zero/empty/nested` |
| `goal_tolerance` | `control_msgs/msg/JointTolerance` | sequence | 6 | `implicit zero/empty/nested` |
| `goal_time_tolerance` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |
| `until_type` | `uint8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `TOOL_CONTACT: uint8 = 0`.

### ur_msgs/action/FollowJointTrajectoryUntil_Result

`Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result`; 12..268 canonical bytes. Codec identity: `UWVMROS1_de92b9ccfb9c93f3afae9da5e8e31df9a6d6a606479fe27b9bcf14ff329bc869`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `error_code` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `until_condition_result` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `error_string` | `string` | scalar | 256 | `implicit zero/empty/nested` |

Original constants: `SUCCESSFUL: int32 = 0`; `INVALID_GOAL: int32 = -1`; `INVALID_JOINTS: int32 = -2`; `OLD_HEADER_TIMESTAMP: int32 = -3`; `PATH_TOLERANCE_VIOLATED: int32 = -4`; `GOAL_TOLERANCE_VIOLATED: int32 = -5`; `TRIGGERED: int32 = 0`; `NOT_TRIGGERED: int32 = 1`.

### ur_msgs/action/FollowJointTrajectoryUntil_Feedback

`Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback`; 88..2352 canonical bytes. Codec identity: `UWVMROS1_5a719f991f5c73784f9dc9e962ecfa0541e00daef7f747c312d4b633d63040ac`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `joint_names` | `string` | sequence | 6 | `implicit zero/empty/nested` |
| `desired` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `actual` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `error` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/action/SendScript_Goal

`Ros2Ur_msgsActionSendScript_Goal`; 17..8465 canonical bytes. Codec identity: `UWVMROS1_c277cd00663786f95201e61baa658b92def3becc1f37e54aa6093bb11135819c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `program` | `string` | scalar | 8192 | `implicit zero/empty/nested` |
| `script_name` | `string` | scalar | 256 | `` |
| `start_timeout` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |
| `fail_on_warnings` | `bool` | scalar | — | `True` |

### ur_msgs/action/SendScript_Result

`Ros2Ur_msgsActionSendScript_Result`; 5..261 canonical bytes. Codec identity: `UWVMROS1_d4c4d9721c3a576f590ba4967b2444a82969d6ccba94ddbf8c4a974535ee17d2`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_msgs/action/SendScript_Feedback

`Ros2Ur_msgsActionSendScript_Feedback`; 0..0 canonical bytes. Codec identity: `UWVMROS1_094876d6467bd2b34f74cc6b574393117753add5254285e4e95d85b07328ef2c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_msgs/action/ToolContact_Goal

`Ros2Ur_msgsActionToolContact_Goal`; 0..0 canonical bytes. Codec identity: `UWVMROS1_150298ad16b1bc37d47bd3324cd4ec301ad8402c07779e8a435ce61daa7578dd`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_msgs/action/ToolContact_Result

`Ros2Ur_msgsActionToolContact_Result`; 0..0 canonical bytes. Codec identity: `UWVMROS1_b79f6080ac18b67c25131458a2af0a3c235d624c00fc5c13da534cc546c94578`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_msgs/action/ToolContact_Feedback

`Ros2Ur_msgsActionToolContact_Feedback`; 0..0 canonical bytes. Codec identity: `UWVMROS1_c6a11fd615f72a70a98514703de4c007a2bb161fbd8a953c5e8b899f471f4c5b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_msgs/msg/Analog

`Ros2Ur_msgsMsgAnalog`; 6..6 canonical bytes. Codec identity: `UWVMROS1_68873e85836e1a65d7b67a52f5db8b3c3be082f889d2df4342386b282988f2a4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `pin` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `domain` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `float32` | scalar | — | `implicit zero/empty/nested` |

Original constants: `CURRENT: uint8 = 0`; `VOLTAGE: uint8 = 1`.

### ur_msgs/msg/Digital

`Ros2Ur_msgsMsgDigital`; 2..2 canonical bytes. Codec identity: `UWVMROS1_e5ebd0a17ee528cff1e0a636eb0be9c7e4128d3e77be722c5f1be73df4f4c11e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `pin` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/msg/FrictionModelParameters

`Ros2Ur_msgsMsgFrictionModelParameters`; 8..104 canonical bytes. Codec identity: `UWVMROS1_7cc9c7af77340f56b0559b4e2ad32972ff65f2a6cf89ebfbe2c48c645f8e9c89`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `viscous_scale` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `coulomb_scale` | `float64` | sequence | 6 | `implicit zero/empty/nested` |

### ur_msgs/msg/IOStates

`Ros2Ur_msgsMsgIOStates`; 20..404 canonical bytes. Codec identity: `UWVMROS1_c22f9f784c89b6854fa84df416ed3704e3a312b15c8fc41162e7f5f53223fef5`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `digital_in_states` | `ur_msgs/msg/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `digital_out_states` | `ur_msgs/msg/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `flag_states` | `ur_msgs/msg/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `analog_in_states` | `ur_msgs/msg/Analog` | sequence | 16 | `implicit zero/empty/nested` |
| `analog_out_states` | `ur_msgs/msg/Analog` | sequence | 16 | `implicit zero/empty/nested` |

### ur_msgs/msg/MasterboardDataMsg

`Ros2Ur_msgsMsgMasterboardDataMsg`; 62..62 canonical bytes. Codec identity: `UWVMROS1_eb3b0aab27bb5683859356ca7cf9648e53d311c1fd32cac97f68ce1d4622a9e5`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `digital_input_bits` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `digital_output_bits` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `analog_input_range0` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input_range1` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input0` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_input1` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_output_domain0` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_output_domain1` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_output0` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_output1` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `masterboard_temperature` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `robot_voltage_48v` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `robot_current` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `master_io_current` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `master_safety_state` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `master_onoff_state` | `uint8` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/msg/RobotModeDataMsg

`Ros2Ur_msgsMsgRobotModeDataMsg`; 15..15 canonical bytes. Codec identity: `UWVMROS1_0181d85868dc6251289c6f7bc723757fa573c1345b6502497e335655d328bb31`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `timestamp` | `uint64` | scalar | — | `implicit zero/empty/nested` |
| `is_robot_connected` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_real_robot_enabled` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_power_on_robot` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_emergency_stopped` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_protective_stopped` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_program_running` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_program_paused` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/msg/RobotStateRTMsg

`Ros2Ur_msgsMsgRobotStateRTMsg`; 96..768 canonical bytes. Codec identity: `UWVMROS1_a30600c42e98b89da49d63073a5d30b0989aa0cb21f2bafec229dee10591d9cd`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `time` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `q_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `qd_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `qdd_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `i_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `m_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `q_actual` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `qd_actual` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `i_actual` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tool_acc_values` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tcp_force` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tool_vector` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tcp_speed` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `digital_input_bits` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `motor_temperatures` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `controller_timer` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `test_value` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `robot_mode` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `joint_modes` | `float64` | sequence | 6 | `implicit zero/empty/nested` |

### ur_msgs/msg/ToolDataMsg

`Ros2Ur_msgsMsgToolDataMsg`; 32..32 canonical bytes. Codec identity: `UWVMROS1_1eec69666515ffbdca162a10967fce03ee4c25f0c27d56c5a812b87c9a229aa0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `analog_input_range2` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input_range3` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input2` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_input3` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `tool_voltage_48v` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `tool_output_voltage` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `tool_current` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `tool_temperature` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `tool_mode` | `uint8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `ANALOG_INPUT_RANGE_CURRENT: int8 = 0`; `ANALOG_INPUT_RANGE_VOLTAGE: int8 = 1`; `TOOL_BOOTLOADER_MODE: uint8 = 249`; `TOOL_RUNNING_MODE: uint8 = 253`; `TOOL_IDLE_MODE: uint8 = 255`.

### ur_msgs/srv/GetRobotSoftwareVersion_Request

`Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_c2d78972cb5b63138d1e780e8ff0c082dd77d5b76b09642d2c655e9f16780101`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_msgs/srv/GetRobotSoftwareVersion_Response

`Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response`; 16..16 canonical bytes. Codec identity: `UWVMROS1_bbe9984c34d69f93ad8dbfe6059c6a2e1bf43dbd27eabd97cf0a9507308d814a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `major` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `minor` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `bugfix` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `build` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetAnalogOutput_Request

`Ros2Ur_msgsSrvSetAnalogOutput_Request`; 6..6 canonical bytes. Codec identity: `UWVMROS1_71c3eca5c6c90758f084e275fc495feb5d1c08a467c97d941fb5864c54309bea`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `data` | `ur_msgs/msg/Analog` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetAnalogOutput_Response

`Ros2Ur_msgsSrvSetAnalogOutput_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_71a5f3580657cb3ca702dbb63b7af3330c922624c9e9774e47e6533e2fc0a05a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetForceMode_Request

`Ros2Ur_msgsSrvSetForceMode_Request`; 203..331 canonical bytes. Codec identity: `UWVMROS1_e43a6c22510a2078de3cb2dc17ba1b7184080a6aa29a1653b7986723c0cfef6e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `task_frame` | `geometry_msgs/msg/PoseStamped` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_x` | `bool` | scalar | — | `False` |
| `selection_vector_y` | `bool` | scalar | — | `False` |
| `selection_vector_z` | `bool` | scalar | — | `False` |
| `selection_vector_rx` | `bool` | scalar | — | `False` |
| `selection_vector_ry` | `bool` | scalar | — | `False` |
| `selection_vector_rz` | `bool` | scalar | — | `False` |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar | — | `implicit zero/empty/nested` |
| `type` | `uint8` | scalar | — | `2` |
| `speed_limits` | `geometry_msgs/msg/Twist` | scalar | — | `implicit zero/empty/nested` |
| `deviation_limits` | `float32` | array | 6 | `[0.01, 0.01, 0.01, 0.01, 0.01, 0.01]` |
| `damping_factor` | `float32` | scalar | — | `0.025` |
| `gain_scaling` | `float32` | scalar | — | `0.5` |

Original constants: `TCP_TO_ORIGIN: uint8 = 1`; `NO_TRANSFORM: uint8 = 2`; `TCP_VELOCITY_TO_X_Y: uint8 = 3`.

### ur_msgs/srv/SetForceMode_Response

`Ros2Ur_msgsSrvSetForceMode_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_3f5438d426b7b68557ac8f43dc8efc2e2106782ec0cd4fd0dee7cdd69ddc7de8`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetFrictionModelParameters_Request

`Ros2Ur_msgsSrvSetFrictionModelParameters_Request`; 8..104 canonical bytes. Codec identity: `UWVMROS1_e44ad15f9c45d5a65eb13e6bc6e973bb20eebdafa04a5f2e8bcf4b0b54ce91c2`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `parameters` | `ur_msgs/msg/FrictionModelParameters` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetFrictionModelParameters_Response

`Ros2Ur_msgsSrvSetFrictionModelParameters_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_1caca29dda3dc32360fd010dfb352b6feb54bba66ee16edd2f4353e3382207b3`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetGravity_Request

`Ros2Ur_msgsSrvSetGravity_Request`; 36..164 canonical bytes. Codec identity: `UWVMROS1_3d7fed6ae8accbddd5b09f93c3e49f2b9f99cae4cf80a951eb31ace30ec5a834`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `gravity` | `geometry_msgs/msg/Vector3Stamped` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetGravity_Response

`Ros2Ur_msgsSrvSetGravity_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_84694df7fbb4fd15bfecaf1aae683ef1795b0c4941d1987d951467448da5f793`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `status` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_msgs/srv/SetIO_Request

`Ros2Ur_msgsSrvSetIO_Request`; 6..6 canonical bytes. Codec identity: `UWVMROS1_c8ac4dddeb474521b4c701a0229e99af954416b7b8d7f32d2a19629d38b378c7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `fun` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `pin` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `float32` | scalar | — | `implicit zero/empty/nested` |

Original constants: `PIN_AOUT0: int8 = 0`; `PIN_AOUT1: int8 = 1`; `PIN_DOUT0: int8 = 0`; `PIN_DOUT1: int8 = 1`; `PIN_DOUT2: int8 = 2`; `PIN_DOUT3: int8 = 3`; `PIN_DOUT4: int8 = 4`; `PIN_DOUT5: int8 = 5`; `PIN_DOUT6: int8 = 6`; `PIN_DOUT7: int8 = 7`; `PIN_CONF_OUT0: int8 = 8`; `PIN_CONF_OUT1: int8 = 9`; `PIN_CONF_OUT2: int8 = 10`; `PIN_CONF_OUT3: int8 = 11`; `PIN_CONF_OUT4: int8 = 12`; `PIN_CONF_OUT5: int8 = 13`; `PIN_CONF_OUT6: int8 = 14`; `PIN_CONF_OUT7: int8 = 15`; `PIN_TOOL_DOUT0: int8 = 16`; `PIN_TOOL_DOUT1: int8 = 17`; `FUN_SET_DIGITAL_OUT: int8 = 1`; `FUN_SET_FLAG: int8 = 2`; `FUN_SET_ANALOG_OUT: int8 = 3`; `FUN_SET_TOOL_VOLTAGE: int8 = 4`; `STATE_OFF: int8 = 0`; `STATE_ON: int8 = 1`; `STATE_TOOL_VOLTAGE_0V: int8 = 0`; `STATE_TOOL_VOLTAGE_12V: int8 = 12`; `STATE_TOOL_VOLTAGE_24V: int8 = 24`.

### ur_msgs/srv/SetIO_Response

`Ros2Ur_msgsSrvSetIO_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_bd32373034093ccdab140a5ba8ce8a420ef2ce441430e8306b2484f0ca535090`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetPayload_Request

`Ros2Ur_msgsSrvSetPayload_Request`; 84..84 canonical bytes. Codec identity: `UWVMROS1_e76e256e1accf2d742c4cf529e5af1e830db75f3db703a1f368d28077a87e735`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mass` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `center_of_gravity` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `ixx` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `iyy` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `izz` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `ixy` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `ixz` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `iyz` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `transition_time` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetPayload_Response

`Ros2Ur_msgsSrvSetPayload_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_036dbaa7d42b6cba6ad29a082e078401d507292483d260ba532f7d6947c1624c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetSpeedSliderFraction_Request

`Ros2Ur_msgsSrvSetSpeedSliderFraction_Request`; 8..8 canonical bytes. Codec identity: `UWVMROS1_d8f19fb240e4b70cad74c5111cdaebad14b480f21da953c95d474064b091abd8`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `speed_slider_fraction` | `float64` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetSpeedSliderFraction_Response

`Ros2Ur_msgsSrvSetSpeedSliderFraction_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_1ab1ad5ab4b1ed302710ec055dff7644cc6e966af919ff311eaea6cddcf7dbb9`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
## universal-robots-ros2-trajectory-complete

| Interface | Kind | Complete component types |
| --- | --- | --- |
| `builtin_interfaces/msg/Duration` | message | `message: Ros2Builtin_interfacesMsgDuration` |
| `builtin_interfaces/msg/Time` | message | `message: Ros2Builtin_interfacesMsgTime` |
| `control_msgs/action/FollowJointTrajectory` | action | `goal: Ros2Control_msgsActionFollowJointTrajectory_Goal`, `result: Ros2Control_msgsActionFollowJointTrajectory_Result`, `feedback: Ros2Control_msgsActionFollowJointTrajectory_Feedback` |
| `control_msgs/msg/JointComponentTolerance` | message | `message: Ros2Control_msgsMsgJointComponentTolerance` |
| `control_msgs/msg/JointTolerance` | message | `message: Ros2Control_msgsMsgJointTolerance` |
| `geometry_msgs/msg/Point` | message | `message: Ros2Geometry_msgsMsgPoint` |
| `geometry_msgs/msg/Pose` | message | `message: Ros2Geometry_msgsMsgPose` |
| `geometry_msgs/msg/PoseStamped` | message | `message: Ros2Geometry_msgsMsgPoseStamped` |
| `geometry_msgs/msg/Quaternion` | message | `message: Ros2Geometry_msgsMsgQuaternion` |
| `geometry_msgs/msg/Transform` | message | `message: Ros2Geometry_msgsMsgTransform` |
| `geometry_msgs/msg/Twist` | message | `message: Ros2Geometry_msgsMsgTwist` |
| `geometry_msgs/msg/Vector3` | message | `message: Ros2Geometry_msgsMsgVector3` |
| `geometry_msgs/msg/Vector3Stamped` | message | `message: Ros2Geometry_msgsMsgVector3Stamped` |
| `geometry_msgs/msg/Wrench` | message | `message: Ros2Geometry_msgsMsgWrench` |
| `sensor_msgs/msg/JointState` | message | `message: Ros2Sensor_msgsMsgJointState` |
| `std_msgs/msg/Header` | message | `message: Ros2Std_msgsMsgHeader` |
| `trajectory_msgs/msg/JointTrajectory` | message | `message: Ros2Trajectory_msgsMsgJointTrajectory` |
| `trajectory_msgs/msg/JointTrajectoryPoint` | message | `message: Ros2Trajectory_msgsMsgJointTrajectoryPoint` |
| `trajectory_msgs/msg/MultiDOFJointTrajectory` | message | `message: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory` |
| `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | message | `message: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint` |
| `ur_dashboard_msgs/action/SetMode` | action | `goal: Ros2Ur_dashboard_msgsActionSetMode_Goal`, `result: Ros2Ur_dashboard_msgsActionSetMode_Result`, `feedback: Ros2Ur_dashboard_msgsActionSetMode_Feedback` |
| `ur_dashboard_msgs/msg/OperationalMode` | message | `message: Ros2Ur_dashboard_msgsMsgOperationalMode` |
| `ur_dashboard_msgs/msg/ProgramInformation` | message | `message: Ros2Ur_dashboard_msgsMsgProgramInformation` |
| `ur_dashboard_msgs/msg/ProgramState` | message | `message: Ros2Ur_dashboard_msgsMsgProgramState` |
| `ur_dashboard_msgs/msg/RobotMode` | message | `message: Ros2Ur_dashboard_msgsMsgRobotMode` |
| `ur_dashboard_msgs/msg/SafetyMode` | message | `message: Ros2Ur_dashboard_msgsMsgSafetyMode` |
| `ur_dashboard_msgs/msg/SafetyStatus` | message | `message: Ros2Ur_dashboard_msgsMsgSafetyStatus` |
| `ur_dashboard_msgs/msg/UserRole` | message | `message: Ros2Ur_dashboard_msgsMsgUserRole` |
| `ur_dashboard_msgs/msg/VersionInformation` | message | `message: Ros2Ur_dashboard_msgsMsgVersionInformation` |
| `ur_dashboard_msgs/srv/AddToLog` | service | `request: Ros2Ur_dashboard_msgsSrvAddToLog_Request`, `response: Ros2Ur_dashboard_msgsSrvAddToLog_Response` |
| `ur_dashboard_msgs/srv/DownloadProgram` | service | `request: Ros2Ur_dashboard_msgsSrvDownloadProgram_Request`, `response: Ros2Ur_dashboard_msgsSrvDownloadProgram_Response` |
| `ur_dashboard_msgs/srv/DownloadSupportFile` | service | `request: Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request`, `response: Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response` |
| `ur_dashboard_msgs/srv/GenerateFlightReport` | service | `request: Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request`, `response: Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response` |
| `ur_dashboard_msgs/srv/GenerateSupportFile` | service | `request: Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request`, `response: Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response` |
| `ur_dashboard_msgs/srv/GetLoadedProgram` | service | `request: Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request`, `response: Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response` |
| `ur_dashboard_msgs/srv/GetOperationalMode` | service | `request: Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request`, `response: Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response` |
| `ur_dashboard_msgs/srv/GetPolyScopeVersion` | service | `request: Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request`, `response: Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response` |
| `ur_dashboard_msgs/srv/GetProgramState` | service | `request: Ros2Ur_dashboard_msgsSrvGetProgramState_Request`, `response: Ros2Ur_dashboard_msgsSrvGetProgramState_Response` |
| `ur_dashboard_msgs/srv/GetPrograms` | service | `request: Ros2Ur_dashboard_msgsSrvGetPrograms_Request`, `response: Ros2Ur_dashboard_msgsSrvGetPrograms_Response` |
| `ur_dashboard_msgs/srv/GetRobotMode` | service | `request: Ros2Ur_dashboard_msgsSrvGetRobotMode_Request`, `response: Ros2Ur_dashboard_msgsSrvGetRobotMode_Response` |
| `ur_dashboard_msgs/srv/GetRobotModel` | service | `request: Ros2Ur_dashboard_msgsSrvGetRobotModel_Request`, `response: Ros2Ur_dashboard_msgsSrvGetRobotModel_Response` |
| `ur_dashboard_msgs/srv/GetSafetyMode` | service | `request: Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request`, `response: Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response` |
| `ur_dashboard_msgs/srv/GetSafetyStatus` | service | `request: Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request`, `response: Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response` |
| `ur_dashboard_msgs/srv/GetSerialNumber` | service | `request: Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request`, `response: Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response` |
| `ur_dashboard_msgs/srv/GetUserRole` | service | `request: Ros2Ur_dashboard_msgsSrvGetUserRole_Request`, `response: Ros2Ur_dashboard_msgsSrvGetUserRole_Response` |
| `ur_dashboard_msgs/srv/IsInRemoteControl` | service | `request: Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request`, `response: Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response` |
| `ur_dashboard_msgs/srv/IsProgramRunning` | service | `request: Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request`, `response: Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response` |
| `ur_dashboard_msgs/srv/IsProgramSaved` | service | `request: Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request`, `response: Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response` |
| `ur_dashboard_msgs/srv/Load` | service | `request: Ros2Ur_dashboard_msgsSrvLoad_Request`, `response: Ros2Ur_dashboard_msgsSrvLoad_Response` |
| `ur_dashboard_msgs/srv/Popup` | service | `request: Ros2Ur_dashboard_msgsSrvPopup_Request`, `response: Ros2Ur_dashboard_msgsSrvPopup_Response` |
| `ur_dashboard_msgs/srv/RawRequest` | service | `request: Ros2Ur_dashboard_msgsSrvRawRequest_Request`, `response: Ros2Ur_dashboard_msgsSrvRawRequest_Response` |
| `ur_dashboard_msgs/srv/SetOperationalMode` | service | `request: Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request`, `response: Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response` |
| `ur_dashboard_msgs/srv/SetUserRole` | service | `request: Ros2Ur_dashboard_msgsSrvSetUserRole_Request`, `response: Ros2Ur_dashboard_msgsSrvSetUserRole_Response` |
| `ur_dashboard_msgs/srv/UploadProgram` | service | `request: Ros2Ur_dashboard_msgsSrvUploadProgram_Request`, `response: Ros2Ur_dashboard_msgsSrvUploadProgram_Response` |
| `ur_msgs/action/FollowJointTrajectoryUntil` | action | `goal: Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal`, `result: Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result`, `feedback: Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback` |
| `ur_msgs/action/SendScript` | action | `goal: Ros2Ur_msgsActionSendScript_Goal`, `result: Ros2Ur_msgsActionSendScript_Result`, `feedback: Ros2Ur_msgsActionSendScript_Feedback` |
| `ur_msgs/action/ToolContact` | action | `goal: Ros2Ur_msgsActionToolContact_Goal`, `result: Ros2Ur_msgsActionToolContact_Result`, `feedback: Ros2Ur_msgsActionToolContact_Feedback` |
| `ur_msgs/msg/Analog` | message | `message: Ros2Ur_msgsMsgAnalog` |
| `ur_msgs/msg/Digital` | message | `message: Ros2Ur_msgsMsgDigital` |
| `ur_msgs/msg/FrictionModelParameters` | message | `message: Ros2Ur_msgsMsgFrictionModelParameters` |
| `ur_msgs/msg/IOStates` | message | `message: Ros2Ur_msgsMsgIOStates` |
| `ur_msgs/msg/MasterboardDataMsg` | message | `message: Ros2Ur_msgsMsgMasterboardDataMsg` |
| `ur_msgs/msg/RobotModeDataMsg` | message | `message: Ros2Ur_msgsMsgRobotModeDataMsg` |
| `ur_msgs/msg/RobotStateRTMsg` | message | `message: Ros2Ur_msgsMsgRobotStateRTMsg` |
| `ur_msgs/msg/ToolDataMsg` | message | `message: Ros2Ur_msgsMsgToolDataMsg` |
| `ur_msgs/srv/GetRobotSoftwareVersion` | service | `request: Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request`, `response: Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response` |
| `ur_msgs/srv/SetAnalogOutput` | service | `request: Ros2Ur_msgsSrvSetAnalogOutput_Request`, `response: Ros2Ur_msgsSrvSetAnalogOutput_Response` |
| `ur_msgs/srv/SetForceMode` | service | `request: Ros2Ur_msgsSrvSetForceMode_Request`, `response: Ros2Ur_msgsSrvSetForceMode_Response` |
| `ur_msgs/srv/SetFrictionModelParameters` | service | `request: Ros2Ur_msgsSrvSetFrictionModelParameters_Request`, `response: Ros2Ur_msgsSrvSetFrictionModelParameters_Response` |
| `ur_msgs/srv/SetGravity` | service | `request: Ros2Ur_msgsSrvSetGravity_Request`, `response: Ros2Ur_msgsSrvSetGravity_Response` |
| `ur_msgs/srv/SetIO` | service | `request: Ros2Ur_msgsSrvSetIO_Request`, `response: Ros2Ur_msgsSrvSetIO_Response` |
| `ur_msgs/srv/SetPayload` | service | `request: Ros2Ur_msgsSrvSetPayload_Request`, `response: Ros2Ur_msgsSrvSetPayload_Response` |
| `ur_msgs/srv/SetSpeedSliderFraction` | service | `request: Ros2Ur_msgsSrvSetSpeedSliderFraction_Request`, `response: Ros2Ur_msgsSrvSetSpeedSliderFraction_Response` |

### builtin_interfaces/msg/Duration

`Ros2Builtin_interfacesMsgDuration`; 8..8 canonical bytes. Codec identity: `UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `sec` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `nanosec` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 canonical bytes. Codec identity: `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `sec` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `nanosec` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..140 canonical bytes. Codec identity: `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `stamp` | `builtin_interfaces/msg/Time` | scalar | — | `implicit zero/empty/nested` |
| `frame_id` | `string` | scalar | 128 | `implicit zero/empty/nested` |

### trajectory_msgs/msg/JointTrajectoryPoint

`Ros2Trajectory_msgsMsgJointTrajectoryPoint`; 24..216 canonical bytes. Codec identity: `UWVMROS1_c4eafb6efd22d299b5c6fc21844d8bf69789cf27ee5414a1d7d2371f0b1acbbf`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `positions` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `velocities` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `accelerations` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `effort` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |

### trajectory_msgs/msg/JointTrajectory

`Ros2Trajectory_msgsMsgJointTrajectory`; 20..5164 canonical bytes. Codec identity: `UWVMROS1_e77c37c75123e442edb6a7f6f2a21dcbe33d8bb8fd2577f9906653a6ad5f8225`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `joint_names` | `string` | sequence | 6 | `implicit zero/empty/nested` |
| `points` | `trajectory_msgs/msg/JointTrajectoryPoint` | sequence | 16 | `implicit zero/empty/nested` |

### geometry_msgs/msg/Vector3

`Ros2Geometry_msgsMsgVector3`; 24..24 canonical bytes. Codec identity: `UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Quaternion

`Ros2Geometry_msgsMsgQuaternion`; 32..32 canonical bytes. Codec identity: `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `0.0` |
| `y` | `float64` | scalar | — | `0.0` |
| `z` | `float64` | scalar | — | `0.0` |
| `w` | `float64` | scalar | — | `1.0` |

### geometry_msgs/msg/Transform

`Ros2Geometry_msgsMsgTransform`; 56..56 canonical bytes. Codec identity: `UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `translation` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `rotation` | `geometry_msgs/msg/Quaternion` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Twist

`Ros2Geometry_msgsMsgTwist`; 48..48 canonical bytes. Codec identity: `UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `linear` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `angular` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |

### trajectory_msgs/msg/MultiDOFJointTrajectoryPoint

`Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint`; 20..324 canonical bytes. Codec identity: `UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `transforms` | `geometry_msgs/msg/Transform` | sequence | 2 | `implicit zero/empty/nested` |
| `velocities` | `geometry_msgs/msg/Twist` | sequence | 2 | `implicit zero/empty/nested` |
| `accelerations` | `geometry_msgs/msg/Twist` | sequence | 2 | `implicit zero/empty/nested` |
| `time_from_start` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |

### trajectory_msgs/msg/MultiDOFJointTrajectory

`Ros2Trajectory_msgsMsgMultiDOFJointTrajectory`; 20..1060 canonical bytes. Codec identity: `UWVMROS1_2bf467681a39a08ac0d1ca84fb0c1792628850af3dffa4b56108d01ecca81974`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `joint_names` | `string` | sequence | 2 | `implicit zero/empty/nested` |
| `points` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | sequence | 2 | `implicit zero/empty/nested` |

### control_msgs/msg/JointTolerance

`Ros2Control_msgsMsgJointTolerance`; 28..156 canonical bytes. Codec identity: `UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `name` | `string` | scalar | 128 | `implicit zero/empty/nested` |
| `position` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `velocity` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `acceleration` | `float64` | scalar | — | `implicit zero/empty/nested` |

### control_msgs/msg/JointComponentTolerance

`Ros2Control_msgsMsgJointComponentTolerance`; 30..158 canonical bytes. Codec identity: `UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `joint_name` | `string` | scalar | 128 | `implicit zero/empty/nested` |
| `component` | `uint16` | scalar | — | `implicit zero/empty/nested` |
| `position` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `velocity` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `acceleration` | `float64` | scalar | — | `implicit zero/empty/nested` |

Original constants: `X_AXIS: uint16 = 1`; `Y_AXIS: uint16 = 2`; `Z_AXIS: uint16 = 3`; `TRANSLATION: uint16 = 4`; `ROTATION: uint16 = 5`.

### control_msgs/action/FollowJointTrajectory_Goal

`Ros2Control_msgsActionFollowJointTrajectory_Goal`; 64..10016 canonical bytes. Codec identity: `UWVMROS1_34db8e96526d0dae9e4107c6b1a4de32bbf468b2903b01e30fc7c7be44773e23`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `trajectory` | `trajectory_msgs/msg/JointTrajectory` | scalar | — | `implicit zero/empty/nested` |
| `multi_dof_trajectory` | `trajectory_msgs/msg/MultiDOFJointTrajectory` | scalar | — | `implicit zero/empty/nested` |
| `path_tolerance` | `control_msgs/msg/JointTolerance` | sequence | 6 | `implicit zero/empty/nested` |
| `component_path_tolerance` | `control_msgs/msg/JointComponentTolerance` | sequence | 6 | `implicit zero/empty/nested` |
| `goal_tolerance` | `control_msgs/msg/JointTolerance` | sequence | 6 | `implicit zero/empty/nested` |
| `component_goal_tolerance` | `control_msgs/msg/JointComponentTolerance` | sequence | 6 | `implicit zero/empty/nested` |
| `goal_time_tolerance` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |

### control_msgs/action/FollowJointTrajectory_Result

`Ros2Control_msgsActionFollowJointTrajectory_Result`; 8..4104 canonical bytes. Codec identity: `UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `error_code` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `error_string` | `string` | scalar | 4096 | `implicit zero/empty/nested` |

Original constants: `SUCCESSFUL: int32 = 0`; `INVALID_GOAL: int32 = -1`; `INVALID_JOINTS: int32 = -2`; `OLD_HEADER_TIMESTAMP: int32 = -3`; `PATH_TOLERANCE_VIOLATED: int32 = -4`; `GOAL_TOLERANCE_VIOLATED: int32 = -5`.

### control_msgs/action/FollowJointTrajectory_Feedback

`Ros2Control_msgsActionFollowJointTrajectory_Feedback`; 152..3592 canonical bytes. Codec identity: `UWVMROS1_ed813f6e8b6223b6ecc8fa6f2f9b732c7b6d97c834baec8fbc5f8878e11c45c6`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `joint_names` | `string` | sequence | 6 | `implicit zero/empty/nested` |
| `desired` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `actual` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `error` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `multi_dof_joint_names` | `string` | sequence | 2 | `implicit zero/empty/nested` |
| `multi_dof_desired` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `multi_dof_actual` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `multi_dof_error` | `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Point

`Ros2Geometry_msgsMsgPoint`; 24..24 canonical bytes. Codec identity: `UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `x` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `y` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `z` | `float64` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Pose

`Ros2Geometry_msgsMsgPose`; 56..56 canonical bytes. Codec identity: `UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `position` | `geometry_msgs/msg/Point` | scalar | — | `implicit zero/empty/nested` |
| `orientation` | `geometry_msgs/msg/Quaternion` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/PoseStamped

`Ros2Geometry_msgsMsgPoseStamped`; 68..196 canonical bytes. Codec identity: `UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `pose` | `geometry_msgs/msg/Pose` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Vector3Stamped

`Ros2Geometry_msgsMsgVector3Stamped`; 36..164 canonical bytes. Codec identity: `UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `vector` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |

### geometry_msgs/msg/Wrench

`Ros2Geometry_msgsMsgWrench`; 48..48 canonical bytes. Codec identity: `UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `force` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `torque` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |

### sensor_msgs/msg/JointState

`Ros2Sensor_msgsMsgJointState`; 28..1860 canonical bytes. Codec identity: `UWVMROS1_b27092c8f58e8f9f96d790d525f894b30953ddbcffcc52a1d316e7dcce0908b9`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `name` | `string` | sequence | 6 | `implicit zero/empty/nested` |
| `position` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `velocity` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `effort` | `float64` | sequence | 6 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/action/SetMode_Goal

`Ros2Ur_dashboard_msgsActionSetMode_Goal`; 3..3 canonical bytes. Codec identity: `UWVMROS1_8a7484a60bad21933df3f847d3fd554e41098ed596dee270335ce9f092dc313d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `target_robot_mode` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `stop_program` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `play_program` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/action/SetMode_Result

`Ros2Ur_dashboard_msgsActionSetMode_Result`; 5..261 canonical bytes. Codec identity: `UWVMROS1_ef2a557ff27171319d46170ab16a80f5cba5fbd59e44c21cc1b704d01764b913`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/action/SetMode_Feedback

`Ros2Ur_dashboard_msgsActionSetMode_Feedback`; 2..2 canonical bytes. Codec identity: `UWVMROS1_afd74cd0a79174b53499a40b23b040ba96ec3d3e332129999525dcf6ca287ac6`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `current_robot_mode` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `current_safety_mode` | `int8` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/msg/OperationalMode

`Ros2Ur_dashboard_msgsMsgOperationalMode`; 4..260 canonical bytes. Codec identity: `UWVMROS1_7a0be8522cdc20e01d382218499030176a0f6565376fadc5bbdd871a01b9316e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mode` | `string` | scalar | 256 | `implicit zero/empty/nested` |

Original constants: `MANUAL: string = MANUAL`; `AUTOMATIC: string = AUTOMATIC`.

### ur_dashboard_msgs/msg/ProgramInformation

`Ros2Ur_dashboard_msgsMsgProgramInformation`; 36..676 canonical bytes. Codec identity: `UWVMROS1_9299ce545acd0b6ff064998334820fbe503b71dc47a475ef93545d2cdb41f965`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `name` | `string` | scalar | 128 | `implicit zero/empty/nested` |
| `description` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `created_date` | `uint64` | scalar | — | `implicit zero/empty/nested` |
| `last_saved_date` | `uint64` | scalar | — | `implicit zero/empty/nested` |
| `last_modified_date` | `uint64` | scalar | — | `implicit zero/empty/nested` |
| `program_state` | `string` | scalar | 256 | `implicit zero/empty/nested` |

Original constants: `PROGRAM_STATE_DRAFT: string = DRAFT`; `PROGRAM_STATE_FINAL: string = FINAL`.

### ur_dashboard_msgs/msg/ProgramState

`Ros2Ur_dashboard_msgsMsgProgramState`; 4..260 canonical bytes. Codec identity: `UWVMROS1_1462a3c2323792afbbfc6d48a600a6ab66a50a6f6f583e57a62da2458ea81f26`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `state` | `string` | scalar | 256 | `implicit zero/empty/nested` |

Original constants: `STOPPED: string = STOPPED`; `PLAYING: string = PLAYING`; `PAUSED: string = PAUSED`.

### ur_dashboard_msgs/msg/RobotMode

`Ros2Ur_dashboard_msgsMsgRobotMode`; 1..1 canonical bytes. Codec identity: `UWVMROS1_81a79c84083520d911de108a728ad1877de78a57ec9e27b5cc432590be4616bb`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mode` | `int8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `NO_CONTROLLER: int8 = -1`; `DISCONNECTED: int8 = 0`; `CONFIRM_SAFETY: int8 = 1`; `BOOTING: int8 = 2`; `POWER_OFF: int8 = 3`; `POWER_ON: int8 = 4`; `IDLE: int8 = 5`; `BACKDRIVE: int8 = 6`; `RUNNING: int8 = 7`; `UPDATING_FIRMWARE: int8 = 8`.

### ur_dashboard_msgs/msg/SafetyMode

`Ros2Ur_dashboard_msgsMsgSafetyMode`; 1..1 canonical bytes. Codec identity: `UWVMROS1_2eb3d5075a2d7d1765a604c1d1d198379010867d83a98d0327488ca51f5e1aac`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mode` | `uint8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `NORMAL: uint8 = 1`; `REDUCED: uint8 = 2`; `PROTECTIVE_STOP: uint8 = 3`; `RECOVERY: uint8 = 4`; `SAFEGUARD_STOP: uint8 = 5`; `SYSTEM_EMERGENCY_STOP: uint8 = 6`; `ROBOT_EMERGENCY_STOP: uint8 = 7`; `VIOLATION: uint8 = 8`; `FAULT: uint8 = 9`; `VALIDATE_JOINT_ID: uint8 = 10`; `UNDEFINED_SAFETY_MODE: uint8 = 11`; `AUTOMATIC_MODE_SAFEGUARD_STOP: uint8 = 12`; `SYSTEM_THREE_POSITION_ENABLING_STOP: uint8 = 13`.

### ur_dashboard_msgs/msg/SafetyStatus

`Ros2Ur_dashboard_msgsMsgSafetyStatus`; 1..1 canonical bytes. Codec identity: `UWVMROS1_1b1a7257c40d9c62e0b6291f241825d029fe38f3f3695265a182a270899a79e9`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `status` | `int8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `NORMAL: int8 = 1`; `REDUCED: int8 = 2`; `PROTECTIVE_STOP: int8 = 3`; `RECOVERY: int8 = 4`; `SAFEGUARD_STOP: int8 = 5`; `SYSTEM_EMERGENCY_STOP: int8 = 6`; `ROBOT_EMERGENCY_STOP: int8 = 7`; `VIOLATION: int8 = 8`; `FAULT: int8 = 9`; `VALIDATE_JOINT_ID: int8 = 10`; `UNDEFINED_SAFETY_MODE: int8 = 11`; `AUTOMATIC_MODE_SAFEGUARD_STOP: int8 = 12`; `SYSTEM_THREE_POSITION_ENABLING_STOP: int8 = 13`; `TP_THREE_POSITION_ENABLING_STOP: int8 = 14`; `IMMI_EMERGENCY_STOP: int8 = 15`; `IMMI_SAFEGUARD_STOP: int8 = 16`; `PROFISAFE_WAITING_FOR_PARAMETERS: int8 = 17`; `PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP: int8 = 18`; `PROFISAFE_SAFEGUARD_STOP: int8 = 19`; `PROFISAFE_EMERGENCY_STOP: int8 = 20`; `SAFETY_API_SAFEGUARD_STOP: int8 = 22`; `IO_PLANE_STOP: int8 = 23`.

### ur_dashboard_msgs/msg/UserRole

`Ros2Ur_dashboard_msgsMsgUserRole`; 4..260 canonical bytes. Codec identity: `UWVMROS1_7568bc9417685a9bc56cfdd2b41ff81ab99bd8e20fbe5f9e537b5b5d0689440a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `role` | `string` | scalar | 256 | `implicit zero/empty/nested` |

Original constants: `PROGRAMMER: string = PROGRAMMER`; `OPERATOR: string = OPERATOR`; `NONE: string = NONE`; `LOCKED: string = LOCKED`; `RESTRICTED: string = RESTRICTED`.

### ur_dashboard_msgs/msg/VersionInformation

`Ros2Ur_dashboard_msgsMsgVersionInformation`; 16..16 canonical bytes. Codec identity: `UWVMROS1_450c41c4361f1bca51f864dd9ef596851b17ebc79d4f784e7abb8b721752443d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `major` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `minor` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `bugfix` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `build` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/AddToLog_Request

`Ros2Ur_dashboard_msgsSrvAddToLog_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_ecfe5bb0d0db92bc5dfdec9bf82fbe730e3b3b4d65680812d0540b9055590142`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/AddToLog_Response

`Ros2Ur_dashboard_msgsSrvAddToLog_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_57b0c150a353d3fca6e96c4dc86e72f71b452663ede1eeb69e51069992d07e4c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/DownloadProgram_Request

`Ros2Ur_dashboard_msgsSrvDownloadProgram_Request`; 8..520 canonical bytes. Codec identity: `UWVMROS1_5c84420393aae13ea448d171a7b2956a55a39f3321f504b9f3bd5b4a38960c2f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `target_path` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/DownloadProgram_Response

`Ros2Ur_dashboard_msgsSrvDownloadProgram_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_46b0a73805282bad5f819f712275b7dd2ca4a6bb8c73c445ea8ae0a3d0f9e8e0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/DownloadSupportFile_Request

`Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_d919563629f81d5a8c10f1d2921ea16f3c912a49b8d3bcf65d17b8daa0a38140`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `target_path` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/DownloadSupportFile_Response

`Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response`; 6..262 canonical bytes. Codec identity: `UWVMROS1_76e190e6e9f1ddfff3082ea2adb0463d21ba9fb6795153fe6bbacee8a3334667`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `support_files_present` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GenerateFlightReport_Request

`Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_7246d97690c0c827e9cfab2f8297cf27a10e60e41ebb3ba345f361a109057099`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `report_type` | `string` | scalar | 256 | `SYSTEM` |

Original constants: `CONTROLLER: string = controller`; `SOFTWARE: string = software`; `SYSTEM: string = system`.

### ur_dashboard_msgs/srv/GenerateFlightReport_Response

`Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_adebf67876b5ae3377cec0aa04138c2ab73ef7c0d7942c77c6c06b248a836445`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `report_id` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GenerateSupportFile_Request

`Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_10b0371b77db32d75a77dcb0605b325caa1915ccfb7d0917896fd75234e6ada7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `dir_path` | `string` | scalar | 256 | `.` |

### ur_dashboard_msgs/srv/GenerateSupportFile_Response

`Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_f370623fe690f218073f8538aa9fcf41c94d4abd3e0507e09607ef11e10edf38`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `generated_file_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetLoadedProgram_Request

`Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_030e5746e6a4da8f266e37d11cc3826715099ff1aa1c845a97042aec987707e3`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetLoadedProgram_Response

`Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_3e8c7f3c8711faea01de37b9a011f34a9c6dd660cc222e46177b2c1898ec2f7e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetOperationalMode_Request

`Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_3f348b5d9e04a8ba01f5277ad259c34a6816ae0693f47c49e348a5497a90a325`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetOperationalMode_Response

`Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_6c2da335fd551162020eb394b91e99aaeca17e34e7c2e98de935c81912efb5f6`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `operational_mode` | `ur_dashboard_msgs/msg/OperationalMode` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetPolyScopeVersion_Request

`Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_88193ae202f0cb02746bc5556e8e8ee277fb4fae72ee4b96a6539c980dc86f13`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetPolyScopeVersion_Response

`Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response`; 21..277 canonical bytes. Codec identity: `UWVMROS1_c8d53d0a920806e86ceb6d2ac5a692a92e62b057432554bed9dcf57bed0ff9bd`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `version` | `ur_dashboard_msgs/msg/VersionInformation` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetProgramState_Request

`Ros2Ur_dashboard_msgsSrvGetProgramState_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_fe42d1d1aa3d7bdbaa410bce045120d6dd841213ef10c5dd158c2b76fa157f65`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetProgramState_Response

`Ros2Ur_dashboard_msgsSrvGetProgramState_Response`; 13..781 canonical bytes. Codec identity: `UWVMROS1_b20731b8552f323837c5939f390060a6c7c92e9447df5e620891708cfce51ff4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `state` | `ur_dashboard_msgs/msg/ProgramState` | scalar | — | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetPrograms_Request

`Ros2Ur_dashboard_msgsSrvGetPrograms_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_8d7b4f3fb9a15854b59c85c5205bf20d3e0f6a1a972ccbdf77ee8377c9e40d6d`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetPrograms_Response

`Ros2Ur_dashboard_msgsSrvGetPrograms_Response`; 9..11081 canonical bytes. Codec identity: `UWVMROS1_111b67c562ba0c77c2924b97058e4126055ad6deb7f99049b8caf8990b3f979c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `programs` | `ur_dashboard_msgs/msg/ProgramInformation` | sequence | 16 | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetRobotMode_Request

`Ros2Ur_dashboard_msgsSrvGetRobotMode_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_d1d9cd94a443b20ec0d41a8db1a6d87291657597abc014e7da0f46a58c6c5614`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetRobotMode_Response

`Ros2Ur_dashboard_msgsSrvGetRobotMode_Response`; 6..262 canonical bytes. Codec identity: `UWVMROS1_67db750ad95b3b207d61b18513a117c868040c22c93638f07fa74645d87bcfba`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `robot_mode` | `ur_dashboard_msgs/msg/RobotMode` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetRobotModel_Request

`Ros2Ur_dashboard_msgsSrvGetRobotModel_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_9db08f07993bd5786aea5b6bd567f9e9f49329883326ea16e6c49eef1586dc43`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetRobotModel_Response

`Ros2Ur_dashboard_msgsSrvGetRobotModel_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_faf0124c542ef7420915527c27e99a7d26c5d6274f55d869bc9416e6b7d9b3c9`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `robot_model` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetSafetyMode_Request

`Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_5866cc4b0e10508eeb45ceecf9f9b6036ba55d04c9613622e189ccde2781dcb0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetSafetyMode_Response

`Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response`; 6..262 canonical bytes. Codec identity: `UWVMROS1_f65d7ff83dc97f891032d8ab16bf71a9c2326c6ae6a033fe1d6e06f011c5a40b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `safety_mode` | `ur_dashboard_msgs/msg/SafetyMode` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetSafetyStatus_Request

`Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_0e2958bcd7b121682361c94b2926bcc4552d7ef07dc2af4609d04b1bb7054602`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetSafetyStatus_Response

`Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response`; 6..262 canonical bytes. Codec identity: `UWVMROS1_bb96aaa96f5c78b97ad80a14eb96865dc10b5a1d12524fcbcc75fc6d481c53e4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `safety_status` | `ur_dashboard_msgs/msg/SafetyStatus` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetSerialNumber_Request

`Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_bbb1ca066c77ed459352de69d566f3ea87b94fe593c31c911193416f92a73c9b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetSerialNumber_Response

`Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response`; 13..269 canonical bytes. Codec identity: `UWVMROS1_f389641d089fa6fd421348f047732de2122cd714bdb2bd4d1e611592aca349e7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `serial_number` | `uint64` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/GetUserRole_Request

`Ros2Ur_dashboard_msgsSrvGetUserRole_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_a331be09dd2093e4584e6dc80f83caaadd3a8e43cca6a1c8fcfa1e2ea632c9f0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/GetUserRole_Response

`Ros2Ur_dashboard_msgsSrvGetUserRole_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_ed4f53e59fbe4cd33cfbf5d190b60fbe8371dda7da9d7af6e270a882eb142df8`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `user_role` | `ur_dashboard_msgs/msg/UserRole` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/IsInRemoteControl_Request

`Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_4b6b86fc4337c36589e8781b46ddbe6992f750b565ff413ea0b069982d87a463`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/IsInRemoteControl_Response

`Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response`; 6..262 canonical bytes. Codec identity: `UWVMROS1_f2705c1be319c7c667f4f2224851b06c24b15b4211c2828fab89f09455e4c816`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `remote_control` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/IsProgramRunning_Request

`Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_f28274c0dc01d8aa2f981f969c05a614e6b3922601d578f99c6321a4b20fc80f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/IsProgramRunning_Response

`Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response`; 6..262 canonical bytes. Codec identity: `UWVMROS1_c57cc7ecd7e81f7359824b43884a58f65748a4c77cacbcc45be17aa9147cf499`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_running` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/IsProgramSaved_Request

`Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_c53d57cffc0480d66257150a8450ba90563fda5153742784831d38abcbc0b099`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_dashboard_msgs/srv/IsProgramSaved_Response

`Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response`; 10..522 canonical bytes. Codec identity: `UWVMROS1_aa171247f31fd00a1b8820ee21cf20d159bd10d0d2887dc96b3a4dd4d372d115`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_saved` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/Load_Request

`Ros2Ur_dashboard_msgsSrvLoad_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_1d0cd6cdeaaafce999a7e9924721246b9f4954f22da40fd0a27fb7b657324876`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `filename` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/Load_Response

`Ros2Ur_dashboard_msgsSrvLoad_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_4e694de8079133a8e789add3640dfe19805cad92991a650167c2aae7067da415`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/Popup_Request

`Ros2Ur_dashboard_msgsSrvPopup_Request`; 8..520 canonical bytes. Codec identity: `UWVMROS1_369e6eab4f689a846c52fcc5cb539da63fab3939fab254dd1e04c7b274d5f770`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `title` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/Popup_Response

`Ros2Ur_dashboard_msgsSrvPopup_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_0b54f7c477c1ddf8ccb18d12d50eaf308225d4927ee377377ed354426e58f984`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/RawRequest_Request

`Ros2Ur_dashboard_msgsSrvRawRequest_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_2bf66d87b20ca2de9ed94c04c79042a50239728320b43b27c9942405795b4555`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `query` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/RawRequest_Response

`Ros2Ur_dashboard_msgsSrvRawRequest_Response`; 4..260 canonical bytes. Codec identity: `UWVMROS1_7c37f54149bab54f6e7bbfed41992eb54416b31346bc889a9632d5497111267f`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/SetOperationalMode_Request

`Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_8cc61f7c64211c46e01e52eee2c05f6e709f4f0900cf24fdfd4079b0f7581a00`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `operational_mode` | `ur_dashboard_msgs/msg/OperationalMode` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/SetOperationalMode_Response

`Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_f5009de077224371e9d2f6c0aecbabd24c80148f2c7e1b1383a64f6f214b202a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/SetUserRole_Request

`Ros2Ur_dashboard_msgsSrvSetUserRole_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_7bd499947803efca81401a2de496d24e7e54ba97f4f86ec2b3089146a0655f5e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `user_role` | `ur_dashboard_msgs/msg/UserRole` | scalar | — | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/SetUserRole_Response

`Ros2Ur_dashboard_msgsSrvSetUserRole_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_4cab2bba5030f4e4b9e90252d64ec2e02d6eb87070b75cf43190fecd21da59fd`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/UploadProgram_Request

`Ros2Ur_dashboard_msgsSrvUploadProgram_Request`; 4..260 canonical bytes. Codec identity: `UWVMROS1_f7501d0115f8d36b1942ce610b1bbc197d0276de508ac8175d539f40494f437b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `file_path` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_dashboard_msgs/srv/UploadProgram_Response

`Ros2Ur_dashboard_msgsSrvUploadProgram_Response`; 9..521 canonical bytes. Codec identity: `UWVMROS1_ae9a28c1cd4729f54968d18a16e2f8f417bdc5e9bc15809de7481f1f20e6b398`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `answer` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `program_name` | `string` | scalar | 256 | `implicit zero/empty/nested` |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/action/FollowJointTrajectoryUntil_Goal

`Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal`; 37..7053 canonical bytes. Codec identity: `UWVMROS1_78fda8f2d20c502e24b1ad4fe55f34bba41de20ff88e71b56d7a0631d7a3905a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `trajectory` | `trajectory_msgs/msg/JointTrajectory` | scalar | — | `implicit zero/empty/nested` |
| `path_tolerance` | `control_msgs/msg/JointTolerance` | sequence | 6 | `implicit zero/empty/nested` |
| `goal_tolerance` | `control_msgs/msg/JointTolerance` | sequence | 6 | `implicit zero/empty/nested` |
| `goal_time_tolerance` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |
| `until_type` | `uint8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `TOOL_CONTACT: uint8 = 0`.

### ur_msgs/action/FollowJointTrajectoryUntil_Result

`Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result`; 12..268 canonical bytes. Codec identity: `UWVMROS1_de92b9ccfb9c93f3afae9da5e8e31df9a6d6a606479fe27b9bcf14ff329bc869`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `error_code` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `until_condition_result` | `int32` | scalar | — | `implicit zero/empty/nested` |
| `error_string` | `string` | scalar | 256 | `implicit zero/empty/nested` |

Original constants: `SUCCESSFUL: int32 = 0`; `INVALID_GOAL: int32 = -1`; `INVALID_JOINTS: int32 = -2`; `OLD_HEADER_TIMESTAMP: int32 = -3`; `PATH_TOLERANCE_VIOLATED: int32 = -4`; `GOAL_TOLERANCE_VIOLATED: int32 = -5`; `TRIGGERED: int32 = 0`; `NOT_TRIGGERED: int32 = 1`.

### ur_msgs/action/FollowJointTrajectoryUntil_Feedback

`Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback`; 88..2352 canonical bytes. Codec identity: `UWVMROS1_5a719f991f5c73784f9dc9e962ecfa0541e00daef7f747c312d4b633d63040ac`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `header` | `std_msgs/msg/Header` | scalar | — | `implicit zero/empty/nested` |
| `joint_names` | `string` | sequence | 6 | `implicit zero/empty/nested` |
| `desired` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `actual` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |
| `error` | `trajectory_msgs/msg/JointTrajectoryPoint` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/action/SendScript_Goal

`Ros2Ur_msgsActionSendScript_Goal`; 17..8465 canonical bytes. Codec identity: `UWVMROS1_c277cd00663786f95201e61baa658b92def3becc1f37e54aa6093bb11135819c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `program` | `string` | scalar | 8192 | `implicit zero/empty/nested` |
| `script_name` | `string` | scalar | 256 | `` |
| `start_timeout` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |
| `fail_on_warnings` | `bool` | scalar | — | `True` |

### ur_msgs/action/SendScript_Result

`Ros2Ur_msgsActionSendScript_Result`; 5..261 canonical bytes. Codec identity: `UWVMROS1_d4c4d9721c3a576f590ba4967b2444a82969d6ccba94ddbf8c4a974535ee17d2`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `message` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_msgs/action/SendScript_Feedback

`Ros2Ur_msgsActionSendScript_Feedback`; 0..0 canonical bytes. Codec identity: `UWVMROS1_094876d6467bd2b34f74cc6b574393117753add5254285e4e95d85b07328ef2c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_msgs/action/ToolContact_Goal

`Ros2Ur_msgsActionToolContact_Goal`; 0..0 canonical bytes. Codec identity: `UWVMROS1_150298ad16b1bc37d47bd3324cd4ec301ad8402c07779e8a435ce61daa7578dd`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_msgs/action/ToolContact_Result

`Ros2Ur_msgsActionToolContact_Result`; 0..0 canonical bytes. Codec identity: `UWVMROS1_b79f6080ac18b67c25131458a2af0a3c235d624c00fc5c13da534cc546c94578`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_msgs/action/ToolContact_Feedback

`Ros2Ur_msgsActionToolContact_Feedback`; 0..0 canonical bytes. Codec identity: `UWVMROS1_c6a11fd615f72a70a98514703de4c007a2bb161fbd8a953c5e8b899f471f4c5b`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_msgs/msg/Analog

`Ros2Ur_msgsMsgAnalog`; 6..6 canonical bytes. Codec identity: `UWVMROS1_68873e85836e1a65d7b67a52f5db8b3c3be082f889d2df4342386b282988f2a4`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `pin` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `domain` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `float32` | scalar | — | `implicit zero/empty/nested` |

Original constants: `CURRENT: uint8 = 0`; `VOLTAGE: uint8 = 1`.

### ur_msgs/msg/Digital

`Ros2Ur_msgsMsgDigital`; 2..2 canonical bytes. Codec identity: `UWVMROS1_e5ebd0a17ee528cff1e0a636eb0be9c7e4128d3e77be722c5f1be73df4f4c11e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `pin` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/msg/FrictionModelParameters

`Ros2Ur_msgsMsgFrictionModelParameters`; 8..104 canonical bytes. Codec identity: `UWVMROS1_7cc9c7af77340f56b0559b4e2ad32972ff65f2a6cf89ebfbe2c48c645f8e9c89`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `viscous_scale` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `coulomb_scale` | `float64` | sequence | 6 | `implicit zero/empty/nested` |

### ur_msgs/msg/IOStates

`Ros2Ur_msgsMsgIOStates`; 20..404 canonical bytes. Codec identity: `UWVMROS1_c22f9f784c89b6854fa84df416ed3704e3a312b15c8fc41162e7f5f53223fef5`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `digital_in_states` | `ur_msgs/msg/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `digital_out_states` | `ur_msgs/msg/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `flag_states` | `ur_msgs/msg/Digital` | sequence | 32 | `implicit zero/empty/nested` |
| `analog_in_states` | `ur_msgs/msg/Analog` | sequence | 16 | `implicit zero/empty/nested` |
| `analog_out_states` | `ur_msgs/msg/Analog` | sequence | 16 | `implicit zero/empty/nested` |

### ur_msgs/msg/MasterboardDataMsg

`Ros2Ur_msgsMsgMasterboardDataMsg`; 62..62 canonical bytes. Codec identity: `UWVMROS1_eb3b0aab27bb5683859356ca7cf9648e53d311c1fd32cac97f68ce1d4622a9e5`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `digital_input_bits` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `digital_output_bits` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `analog_input_range0` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input_range1` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input0` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_input1` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_output_domain0` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_output_domain1` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_output0` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_output1` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `masterboard_temperature` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `robot_voltage_48v` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `robot_current` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `master_io_current` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `master_safety_state` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `master_onoff_state` | `uint8` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/msg/RobotModeDataMsg

`Ros2Ur_msgsMsgRobotModeDataMsg`; 15..15 canonical bytes. Codec identity: `UWVMROS1_0181d85868dc6251289c6f7bc723757fa573c1345b6502497e335655d328bb31`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `timestamp` | `uint64` | scalar | — | `implicit zero/empty/nested` |
| `is_robot_connected` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_real_robot_enabled` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_power_on_robot` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_emergency_stopped` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_protective_stopped` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_program_running` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `is_program_paused` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/msg/RobotStateRTMsg

`Ros2Ur_msgsMsgRobotStateRTMsg`; 96..768 canonical bytes. Codec identity: `UWVMROS1_a30600c42e98b89da49d63073a5d30b0989aa0cb21f2bafec229dee10591d9cd`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `time` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `q_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `qd_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `qdd_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `i_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `m_target` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `q_actual` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `qd_actual` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `i_actual` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tool_acc_values` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tcp_force` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tool_vector` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `tcp_speed` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `digital_input_bits` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `motor_temperatures` | `float64` | sequence | 6 | `implicit zero/empty/nested` |
| `controller_timer` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `test_value` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `robot_mode` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `joint_modes` | `float64` | sequence | 6 | `implicit zero/empty/nested` |

### ur_msgs/msg/ToolDataMsg

`Ros2Ur_msgsMsgToolDataMsg`; 32..32 canonical bytes. Codec identity: `UWVMROS1_1eec69666515ffbdca162a10967fce03ee4c25f0c27d56c5a812b87c9a229aa0`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `analog_input_range2` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input_range3` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `analog_input2` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `analog_input3` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `tool_voltage_48v` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `tool_output_voltage` | `uint8` | scalar | — | `implicit zero/empty/nested` |
| `tool_current` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `tool_temperature` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `tool_mode` | `uint8` | scalar | — | `implicit zero/empty/nested` |

Original constants: `ANALOG_INPUT_RANGE_CURRENT: int8 = 0`; `ANALOG_INPUT_RANGE_VOLTAGE: int8 = 1`; `TOOL_BOOTLOADER_MODE: uint8 = 249`; `TOOL_RUNNING_MODE: uint8 = 253`; `TOOL_IDLE_MODE: uint8 = 255`.

### ur_msgs/srv/GetRobotSoftwareVersion_Request

`Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request`; 0..0 canonical bytes. Codec identity: `UWVMROS1_c2d78972cb5b63138d1e780e8ff0c082dd77d5b76b09642d2c655e9f16780101`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |

### ur_msgs/srv/GetRobotSoftwareVersion_Response

`Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response`; 16..16 canonical bytes. Codec identity: `UWVMROS1_bbe9984c34d69f93ad8dbfe6059c6a2e1bf43dbd27eabd97cf0a9507308d814a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `major` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `minor` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `bugfix` | `uint32` | scalar | — | `implicit zero/empty/nested` |
| `build` | `uint32` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetAnalogOutput_Request

`Ros2Ur_msgsSrvSetAnalogOutput_Request`; 6..6 canonical bytes. Codec identity: `UWVMROS1_71c3eca5c6c90758f084e275fc495feb5d1c08a467c97d941fb5864c54309bea`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `data` | `ur_msgs/msg/Analog` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetAnalogOutput_Response

`Ros2Ur_msgsSrvSetAnalogOutput_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_71a5f3580657cb3ca702dbb63b7af3330c922624c9e9774e47e6533e2fc0a05a`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetForceMode_Request

`Ros2Ur_msgsSrvSetForceMode_Request`; 203..331 canonical bytes. Codec identity: `UWVMROS1_e43a6c22510a2078de3cb2dc17ba1b7184080a6aa29a1653b7986723c0cfef6e`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `task_frame` | `geometry_msgs/msg/PoseStamped` | scalar | — | `implicit zero/empty/nested` |
| `selection_vector_x` | `bool` | scalar | — | `False` |
| `selection_vector_y` | `bool` | scalar | — | `False` |
| `selection_vector_z` | `bool` | scalar | — | `False` |
| `selection_vector_rx` | `bool` | scalar | — | `False` |
| `selection_vector_ry` | `bool` | scalar | — | `False` |
| `selection_vector_rz` | `bool` | scalar | — | `False` |
| `wrench` | `geometry_msgs/msg/Wrench` | scalar | — | `implicit zero/empty/nested` |
| `type` | `uint8` | scalar | — | `2` |
| `speed_limits` | `geometry_msgs/msg/Twist` | scalar | — | `implicit zero/empty/nested` |
| `deviation_limits` | `float32` | array | 6 | `[0.01, 0.01, 0.01, 0.01, 0.01, 0.01]` |
| `damping_factor` | `float32` | scalar | — | `0.025` |
| `gain_scaling` | `float32` | scalar | — | `0.5` |

Original constants: `TCP_TO_ORIGIN: uint8 = 1`; `NO_TRANSFORM: uint8 = 2`; `TCP_VELOCITY_TO_X_Y: uint8 = 3`.

### ur_msgs/srv/SetForceMode_Response

`Ros2Ur_msgsSrvSetForceMode_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_3f5438d426b7b68557ac8f43dc8efc2e2106782ec0cd4fd0dee7cdd69ddc7de8`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetFrictionModelParameters_Request

`Ros2Ur_msgsSrvSetFrictionModelParameters_Request`; 8..104 canonical bytes. Codec identity: `UWVMROS1_e44ad15f9c45d5a65eb13e6bc6e973bb20eebdafa04a5f2e8bcf4b0b54ce91c2`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `parameters` | `ur_msgs/msg/FrictionModelParameters` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetFrictionModelParameters_Response

`Ros2Ur_msgsSrvSetFrictionModelParameters_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_1caca29dda3dc32360fd010dfb352b6feb54bba66ee16edd2f4353e3382207b3`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetGravity_Request

`Ros2Ur_msgsSrvSetGravity_Request`; 36..164 canonical bytes. Codec identity: `UWVMROS1_3d7fed6ae8accbddd5b09f93c3e49f2b9f99cae4cf80a951eb31ace30ec5a834`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `gravity` | `geometry_msgs/msg/Vector3Stamped` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetGravity_Response

`Ros2Ur_msgsSrvSetGravity_Response`; 5..261 canonical bytes. Codec identity: `UWVMROS1_84694df7fbb4fd15bfecaf1aae683ef1795b0c4941d1987d951467448da5f793`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
| `status` | `string` | scalar | 256 | `implicit zero/empty/nested` |

### ur_msgs/srv/SetIO_Request

`Ros2Ur_msgsSrvSetIO_Request`; 6..6 canonical bytes. Codec identity: `UWVMROS1_c8ac4dddeb474521b4c701a0229e99af954416b7b8d7f32d2a19629d38b378c7`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `fun` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `pin` | `int8` | scalar | — | `implicit zero/empty/nested` |
| `state` | `float32` | scalar | — | `implicit zero/empty/nested` |

Original constants: `PIN_AOUT0: int8 = 0`; `PIN_AOUT1: int8 = 1`; `PIN_DOUT0: int8 = 0`; `PIN_DOUT1: int8 = 1`; `PIN_DOUT2: int8 = 2`; `PIN_DOUT3: int8 = 3`; `PIN_DOUT4: int8 = 4`; `PIN_DOUT5: int8 = 5`; `PIN_DOUT6: int8 = 6`; `PIN_DOUT7: int8 = 7`; `PIN_CONF_OUT0: int8 = 8`; `PIN_CONF_OUT1: int8 = 9`; `PIN_CONF_OUT2: int8 = 10`; `PIN_CONF_OUT3: int8 = 11`; `PIN_CONF_OUT4: int8 = 12`; `PIN_CONF_OUT5: int8 = 13`; `PIN_CONF_OUT6: int8 = 14`; `PIN_CONF_OUT7: int8 = 15`; `PIN_TOOL_DOUT0: int8 = 16`; `PIN_TOOL_DOUT1: int8 = 17`; `FUN_SET_DIGITAL_OUT: int8 = 1`; `FUN_SET_FLAG: int8 = 2`; `FUN_SET_ANALOG_OUT: int8 = 3`; `FUN_SET_TOOL_VOLTAGE: int8 = 4`; `STATE_OFF: int8 = 0`; `STATE_ON: int8 = 1`; `STATE_TOOL_VOLTAGE_0V: int8 = 0`; `STATE_TOOL_VOLTAGE_12V: int8 = 12`; `STATE_TOOL_VOLTAGE_24V: int8 = 24`.

### ur_msgs/srv/SetIO_Response

`Ros2Ur_msgsSrvSetIO_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_bd32373034093ccdab140a5ba8ce8a420ef2ce441430e8306b2484f0ca535090`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetPayload_Request

`Ros2Ur_msgsSrvSetPayload_Request`; 84..84 canonical bytes. Codec identity: `UWVMROS1_e76e256e1accf2d742c4cf529e5af1e830db75f3db703a1f368d28077a87e735`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `mass` | `float32` | scalar | — | `implicit zero/empty/nested` |
| `center_of_gravity` | `geometry_msgs/msg/Vector3` | scalar | — | `implicit zero/empty/nested` |
| `ixx` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `iyy` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `izz` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `ixy` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `ixz` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `iyz` | `float64` | scalar | — | `implicit zero/empty/nested` |
| `transition_time` | `builtin_interfaces/msg/Duration` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetPayload_Response

`Ros2Ur_msgsSrvSetPayload_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_036dbaa7d42b6cba6ad29a082e078401d507292483d260ba532f7d6947c1624c`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetSpeedSliderFraction_Request

`Ros2Ur_msgsSrvSetSpeedSliderFraction_Request`; 8..8 canonical bytes. Codec identity: `UWVMROS1_d8f19fb240e4b70cad74c5111cdaebad14b480f21da953c95d474064b091abd8`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `speed_slider_fraction` | `float64` | scalar | — | `implicit zero/empty/nested` |

### ur_msgs/srv/SetSpeedSliderFraction_Response

`Ros2Ur_msgsSrvSetSpeedSliderFraction_Response`; 1..1 canonical bytes. Codec identity: `UWVMROS1_1ab1ad5ab4b1ed302710ec055dff7644cc6e966af919ff311eaea6cddcf7dbb9`.

| Native member | Scalar/record | Shape | Capacity | Native default |
| --- | --- | --- | ---: | --- |
| `success` | `bool` | scalar | — | `implicit zero/empty/nested` |
