# agibot：ros2_sdk_v1_1_0_main

本目录保留所有原始字段、服务组件和动作角色。规范字节是 SDK 的有界传输格式；原生网关仍须独立核验原始 ROS 类型和完整注册表。单位、坐标系和字段顺序均遵循原始声明，不自动换算。


## aimdk_msgs/msg/AgentPropertyIdType

Symbol: `Ros2Aimdk_msgsMsgAgentPropertyIdType`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_d46b7979d687f30a04b2d96d2cfde9efeedb18a3b311e43fd3af362d7323102c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | - | - |

Original declared constants: `AGENT_PROPERTY_UNDEFINED=0`, `AGENT_PROPERTY_LANGUAGE=1`, `AGENT_PROPERTY_RUN_MODE=2`, `AGENT_PROPERTY_GREET=3`, `AGENT_PROPERTY_HEAD_FOLLOW=4`, `AGENT_PROPERTY_DUPLEX_TIMEOUT=5`, `AGENT_PROPERTY_ENVIRONMENT_SWITCH=6`, `AGENT_PROPERTY_WELCOME_STATUS=7`, `AGENT_PROPERTY_SITE_SWITCH=8`, `AGENT_PROPERTY_LANGUAGE_LIST=9`.

## aimdk_msgs/msg/AgentPropertiesValue

Symbol: `Ros2Aimdk_msgsMsgAgentPropertiesValue`. Complete canonical extent: 5..133 bytes.
Codec identity: `UWVMROS1_f5886bcdffa17bde1622e0441b0e05562826ea27c5e393a85e255d4dd6ac32bb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| key | aimdk_msgs/msg/AgentPropertyIdType | scalar | - | - |
| value | string | scalar | 128 | - |

## aimdk_msgs/msg/AgentProperties

Symbol: `Ros2Aimdk_msgsMsgAgentProperties`. Complete canonical extent: 4..536 bytes.
Codec identity: `UWVMROS1_5c1d34cab6d73c22fa0c9555ff67309d3ad05002b19d814ea03e576a1298f4aa`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| properties | aimdk_msgs/msg/AgentPropertiesValue | sequence | 4 | - |

## aimdk_msgs/msg/AlertCode

Symbol: `Ros2Aimdk_msgsMsgAlertCode`. Complete canonical extent: 20..148 bytes.
Codec identity: `UWVMROS1_16e0ffe103d1d7761ff440bebfd6aa42c9471006f636c50fcd6acda8c32bc7e5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timestamp | uint64 | scalar | - | - |
| first_timestamp | uint64 | scalar | - | - |
| code | string | scalar | 128 | - |

## builtin_interfaces/msg/Time

Symbol: `Ros2Builtin_interfacesMsgTime`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | - | - |
| nanosec | uint32 | scalar | - | - |

## aimdk_msgs/msg/MessageHeader

Symbol: `Ros2Aimdk_msgsMsgMessageHeader`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | - | - |
| frame_id | string | scalar | 128 | - |
| sequence | uint32 | scalar | - | - |
| meas_stamp | builtin_interfaces/msg/Time | scalar | - | - |

## aimdk_msgs/msg/AlertCodeArray

Symbol: `Ros2Aimdk_msgsMsgAlertCodeArray`. Complete canonical extent: 28..748 bytes.
Codec identity: `UWVMROS1_1b63520082b1874bb85d84c6be60d4464a3ce7063422d6db5597c907e70fe261`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| list | aimdk_msgs/msg/AlertCode | sequence | 4 | - |

## aimdk_msgs/msg/AudioInfo

Symbol: `Ros2Aimdk_msgsMsgAudioInfo`. Complete canonical extent: 17..273 bytes.
Codec identity: `UWVMROS1_c58c89e03376e7f8beb8df02fe189fb1f6059825c5ff6924c4199b24fdb440be`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| channels | uint8 | scalar | - | - |
| sample_rate | uint32 | scalar | - | - |
| size | uint32 | scalar | - | - |
| sample_format | string | scalar | 128 | - |
| coding_format | string | scalar | 128 | - |

## aimdk_msgs/msg/AudioData

Symbol: `Ros2Aimdk_msgsMsgAudioData`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_547da1b39105416d63222ff082398cfeec0804a7c7ad28199168f1107c6844e8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| data | uint8 | sequence | 256 | - |

## aimdk_msgs/msg/AudioCapture

Symbol: `Ros2Aimdk_msgsMsgAudioCapture`. Complete canonical extent: 35..675 bytes.
Codec identity: `UWVMROS1_de7db19093964d4783811019e6cc12c952a58364561be2a0a81ae874766e937c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| stamps | builtin_interfaces/msg/Time | scalar | - | - |
| mic_channels | uint8 | scalar | - | - |
| ref_channels | uint8 | scalar | - | - |
| info | aimdk_msgs/msg/AudioInfo | scalar | - | - |
| data | aimdk_msgs/msg/AudioData | scalar | - | - |
| pkg_name | string | scalar | 128 | - |

## aimdk_msgs/msg/AudioFile

Symbol: `Ros2Aimdk_msgsMsgAudioFile`. Complete canonical extent: 37..677 bytes.
Codec identity: `UWVMROS1_ed9aeffc24c98e014fe431b9e5e814bf21a474a777f70cf3ac989537b431995d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pkg_name | string | scalar | 128 | - |
| file_name | string | scalar | 128 | - |
| file_path | string | scalar | 128 | - |
| info | aimdk_msgs/msg/AudioInfo | scalar | - | - |
| priority | uint32 | scalar | - | - |
| priority_weight | uint32 | scalar | - | - |

## aimdk_msgs/msg/AudioPlayback

Symbol: `Ros2Aimdk_msgsMsgAudioPlayback`. Complete canonical extent: 37..805 bytes.
Codec identity: `UWVMROS1_1262b4dd07b332e6d10c5968292f29928e43fd6f6ea2faa2be1f48482e2dc499`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| stamps | builtin_interfaces/msg/Time | scalar | - | - |
| info | aimdk_msgs/msg/AudioInfo | scalar | - | - |
| data | aimdk_msgs/msg/AudioData | scalar | - | - |
| pkg_name | string | scalar | 128 | - |
| token_id | string | scalar | 128 | - |

## aimdk_msgs/msg/AudioVadStateType

Symbol: `Ros2Aimdk_msgsMsgAudioVadStateType`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | - | - |

Original declared constants: `AUDIO_VAD_STATE_NONE=0`, `AUDIO_VAD_STATE_BEGIN=1`, `AUDIO_VAD_STATE_PROCESSING=2`, `AUDIO_VAD_STATE_END=3`.

## aimdk_msgs/msg/RequestHeader

Symbol: `Ros2Aimdk_msgsMsgRequestHeader`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | - | - |

## aimdk_msgs/msg/CommonRequest

Symbol: `Ros2Aimdk_msgsMsgCommonRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/RequestHeader | scalar | - | - |

## aimdk_msgs/msg/ResponseHeader

Symbol: `Ros2Aimdk_msgsMsgResponseHeader`. Complete canonical extent: 16..16 bytes.
Codec identity: `UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | - | - |
| code | int64 | scalar | - | - |

## aimdk_msgs/msg/CommonState

Symbol: `Ros2Aimdk_msgsMsgCommonState`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `UNKNOWN=0`, `SUCCESS=1`, `FAILURE=2`, `ABORTED=3`, `TIMEOUT=4`, `INVALID=5`, `IN_MANUAL=6`, `NOT_READY=100`, `PENDING=200`, `CREATED=300`, `RUNNING=400`.

## aimdk_msgs/msg/CommonResponse

Symbol: `Ros2Aimdk_msgsMsgCommonResponse`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/ResponseHeader | scalar | - | - |
| status | aimdk_msgs/msg/CommonState | scalar | - | - |
| message | string | scalar | 128 | - |

## aimdk_msgs/msg/CommonTaskRequest

Symbol: `Ros2Aimdk_msgsMsgCommonTaskRequest`. Complete canonical extent: 16..16 bytes.
Codec identity: `UWVMROS1_0324951171581259cf0c1bfed23887bdbc0f7328659e5efdfde046612f3d5de5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/RequestHeader | scalar | - | - |
| task_id | uint64 | scalar | - | - |

## aimdk_msgs/msg/CommonTaskResponse

Symbol: `Ros2Aimdk_msgsMsgCommonTaskResponse`. Complete canonical extent: 28..28 bytes.
Codec identity: `UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/ResponseHeader | scalar | - | - |
| task_id | uint64 | scalar | - | - |
| state | aimdk_msgs/msg/CommonState | scalar | - | - |

## aimdk_msgs/msg/CurrentVersion

Symbol: `Ros2Aimdk_msgsMsgCurrentVersion`. Complete canonical extent: 20..2388 bytes.
Codec identity: `UWVMROS1_0a8226d6e3af0a098ee88498274e2a166f40df85162a67d38ebcb1fcba5e87cd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| version | string | scalar | 128 | - |
| name | string | scalar | 128 | - |
| files | string | sequence | 16 | - |
| download_timestamp_seconds | uint64 | scalar | - | - |

## aimdk_msgs/msg/DiagnosticType

Symbol: `Ros2Aimdk_msgsMsgDiagnosticType`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_41bcce9c343c12c64f0d2c28282926a734361f5eb02d39be0aae5c98ae926d92`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `NORMAL=0`, `TRIGGER_APPEAR=1`, `TRIGGER_DISAPPEAR=2`.

## aimdk_msgs/msg/DiagnosticInfo

Symbol: `Ros2Aimdk_msgsMsgDiagnosticInfo`. Complete canonical extent: 37..165 bytes.
Codec identity: `UWVMROS1_989641e2dd8ef2e5e77f3455355ca8c1f08d1671874f1b920b0ae28352e20afa`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timestamp | uint64 | scalar | - | - |
| first_timestamp | uint64 | scalar | - | - |
| type | aimdk_msgs/msg/DiagnosticType | scalar | - | - |
| module_id | uint8 | scalar | - | - |
| code | uint32 | scalar | - | - |
| diag_code | uint64 | scalar | - | - |
| info | string | scalar | 128 | - |

## aimdk_msgs/msg/DiagnosticInfoArray

Symbol: `Ros2Aimdk_msgsMsgDiagnosticInfoArray`. Complete canonical extent: 28..816 bytes.
Codec identity: `UWVMROS1_ea9c3022e38d875c94431babc75f890382089d9e2fb1a15573421d475d2d280b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| diagnostics | aimdk_msgs/msg/DiagnosticInfo | sequence | 4 | - |

## aimdk_msgs/msg/DomainErrorState

Symbol: `Ros2Aimdk_msgsMsgDomainErrorState`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | - | - |

Original declared constants: `NONE=0`, `DAMPING=1`, `POWERDOWN=2`, `DISABLE=3`, `DISCONNECT=4`.

## aimdk_msgs/msg/FaceEmojiStatus

Symbol: `Ros2Aimdk_msgsMsgFaceEmojiStatus`. Complete canonical extent: 56..2552 bytes.
Codec identity: `UWVMROS1_a2a3346bea421c1c0756e8e74dd05564f2281d15762dd300189563e5bd0d3df4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| e_path | string | scalar | 128 | - |
| e_path_list | string | sequence | 16 | - |
| e_id | uint8 | scalar | - | - |
| mode | uint8 | scalar | - | - |
| priority | int32 | scalar | - | - |
| status | uint8 | scalar | - | - |
| time_to_end_ms | float64 | scalar | - | - |
| display_type | uint8 | scalar | - | - |
| trace_id | string | scalar | 128 | - |
| error_code | int32 | scalar | - | - |

Original declared constants: `STATUS_IDLE=0`, `STATUS_START=1`, `STATUS_RUNNING=2`, `STATUS_FINISHED=3`, `STATUS_STOPPED=4`.

## aimdk_msgs/msg/FixLineIntroState

Symbol: `Ros2Aimdk_msgsMsgFixLineIntroState`. Complete canonical extent: 49..433 bytes.
Codec identity: `UWVMROS1_f7c7b38331d9b5f0e8268f8373e254d9e9f2becd5388d0efd30927e5c4916384`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| set_task_id | uint64 | scalar | - | - |
| set_task_name | string | scalar | 128 | - |
| task_name | string | scalar | 128 | - |
| task_id | uint64 | scalar | - | - |
| map_name | string | scalar | 128 | - |
| map_id | uint64 | scalar | - | - |
| rest_site_number | uint32 | scalar | - | - |
| fix_line_intro_state | uint8 | scalar | - | - |
| cur_target_id | uint64 | scalar | - | - |

