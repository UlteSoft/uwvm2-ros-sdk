# agibot: ros2_sdk_v0_8_2_main

This source-pinned catalog preserves every original field, service component and action role. Canonical bytes are a bounded SDK transport encoding; the native gateway must independently validate the exact original ROS type and registry. Units and frames follow the original declarations without conversion.


## aimdk_msgs/msg/AgentPropertyIdType

Symbol: `Ros2Aimdk_msgsMsgAgentPropertyIdType`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | - | - |

Original declared constants: `AGENT_PROPERTY_UNDEFINED=0`, `AGENT_PROPERTY_LANGUAGE=1`, `AGENT_PROPERTY_RUN_MODE=2`, `AGENT_PROPERTY_GREET=3`, `AGENT_PROPERTY_HEAD_FOLLOW=4`, `AGENT_PROPERTY_DUPLEX_TIMEOUT=5`, `AGENT_PROPERTY_ENVIRONMENT_SWITCH=6`, `AGENT_PROPERTY_WELCOME_STATUS=7`.

## aimdk_msgs/msg/AgentPropertiesValue

Symbol: `Ros2Aimdk_msgsMsgAgentPropertiesValue`. Complete canonical extent: 5..133 bytes.
Codec identity: `UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| key | aimdk_msgs/msg/AgentPropertyIdType | scalar | - | - |
| value | string | scalar | 128 | - |

## aimdk_msgs/msg/AgentProperties

Symbol: `Ros2Aimdk_msgsMsgAgentProperties`. Complete canonical extent: 4..536 bytes.
Codec identity: `UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| properties | aimdk_msgs/msg/AgentPropertiesValue | sequence | 4 | - |

## aimdk_msgs/msg/AudioVadStateType

Symbol: `Ros2Aimdk_msgsMsgAudioVadStateType`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | - | - |

Original declared constants: `AUDIO_VAD_STATE_NONE=0`, `AUDIO_VAD_STATE_BEGIN=1`, `AUDIO_VAD_STATE_PROCESSING=2`, `AUDIO_VAD_STATE_END=3`.

## builtin_interfaces/msg/Time

Symbol: `Ros2Builtin_interfacesMsgTime`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | - | - |
| nanosec | uint32 | scalar | - | - |

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

## aimdk_msgs/msg/CommonTaskResponse

Symbol: `Ros2Aimdk_msgsMsgCommonTaskResponse`. Complete canonical extent: 28..28 bytes.
Codec identity: `UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/ResponseHeader | scalar | - | - |
| task_id | uint64 | scalar | - | - |
| state | aimdk_msgs/msg/CommonState | scalar | - | - |

## aimdk_msgs/msg/MessageHeader

Symbol: `Ros2Aimdk_msgsMsgMessageHeader`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | - | - |
| frame_id | string | scalar | 128 | - |
| sequence | uint32 | scalar | - | - |
| meas_stamp | builtin_interfaces/msg/Time | scalar | - | - |

## aimdk_msgs/msg/FaceEmojiStatus

Symbol: `Ros2Aimdk_msgsMsgFaceEmojiStatus`. Complete canonical extent: 47..2415 bytes.
Codec identity: `UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7`. Native identity: `requires native metadata admission`.

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

Original declared constants: `STATUS_IDLE=0`, `STATUS_START=1`, `STATUS_RUNNING=2`, `STATUS_FINISHED=3`, `STATUS_STOPPED=4`.

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
Codec identity: `UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | - | - |

Original declared constants: `NONE=0`, `NIMBLE_HANDS=1`, `CLAW=2`, `ERROR=255`.

## aimdk_msgs/msg/HandCommandArray

Symbol: `Ros2Aimdk_msgsMsgHandCommandArray`. Complete canonical extent: 34..1538 bytes.
Codec identity: `UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e`. Native identity: `requires native metadata admission`.

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

## aimdk_msgs/msg/HandStateArray