Original declared constants: `TM_FIX_LINE_INTRO_STATE_NAVI_TO_NEXT_SITE=0`, `TM_FIX_LINE_INTRO_STATE_SITE_ACTIONS=1`, `TM_FIX_LINE_INTRO_STATE_NAVI_RETURN=2`, `TM_FIX_LINE_INTRO_STATE_NAVI_TO_TARGET_POI=3`, `TM_FIX_LINE_INTRO_STATE_POI_ACTIONS=4`, `TM_FIX_LINE_INTRO_STATE_STANDBY_ACTIONS=5`.

## aimdk_msgs/msg/FocusRequester

Symbol: `Ros2Aimdk_msgsMsgFocusRequester`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_9b41f0b3a3cafa6b190ede3107f8cf802c1cbacf1eb81e075a376ceaf37fa186`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pkg_name | string | scalar | 128 | - |
| priority | uint32 | scalar | - | - |
| priority_weight | uint32 | scalar | - | - |

## aimdk_msgs/msg/FocusResponse

Symbol: `Ros2Aimdk_msgsMsgFocusResponse`. Complete canonical extent: 5..133 bytes.
Codec identity: `UWVMROS1_16047b8b9e9f131f8aa44fc4e0960ce81446788d557b055be1f6b2542db3a87c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pkg_name | string | scalar | 128 | - |
| focus_gain | bool | scalar | - | - |

## geometry_msgs/msg/Point

Symbol: `Ros2Geometry_msgsMsgPoint`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | - | - |
| y | float64 | scalar | - | - |
| z | float64 | scalar | - | - |

## geometry_msgs/msg/Quaternion

Symbol: `Ros2Geometry_msgsMsgQuaternion`. Complete canonical extent: 32..32 bytes.
Codec identity: `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | - | 0.0 |
| y | float64 | scalar | - | 0.0 |
| z | float64 | scalar | - | 0.0 |
| w | float64 | scalar | - | 1.0 |

## geometry_msgs/msg/Pose

Symbol: `Ros2Geometry_msgsMsgPose`. Complete canonical extent: 56..56 bytes.
Codec identity: `UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| position | geometry_msgs/msg/Point | scalar | - | - |
| orientation | geometry_msgs/msg/Quaternion | scalar | - | - |

## aimdk_msgs/msg/QRCode

Symbol: `Ros2Aimdk_msgsMsgQRCode`. Complete canonical extent: 60..60 bytes.
Codec identity: `UWVMROS1_51293e3c7ee25b1a265c4a57539a11060563e89005ceaf4aaa0891481ab803cd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| code | int32 | scalar | - | - |
| pose | geometry_msgs/msg/Pose | scalar | - | - |

## aimdk_msgs/msg/HRPoint

Symbol: `Ros2Aimdk_msgsMsgHRPoint`. Complete canonical extent: 65..305 bytes.
Codec identity: `UWVMROS1_070874f4fea77298b6d66d02ee40026e86b4f48ee03e6d9acffcaddb387b3645`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| point_id | int32 | scalar | - | - |
| pose | geometry_msgs/msg/Pose | scalar | - | - |
| qr_list | aimdk_msgs/msg/QRCode | sequence | 4 | - |
| use_head | bool | scalar | - | - |

## aimdk_msgs/msg/HandCommand

Symbol: `Ros2Aimdk_msgsMsgHandCommand`. Complete canonical extent: 44..172 bytes.
Codec identity: `UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | - |
| position | float64 | scalar | - | - |
| velocity | float64 | scalar | - | - |
| acceleration | float64 | scalar | - | - |
| deceleration | float64 | scalar | - | - |
| effort | float64 | scalar | - | - |

## aimdk_msgs/msg/HandType

Symbol: `Ros2Aimdk_msgsMsgHandType`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_07c4fd4188be6fccafc5808eb58094c528c1c7219f70850d2d77b05e1466daff`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | - | - |

Original declared constants: `NONE=0`, `NIMBLE_HANDS=1`, `CLAW=2`, `LEISAI_NIMBLE_HANDS=3`, `LITE_S_HANDS=4`, `ERROR=255`.

## aimdk_msgs/msg/HandCommandArray

Symbol: `Ros2Aimdk_msgsMsgHandCommandArray`. Complete canonical extent: 34..1538 bytes.
Codec identity: `UWVMROS1_a120a6c2b4a364c358f2f76227954c9cf5a81345ad812683eea78dfe3e3c29ec`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| left_hand_type | aimdk_msgs/msg/HandType | scalar | - | - |
| left_hands | aimdk_msgs/msg/HandCommand | sequence | 4 | - |
| right_hand_type | aimdk_msgs/msg/HandType | scalar | - | - |
| right_hands | aimdk_msgs/msg/HandCommand | sequence | 4 | - |

## aimdk_msgs/msg/HandState

Symbol: `Ros2Aimdk_msgsMsgHandState`. Complete canonical extent: 36..164 bytes.
Codec identity: `UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | - |
| position | float64 | scalar | - | - |
| velocity | float64 | scalar | - | - |
| effort | float64 | scalar | - | - |
| state | int32 | scalar | - | - |
| faultcode | int32 | scalar | - | - |

## aimdk_msgs/msg/HandTouchSensorData

Symbol: `Ros2Aimdk_msgsMsgHandTouchSensorData`. Complete canonical extent: 152..152 bytes.
Codec identity: `UWVMROS1_573ab7611c65bde831172350c3cf49dd73cf4bfcbefabff7aa874845b828e4a0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| palm_touch_data | uint8 | array | 36 | - |
| back_of_hand_touch_data | uint8 | array | 36 | - |
| thumb_touch_data | uint8 | array | 16 | - |
| index_finger_touch_data | uint8 | array | 16 | - |
| middle_finger_touch_data | uint8 | array | 16 | - |
| ring_finger_touch_data | uint8 | array | 16 | - |
| little_finger_touch_data | uint8 | array | 16 | - |

## aimdk_msgs/msg/HandStateArray

Symbol: `Ros2Aimdk_msgsMsgHandStateArray`. Complete canonical extent: 338..1778 bytes.
Codec identity: `UWVMROS1_c577a4f240ca6f9f26d82d8c8ba056b2877af96ab7dd774262637286c0302944`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| left_hand_type | aimdk_msgs/msg/HandType | scalar | - | - |
| left_hands | aimdk_msgs/msg/HandState | sequence | 4 | - |
| left_touch_sensors | aimdk_msgs/msg/HandTouchSensorData | scalar | - | - |
| right_hand_type | aimdk_msgs/msg/HandType | scalar | - | - |
| right_hands | aimdk_msgs/msg/HandState | sequence | 4 | - |
| right_touch_sensors | aimdk_msgs/msg/HandTouchSensorData | scalar | - | - |

## aimdk_msgs/msg/HdsEventQuery

Symbol: `Ros2Aimdk_msgsMsgHdsEventQuery`. Complete canonical extent: 38..4390 bytes.
Codec identity: `UWVMROS1_bb210b5a804272bcf8eab7b9bd2217471997a8a4446032ddc0f0f0aca2734d29`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| start_time | uint64 | scalar | - | - |
| end_time | uint64 | scalar | - | - |
| diag_codes | uint64 | sequence | 16 | - |
| alert_codes | string | sequence | 16 | - |
| alert_locations | string | sequence | 16 | - |
| state | uint8 | scalar | - | - |
| order_desc | bool | scalar | - | - |
| offset | uint32 | scalar | - | - |
| limit | uint32 | scalar | - | - |

Original declared constants: `STATE_ALL=0`, `STATE_ACTIVE=1`, `STATE_RECOVERED=2`.

## aimdk_msgs/msg/HdsEventRecord

Symbol: `Ros2Aimdk_msgsMsgHdsEventRecord`. Complete canonical extent: 57..313 bytes.
Codec identity: `UWVMROS1_7fe68df37f67144d462e2c9e1a126dc539d5f7156c923a879d36215145445de4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| id | uint64 | scalar | - | - |
| diag_code | uint64 | scalar | - | - |
| alert_code | string | scalar | 128 | - |
| alert_location | string | scalar | 128 | - |
| first_timestamp | uint64 | scalar | - | - |
| last_timestamp | uint64 | scalar | - | - |
| recover_timestamp | uint64 | scalar | - | - |
| duration_ns | uint64 | scalar | - | - |
| recovered | bool | scalar | - | - |

## aimdk_msgs/msg/JointCommand

Symbol: `Ros2Aimdk_msgsMsgJointCommand`. Complete canonical extent: 44..172 bytes.
Codec identity: `UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | - |
| position | float64 | scalar | - | - |
| velocity | float64 | scalar | - | - |
| effort | float64 | scalar | - | - |
| stiffness | float64 | scalar | - | - |
| damping | float64 | scalar | - | - |

## aimdk_msgs/msg/JointCommandArray

Symbol: `Ros2Aimdk_msgsMsgJointCommandArray`. Complete canonical extent: 28..11164 bytes.
Codec identity: `UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| joints | aimdk_msgs/msg/JointCommand | sequence | 64 | - |

## aimdk_msgs/msg/JointState

Symbol: `Ros2Aimdk_msgsMsgJointState`. Complete canonical extent: 30..158 bytes.
Codec identity: `UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | - |
| position | float64 | scalar | - | - |
| velocity | float64 | scalar | - | - |
| effort | float64 | scalar | - | - |
| error_code | uint16 | scalar | - | - |

## aimdk_msgs/msg/JointStateArray

Symbol: `Ros2Aimdk_msgsMsgJointStateArray`. Complete canonical extent: 29..10269 bytes.
Codec identity: `UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| state | aimdk_msgs/msg/DomainErrorState | scalar | - | - |
| joints | aimdk_msgs/msg/JointState | sequence | 64 | - |

## aimdk_msgs/msg/McAction

Symbol: `Ros2Aimdk_msgsMsgMcAction`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `PASSIVE_DEFAULT=1`, `SOFT_EMERGENCY_STOP=2`, `DAMPING_DEFAULT=3`, `ZERO_TORQUE_DEFAULT=4`, `JOINT_DEFAULT=100`, `JOINT_FREEZE=101`, `STAND_DEFAULT=200`, `STAND_BODY_CONTROL=201`, `LOCOMOTION_DEFAULT=300`, `RUN_DEFAULT=301`, `LOCOMOTION_STEP=302`, `VR_REMOTE_CONTROLLER=400`, `SIT_DOWN_DEFAULT=2000`, `CROUCH_DOWN_DEFAULT=2002`, `LIE_DOWN_DEFAULT=2004`, `STAND_UP_DEFAULT=2005`, `ASCEND_STAIRS=2006`, `DESCEND_STAIRS=2008`.

## aimdk_msgs/msg/McActionCommand

Symbol: `Ros2Aimdk_msgsMsgMcActionCommand`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| action | aimdk_msgs/msg/McAction | scalar | - | - |
| action_desc | string | scalar | 128 | - |

## aimdk_msgs/msg/McActionStatus

Symbol: `Ros2Aimdk_msgsMsgMcActionStatus`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `IDLE=0`, `RUNNING=100`, `TRANSITION=200`.

## aimdk_msgs/msg/McActionInfo

Symbol: `Ros2Aimdk_msgsMsgMcActionInfo`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| current_action | aimdk_msgs/msg/McAction | scalar | - | - |
| action_desc | string | scalar | 128 | - |
| status | aimdk_msgs/msg/McActionStatus | scalar | - | - |

## aimdk_msgs/msg/McBodyPoseStatus

Symbol: `Ros2Aimdk_msgsMsgMcBodyPoseStatus`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_380976855f8c965a5c79a3688a1a2ce654dff9869441d061b464bda582fc7538`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `MC_BODY_POSE_UNKOWN=0`, `MC_BODY_POSE_STAND=1`, `MC_BODY_POSE_LIE_FACE_UP=2`, `MC_BODY_POSE_LIE_FACE_DOWN=3`, `MC_BODY_POSE_SIT=4`, `MC_BODY_POSE_SQUAT=5`.

## aimdk_msgs/msg/McInputSource

Symbol: `Ros2Aimdk_msgsMsgMcInputSource`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | - |
| priority | int32 | scalar | - | - |
| timeout | int32 | scalar | - | - |

## aimdk_msgs/msg/McHandStatus

Symbol: `Ros2Aimdk_msgsMsgMcHandStatus`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_7be307301e74f7c3db44fa94093233d8ac8f7f463f1904bee8748bb6fe29c462`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `OMNI_HAND=1000`, `OMNI_PICKER=2000`.

## aimdk_msgs/msg/McRuntimeModel

Symbol: `Ros2Aimdk_msgsMsgMcRuntimeModel`. Complete canonical extent: 9..9 bytes.
Codec identity: `UWVMROS1_6a9196eaf82e74b282dfde8e9d7bf2f21712aeb537b0a6c8783445e5941254b4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| waist_status | bool | scalar | - | - |
| left_hand_status | aimdk_msgs/msg/McHandStatus | scalar | - | - |
| right_hand_status | aimdk_msgs/msg/McHandStatus | scalar | - | - |

## aimdk_msgs/msg/McPlayerState

Symbol: `Ros2Aimdk_msgsMsgMcPlayerState`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_a56c1b72e364a1b70243f6280dfea28a63f8533118b491ea67e968c27614a412`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint32 | scalar | - | - |

Original declared constants: `IDLE=0`, `PRE_PLAYING=1`, `PLAYING=2`, `INTERRUPTING=3`, `ERROR=4`.

## aimdk_msgs/msg/McControlArea

Symbol: `Ros2Aimdk_msgsMsgMcControlArea`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `NONE=0`, `LEFT_HAND=1`, `RIGHT_HAND=2`, `HEAD=4`, `WAIST=8`.

## aimdk_msgs/msg/McMotionType

Symbol: `Ros2Aimdk_msgsMsgMcMotionType`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_85a53e7c11c40212c3a2972b1c36ac4bfe9cc7861985b5966459c71fbc80a9da`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `NONE=0`, `ANIMATION=1`, `MIMIC=2`, `FOUNDATION=3`.

## aimdk_msgs/msg/McMotionStatus

Symbol: `Ros2Aimdk_msgsMsgMcMotionStatus`. Complete canonical extent: 16..144 bytes.
Codec identity: `UWVMROS1_4f80c178589dc4068c65c3243dbb4bd954bbcd81f1a2f0f8f844c910dea531ea`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| player_state | aimdk_msgs/msg/McPlayerState | scalar | - | - |
| control_area | aimdk_msgs/msg/McControlArea | scalar | - | - |
| motion | string | scalar | 128 | - |
| type | aimdk_msgs/msg/McMotionType | scalar | - | - |

## aimdk_msgs/msg/McServoStatus

Symbol: `Ros2Aimdk_msgsMsgMcServoStatus`. Complete canonical extent: 53..53 bytes.
Codec identity: `UWVMROS1_824f5944e9dce34f459ad368cfc37e78e39a0589ff5f278417064773720b1ffa`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| squat_enable | bool | scalar | - | - |
| squat_offset | float64 | scalar | - | - |
| squat_limit | uint32 | scalar | - | - |
| head_yaw_offset | float64 | scalar | - | - |
| head_pitch_offset | float64 | scalar | - | - |
| waist_yaw_offset | float64 | scalar | - | - |
| waist_pitch_offset | float64 | scalar | - | - |
| waist_roll_offset | float64 | scalar | - | - |

Original declared constants: `BEFORE_LIMIT=0`, `LOWER_LIMIT=1`, `UPPER_LIMIT=2`.

## aimdk_msgs/msg/McFsmState

Symbol: `Ros2Aimdk_msgsMsgMcFsmState`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_2a3f0e37d5f835c8f80adc07e09bc9a162e869f662dc3ce440946b9e0ca9b047`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| current_state | uint32 | scalar | - | - |

Original declared constants: `UNKNOWN=0`, `STARTING=1`, `STABLE=2`, `MOVING=3`, `SAFE=4`, `SPECIAL=5`, `TEST=6`.

## aimdk_msgs/msg/McLocomotionSpeedMode

Symbol: `Ros2Aimdk_msgsMsgMcLocomotionSpeedMode`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_52cf8b8e1e9a931076f9ed719deaf02d4b0c15647ff2ab8109579fb29d5fc6d6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `MC_LOCOMOTION_NONE_SPEED=0`, `MC_LOCOMOTION_LOW_SPEED=1`, `MC_LOCOMOTION_MEIDUM_SPEED=2`, `MC_LOCOMOTION_HIGH_SPEED=3`.

## aimdk_msgs/msg/McLocomotionSpeedBounds

Symbol: `Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds`. Complete canonical extent: 16..16 bytes.
Codec identity: `UWVMROS1_9ba7b1992f315906d05b9f3850d31cdf1d5c422cbc3224a45b93c76c9368804d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| min_value | float64 | scalar | - | - |
| max_value | float64 | scalar | - | - |

## aimdk_msgs/msg/McLocomotionSpeedStatus

Symbol: `Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus`. Complete canonical extent: 52..52 bytes.
Codec identity: `UWVMROS1_91837c9a2783f2f2cdc09c1efc8d96a5be0bca7e43bf513a3d47162222fc8e79`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| speed_mode | aimdk_msgs/msg/McLocomotionSpeedMode | scalar | - | - |
| forward_bounds | aimdk_msgs/msg/McLocomotionSpeedBounds | scalar | - | - |
| lateral_bounds | aimdk_msgs/msg/McLocomotionSpeedBounds | scalar | - | - |
| angular_bounds | aimdk_msgs/msg/McLocomotionSpeedBounds | scalar | - | - |

## aimdk_msgs/msg/McCommonState

Symbol: `Ros2Aimdk_msgsMsgMcCommonState`. Complete canonical extent: 186..698 bytes.
Codec identity: `UWVMROS1_ae0a72b7040926755e1b0542d34b6e928bedc20643ad5af9704ce86648c25558`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| input_source | aimdk_msgs/msg/McInputSource | scalar | - | - |
| action_info | aimdk_msgs/msg/McActionInfo | scalar | - | - |
| runtime_model | aimdk_msgs/msg/McRuntimeModel | scalar | - | - |
| motion_status | aimdk_msgs/msg/McMotionStatus | scalar | - | - |
| servo_status | aimdk_msgs/msg/McServoStatus | scalar | - | - |
| fsm_state | aimdk_msgs/msg/McFsmState | scalar | - | - |
| body_status | aimdk_msgs/msg/McBodyPoseStatus | scalar | - | - |
| speed_status | aimdk_msgs/msg/McLocomotionSpeedStatus | scalar | - | - |

## aimdk_msgs/msg/McInputAction

Symbol: `Ros2Aimdk_msgsMsgMcInputAction`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `INPUTACTION_ADD=1001`, `INPUTACTION_MODIFY=1002`, `INPUTACTION_DELETE=1003`, `INPUTACTION_ENABLE=2001`, `INPUTACTION_DISABLE=2002`.

## aimdk_msgs/msg/McLocomotionVelocity

Symbol: `Ros2Aimdk_msgsMsgMcLocomotionVelocity`. Complete canonical extent: 52..308 bytes.
Codec identity: `UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| source | string | scalar | 128 | - |
| forward_velocity | float64 | scalar | - | - |
| lateral_velocity | float64 | scalar | - | - |
| angular_velocity | float64 | scalar | - | - |

## aimdk_msgs/msg/McPresetMotion

Symbol: `Ros2Aimdk_msgsMsgMcPresetMotion`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `RAISE_HAND=1001`, `WAVE_HAND=1002`, `SHAKE_HAND=1003`, `FLYING_KISS_HAND=1004`, `CLAP_HAND=1008`, `TURN_WAVE_HAND=2001`, `INTERACTION_BOW=3001`, `INTERACTION_LIKE=3002`, `INTERACTION_YE=3003`, `INTERACTION_SWEATHEART=3004`, `SALUTE=1013`, `INTERACTION_SAD=3006`, `INTERACTION_LIGHTWAVE=3007`, `INTERACTION_HUG=3008`, `INTERACTION_HANDX=3009`, `INTERACTION_CHESTWAVE=3010`, `INTERACTION_CHEER=3011`, `INTERACTION_BLOWKISS=3012`, `INTERACTION_BASSDANCE1=3013`, `INTERACTION_BASSDANCE2=3014`, `HITCLAP=3015`, `INTERACTION_SPEAK=3016`, `CLIPFIST=1009`, `INTERACTION_PHOTOPOSTURE=3018`, `INTERACTION_PHOTOTRIPPLEPOSTURE=3019`, `POINT_HEAD=4001`, `SHAKE_HEAD=4002`.

## geometry_msgs/msg/Pose2D

Symbol: `Ros2Geometry_msgsMsgPose2D`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_5926ccd43f868ca13520625e24e283abe2e6f6418dacaa136eed5951064d8bce`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | - | - |
| y | float64 | scalar | - | - |
| theta | float64 | scalar | - | - |

## aimdk_msgs/msg/NaviPoint

Symbol: `Ros2Aimdk_msgsMsgNaviPoint`. Complete canonical extent: 28..28 bytes.
Codec identity: `UWVMROS1_e1613f1cc3f2e23dffba8c4b2414f5eaba7ef8909aa4d032f13f6f514484694e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| point_id | int32 | scalar | - | - |
| navi_point | geometry_msgs/msg/Pose2D | scalar | - | - |

## aimdk_msgs/msg/Path

Symbol: `Ros2Aimdk_msgsMsgPath`. Complete canonical extent: 8..104 bytes.
Codec identity: `UWVMROS1_88efeee6a105a4a88d155242fcd6f5be0866f4c0eadfc0b90243ca0eb020f27d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| path_id | int32 | scalar | - | - |
| points | geometry_msgs/msg/Pose2D | sequence | 4 | - |

## aimdk_msgs/msg/PilotState

Symbol: `Ros2Aimdk_msgsMsgPilotState`. Complete canonical extent: 37..421 bytes.
Codec identity: `UWVMROS1_8d2421a2a13d52ea4ab7af2a6a9e57c145c4b7fb10e59701fcb2f58c421fe31a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| target_name | string | scalar | 128 | - |
| target_id | uint64 | scalar | - | - |
| intro_task_name | string | scalar | 128 | - |
| intro_task_id | uint64 | scalar | - | - |
| map_name | string | scalar | 128 | - |
| map_id | uint64 | scalar | - | - |
| pilot_state | uint8 | scalar | - | - |

Original declared constants: `TM_PILOT_STATE_NAVI_TO_TARGET=0`, `TM_PILOT_STATE_TARGET_ACTIONS=1`, `TM_PILOT_STATE_NAVI_RETURN=2`, `TM_PILOT_STATE_STANDBY_ACTIONS=3`.

## aimdk_msgs/msg/PlayStateType

Symbol: `Ros2Aimdk_msgsMsgPlayStateType`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_a103f60f1b75030272dea3bcf7da76ac8fdc214c3a38721fa2b09c507cc47946`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | - | - |

Original declared constants: `PLAYER_STATE_CLOSED=0`, `PLAYER_STATE_PLAYING=1`, `PLAYER_STATE_STOPED=2`.

## aimdk_msgs/msg/PlayStateChange

Symbol: `Ros2Aimdk_msgsMsgPlayStateChange`. Complete canonical extent: 5..133 bytes.
Codec identity: `UWVMROS1_62c2a232fb57ebab6a0fce42a84e12d8a25dc21e40fb5420201ef6337894f41c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pkg_name | string | scalar | 128 | - |
| state | aimdk_msgs/msg/PlayStateType | scalar | - | - |

## aimdk_msgs/msg/TtsPriorityLevel

Symbol: `Ros2Aimdk_msgsMsgTtsPriorityLevel`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | - | - |

Original declared constants: `UNKNOWN=0`, `BACKGROUND_L1=1`, `SERVICE_L2=2`, `MISSION_L4=4`, `INTERACTION_L6=6`, `SYSTEM_L7=7`, `WARNING_L8=8`, `SAFETY_L10=10`.

## aimdk_msgs/msg/PlayTtsRequest

Symbol: `Ros2Aimdk_msgsMsgPlayTtsRequest`. Complete canonical extent: 18..402 bytes.
Codec identity: `UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| text | string | scalar | 128 | - |
| priority_level | aimdk_msgs/msg/TtsPriorityLevel | scalar | - | - |
| priority_weight | uint32 | scalar | - | - |
| domain | string | scalar | 128 | - |
| trace_id | string | scalar | 128 | - |
| is_interrupted | bool | scalar | - | - |

## aimdk_msgs/msg/PlayTtsResponse

Symbol: `Ros2Aimdk_msgsMsgPlayTtsResponse`. Complete canonical extent: 27..539 bytes.
Codec identity: `UWVMROS1_859aaa26ebee477f028cd7836e64aeaaabdafbd8ea67fc4b563bc145e4a55dc8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| text | string | scalar | 128 | - |
| priority_level | aimdk_msgs/msg/TtsPriorityLevel | scalar | - | - |
| priority_weight | uint32 | scalar | - | - |
| domain | string | scalar | 128 | - |
| trace_id | string | scalar | 128 | - |
| is_success | bool | scalar | - | - |
| error_message | string | scalar | 128 | - |
| estimated_duration | uint32 | scalar | - | - |
| error_code | uint8 | scalar | - | - |

Original declared constants: `ERROR_NONE=0`, `ERROR_HIGHER_PRIORITY_BUSY=1`, `ERROR_NETWORK_DISCONNECTED=2`, `ERROR_UNKNOWN=3`.

## aimdk_msgs/msg/PmuLedState