Symbol: `Ros2Aimdk_msgsMsgHandStateArray`. Complete canonical extent: 34..1474 bytes.
Codec identity: `UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| left_hand_type | aimdk_msgs/msg/HandType | scalar | - | - |
| left_hands | aimdk_msgs/msg/HandState | sequence | 4 | - |
| right_hand_type | aimdk_msgs/msg/HandType | scalar | - | - |
| right_hands | aimdk_msgs/msg/HandState | sequence | 4 | - |

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

Symbol: `Ros2Aimdk_msgsMsgJointState`. Complete canonical extent: 31..159 bytes.
Codec identity: `UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | - |
| position | float64 | scalar | - | - |
| velocity | float64 | scalar | - | - |
| effort | float64 | scalar | - | - |
| coil_temp | uint8 | scalar | - | - |
| motor_temp | uint8 | scalar | - | - |
| motor_vol | uint8 | scalar | - | - |

## aimdk_msgs/msg/JointStateArray

Symbol: `Ros2Aimdk_msgsMsgJointStateArray`. Complete canonical extent: 28..10332 bytes.
Codec identity: `UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
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

## aimdk_msgs/msg/McControlArea

Symbol: `Ros2Aimdk_msgsMsgMcControlArea`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `NONE=0`, `LEFT_HAND=1`, `RIGHT_HAND=2`, `HEAD=4`, `WAIST=8`.

## aimdk_msgs/msg/McInputAction

Symbol: `Ros2Aimdk_msgsMsgMcInputAction`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `INPUTACTION_ADD=1001`, `INPUTACTION_MODIFY=1002`, `INPUTACTION_DELETE=1003`, `INPUTACTION_ENABLE=2001`, `INPUTACTION_DISABLE=2002`.

## aimdk_msgs/msg/McInputSource

Symbol: `Ros2Aimdk_msgsMsgMcInputSource`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | - |
| priority | int32 | scalar | - | - |
| timeout | int32 | scalar | - | - |

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

## aimdk_msgs/msg/TtsPriorityLevel

Symbol: `Ros2Aimdk_msgsMsgTtsPriorityLevel`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | - | - |

Original declared constants: `UNKNOWN=0`, `BACKGROUND_L1=1`, `SERVICE_L2=2`, `MISSION_L4=4`, `INTERACTION_L6=6`, `WARNING_L8=8`, `SAFETY_L10=10`.

## aimdk_msgs/msg/PlayMediaFileRequest

Symbol: `Ros2Aimdk_msgsMsgPlayMediaFileRequest`. Complete canonical extent: 22..406 bytes.
Codec identity: `UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| file_name | string | scalar | 128 | - |
| sample_rate | uint32 | scalar | - | - |
| priority_level | aimdk_msgs/msg/TtsPriorityLevel | scalar | - | - |
| priority_weight | uint32 | scalar | - | - |
| domain | string | scalar | 128 | - |
| trace_id | string | scalar | 128 | - |
| is_interrupted | bool | scalar | - | - |

## aimdk_msgs/msg/PlayTtsRequest

Symbol: `Ros2Aimdk_msgsMsgPlayTtsRequest`. Complete canonical extent: 18..402 bytes.
Codec identity: `UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| text | string | scalar | 128 | - |
| priority_level | aimdk_msgs/msg/TtsPriorityLevel | scalar | - | - |
| priority_weight | uint32 | scalar | - | - |
| domain | string | scalar | 128 | - |
| trace_id | string | scalar | 128 | - |
| is_interrupted | bool | scalar | - | - |

## aimdk_msgs/msg/PlayTtsResponse

Symbol: `Ros2Aimdk_msgsMsgPlayTtsResponse`. Complete canonical extent: 26..538 bytes.
Codec identity: `UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3`. Native identity: `requires native metadata admission`.

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

## aimdk_msgs/msg/PmuState

Symbol: `Ros2Aimdk_msgsMsgPmuState`. Complete canonical extent: 201..1097 bytes.
Codec identity: `UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c`. Native identity: `requires native metadata admission`.

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

## aimdk_msgs/msg/ProcessedAudioOutput

Symbol: `Ros2Aimdk_msgsMsgProcessedAudioOutput`. Complete canonical extent: 33..417 bytes.
Codec identity: `UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| stream_id | uint32 | scalar | - | - |
| audio_vad_state | aimdk_msgs/msg/AudioVadStateType | scalar | - | - |
| audio_data | uint8 | sequence | 256 | - |

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