Symbol: `Ros2Aimdk_msgsMsgPmuLedState`. Complete canonical extent: 36..292 bytes.
Codec identity: `UWVMROS1_ffd9da2c79f63f9a61a4dfcefde97cb58676f61598b76c0435f33ab23e9002dc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| trace_id | string | scalar | 128 | - |
| led_strip_mode | uint8 | scalar | - | - |
| r | uint8 | scalar | - | - |
| g | uint8 | scalar | - | - |
| b | uint8 | scalar | - | - |
| priority | int32 | scalar | - | - |

Original declared constants: `LED_STRIP_MODE_CONSTANT=0`, `LED_STRIP_MODE_BREATH=1`, `LED_STRIP_MODE_FLASH=2`, `LED_STRIP_MODE_FLOW=3`, `LED_STRIP_MODE_MAX=4`.

## aimdk_msgs/msg/PmuState

Symbol: `Ros2Aimdk_msgsMsgPmuState`. Complete canonical extent: 218..1114 bytes.
Codec identity: `UWVMROS1_bb828bf3667ae8a8909a7e98b20e789d9dfc6b954fe2ab7fc3adbc306c9ebbbd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pmu_software_version | string | scalar | 128 | - |
| pmu_hardware_version | string | scalar | 128 | - |
| pmu_protocol_version | string | scalar | 128 | - |
| pmu_bool_status | uint32 | scalar | - | - |
| head_power_current | float64 | scalar | - | - |
| output_48v_current | float64 | scalar | - | - |
| rk3588_current | float64 | scalar | - | - |
| output_12v_current | float64 | scalar | - | - |
| bus_48v_current | float64 | scalar | - | - |
| orin_current | float64 | scalar | - | - |
| bus_48v_pmos_voltage | float64 | scalar | - | - |
| battery_voltage | float64 | scalar | - | - |
| fan_voltage | float64 | scalar | - | - |
| output_12v_voltage | float64 | scalar | - | - |
| output_48v_voltage | float64 | scalar | - | - |
| bus_48v_voltage | float64 | scalar | - | - |
| head_power_voltage | float64 | scalar | - | - |
| orin_voltage | float64 | scalar | - | - |
| rk3588_voltage | float64 | scalar | - | - |
| fan_speed | float64 | scalar | - | - |
| fan_pecentage | uint8 | scalar | - | - |
| pmu_temperature | float64 | scalar | - | - |
| bms_manufacturer | string | scalar | 128 | - |
| bms_serial_number | string | scalar | 128 | - |
| bms_hardware_version | string | scalar | 128 | - |
| bms_software_version | string | scalar | 128 | - |
| bms_status_bits | uint32 | scalar | - | - |
| battery_balance_line_resistance | uint16 | scalar | - | - |
| battery_pack_voltage | float64 | scalar | - | - |
| battery_current | float64 | scalar | - | - |
| battery_output_power | float64 | scalar | - | - |
| battery_temperature | float64 | scalar | - | - |
| battery_remaining_capacity | uint32 | scalar | - | - |
| battery_remaining_capacity_percentage | uint8 | scalar | - | - |
| battery_cycle_count | uint16 | scalar | - | - |
| battery_cycle_total_capacity | uint32 | scalar | - | - |

## std_msgs/msg/Header

Symbol: `Ros2Std_msgsMsgHeader`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | - | - |
| frame_id | string | scalar | 128 | - |

## geometry_msgs/msg/PoseStamped

Symbol: `Ros2Geometry_msgsMsgPoseStamped`. Complete canonical extent: 68..196 bytes.
Codec identity: `UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | - | - |
| pose | geometry_msgs/msg/Pose | scalar | - | - |

## geometry_msgs/msg/Vector3

Symbol: `Ros2Geometry_msgsMsgVector3`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | - | - |
| y | float64 | scalar | - | - |
| z | float64 | scalar | - | - |

## geometry_msgs/msg/Twist

Symbol: `Ros2Geometry_msgsMsgTwist`. Complete canonical extent: 48..48 bytes.
Codec identity: `UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| linear | geometry_msgs/msg/Vector3 | scalar | - | - |
| angular | geometry_msgs/msg/Vector3 | scalar | - | - |

## aimdk_msgs/msg/PncTaskRequest

Symbol: `Ros2Aimdk_msgsMsgPncTaskRequest`. Complete canonical extent: 215..855 bytes.
Codec identity: `UWVMROS1_70b6f57408c6a09cc52d3ce4aeaab20322737a6c4cfddbd380e87d673050469c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| task_type | uint8 | scalar | - | - |
| task_request | uint8 | scalar | - | - |
| pnc_mode | uint8 | scalar | - | - |
| task_id | uint64 | scalar | - | - |
| map_id | uint64 | scalar | - | - |
| target_pose | geometry_msgs/msg/PoseStamped | scalar | - | - |
| reference_line | geometry_msgs/msg/Pose2D | sequence | 4 | - |
| target_pose_radius | float64 | scalar | - | - |
| max_forward_speed | float32 | scalar | - | - |
| trajectory_pos | geometry_msgs/msg/Pose2D | sequence | 4 | - |
| trajectory_vel | geometry_msgs/msg/Twist | sequence | 4 | - |
| play_timestamp | uint64 | scalar | - | - |
| time_duration | uint64 | scalar | - | - |
| reserve_info | uint8 | array | 64 | - |

Original declared constants: `TASK_TYPE_NONE=0`, `TASK_TYPE_PLANNING_NAVI_TO_GOAL=1`, `TASK_TYPE_PLANNING_NAVI_TO_POSE_2D=2`, `TASK_TYPE_LINEAR_NAVI_TO_RELATIVE=3`, `TASK_TYPE_LINEAR_NAVI_TO_GOAL=4`, `TASK_TYPE_LINEAR_NAVI_TO_POSE_2D=5`, `TASK_TYPE_DIRECT_NAVI_TO_RELATIVE_GOAL=6`, `TASK_TYPE_DIRECT_NAVI_TO_RELATIVE=7`, `TASK_TYPE_SPIN_TURN_AND_MOVE_FORWARD=8`, `TASK_TYPE_SPIN_TURN=9`, `TASK_TYPE_MOVE_FORWARD=10`, `TASK_TYPE_PRECISE_NAVI_TO_GOAL=11`, `TASK_TYPE_NO_MAP_FOLLOW=12`, `TASK_TYPE_AUTO_EXPLORE=13`, `TASK_TYPE_VOICE_CONTROL=14`, `TASK_TYPE_RELATIVE_TARGET_TRACKING=15`, `TASK_TYPE_PLANNING_NAVI_WITH_RL=16`, `TASK_TYPE_SWARM_CONTROL_NAVI_MODE=17`, `TASK_REQUEST_NONE=0`, `TASK_REQUEST_START=1`, `TASK_REQUEST_STOP=2`, `TASK_REQUEST_PAUSE=3`, `TASK_REQUEST_RESUME=4`, `TASK_REQUEST_STATUS_INQUIRY=5`, `NORMAL=0`, `NO_PERCEPTION=1`.

## aimdk_msgs/msg/PncTaskResponse

Symbol: `Ros2Aimdk_msgsMsgPncTaskResponse`. Complete canonical extent: 106..234 bytes.
Codec identity: `UWVMROS1_b79712144fee059d6b2d3fc74a86a33ca577734d8445b446a4b80db01e87243e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| task_type | uint8 | scalar | - | - |
| task_id | uint64 | scalar | - | - |
| map_id | uint64 | scalar | - | - |
| task_status | uint8 | scalar | - | - |
| reserve_info | uint8 | array | 64 | - |

Original declared constants: `TASK_TYPE_NONE=0`, `TASK_TYPE_PLANNING_NAVI_TO_GOAL=1`, `TASK_TYPE_PLANNING_NAVI_TO_POSE_2D=2`, `TASK_TYPE_LINEAR_NAVI_TO_RELATIVE=3`, `TASK_TYPE_LINEAR_NAVI_TO_GOAL=4`, `TASK_TYPE_LINEAR_NAVI_TO_POSE_2D=5`, `TASK_TYPE_DIRECT_NAVI_TO_RELATIVE_GOAL=6`, `TASK_TYPE_DIRECT_NAVI_TO_RELATIVE=7`, `TASK_TYPE_SPIN_TURN_AND_MOVE_FORWARD=8`, `TASK_TYPE_SPIN_TURN=9`, `TASK_TYPE_MOVE_FORWARD=10`, `TASK_TYPE_PRECISE_NAVI_TO_GOAL=11`, `TASK_TYPE_NO_MAP_FOLLOW=12`, `TASK_TYPE_AUTO_EXPLORE=13`, `TASK_TYPE_VOICE_CONTROL=14`, `TASK_TYPE_RELATIVE_TARGET_TRACKING=15`, `TASK_TYPE_PLANNING_NAVI_WITH_RL=16`, `TASK_STATUS_UNKONW=0`, `TASK_STATUS_RUNNING=1`, `TASK_STATUS_FAILED=2`, `TASK_STATUS_PAUSED=3`, `TASK_STATUS_FINISHED=4`, `TASK_STATUS_UNKNOW_BLOCK=10`, `TASK_STATUS_SPIN_BLOCK=11`, `TASK_STATUS_TRAJ_COLLISION_BLOCK=12`, `TASK_STATUS_CONTOLLER_COLLISION_BLOCK=13`, `TASK_STATUS_SPIN_BLOCK_WITH_HUMAN=14`, `TASK_STATUS_TRAJ_COLLISION_BLOCK_WITH_HUMAN=15`, `TASK_STATUS_CONTOLLER_COLLISION_BLOCK_WITH_HUMAN=16`, `TASK_STATUS_LOCAL_OPTIMAL_FAILED=17`, `TASK_STATUS_GOBAL_PATH_BLOCK=18`, `TASK_STATUS_RECOVERY_GLOBAL=20`, `TASK_STATUS_RECOVERY_LOCAL=21`, `TASK_STATUS_RECOVERY_TIMEOUT=22`, `TASK_STATUS_EXPLORE_TO_RECOVERY=23`, `TASK_STATUS_EXPLORE_SUCCESS=24`, `TASK_STATUS_EXPLORE_FAILED=25`, `TASK_STATUS_GOAL_BLOCK_CONTINUE=30`, `TASK_STATUS_GOAL_BLOCK_ABORT=31`.

## aimdk_msgs/msg/SigSet

Symbol: `Ros2Aimdk_msgsMsgSigSet`. Complete canonical extent: 20..20 bytes.
Codec identity: `UWVMROS1_24fc701bfd984160280c2b150c2b6accee18cead254009fb4f781341efb5b8ae`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| robot_sig | int32 | scalar | - | - |
| motion_sig | uint8 | scalar | - | - |
| sound_sig | uint8 | scalar | - | - |
| led_sig | uint8 | scalar | - | - |
| facial_sig | uint8 | scalar | - | - |
| reserve | uint32 | scalar | - | - |
| funcdisable_sig | uint64 | scalar | - | - |

## aimdk_msgs/msg/PostProcSig

Symbol: `Ros2Aimdk_msgsMsgPostProcSig`. Complete canonical extent: 36..36 bytes.
Codec identity: `UWVMROS1_f6eceb5eb1e64d0b68e1cfac297cec324fc4aa42ea709e1c721aefe4d4feda8b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timestamp | uint64 | scalar | - | - |
| diag_code | uint64 | scalar | - | - |
| sig_set | aimdk_msgs/msg/SigSet | scalar | - | - |

## aimdk_msgs/msg/PostProcSigArray

Symbol: `Ros2Aimdk_msgsMsgPostProcSigArray`. Complete canonical extent: 28..300 bytes.
Codec identity: `UWVMROS1_5a2202eb697688ee1fe7530df21d462d4a0f1a4e62e986e610e970bf04f64824`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| post_proc_sig | aimdk_msgs/msg/PostProcSig | sequence | 4 | - |

## aimdk_msgs/msg/ProcessedAudioOutput

Symbol: `Ros2Aimdk_msgsMsgProcessedAudioOutput`. Complete canonical extent: 33..417 bytes.
Codec identity: `UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| stream_id | uint32 | scalar | - | - |
| audio_vad_state | aimdk_msgs/msg/AudioVadStateType | scalar | - | - |
| audio_data | uint8 | sequence | 256 | - |

## aimdk_msgs/msg/QRPoint

Symbol: `Ros2Aimdk_msgsMsgQRPoint`. Complete canonical extent: 64..64 bytes.
Codec identity: `UWVMROS1_b158d016b9e3607a1345df207459476cf88c9817dfd3ee7560b5635c7a81863e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| point_id | int32 | scalar | - | - |
| qr_code | aimdk_msgs/msg/QRCode | scalar | - | - |

## geometry_msgs/msg/Point32

Symbol: `Ros2Geometry_msgsMsgPoint32`. Complete canonical extent: 12..12 bytes.
Codec identity: `UWVMROS1_8ca11f8b9c00af9c95e3eebbeb6073227af8dee04b57f84e120a024e7f8539f9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float32 | scalar | - | - |
| y | float32 | scalar | - | - |
| z | float32 | scalar | - | - |