## aimdk_msgs/srv/GetAllJointState_Request

Symbol: `Ros2Aimdk_msgsSrvGetAllJointState_Request`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |

## aimdk_msgs/srv/GetAllJointState_Response

Symbol: `Ros2Aimdk_msgsSrvGetAllJointState_Response`. Complete canonical extent: 40..2712 bytes.
Codec identity: `UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793`. Native identity: `requires native metadata admission`.

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
Codec identity: `UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| reponse | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| left_hands_type | aimdk_msgs/msg/HandType | scalar | - | - |
| right_hands_type | aimdk_msgs/msg/HandType | scalar | - | - |

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

## aimdk_msgs/srv/LedStripCommand_Request

Symbol: `Ros2Aimdk_msgsSrvLedStripCommand_Request`. Complete canonical extent: 12..12 bytes.
Codec identity: `UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| led_strip_mode | uint8 | scalar | - | - |
| r | uint8 | scalar | - | - |
| g | uint8 | scalar | - | - |
| b | uint8 | scalar | - | - |

Original declared constants: `LED_STRIP_MODE_CONSTANT=0`, `LED_STRIP_MODE_BREATH=1`, `LED_STRIP_MODE_FLASH=2`, `LED_STRIP_MODE_FLOW=3`, `LED_STRIP_MODE_MAX=4`.

## aimdk_msgs/srv/LedStripCommand_Response

Symbol: `Ros2Aimdk_msgsSrvLedStripCommand_Response`. Complete canonical extent: 18..18 bytes.
Codec identity: `UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/ResponseHeader | scalar | - | - |
| status_code | uint16 | scalar | - | - |

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

## aimdk_msgs/srv/PlayMediaFile_Request

Symbol: `Ros2Aimdk_msgsSrvPlayMediaFile_Request`. Complete canonical extent: 30..414 bytes.
Codec identity: `UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| media_file_req | aimdk_msgs/msg/PlayMediaFileRequest | scalar | - | - |

## aimdk_msgs/srv/PlayMediaFile_Response

Symbol: `Ros2Aimdk_msgsSrvPlayMediaFile_Response`. Complete canonical extent: 50..690 bytes.
Codec identity: `UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonResponse | scalar | - | - |
| tts_resp | aimdk_msgs/msg/PlayTtsResponse | scalar | - | - |

## aimdk_msgs/srv/PlayTts_Request

Symbol: `Ros2Aimdk_msgsSrvPlayTts_Request`. Complete canonical extent: 26..410 bytes.
Codec identity: `UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/CommonRequest | scalar | - | - |
| tts_req | aimdk_msgs/msg/PlayTtsRequest | scalar | - | - |

## aimdk_msgs/srv/PlayTts_Response

Symbol: `Ros2Aimdk_msgsSrvPlayTts_Response`. Complete canonical extent: 50..690 bytes.
Codec identity: `UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a`. Native identity: `requires native metadata admission`.

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

## aimdk_msgs/srv/SetAgentPropertiesRequest_Request

Symbol: `Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request`. Complete canonical extent: 12..544 bytes.
Codec identity: `UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec`. Native identity: `requires native metadata admission`.

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

Symbol: `Ros2Aimdk_msgsSrvSetMcAction_Request`. Complete canonical extent: 16..144 bytes.
Codec identity: `UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/RequestHeader | scalar | - | - |
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

Symbol: `Ros2Aimdk_msgsSrvSetMcPresetMotion_Request`. Complete canonical extent: 21..149 bytes.
Codec identity: `UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/RequestHeader | scalar | - | - |
| area | aimdk_msgs/msg/McControlArea | scalar | - | - |
| motion | aimdk_msgs/msg/McPresetMotion | scalar | - | - |
| interrupt | bool | scalar | - | - |
| ani_path | string | scalar | 128 | - |