## geometry_msgs/msg/Polygon

Symbol: `Ros2Geometry_msgsMsgPolygon`. Complete canonical extent: 4..52 bytes.
Codec identity: `UWVMROS1_b5492d33b802b68eea062a74ffe7f336b1f392161b183e67c3bf24bb0a7d0aa8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| points | geometry_msgs/msg/Point32 | sequence | 4 | - |

## aimdk_msgs/msg/Region

Symbol: `Ros2Aimdk_msgsMsgRegion`. Complete canonical extent: 10..186 bytes.
Codec identity: `UWVMROS1_161bb9787ae2df5a45015946bc386a2c4cf310701fa4970cf447c6445c85f1ce`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| type | uint8 | scalar | - | - |
| drawing_type | uint8 | scalar | - | - |
| name | string | scalar | 128 | - |
| polygon | geometry_msgs/msg/Polygon | scalar | - | - |

Original declared constants: `REGION_UNDEFINED=0`, `REGION_WORKING_SPACE=1`, `REGION_VIRTUAL_WALL=2`, `REGION_DRAWING_UNDEFINED=0`, `REGION_DRAWING_CLOSURE=1`, `REGION_DRAWING_LINES=2`.

## aimdk_msgs/msg/RobotResource

Symbol: `Ros2Aimdk_msgsMsgRobotResource`. Complete canonical extent: 24..2520 bytes.
Codec identity: `UWVMROS1_abc49dc6dd4cc0b0c59cd0ddb01d19897a51018752e3d9eb39aa6bcc684ad34d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| resource_key | string | scalar | 128 | - |
| current_version | aimdk_msgs/msg/CurrentVersion | scalar | - | - |

## aimdk_msgs/msg/SlaveDevice

Symbol: `Ros2Aimdk_msgsMsgSlaveDevice`. Complete canonical extent: 4..132 bytes.
Codec identity: `UWVMROS1_36af580c9887ea808824106a14966193c9a639f6825a2cb3f94cbde369bd3255`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| ip | string | scalar | 128 | - |

## aimdk_msgs/msg/SystemStatus

Symbol: `Ros2Aimdk_msgsMsgSystemStatus`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_94275d3d0a1e83e4cc8e45b166b2cb111c9eccd4eabfe7410795b9c1fd69c6f1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | - | - |

Original declared constants: `IN_INITIAL=0`, `IN_READY=1`, `IN_MOVE=2`, `IN_ROLLBACK=3`, `IN_FALLBACK=4`, `IN_FALLBACK_MOVE=5`.

## aimdk_msgs/msg/SmSystemState

Symbol: `Ros2Aimdk_msgsMsgSmSystemState`. Complete canonical extent: 29..285 bytes.
Codec identity: `UWVMROS1_32df2f2ac235992629e4fd98257feaac52917482d1065071a4513eaf611980ce`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| cur_state | string | scalar | 128 | - |
| cur_status | aimdk_msgs/msg/SystemStatus | scalar | - | - |

## aimdk_msgs/msg/TaskMasterState

Symbol: `Ros2Aimdk_msgsMsgTaskMasterState`. Complete canonical extent: 105..1129 bytes.
Codec identity: `UWVMROS1_90307681af8de801b0fac5e757fb89f1d23e33efdbdf939666b884b8d260a7a4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| main_state | uint8 | scalar | - | - |
| sub_state | uint8 | scalar | - | - |
| slam_state | uint8 | scalar | - | - |
| loc_map_id | uint64 | scalar | - | - |
| loc_map_name | string | scalar | 128 | - |
| fix_line_intro_state | aimdk_msgs/msg/FixLineIntroState | scalar | - | - |
| pilot_state | aimdk_msgs/msg/PilotState | scalar | - | - |
| reserve_info | string | scalar | 128 | - |

Original declared constants: `TM_MAIN_STATE_IDLE=0`, `TM_MAIN_STATE_RELOCALIZATION=1`, `TM_MAIN_STATE_MAPPING=2`, `TM_MAIN_STATE_FIX_LINE_INTRO=3`, `TM_MAIN_STATE_RECORDING_PATH=4`, `TM_MAIN_STATE_PILOT=5`, `TM_SUB_STATE_NONE=0`, `TM_SUB_STATE_RESUME=1`, `TM_SUB_STATE_PAUSE=2`, `SLAM_STATE_IDLE=0`, `SLAM_STATE_RELOCALIZATION=1`, `SLAM_STATE_MAPPING=2`, `SLAM_STATE_LOCALIZATION=3`.

## aimdk_msgs/msg/TouchState

Symbol: `Ros2Aimdk_msgsMsgTouchState`. Complete canonical extent: 97..225 bytes.
Codec identity: `UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| event_type | uint8 | scalar | - | - |
| data | uint32 | array | 8 | - |
| threshold | uint32 | array | 8 | - |
| is_touched | bool | array | 8 | - |

Original declared constants: `UNKNOWN=0`, `IDLE=1`, `TOUCH=2`, `SLIDE=3`, `PAT_ONCE=4`, `PAT_TWICE=5`, `PAT_TRIPLE=6`.

## aimdk_msgs/msg/UpperBodyCommandArray

Symbol: `Ros2Aimdk_msgsMsgUpperBodyCommandArray`. Complete canonical extent: 161..545 bytes.
Codec identity: `UWVMROS1_7f283521eed5b5febcba3cd0b19e1948749c2898c753e8b57983ec966a4ccbe0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| source | string | scalar | 128 | - |
| hand_sub_mode | uint8 | scalar | - | - |
| head_pos | float64 | array | 2 | - |
| arm_pos | float64 | array | 14 | - |
| hand_pos | float64 | sequence | 16 | - |

Original declared constants: `HAND_CLAW_OPEN_CLOSE=1`, `HAND_DEXTEROUS_JOINT=2`, `HAND_DEXTEROUS_GESTURE=3`.

## aimdk_msgs/srv/AbandonAudioFocus_Request

Symbol: `Ros2Aimdk_msgsSrvAbandonAudioFocus_Request`. Complete canonical extent: 20..148 bytes.
Codec identity: `UWVMROS1_c49f508915d7e28b09d6b4e21da757ec4457f96f7bced6861caecf00b5e68ce5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| focus_requester | aimdk_msgs/msg/FocusRequester | scalar | - | - |

## aimdk_msgs/srv/AbandonAudioFocus_Response

Symbol: `Ros2Aimdk_msgsSrvAbandonAudioFocus_Response`. Complete canonical extent: 29..285 bytes.
Codec identity: `UWVMROS1_6a26581d66d35c5e6d04720935a163a6f527c036cb9c774e130bce242e47f376`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| reponse | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| focus_response | aimdk_msgs/msg/FocusResponse | scalar | - | - |

## aimdk_msgs/srv/ExecuteActionResource_Request

Symbol: `Ros2Aimdk_msgsSrvExecuteActionResource_Request`. Complete canonical extent: 24..936 bytes.
Codec identity: `UWVMROS1_4fa82b039bfd5804bf1591c04cf4c874c78a8f2b25d2a39cd55e8ce877f6ce56`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| resource_key | string | scalar | 128 | - |
| resource_version | string | scalar | 128 | - |
| slaves | aimdk_msgs/msg/SlaveDevice | sequence | 4 | - |
| meta | string | scalar | 128 | - |

## aimdk_msgs/srv/ExecuteActionResource_Response

Symbol: `Ros2Aimdk_msgsSrvExecuteActionResource_Response`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_40e147ad6f1534415f232269043f52e6566a1023f728ad31851bbd6aa8651011`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |

## aimdk_msgs/srv/GetAllJointState_Request

Symbol: `Ros2Aimdk_msgsSrvGetAllJointState_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |

## aimdk_msgs/srv/GetAllJointState_Response

Symbol: `Ros2Aimdk_msgsSrvGetAllJointState_Response`. Complete canonical extent: 40..2696 bytes.
Codec identity: `UWVMROS1_7b5d2c7e0d8c1f9a7beb98289b933a2f4466c4d08e9340a816e9e65d7a8151f2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| reponse | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| head_joints | aimdk_msgs/msg/JointState | sequence | 4 | - |
| arm_joints | aimdk_msgs/msg/JointState | sequence | 4 | - |
| waist_joints | aimdk_msgs/msg/JointState | sequence | 4 | - |
| leg_joints | aimdk_msgs/msg/JointState | sequence | 4 | - |

## aimdk_msgs/srv/GetCurrentInputSource_Request

Symbol: `Ros2Aimdk_msgsSrvGetCurrentInputSource_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |

## aimdk_msgs/srv/GetCurrentInputSource_Response

Symbol: `Ros2Aimdk_msgsSrvGetCurrentInputSource_Response`. Complete canonical extent: 40..168 bytes.
Codec identity: `UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| response | aimdk_msgs/msg/CommonTaskResponse | scalar | - | - |
| input_source | aimdk_msgs/msg/McInputSource | scalar | - | - |

## aimdk_msgs/srv/GetHandType_Request

Symbol: `Ros2Aimdk_msgsSrvGetHandType_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |

## aimdk_msgs/srv/GetHandType_Response

Symbol: `Ros2Aimdk_msgsSrvGetHandType_Response`. Complete canonical extent: 26..154 bytes.
Codec identity: `UWVMROS1_a4911dedef84b0d6702905f580cf911b4cde7b14b5beac3b516d3faca3b39726`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| reponse | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| left_hands_type | aimdk_msgs/msg/HandType | scalar | - | - |
| right_hands_type | aimdk_msgs/msg/HandType | scalar | - | - |

## aimdk_msgs/srv/GetHdsEventHistory_Request

Symbol: `Ros2Aimdk_msgsSrvGetHdsEventHistory_Request`. Complete canonical extent: 46..4398 bytes.
Codec identity: `UWVMROS1_9a2916041770f7392e93bdb21736c5b3b218cbbd65b9533451db64efc670e7da`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/RequestHeader | scalar | - | - |
| query | aimdk_msgs/msg/HdsEventQuery | scalar | - | - |

## aimdk_msgs/srv/GetHdsEventHistory_Response

Symbol: `Ros2Aimdk_msgsSrvGetHdsEventHistory_Response`. Complete canonical extent: 25..1277 bytes.
Codec identity: `UWVMROS1_ce2d51d64e2f318ef7e8cfb294969e3e9267f9355780fd3a45acc7a001783bea`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/ResponseHeader | scalar | - | - |
| records | aimdk_msgs/msg/HdsEventRecord | sequence | 4 | - |
| total_count | uint32 | scalar | - | - |
| has_more | bool | scalar | - | - |

## aimdk_msgs/srv/GetMcAction_Request

Symbol: `Ros2Aimdk_msgsSrvGetMcAction_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |

## aimdk_msgs/srv/GetMcAction_Response

Symbol: `Ros2Aimdk_msgsSrvGetMcAction_Response`. Complete canonical extent: 28..156 bytes.
Codec identity: `UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/ResponseHeader | scalar | - | - |
| info | aimdk_msgs/msg/McActionInfo | scalar | - | - |

## aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Request

Symbol: `Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_3ba1d0408e9a60f37a17a790d89bb7f7da0ba8618fc5da56a8d92122989a8b3b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |

## aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Response

Symbol: `Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response`. Complete canonical extent: 328..328 bytes.
Codec identity: `UWVMROS1_6b27a64e371638dc12d2a469f6dbac32d09d2ecd9d5348b96782d94204056d54`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/ResponseHeader | scalar | - | - |
| current_speed_status | aimdk_msgs/msg/McLocomotionSpeedStatus | scalar | - | - |
| none_speed_status | aimdk_msgs/msg/McLocomotionSpeedStatus | scalar | - | - |
| low_speed_status | aimdk_msgs/msg/McLocomotionSpeedStatus | scalar | - | - |
| medium_speed_status | aimdk_msgs/msg/McLocomotionSpeedStatus | scalar | - | - |
| high_speed_status | aimdk_msgs/msg/McLocomotionSpeedStatus | scalar | - | - |
| step_speed_status | aimdk_msgs/msg/McLocomotionSpeedStatus | scalar | - | - |

## aimdk_msgs/srv/GetMcPresetMotionState_Request

Symbol: `Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request`. Complete canonical extent: 16..16 bytes.
Codec identity: `UWVMROS1_7faee35b0b5a2494d668743b5f21e59bb167c553c5f4b61be97eabb8f044e095`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonTaskRequest | scalar | - | - |

## aimdk_msgs/srv/GetMcPresetMotionState_Response

Symbol: `Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response`. Complete canonical extent: 28..28 bytes.
Codec identity: `UWVMROS1_490aef5363792dc0f0148fe1fbb3e6036238341c41de104445d9d35191e76e30`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| response | aimdk_msgs/msg/CommonTaskResponse | scalar | - | - |

## aimdk_msgs/srv/GetMicSourceRequest_Request

Symbol: `Ros2Aimdk_msgsSrvGetMicSourceRequest_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_da81fa95ff0da422aaabb2412f11371452bac4c9b658682884b91fece94171cc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |

## aimdk_msgs/srv/GetMicSourceRequest_Response

Symbol: `Ros2Aimdk_msgsSrvGetMicSourceRequest_Response`. Complete canonical extent: 28..156 bytes.
Codec identity: `UWVMROS1_86637a091357add483c69aa331eb4305632f3701ff9d77dc8e00e8bc19b6f1f6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| mic_source | uint32 | scalar | - | - |

## aimdk_msgs/srv/GetMute_Request

Symbol: `Ros2Aimdk_msgsSrvGetMute_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |

## aimdk_msgs/srv/GetMute_Response

Symbol: `Ros2Aimdk_msgsSrvGetMute_Response`. Complete canonical extent: 25..153 bytes.
Codec identity: `UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| reponse | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| is_mute | bool | scalar | - | - |

## aimdk_msgs/srv/GetRobotResources_Request

Symbol: `Ros2Aimdk_msgsSrvGetRobotResources_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_0d086d105a54d7feea306182350c962ecebe145b8f9c45ca1216a88e6aaec86b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |

## aimdk_msgs/srv/GetRobotResources_Response

Symbol: `Ros2Aimdk_msgsSrvGetRobotResources_Response`. Complete canonical extent: 28..10236 bytes.
Codec identity: `UWVMROS1_ec4e3d0e6c502b60e70a3ba18f41d885e108fd4fe530ef2a9136ca0b32edda91`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| robot_resources | aimdk_msgs/msg/RobotResource | sequence | 4 | - |

## aimdk_msgs/srv/GetStoredMapByName_Request

Symbol: `Ros2Aimdk_msgsSrvGetStoredMapByName_Request`. Complete canonical extent: 16..272 bytes.
Codec identity: `UWVMROS1_4c33fbe7dbfe4cb2c06345046eb36d470530ff775ae5eee9b89f69fa5ec2fbc3`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | - | - |
| map_name | string | scalar | 128 | - |

## nav_msgs/msg/MapMetaData

Symbol: `Ros2Nav_msgsMsgMapMetaData`. Complete canonical extent: 76..76 bytes.
Codec identity: `UWVMROS1_494874ea5dbbb03876e0405f6d06b5d7cc5b1727e61dcb8ff9e449735b800009`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| map_load_time | builtin_interfaces/msg/Time | scalar | - | - |
| resolution | float32 | scalar | - | - |
| width | uint32 | scalar | - | - |
| height | uint32 | scalar | - | - |
| origin | geometry_msgs/msg/Pose | scalar | - | - |

## aimdk_msgs/srv/GetStoredMapByName_Response

Symbol: `Ros2Aimdk_msgsSrvGetStoredMapByName_Response`. Complete canonical extent: 140..3400 bytes.
Codec identity: `UWVMROS1_66ba1fb25a02dc55b4c5f46bdb5e090d134ea5fa9ff2a47f4934b0af382c61fb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| code | uint64 | scalar | - | - |
| header | std_msgs/msg/Header | scalar | - | - |
| map_info | nav_msgs/msg/MapMetaData | scalar | - | - |
| map_version | uint64 | scalar | - | - |
| map_path | string | scalar | 128 | - |
| data | int8 | sequence | 256 | - |
| navi_points | aimdk_msgs/msg/NaviPoint | sequence | 4 | - |
| qr_points | aimdk_msgs/msg/QRPoint | sequence | 4 | - |
| hr_points | aimdk_msgs/msg/HRPoint | sequence | 4 | - |
| paths | aimdk_msgs/msg/Path | sequence | 4 | - |
| regions | aimdk_msgs/msg/Region | sequence | 4 | - |
| map_id | uint64 | scalar | - | - |

## aimdk_msgs/srv/GetSystemState_Request

Symbol: `Ros2Aimdk_msgsSrvGetSystemState_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_abc62c31fea241d08d99a5a726199b29b995c0cadb688e5aa480ab70d173bf1f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |

## aimdk_msgs/srv/GetSystemState_Response

Symbol: `Ros2Aimdk_msgsSrvGetSystemState_Response`. Complete canonical extent: 29..285 bytes.
Codec identity: `UWVMROS1_8ea41f1383183b566d3c4457bee27191c9ac986a7c42e0b98aab05ab500c9039`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| cur_state | string | scalar | 128 | - |
| curr_status | aimdk_msgs/msg/SystemStatus | scalar | - | - |

## aimdk_msgs/srv/GetVolume_Request

Symbol: `Ros2Aimdk_msgsSrvGetVolume_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |

## aimdk_msgs/srv/GetVolume_Response

Symbol: `Ros2Aimdk_msgsSrvGetVolume_Response`. Complete canonical extent: 28..156 bytes.
Codec identity: `UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| reponse | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| audio_volume | uint32 | scalar | - | - |

## aimdk_msgs/srv/GroupControlTimeSync_Request

Symbol: `Ros2Aimdk_msgsSrvGroupControlTimeSync_Request`. Complete canonical extent: 12..540 bytes.
Codec identity: `UWVMROS1_00f371868d2cf78c68a9824a418f7e3376c959b1f600ee1906b75ea7c6eafedd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| slaves | aimdk_msgs/msg/SlaveDevice | sequence | 4 | - |

## aimdk_msgs/srv/GroupControlTimeSync_Response

Symbol: `Ros2Aimdk_msgsSrvGroupControlTimeSync_Response`. Complete canonical extent: 32..288 bytes.
Codec identity: `UWVMROS1_16bf8f1d44dcecd1263dcd1b48385fe079fa29893a03e5778797d24e361695ec`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| error_code | int32 | scalar | - | - |
| error_msg | string | scalar | 128 | - |

## aimdk_msgs/srv/MigrateSystemState_Request

Symbol: `Ros2Aimdk_msgsSrvMigrateSystemState_Request`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_02131f85cee3462c507bef0c8f54e75adbb1c8318551cfaef8efc59d693a415b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| state | string | scalar | 128 | - |

## aimdk_msgs/srv/MigrateSystemState_Response

Symbol: `Ros2Aimdk_msgsSrvMigrateSystemState_Response`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_7d4901fe8d9ab86c9f42b643604809a73e07ea77877b955764b4311d6f585802`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |

## aimdk_msgs/srv/PlayAudioFile_Request

Symbol: `Ros2Aimdk_msgsSrvPlayAudioFile_Request`. Complete canonical extent: 53..693 bytes.
Codec identity: `UWVMROS1_710a4db7c9c3792601fd958615acbd3e413ed1b1ca98aec0a7b04aff79c59cb1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| file | aimdk_msgs/msg/AudioFile | scalar | - | - |
| play_stamps | builtin_interfaces/msg/Time | scalar | - | - |

## aimdk_msgs/srv/PlayAudioFile_Response

Symbol: `Ros2Aimdk_msgsSrvPlayAudioFile_Response`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_988d360e84f041bc5a53a6d085709ba31e7e3836115e40d890534f44e62b0b85`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| reponse | aimdk_msgs/msg/CommonResponse | scalar | - | - |

## aimdk_msgs/srv/PlayEmoji_Request

Symbol: `Ros2Aimdk_msgsSrvPlayEmoji_Request`. Complete canonical extent: 14..14 bytes.
Codec identity: `UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| emotion_id | uint8 | scalar | - | - |
| mode | uint8 | scalar | - | - |
| priority | int32 | scalar | - | - |

Original declared constants: `EMOTION_UNKNOWN=0`, `EMOTION_IDLE_BLINK=1`, `EMOTION_IDLE_CALM_1=10`, `EMOTION_IDLE_CALM_2=11`, `EMOTION_IDLE_GAME=20`, `EMOTION_IDLE_CUTE_1=30`, `EMOTION_IDLE_CUTE_2=31`, `EMOTION_IDLE_CUTE_3=32`, `EMOTION_IDLE_CUTE_4=33`, `EMOTION_EYE_CLOSE=40`, `EMOTION_EYE_OPEN=50`, `EMOTION_EYE_BORING_1=60`, `EMOTION_EYE_ABNORMAL=70`, `EMOTION_EYE_SLEEPY=80`, `EMOTION_EYE_HAPPY=90`, `EMOTION_EYE_EXTREMEHAPPY_1=100`, `EMOTION_EYE_EXTREMEHAPPY_2=101`, `EMOTION_EYE_SAD=110`, `EMOTION_EYE_SYMPATHY=120`, `EMOTION_EYE_CONFUSE=130`, `EMOTION_EYE_SHOCK=140`, `EMOTION_EYE_ACTCUTE=150`, `EMOTION_EYE_SERIOUS=160`, `EMOTION_EYE_THINKING=170`, `EMOTION_EYE_ANGRY=180`, `EMOTION_EYE_EXTREMEANGRY=190`, `EMOTION_EYE_ADORE=200`, `EMOTION_EYE_EXTREMEADORE=210`, `EMOTION_EYE_CHARGE=220`, `EMOTION_MODE_ONCE=1`, `EMOTION_MODE_LOOP=2`.

## aimdk_msgs/srv/PlayEmoji_Response

Symbol: `Ros2Aimdk_msgsSrvPlayEmoji_Response`. Complete canonical extent: 29..285 bytes.
Codec identity: `UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| success | bool | scalar | - | - |
| message | string | scalar | 128 | - |

## aimdk_msgs/srv/PlayEmojiGroup_Request

Symbol: `Ros2Aimdk_msgsSrvPlayEmojiGroup_Request`. Complete canonical extent: 17..273 bytes.
Codec identity: `UWVMROS1_c696b5327d31945737301b57784797762832e143c4ccb89fba9228bc47402223`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| emotion_ids | uint8 | sequence | 256 | - |
| mode | uint8 | scalar | - | - |
| priority | int32 | scalar | - | - |

Original declared constants: `EMOTION_UNKNOWN=0`, `EMOTION_IDLE_BLINK=1`, `EMOTION_IDLE_CALM_1=10`, `EMOTION_IDLE_CALM_2=11`, `EMOTION_IDLE_GAME=20`, `EMOTION_IDLE_CUTE_1=30`, `EMOTION_IDLE_CUTE_2=31`, `EMOTION_IDLE_CUTE_3=32`, `EMOTION_IDLE_CUTE_4=33`, `EMOTION_EYE_CLOSE=40`, `EMOTION_EYE_OPEN=50`, `EMOTION_EYE_BORING_1=60`, `EMOTION_EYE_ABNORMAL=70`, `EMOTION_EYE_SLEEPY=80`, `EMOTION_EYE_HAPPY=90`, `EMOTION_EYE_EXTREMEHAPPY_1=100`, `EMOTION_EYE_EXTREMEHAPPY_2=101`, `EMOTION_EYE_SAD=110`, `EMOTION_EYE_SYMPATHY=120`, `EMOTION_EYE_CONFUSE=130`, `EMOTION_EYE_SHOCK=140`, `EMOTION_EYE_ACTCUTE=150`, `EMOTION_EYE_SERIOUS=160`, `EMOTION_EYE_THINKING=170`, `EMOTION_EYE_ANGRY=180`, `EMOTION_EYE_EXTREMEANGRY=190`, `EMOTION_EYE_ADORE=200`, `EMOTION_EYE_EXTREMEADORE=210`, `EMOTION_EYE_CHARGE=220`, `EMOTION_MODE_ONCE=1`, `EMOTION_MODE_LOOP=2`.

## aimdk_msgs/srv/PlayEmojiGroup_Response

Symbol: `Ros2Aimdk_msgsSrvPlayEmojiGroup_Response`. Complete canonical extent: 29..285 bytes.
Codec identity: `UWVMROS1_e12fb46d3a4912ee89cedafc27fffd1b984d68407e3ae45aef0f8c1e47a4d94d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| success | bool | scalar | - | - |
| message | string | scalar | 128 | - |

## aimdk_msgs/srv/PlayTts_Request

Symbol: `Ros2Aimdk_msgsSrvPlayTts_Request`. Complete canonical extent: 26..410 bytes.
Codec identity: `UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| tts_req | aimdk_msgs/msg/PlayTtsRequest | scalar | - | - |

## aimdk_msgs/srv/PlayTts_Response

Symbol: `Ros2Aimdk_msgsSrvPlayTts_Response`. Complete canonical extent: 51..691 bytes.
Codec identity: `UWVMROS1_1d77e2009a7a486e392cec8aa4a045257140839b22ba4001c1c06d0deffab57d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| tts_resp | aimdk_msgs/msg/PlayTtsResponse | scalar | - | - |

## aimdk_msgs/srv/PlayVideo_Request

Symbol: `Ros2Aimdk_msgsSrvPlayVideo_Request`. Complete canonical extent: 17..145 bytes.
Codec identity: `UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| video_path | string | scalar | 128 | - |
| mode | uint8 | scalar | - | - |
| priority | int32 | scalar | - | - |