## aimdk_msgs/srv/SetMcPresetMotion_Response

Symbol: `Ros2Aimdk_msgsSrvSetMcPresetMotion_Response`. Complete canonical extent: 28..28 bytes.
Codec identity: `UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| response | aimdk_msgs/msg/CommonTaskResponse | scalar | - | - |

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

## Interfaces

| Interface | Kind | Complete components |
| --- | --- | --- |
| aimdk_msgs/msg/AgentProperties | message | message: aimdk_msgs/msg/AgentProperties |
| aimdk_msgs/msg/AgentPropertiesValue | message | message: aimdk_msgs/msg/AgentPropertiesValue |
| aimdk_msgs/msg/AgentPropertyIdType | message | message: aimdk_msgs/msg/AgentPropertyIdType |
| aimdk_msgs/msg/AudioVadStateType | message | message: aimdk_msgs/msg/AudioVadStateType |
| aimdk_msgs/msg/CommonRequest | message | message: aimdk_msgs/msg/CommonRequest |
| aimdk_msgs/msg/CommonResponse | message | message: aimdk_msgs/msg/CommonResponse |
| aimdk_msgs/msg/CommonState | message | message: aimdk_msgs/msg/CommonState |
| aimdk_msgs/msg/CommonTaskResponse | message | message: aimdk_msgs/msg/CommonTaskResponse |
| aimdk_msgs/msg/FaceEmojiStatus | message | message: aimdk_msgs/msg/FaceEmojiStatus |
| aimdk_msgs/msg/HandCommand | message | message: aimdk_msgs/msg/HandCommand |
| aimdk_msgs/msg/HandCommandArray | message | message: aimdk_msgs/msg/HandCommandArray |
| aimdk_msgs/msg/HandState | message | message: aimdk_msgs/msg/HandState |
| aimdk_msgs/msg/HandStateArray | message | message: aimdk_msgs/msg/HandStateArray |
| aimdk_msgs/msg/HandType | message | message: aimdk_msgs/msg/HandType |
| aimdk_msgs/msg/JointCommand | message | message: aimdk_msgs/msg/JointCommand |
| aimdk_msgs/msg/JointCommandArray | message | message: aimdk_msgs/msg/JointCommandArray |
| aimdk_msgs/msg/JointState | message | message: aimdk_msgs/msg/JointState |
| aimdk_msgs/msg/JointStateArray | message | message: aimdk_msgs/msg/JointStateArray |
| aimdk_msgs/msg/McAction | message | message: aimdk_msgs/msg/McAction |
| aimdk_msgs/msg/McActionCommand | message | message: aimdk_msgs/msg/McActionCommand |
| aimdk_msgs/msg/McActionInfo | message | message: aimdk_msgs/msg/McActionInfo |
| aimdk_msgs/msg/McActionStatus | message | message: aimdk_msgs/msg/McActionStatus |
| aimdk_msgs/msg/McControlArea | message | message: aimdk_msgs/msg/McControlArea |
| aimdk_msgs/msg/McInputAction | message | message: aimdk_msgs/msg/McInputAction |
| aimdk_msgs/msg/McInputSource | message | message: aimdk_msgs/msg/McInputSource |
| aimdk_msgs/msg/McLocomotionVelocity | message | message: aimdk_msgs/msg/McLocomotionVelocity |
| aimdk_msgs/msg/McPresetMotion | message | message: aimdk_msgs/msg/McPresetMotion |
| aimdk_msgs/msg/MessageHeader | message | message: aimdk_msgs/msg/MessageHeader |
| aimdk_msgs/msg/PlayMediaFileRequest | message | message: aimdk_msgs/msg/PlayMediaFileRequest |
| aimdk_msgs/msg/PlayTtsRequest | message | message: aimdk_msgs/msg/PlayTtsRequest |
| aimdk_msgs/msg/PlayTtsResponse | message | message: aimdk_msgs/msg/PlayTtsResponse |
| aimdk_msgs/msg/PmuState | message | message: aimdk_msgs/msg/PmuState |
| aimdk_msgs/msg/ProcessedAudioOutput | message | message: aimdk_msgs/msg/ProcessedAudioOutput |
| aimdk_msgs/msg/RequestHeader | message | message: aimdk_msgs/msg/RequestHeader |
| aimdk_msgs/msg/ResponseHeader | message | message: aimdk_msgs/msg/ResponseHeader |
| aimdk_msgs/msg/TouchState | message | message: aimdk_msgs/msg/TouchState |
| aimdk_msgs/msg/TtsPriorityLevel | message | message: aimdk_msgs/msg/TtsPriorityLevel |
| aimdk_msgs/srv/GetAllJointState | service | request: aimdk_msgs/srv/GetAllJointState_Request, response: aimdk_msgs/srv/GetAllJointState_Response |
| aimdk_msgs/srv/GetCurrentInputSource | service | request: aimdk_msgs/srv/GetCurrentInputSource_Request, response: aimdk_msgs/srv/GetCurrentInputSource_Response |
| aimdk_msgs/srv/GetHandType | service | request: aimdk_msgs/srv/GetHandType_Request, response: aimdk_msgs/srv/GetHandType_Response |
| aimdk_msgs/srv/GetMcAction | service | request: aimdk_msgs/srv/GetMcAction_Request, response: aimdk_msgs/srv/GetMcAction_Response |
| aimdk_msgs/srv/GetMute | service | request: aimdk_msgs/srv/GetMute_Request, response: aimdk_msgs/srv/GetMute_Response |
| aimdk_msgs/srv/GetVolume | service | request: aimdk_msgs/srv/GetVolume_Request, response: aimdk_msgs/srv/GetVolume_Response |
| aimdk_msgs/srv/LedStripCommand | service | request: aimdk_msgs/srv/LedStripCommand_Request, response: aimdk_msgs/srv/LedStripCommand_Response |
| aimdk_msgs/srv/PlayEmoji | service | request: aimdk_msgs/srv/PlayEmoji_Request, response: aimdk_msgs/srv/PlayEmoji_Response |
| aimdk_msgs/srv/PlayMediaFile | service | request: aimdk_msgs/srv/PlayMediaFile_Request, response: aimdk_msgs/srv/PlayMediaFile_Response |
| aimdk_msgs/srv/PlayTts | service | request: aimdk_msgs/srv/PlayTts_Request, response: aimdk_msgs/srv/PlayTts_Response |
| aimdk_msgs/srv/PlayVideo | service | request: aimdk_msgs/srv/PlayVideo_Request, response: aimdk_msgs/srv/PlayVideo_Response |
| aimdk_msgs/srv/SetAgentPropertiesRequest | service | request: aimdk_msgs/srv/SetAgentPropertiesRequest_Request, response: aimdk_msgs/srv/SetAgentPropertiesRequest_Response |
| aimdk_msgs/srv/SetMcAction | service | request: aimdk_msgs/srv/SetMcAction_Request, response: aimdk_msgs/srv/SetMcAction_Response |
| aimdk_msgs/srv/SetMcInputSource | service | request: aimdk_msgs/srv/SetMcInputSource_Request, response: aimdk_msgs/srv/SetMcInputSource_Response |
| aimdk_msgs/srv/SetMcPresetMotion | service | request: aimdk_msgs/srv/SetMcPresetMotion_Request, response: aimdk_msgs/srv/SetMcPresetMotion_Response |
| aimdk_msgs/srv/SetMute | service | request: aimdk_msgs/srv/SetMute_Request, response: aimdk_msgs/srv/SetMute_Response |
| aimdk_msgs/srv/SetVolume | service | request: aimdk_msgs/srv/SetVolume_Request, response: aimdk_msgs/srv/SetVolume_Response |
| builtin_interfaces/msg/Time | message | message: builtin_interfaces/msg/Time |