Original declared constants: `EMOTION_MODE_ONCE=1`, `EMOTION_MODE_LOOP=2`.

## aimdk_msgs/srv/PlayVideo_Response

Symbol: `Ros2Aimdk_msgsSrvPlayVideo_Response`. Complete canonical extent: 29..285 bytes.
Codec identity: `UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| success | bool | scalar | - | - |
| message | string | scalar | 128 | - |

## aimdk_msgs/srv/PlayVideoGroup_Request

Symbol: `Ros2Aimdk_msgsSrvPlayVideoGroup_Request`. Complete canonical extent: 17..2129 bytes.
Codec identity: `UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| video_path_list | string | sequence | 16 | - |
| mode | uint8 | scalar | - | - |
| priority | int32 | scalar | - | - |

Original declared constants: `EMOTION_MODE_ONCE=1`, `EMOTION_MODE_LOOP=2`.

## aimdk_msgs/srv/PlayVideoGroup_Response

Symbol: `Ros2Aimdk_msgsSrvPlayVideoGroup_Response`. Complete canonical extent: 29..285 bytes.
Codec identity: `UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| success | bool | scalar | - | - |
| message | string | scalar | 128 | - |

## aimdk_msgs/srv/RequestAudioFocus_Request

Symbol: `Ros2Aimdk_msgsSrvRequestAudioFocus_Request`. Complete canonical extent: 20..148 bytes.
Codec identity: `UWVMROS1_b6354e6109618f66c9c52fc67351c687e60ad1bf5f4b77a8e326755deca7ae8a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| focus_requester | aimdk_msgs/msg/FocusRequester | scalar | - | - |

## aimdk_msgs/srv/RequestAudioFocus_Response

Symbol: `Ros2Aimdk_msgsSrvRequestAudioFocus_Response`. Complete canonical extent: 29..285 bytes.
Codec identity: `UWVMROS1_41f9d4bcd2021b66e092897b1c587be4359d28b9bac69ea4058d429c5cf88180`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| reponse | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| focus_response | aimdk_msgs/msg/FocusResponse | scalar | - | - |

## aimdk_msgs/srv/SetAgentPropertiesRequest_Request

Symbol: `Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request`. Complete canonical extent: 12..544 bytes.
Codec identity: `UWVMROS1_b05248c104afdd5331b9afb7a029923b03d3a984ba53633b0e42a70395f96fb8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| contents | aimdk_msgs/msg/AgentProperties | scalar | - | - |

## aimdk_msgs/srv/SetAgentPropertiesRequest_Response

Symbol: `Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |

## aimdk_msgs/srv/SetMcAction_Request

Symbol: `Ros2Aimdk_msgsSrvSetMcAction_Request`. Complete canonical extent: 20..276 bytes.
Codec identity: `UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/RequestHeader | scalar | - | - |
| source | string | scalar | 128 | - |
| command | aimdk_msgs/msg/McActionCommand | scalar | - | - |

## aimdk_msgs/srv/SetMcAction_Response

Symbol: `Ros2Aimdk_msgsSrvSetMcAction_Response`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| response | aimdk_msgs/msg/CommonResponse | scalar | - | - |

## aimdk_msgs/srv/SetMcInputSource_Request

Symbol: `Ros2Aimdk_msgsSrvSetMcInputSource_Request`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| action | aimdk_msgs/msg/McInputAction | scalar | - | - |
| input_source | aimdk_msgs/msg/McInputSource | scalar | - | - |

## aimdk_msgs/srv/SetMcInputSource_Response

Symbol: `Ros2Aimdk_msgsSrvSetMcInputSource_Response`. Complete canonical extent: 28..28 bytes.
Codec identity: `UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| response | aimdk_msgs/msg/CommonTaskResponse | scalar | - | - |

## aimdk_msgs/srv/SetMcPresetMotion_Request

Symbol: `Ros2Aimdk_msgsSrvSetMcPresetMotion_Request`. Complete canonical extent: 41..297 bytes.
Codec identity: `UWVMROS1_1bc0bdea042012300548f5d9845b37dfc192d9680bb3beda186a69a11870ca96`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/RequestHeader | scalar | - | - |
| input_source | aimdk_msgs/msg/McInputSource | scalar | - | - |
| area | aimdk_msgs/msg/McControlArea | scalar | - | - |
| motion | aimdk_msgs/msg/McPresetMotion | scalar | - | - |
| interrupt | bool | scalar | - | - |
| ani_path | string | scalar | 128 | - |
| play_timestamp | uint64 | scalar | - | - |

## aimdk_msgs/srv/SetMcPresetMotion_Response

Symbol: `Ros2Aimdk_msgsSrvSetMcPresetMotion_Response`. Complete canonical extent: 28..28 bytes.
Codec identity: `UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| response | aimdk_msgs/msg/CommonTaskResponse | scalar | - | - |

## aimdk_msgs/srv/SetMicSourceRequest_Request

Symbol: `Ros2Aimdk_msgsSrvSetMicSourceRequest_Request`. Complete canonical extent: 12..12 bytes.
Codec identity: `UWVMROS1_01f1bcb54c816c25f1a88eb4392e8bedc4943d39a5b09974d7859c20ad1ca5e5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| mic_source | uint32 | scalar | - | - |

## aimdk_msgs/srv/SetMicSourceRequest_Response

Symbol: `Ros2Aimdk_msgsSrvSetMicSourceRequest_Response`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_ee6caccf202dae100928dacc71303c536144d76458cf7c9b4facc6b88405ba02`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |

## aimdk_msgs/srv/SetMute_Request

Symbol: `Ros2Aimdk_msgsSrvSetMute_Request`. Complete canonical extent: 9..9 bytes.
Codec identity: `UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| is_mute | bool | scalar | - | - |

## aimdk_msgs/srv/SetMute_Response

Symbol: `Ros2Aimdk_msgsSrvSetMute_Response`. Complete canonical extent: 25..153 bytes.
Codec identity: `UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| reponse | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| is_mute | bool | scalar | - | - |

## aimdk_msgs/srv/SetPmuLed_Request

Symbol: `Ros2Aimdk_msgsSrvSetPmuLed_Request`. Complete canonical extent: 21..149 bytes.
Codec identity: `UWVMROS1_015ab71547b25baf5658c13781f8e78e5f6ed19692a6a30d191d7f39c962357e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| trace_id | string | scalar | 128 | - |
| led_strip_mode | uint8 | scalar | - | - |
| r | uint8 | scalar | - | - |
| g | uint8 | scalar | - | - |
| b | uint8 | scalar | - | - |
| priority | int32 | scalar | - | - |
| reset_priority | bool | scalar | - | - |

Original declared constants: `LED_STRIP_MODE_CONSTANT=0`, `LED_STRIP_MODE_BREATH=1`, `LED_STRIP_MODE_FLASH=2`, `LED_STRIP_MODE_FLOW=3`, `LED_STRIP_MODE_MAX=4`.

## aimdk_msgs/srv/SetPmuLed_Response

Symbol: `Ros2Aimdk_msgsSrvSetPmuLed_Response`. Complete canonical extent: 18..18 bytes.
Codec identity: `UWVMROS1_0408d54ce93e19d7299d79ee7797dc9b3511b3f5c37fd97a3b3d7d193cefcd28`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/ResponseHeader | scalar | - | - |
| status_code | uint16 | scalar | - | - |

## aimdk_msgs/srv/SetVolume_Request

Symbol: `Ros2Aimdk_msgsSrvSetVolume_Request`. Complete canonical extent: 12..12 bytes.
Codec identity: `UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| audio_volume | uint32 | scalar | - | - |

## aimdk_msgs/srv/SetVolume_Response

Symbol: `Ros2Aimdk_msgsSrvSetVolume_Response`. Complete canonical extent: 28..156 bytes.
Codec identity: `UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| reponse | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| audio_volume | uint32 | scalar | - | - |

## aimdk_msgs/srv/StopAudioPlay_Request

Symbol: `Ros2Aimdk_msgsSrvStopAudioPlay_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_477159e3e8f462376693e7d0051c4b49cf5170520a056be2a2bd5a72d83e24b9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |

## aimdk_msgs/srv/StopAudioPlay_Response

Symbol: `Ros2Aimdk_msgsSrvStopAudioPlay_Response`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_9a21b16e6eb5642e5bf5e0e64b15999a661142a65d2cc8ea68d8c62a2a1fbcb4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| reponse | aimdk_msgs/msg/CommonResponse | scalar | - | - |

## Interfaces

| Interface | Kind | Complete components |
| --- | --- | --- |
| aimdk_msgs/msg/AgentProperties | message | message: aimdk_msgs/msg/AgentProperties |
| aimdk_msgs/msg/AgentPropertiesValue | message | message: aimdk_msgs/msg/AgentPropertiesValue |
| aimdk_msgs/msg/AgentPropertyIdType | message | message: aimdk_msgs/msg/AgentPropertyIdType |
| aimdk_msgs/msg/AlertCode | message | message: aimdk_msgs/msg/AlertCode |
| aimdk_msgs/msg/AlertCodeArray | message | message: aimdk_msgs/msg/AlertCodeArray |
| aimdk_msgs/msg/AudioCapture | message | message: aimdk_msgs/msg/AudioCapture |
| aimdk_msgs/msg/AudioData | message | message: aimdk_msgs/msg/AudioData |
| aimdk_msgs/msg/AudioFile | message | message: aimdk_msgs/msg/AudioFile |
| aimdk_msgs/msg/AudioInfo | message | message: aimdk_msgs/msg/AudioInfo |
| aimdk_msgs/msg/AudioPlayback | message | message: aimdk_msgs/msg/AudioPlayback |
| aimdk_msgs/msg/AudioVadStateType | message | message: aimdk_msgs/msg/AudioVadStateType |
| aimdk_msgs/msg/CommonRequest | message | message: aimdk_msgs/msg/CommonRequest |
| aimdk_msgs/msg/CommonResponse | message | message: aimdk_msgs/msg/CommonResponse |
| aimdk_msgs/msg/CommonState | message | message: aimdk_msgs/msg/CommonState |
| aimdk_msgs/msg/CommonTaskRequest | message | message: aimdk_msgs/msg/CommonTaskRequest |
| aimdk_msgs/msg/CommonTaskResponse | message | message: aimdk_msgs/msg/CommonTaskResponse |
| aimdk_msgs/msg/CurrentVersion | message | message: aimdk_msgs/msg/CurrentVersion |
| aimdk_msgs/msg/DiagnosticInfo | message | message: aimdk_msgs/msg/DiagnosticInfo |
| aimdk_msgs/msg/DiagnosticInfoArray | message | message: aimdk_msgs/msg/DiagnosticInfoArray |
| aimdk_msgs/msg/DiagnosticType | message | message: aimdk_msgs/msg/DiagnosticType |
| aimdk_msgs/msg/DomainErrorState | message | message: aimdk_msgs/msg/DomainErrorState |
| aimdk_msgs/msg/FaceEmojiStatus | message | message: aimdk_msgs/msg/FaceEmojiStatus |
| aimdk_msgs/msg/FixLineIntroState | message | message: aimdk_msgs/msg/FixLineIntroState |
| aimdk_msgs/msg/FocusRequester | message | message: aimdk_msgs/msg/FocusRequester |
| aimdk_msgs/msg/FocusResponse | message | message: aimdk_msgs/msg/FocusResponse |
| aimdk_msgs/msg/HRPoint | message | message: aimdk_msgs/msg/HRPoint |
| aimdk_msgs/msg/HandCommand | message | message: aimdk_msgs/msg/HandCommand |
| aimdk_msgs/msg/HandCommandArray | message | message: aimdk_msgs/msg/HandCommandArray |
| aimdk_msgs/msg/HandState | message | message: aimdk_msgs/msg/HandState |
| aimdk_msgs/msg/HandStateArray | message | message: aimdk_msgs/msg/HandStateArray |
| aimdk_msgs/msg/HandTouchSensorData | message | message: aimdk_msgs/msg/HandTouchSensorData |
| aimdk_msgs/msg/HandType | message | message: aimdk_msgs/msg/HandType |
| aimdk_msgs/msg/HdsEventQuery | message | message: aimdk_msgs/msg/HdsEventQuery |
| aimdk_msgs/msg/HdsEventRecord | message | message: aimdk_msgs/msg/HdsEventRecord |
| aimdk_msgs/msg/JointCommand | message | message: aimdk_msgs/msg/JointCommand |
| aimdk_msgs/msg/JointCommandArray | message | message: aimdk_msgs/msg/JointCommandArray |
| aimdk_msgs/msg/JointState | message | message: aimdk_msgs/msg/JointState |
| aimdk_msgs/msg/JointStateArray | message | message: aimdk_msgs/msg/JointStateArray |
| aimdk_msgs/msg/McAction | message | message: aimdk_msgs/msg/McAction |
| aimdk_msgs/msg/McActionCommand | message | message: aimdk_msgs/msg/McActionCommand |
| aimdk_msgs/msg/McActionInfo | message | message: aimdk_msgs/msg/McActionInfo |
| aimdk_msgs/msg/McActionStatus | message | message: aimdk_msgs/msg/McActionStatus |
| aimdk_msgs/msg/McBodyPoseStatus | message | message: aimdk_msgs/msg/McBodyPoseStatus |
| aimdk_msgs/msg/McCommonState | message | message: aimdk_msgs/msg/McCommonState |
| aimdk_msgs/msg/McControlArea | message | message: aimdk_msgs/msg/McControlArea |
| aimdk_msgs/msg/McFsmState | message | message: aimdk_msgs/msg/McFsmState |
| aimdk_msgs/msg/McHandStatus | message | message: aimdk_msgs/msg/McHandStatus |
| aimdk_msgs/msg/McInputAction | message | message: aimdk_msgs/msg/McInputAction |
| aimdk_msgs/msg/McInputSource | message | message: aimdk_msgs/msg/McInputSource |
| aimdk_msgs/msg/McLocomotionSpeedBounds | message | message: aimdk_msgs/msg/McLocomotionSpeedBounds |
| aimdk_msgs/msg/McLocomotionSpeedMode | message | message: aimdk_msgs/msg/McLocomotionSpeedMode |
| aimdk_msgs/msg/McLocomotionSpeedStatus | message | message: aimdk_msgs/msg/McLocomotionSpeedStatus |
| aimdk_msgs/msg/McLocomotionVelocity | message | message: aimdk_msgs/msg/McLocomotionVelocity |
| aimdk_msgs/msg/McMotionStatus | message | message: aimdk_msgs/msg/McMotionStatus |
| aimdk_msgs/msg/McMotionType | message | message: aimdk_msgs/msg/McMotionType |
| aimdk_msgs/msg/McPlayerState | message | message: aimdk_msgs/msg/McPlayerState |
| aimdk_msgs/msg/McPresetMotion | message | message: aimdk_msgs/msg/McPresetMotion |
| aimdk_msgs/msg/McRuntimeModel | message | message: aimdk_msgs/msg/McRuntimeModel |
| aimdk_msgs/msg/McServoStatus | message | message: aimdk_msgs/msg/McServoStatus |
| aimdk_msgs/msg/MessageHeader | message | message: aimdk_msgs/msg/MessageHeader |
| aimdk_msgs/msg/NaviPoint | message | message: aimdk_msgs/msg/NaviPoint |
| aimdk_msgs/msg/Path | message | message: aimdk_msgs/msg/Path |
| aimdk_msgs/msg/PilotState | message | message: aimdk_msgs/msg/PilotState |
| aimdk_msgs/msg/PlayStateChange | message | message: aimdk_msgs/msg/PlayStateChange |
| aimdk_msgs/msg/PlayStateType | message | message: aimdk_msgs/msg/PlayStateType |
| aimdk_msgs/msg/PlayTtsRequest | message | message: aimdk_msgs/msg/PlayTtsRequest |
| aimdk_msgs/msg/PlayTtsResponse | message | message: aimdk_msgs/msg/PlayTtsResponse |
| aimdk_msgs/msg/PmuLedState | message | message: aimdk_msgs/msg/PmuLedState |
| aimdk_msgs/msg/PmuState | message | message: aimdk_msgs/msg/PmuState |
| aimdk_msgs/msg/PncTaskRequest | message | message: aimdk_msgs/msg/PncTaskRequest |
| aimdk_msgs/msg/PncTaskResponse | message | message: aimdk_msgs/msg/PncTaskResponse |
| aimdk_msgs/msg/PostProcSig | message | message: aimdk_msgs/msg/PostProcSig |
| aimdk_msgs/msg/PostProcSigArray | message | message: aimdk_msgs/msg/PostProcSigArray |
| aimdk_msgs/msg/ProcessedAudioOutput | message | message: aimdk_msgs/msg/ProcessedAudioOutput |
| aimdk_msgs/msg/QRCode | message | message: aimdk_msgs/msg/QRCode |
| aimdk_msgs/msg/QRPoint | message | message: aimdk_msgs/msg/QRPoint |
| aimdk_msgs/msg/Region | message | message: aimdk_msgs/msg/Region |
| aimdk_msgs/msg/RequestHeader | message | message: aimdk_msgs/msg/RequestHeader |
| aimdk_msgs/msg/ResponseHeader | message | message: aimdk_msgs/msg/ResponseHeader |
| aimdk_msgs/msg/RobotResource | message | message: aimdk_msgs/msg/RobotResource |
| aimdk_msgs/msg/SigSet | message | message: aimdk_msgs/msg/SigSet |
| aimdk_msgs/msg/SlaveDevice | message | message: aimdk_msgs/msg/SlaveDevice |
| aimdk_msgs/msg/SmSystemState | message | message: aimdk_msgs/msg/SmSystemState |
| aimdk_msgs/msg/SystemStatus | message | message: aimdk_msgs/msg/SystemStatus |
| aimdk_msgs/msg/TaskMasterState | message | message: aimdk_msgs/msg/TaskMasterState |
| aimdk_msgs/msg/TouchState | message | message: aimdk_msgs/msg/TouchState |
| aimdk_msgs/msg/TtsPriorityLevel | message | message: aimdk_msgs/msg/TtsPriorityLevel |
| aimdk_msgs/msg/UpperBodyCommandArray | message | message: aimdk_msgs/msg/UpperBodyCommandArray |
| aimdk_msgs/srv/AbandonAudioFocus | service | request: aimdk_msgs/srv/AbandonAudioFocus_Request, response: aimdk_msgs/srv/AbandonAudioFocus_Response |
| aimdk_msgs/srv/ExecuteActionResource | service | request: aimdk_msgs/srv/ExecuteActionResource_Request, response: aimdk_msgs/srv/ExecuteActionResource_Response |
| aimdk_msgs/srv/GetAllJointState | service | request: aimdk_msgs/srv/GetAllJointState_Request, response: aimdk_msgs/srv/GetAllJointState_Response |
| aimdk_msgs/srv/GetCurrentInputSource | service | request: aimdk_msgs/srv/GetCurrentInputSource_Request, response: aimdk_msgs/srv/GetCurrentInputSource_Response |
| aimdk_msgs/srv/GetHandType | service | request: aimdk_msgs/srv/GetHandType_Request, response: aimdk_msgs/srv/GetHandType_Response |
| aimdk_msgs/srv/GetHdsEventHistory | service | request: aimdk_msgs/srv/GetHdsEventHistory_Request, response: aimdk_msgs/srv/GetHdsEventHistory_Response |
| aimdk_msgs/srv/GetMcAction | service | request: aimdk_msgs/srv/GetMcAction_Request, response: aimdk_msgs/srv/GetMcAction_Response |
| aimdk_msgs/srv/GetMcLocomotionSpeedStatus | service | request: aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Request, response: aimdk_msgs/srv/GetMcLocomotionSpeedStatus_Response |
| aimdk_msgs/srv/GetMcPresetMotionState | service | request: aimdk_msgs/srv/GetMcPresetMotionState_Request, response: aimdk_msgs/srv/GetMcPresetMotionState_Response |
| aimdk_msgs/srv/GetMicSourceRequest | service | request: aimdk_msgs/srv/GetMicSourceRequest_Request, response: aimdk_msgs/srv/GetMicSourceRequest_Response |
| aimdk_msgs/srv/GetMute | service | request: aimdk_msgs/srv/GetMute_Request, response: aimdk_msgs/srv/GetMute_Response |
| aimdk_msgs/srv/GetRobotResources | service | request: aimdk_msgs/srv/GetRobotResources_Request, response: aimdk_msgs/srv/GetRobotResources_Response |
| aimdk_msgs/srv/GetStoredMapByName | service | request: aimdk_msgs/srv/GetStoredMapByName_Request, response: aimdk_msgs/srv/GetStoredMapByName_Response |
| aimdk_msgs/srv/GetSystemState | service | request: aimdk_msgs/srv/GetSystemState_Request, response: aimdk_msgs/srv/GetSystemState_Response |
| aimdk_msgs/srv/GetVolume | service | request: aimdk_msgs/srv/GetVolume_Request, response: aimdk_msgs/srv/GetVolume_Response |
| aimdk_msgs/srv/GroupControlTimeSync | service | request: aimdk_msgs/srv/GroupControlTimeSync_Request, response: aimdk_msgs/srv/GroupControlTimeSync_Response |
| aimdk_msgs/srv/MigrateSystemState | service | request: aimdk_msgs/srv/MigrateSystemState_Request, response: aimdk_msgs/srv/MigrateSystemState_Response |
| aimdk_msgs/srv/PlayAudioFile | service | request: aimdk_msgs/srv/PlayAudioFile_Request, response: aimdk_msgs/srv/PlayAudioFile_Response |
| aimdk_msgs/srv/PlayEmoji | service | request: aimdk_msgs/srv/PlayEmoji_Request, response: aimdk_msgs/srv/PlayEmoji_Response |
| aimdk_msgs/srv/PlayEmojiGroup | service | request: aimdk_msgs/srv/PlayEmojiGroup_Request, response: aimdk_msgs/srv/PlayEmojiGroup_Response |
| aimdk_msgs/srv/PlayTts | service | request: aimdk_msgs/srv/PlayTts_Request, response: aimdk_msgs/srv/PlayTts_Response |
| aimdk_msgs/srv/PlayVideo | service | request: aimdk_msgs/srv/PlayVideo_Request, response: aimdk_msgs/srv/PlayVideo_Response |
| aimdk_msgs/srv/PlayVideoGroup | service | request: aimdk_msgs/srv/PlayVideoGroup_Request, response: aimdk_msgs/srv/PlayVideoGroup_Response |
| aimdk_msgs/srv/RequestAudioFocus | service | request: aimdk_msgs/srv/RequestAudioFocus_Request, response: aimdk_msgs/srv/RequestAudioFocus_Response |
| aimdk_msgs/srv/SetAgentPropertiesRequest | service | request: aimdk_msgs/srv/SetAgentPropertiesRequest_Request, response: aimdk_msgs/srv/SetAgentPropertiesRequest_Response |
| aimdk_msgs/srv/SetMcAction | service | request: aimdk_msgs/srv/SetMcAction_Request, response: aimdk_msgs/srv/SetMcAction_Response |
| aimdk_msgs/srv/SetMcInputSource | service | request: aimdk_msgs/srv/SetMcInputSource_Request, response: aimdk_msgs/srv/SetMcInputSource_Response |
| aimdk_msgs/srv/SetMcPresetMotion | service | request: aimdk_msgs/srv/SetMcPresetMotion_Request, response: aimdk_msgs/srv/SetMcPresetMotion_Response |
| aimdk_msgs/srv/SetMicSourceRequest | service | request: aimdk_msgs/srv/SetMicSourceRequest_Request, response: aimdk_msgs/srv/SetMicSourceRequest_Response |
| aimdk_msgs/srv/SetMute | service | request: aimdk_msgs/srv/SetMute_Request, response: aimdk_msgs/srv/SetMute_Response |
| aimdk_msgs/srv/SetPmuLed | service | request: aimdk_msgs/srv/SetPmuLed_Request, response: aimdk_msgs/srv/SetPmuLed_Response |
| aimdk_msgs/srv/SetVolume | service | request: aimdk_msgs/srv/SetVolume_Request, response: aimdk_msgs/srv/SetVolume_Response |
| aimdk_msgs/srv/StopAudioPlay | service | request: aimdk_msgs/srv/StopAudioPlay_Request, response: aimdk_msgs/srv/StopAudioPlay_Response |
| builtin_interfaces/msg/Time | message | message: builtin_interfaces/msg/Time |
| geometry_msgs/msg/Point | message | message: geometry_msgs/msg/Point |
| geometry_msgs/msg/Point32 | message | message: geometry_msgs/msg/Point32 |
| geometry_msgs/msg/Polygon | message | message: geometry_msgs/msg/Polygon |
| geometry_msgs/msg/Pose | message | message: geometry_msgs/msg/Pose |
| geometry_msgs/msg/Pose2D | message | message: geometry_msgs/msg/Pose2D |
| geometry_msgs/msg/PoseStamped | message | message: geometry_msgs/msg/PoseStamped |
| geometry_msgs/msg/Quaternion | message | message: geometry_msgs/msg/Quaternion |
| geometry_msgs/msg/Twist | message | message: geometry_msgs/msg/Twist |
| geometry_msgs/msg/Vector3 | message | message: geometry_msgs/msg/Vector3 |
| nav_msgs/msg/MapMetaData | message | message: nav_msgs/msg/MapMetaData |
| std_msgs/msg/Header | message | message: std_msgs/msg/Header |
