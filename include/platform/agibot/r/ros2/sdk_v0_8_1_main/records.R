# @file records.R
# @brief All 72 complete original ROS 2 vendor values.
# @details The module exposes only an ordinary owned namespace list.
UwvmAgibotRos2SdkV081Main <- local({
    schemas <- list(
        list(
            `symbol` = "Ros2Aimdk_msgsMsgAgentPropertyIdType",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b",
            `minimum` = 1,
            `maximum` = 1,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/AgentPropertyIdType",
            `constants` = list(
                `AGENT_PROPERTY_UNDEFINED` = 0,
                `AGENT_PROPERTY_LANGUAGE` = 1,
                `AGENT_PROPERTY_RUN_MODE` = 2,
                `AGENT_PROPERTY_GREET` = 3,
                `AGENT_PROPERTY_HEAD_FOLLOW` = 4,
                `AGENT_PROPERTY_DUPLEX_TIMEOUT` = 5,
                `AGENT_PROPERTY_ENVIRONMENT_SWITCH` = 6,
                `AGENT_PROPERTY_WELCOME_STATUS` = 7
            ),
            `fields` = list(
                list(
                    `name` = "value",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgAgentPropertiesValue",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a",
            `minimum` = 5,
            `maximum` = 133,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/AgentPropertiesValue",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "key",
                    `type` = "Ros2Aimdk_msgsMsgAgentPropertyIdType",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "value",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgAgentProperties",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f",
            `minimum` = 4,
            `maximum` = 536,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/AgentProperties",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "properties",
                    `type` = "Ros2Aimdk_msgsMsgAgentPropertiesValue",
                    `array` = "sequence",
                    `count` = 4,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 5
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgAudioVadStateType",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526",
            `minimum` = 1,
            `maximum` = 1,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/AudioVadStateType",
            `constants` = list(
                `AUDIO_VAD_STATE_NONE` = 0,
                `AUDIO_VAD_STATE_BEGIN` = 1,
                `AUDIO_VAD_STATE_PROCESSING` = 2,
                `AUDIO_VAD_STATE_END` = 3
            ),
            `fields` = list(
                list(
                    `name` = "value",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Builtin_interfacesMsgTime",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "normalized-time",
            `ros_version` = 2,
            `native_type` = "builtin_interfaces/msg/Time",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sec",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "nanosec",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgRequestHeader",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/RequestHeader",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "stamp",
                    `type` = "Ros2Builtin_interfacesMsgTime",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgCommonRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/CommonRequest",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgRequestHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgResponseHeader",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90",
            `minimum` = 16,
            `maximum` = 16,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/ResponseHeader",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "stamp",
                    `type` = "Ros2Builtin_interfacesMsgTime",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "code",
                    `type` = "int64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgCommonState",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e",
            `minimum` = 4,
            `maximum` = 4,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/CommonState",
            `constants` = list(
                `UNKNOWN` = 0,
                `SUCCESS` = 1,
                `FAILURE` = 2,
                `ABORTED` = 3,
                `TIMEOUT` = 4,
                `INVALID` = 5,
                `IN_MANUAL` = 6,
                `NOT_READY` = 100,
                `PENDING` = 200,
                `CREATED` = 300,
                `RUNNING` = 400
            ),
            `fields` = list(
                list(
                    `name` = "value",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgCommonResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6",
            `minimum` = 24,
            `maximum` = 152,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/CommonResponse",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgResponseHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 16
                ),
                list(
                    `name` = "status",
                    `type` = "Ros2Aimdk_msgsMsgCommonState",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "message",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgCommonTaskResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2",
            `minimum` = 28,
            `maximum` = 28,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/CommonTaskResponse",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgResponseHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 16
                ),
                list(
                    `name` = "task_id",
                    `type` = "uint64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "state",
                    `type` = "Ros2Aimdk_msgsMsgCommonState",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgMessageHeader",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496",
            `minimum` = 24,
            `maximum` = 152,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/MessageHeader",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "stamp",
                    `type` = "Ros2Builtin_interfacesMsgTime",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "frame_id",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "sequence",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "meas_stamp",
                    `type` = "Ros2Builtin_interfacesMsgTime",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgFaceEmojiStatus",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7",
            `minimum` = 47,
            `maximum` = 2415,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/FaceEmojiStatus",
            `constants` = list(
                `STATUS_IDLE` = 0,
                `STATUS_START` = 1,
                `STATUS_RUNNING` = 2,
                `STATUS_FINISHED` = 3,
                `STATUS_STOPPED` = 4
            ),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgMessageHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "e_path",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "e_path_list",
                    `type` = "string",
                    `array` = "sequence",
                    `count` = 16,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "e_id",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "mode",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "priority",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "status",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "time_to_end_ms",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgHandCommand",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8",
            `minimum` = 44,
            `maximum` = 172,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/HandCommand",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "name",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "position",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "velocity",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "acceleration",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "deceleration",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "effort",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgHandType",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6",
            `minimum` = 1,
            `maximum` = 1,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/HandType",
            `constants` = list(
                `NONE` = 0,
                `NIMBLE_HANDS` = 1,
                `CLAW` = 2,
                `ERROR` = 255
            ),
            `fields` = list(
                list(
                    `name` = "value",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgHandCommandArray",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e",
            `minimum` = 34,
            `maximum` = 1538,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/HandCommandArray",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgMessageHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "left_hand_type",
                    `type` = "Ros2Aimdk_msgsMsgHandType",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "left_hands",
                    `type` = "Ros2Aimdk_msgsMsgHandCommand",
                    `array` = "sequence",
                    `count` = 4,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 44
                ),
                list(
                    `name` = "right_hand_type",
                    `type` = "Ros2Aimdk_msgsMsgHandType",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "right_hands",
                    `type` = "Ros2Aimdk_msgsMsgHandCommand",
                    `array` = "sequence",
                    `count` = 4,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 44
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgHandState",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c",
            `minimum` = 36,
            `maximum` = 164,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/HandState",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "name",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "position",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "velocity",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "effort",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "state",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "faultcode",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgHandStateArray",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d",
            `minimum` = 34,
            `maximum` = 1474,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/HandStateArray",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgMessageHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "left_hand_type",
                    `type` = "Ros2Aimdk_msgsMsgHandType",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "left_hands",
                    `type` = "Ros2Aimdk_msgsMsgHandState",
                    `array` = "sequence",
                    `count` = 4,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 36
                ),
                list(
                    `name` = "right_hand_type",
                    `type` = "Ros2Aimdk_msgsMsgHandType",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "right_hands",
                    `type` = "Ros2Aimdk_msgsMsgHandState",
                    `array` = "sequence",
                    `count` = 4,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 36
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgJointCommand",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f",
            `minimum` = 44,
            `maximum` = 172,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/JointCommand",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "name",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "position",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "velocity",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "effort",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "stiffness",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "damping",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgJointCommandArray",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6",
            `minimum` = 28,
            `maximum` = 11164,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/JointCommandArray",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgMessageHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "joints",
                    `type` = "Ros2Aimdk_msgsMsgJointCommand",
                    `array` = "sequence",
                    `count` = 64,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 44
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgJointState",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f",
            `minimum` = 31,
            `maximum` = 159,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/JointState",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "name",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "position",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "velocity",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "effort",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "coil_temp",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "motor_temp",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "motor_vol",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgJointStateArray",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa",
            `minimum` = 28,
            `maximum` = 10332,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/JointStateArray",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgMessageHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "joints",
                    `type` = "Ros2Aimdk_msgsMsgJointState",
                    `array` = "sequence",
                    `count` = 64,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 31
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgMcAction",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b",
            `minimum` = 4,
            `maximum` = 4,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/McAction",
            `constants` = list(
                `PASSIVE_DEFAULT` = 1,
                `SOFT_EMERGENCY_STOP` = 2,
                `DAMPING_DEFAULT` = 3,
                `ZERO_TORQUE_DEFAULT` = 4,
                `JOINT_DEFAULT` = 100,
                `JOINT_FREEZE` = 101,
                `STAND_DEFAULT` = 200,
                `STAND_BODY_CONTROL` = 201,
                `LOCOMOTION_DEFAULT` = 300,
                `RUN_DEFAULT` = 301,
                `LOCOMOTION_STEP` = 302,
                `VR_REMOTE_CONTROLLER` = 400,
                `SIT_DOWN_DEFAULT` = 2000,
                `CROUCH_DOWN_DEFAULT` = 2002,
                `LIE_DOWN_DEFAULT` = 2004,
                `STAND_UP_DEFAULT` = 2005,
                `ASCEND_STAIRS` = 2006,
                `DESCEND_STAIRS` = 2008
            ),
            `fields` = list(
                list(
                    `name` = "value",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgMcActionCommand",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/McActionCommand",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "action",
                    `type` = "Ros2Aimdk_msgsMsgMcAction",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "action_desc",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgMcActionStatus",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48",
            `minimum` = 4,
            `maximum` = 4,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/McActionStatus",
            `constants` = list(
                `IDLE` = 0,
                `RUNNING` = 100,
                `TRANSITION` = 200
            ),
            `fields` = list(
                list(
                    `name` = "value",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgMcActionInfo",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/McActionInfo",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "current_action",
                    `type` = "Ros2Aimdk_msgsMsgMcAction",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "action_desc",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "status",
                    `type` = "Ros2Aimdk_msgsMsgMcActionStatus",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgMcControlArea",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9",
            `minimum` = 4,
            `maximum` = 4,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/McControlArea",
            `constants` = list(
                `NONE` = 0,
                `LEFT_HAND` = 1,
                `RIGHT_HAND` = 2,
                `HEAD` = 4,
                `WAIST` = 8
            ),
            `fields` = list(
                list(
                    `name` = "value",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgMcInputAction",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9",
            `minimum` = 4,
            `maximum` = 4,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/McInputAction",
            `constants` = list(
                `INPUTACTION_ADD` = 1001,
                `INPUTACTION_MODIFY` = 1002,
                `INPUTACTION_DELETE` = 1003,
                `INPUTACTION_ENABLE` = 2001,
                `INPUTACTION_DISABLE` = 2002
            ),
            `fields` = list(
                list(
                    `name` = "value",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgMcInputSource",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/McInputSource",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "name",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "priority",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "timeout",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgMcLocomotionVelocity",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00",
            `minimum` = 52,
            `maximum` = 308,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/McLocomotionVelocity",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgMessageHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "source",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "forward_velocity",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "lateral_velocity",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "angular_velocity",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgMcPresetMotion",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153",
            `minimum` = 4,
            `maximum` = 4,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/McPresetMotion",
            `constants` = list(
                `RAISE_HAND` = 1001,
                `WAVE_HAND` = 1002,
                `SHAKE_HAND` = 1003,
                `FLYING_KISS_HAND` = 1004,
                `CLAP_HAND` = 1008,
                `TURN_WAVE_HAND` = 2001,
                `INTERACTION_BOW` = 3001,
                `INTERACTION_LIKE` = 3002,
                `INTERACTION_YE` = 3003,
                `INTERACTION_SWEATHEART` = 3004,
                `SALUTE` = 1013,
                `INTERACTION_SAD` = 3006,
                `INTERACTION_LIGHTWAVE` = 3007,
                `INTERACTION_HUG` = 3008,
                `INTERACTION_HANDX` = 3009,
                `INTERACTION_CHESTWAVE` = 3010,
                `INTERACTION_CHEER` = 3011,
                `INTERACTION_BLOWKISS` = 3012,
                `INTERACTION_BASSDANCE1` = 3013,
                `INTERACTION_BASSDANCE2` = 3014,
                `HITCLAP` = 3015,
                `INTERACTION_SPEAK` = 3016,
                `CLIPFIST` = 1009,
                `INTERACTION_PHOTOPOSTURE` = 3018,
                `INTERACTION_PHOTOTRIPPLEPOSTURE` = 3019,
                `POINT_HEAD` = 4001,
                `SHAKE_HEAD` = 4002
            ),
            `fields` = list(
                list(
                    `name` = "value",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgTtsPriorityLevel",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a",
            `minimum` = 1,
            `maximum` = 1,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/TtsPriorityLevel",
            `constants` = list(
                `UNKNOWN` = 0,
                `BACKGROUND_L1` = 1,
                `SERVICE_L2` = 2,
                `MISSION_L4` = 4,
                `INTERACTION_L6` = 6,
                `WARNING_L8` = 8,
                `SAFETY_L10` = 10
            ),
            `fields` = list(
                list(
                    `name` = "value",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgPlayMediaFileRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254",
            `minimum` = 22,
            `maximum` = 406,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/PlayMediaFileRequest",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "file_name",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "sample_rate",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "priority_level",
                    `type` = "Ros2Aimdk_msgsMsgTtsPriorityLevel",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "priority_weight",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "domain",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "trace_id",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "is_interrupted",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgPlayTtsRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd",
            `minimum` = 18,
            `maximum` = 402,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/PlayTtsRequest",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "text",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "priority_level",
                    `type` = "Ros2Aimdk_msgsMsgTtsPriorityLevel",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "priority_weight",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "domain",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "trace_id",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "is_interrupted",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgPlayTtsResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3",
            `minimum` = 26,
            `maximum` = 538,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/PlayTtsResponse",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "text",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "priority_level",
                    `type` = "Ros2Aimdk_msgsMsgTtsPriorityLevel",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "priority_weight",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "domain",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "trace_id",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "is_success",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "error_message",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "estimated_duration",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgPmuState",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c",
            `minimum` = 201,
            `maximum` = 1097,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/PmuState",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "pmu_software_version",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "pmu_hardware_version",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "pmu_protocol_version",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "pmu_bool_status",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "head_power_current",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "output_48v_current",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "rk3588_current",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "output_12v_current",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "bus_48v_current",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "orin_current",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "bus_48v_pmos_voltage",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "battery_voltage",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "fan_voltage",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "output_12v_voltage",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "output_48v_voltage",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "bus_48v_voltage",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "head_power_voltage",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "orin_voltage",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "rk3588_voltage",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "bms_manufacturer",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "bms_serial_number",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "bms_hardware_version",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "bms_software_version",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "bms_status_bits",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "battery_balance_line_resistance",
                    `type` = "uint16",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 2
                ),
                list(
                    `name` = "battery_pack_voltage",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "battery_current",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "battery_output_power",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "battery_temperature",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "battery_remaining_capacity",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "battery_remaining_capacity_percentage",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "battery_cycle_count",
                    `type` = "uint16",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 2
                ),
                list(
                    `name` = "battery_cycle_total_capacity",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgProcessedAudioOutput",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30",
            `minimum` = 33,
            `maximum` = 417,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/ProcessedAudioOutput",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgMessageHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "stream_id",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "audio_vad_state",
                    `type` = "Ros2Aimdk_msgsMsgAudioVadStateType",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "audio_data",
                    `type` = "uint8",
                    `array` = "sequence",
                    `count` = 256,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgTouchState",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564",
            `minimum` = 97,
            `maximum` = 225,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/TouchState",
            `constants` = list(
                `UNKNOWN` = 0,
                `IDLE` = 1,
                `TOUCH` = 2,
                `SLIDE` = 3,
                `PAT_ONCE` = 4,
                `PAT_TWICE` = 5,
                `PAT_TRIPLE` = 6
            ),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgMessageHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "event_type",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "data",
                    `type` = "uint32",
                    `array` = "array",
                    `count` = 8,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "threshold",
                    `type` = "uint32",
                    `array` = "array",
                    `count` = 8,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "is_touched",
                    `type` = "bool",
                    `array` = "array",
                    `count` = 8,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvGetAllJointState_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/GetAllJointState_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "request",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvGetAllJointState_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793",
            `minimum` = 40,
            `maximum` = 2712,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/GetAllJointState_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "reponse",
                    `type` = "Ros2Aimdk_msgsMsgCommonResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "head_joints",
                    `type` = "Ros2Aimdk_msgsMsgJointState",
                    `array` = "sequence",
                    `count` = 4,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 31
                ),
                list(
                    `name` = "arm_joints",
                    `type` = "Ros2Aimdk_msgsMsgJointState",
                    `array` = "sequence",
                    `count` = 4,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 31
                ),
                list(
                    `name` = "waist_joints",
                    `type` = "Ros2Aimdk_msgsMsgJointState",
                    `array` = "sequence",
                    `count` = 4,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 31
                ),
                list(
                    `name` = "leg_joints",
                    `type` = "Ros2Aimdk_msgsMsgJointState",
                    `array` = "sequence",
                    `count` = 4,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 31
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvGetCurrentInputSource_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/GetCurrentInputSource_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "request",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvGetCurrentInputSource_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e",
            `minimum` = 40,
            `maximum` = 168,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/GetCurrentInputSource_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "response",
                    `type` = "Ros2Aimdk_msgsMsgCommonTaskResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 28
                ),
                list(
                    `name` = "input_source",
                    `type` = "Ros2Aimdk_msgsMsgMcInputSource",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 12
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvGetHandType_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/GetHandType_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "request",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvGetHandType_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c",
            `minimum` = 26,
            `maximum` = 154,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/GetHandType_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "reponse",
                    `type` = "Ros2Aimdk_msgsMsgCommonResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "left_hands_type",
                    `type` = "Ros2Aimdk_msgsMsgHandType",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "right_hands_type",
                    `type` = "Ros2Aimdk_msgsMsgHandType",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvGetMcAction_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/GetMcAction_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "request",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvGetMcAction_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f",
            `minimum` = 28,
            `maximum` = 156,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/GetMcAction_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgResponseHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 16
                ),
                list(
                    `name` = "info",
                    `type` = "Ros2Aimdk_msgsMsgMcActionInfo",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 12
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvGetMute_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/GetMute_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "request",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvGetMute_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42",
            `minimum` = 25,
            `maximum` = 153,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/GetMute_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "reponse",
                    `type` = "Ros2Aimdk_msgsMsgCommonResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "is_mute",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvGetVolume_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/GetVolume_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "request",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvGetVolume_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266",
            `minimum` = 28,
            `maximum` = 156,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/GetVolume_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "reponse",
                    `type` = "Ros2Aimdk_msgsMsgCommonResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "audio_volume",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvLedStripCommand_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6",
            `minimum` = 12,
            `maximum` = 12,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/LedStripCommand_Request",
            `constants` = list(
                `LED_STRIP_MODE_CONSTANT` = 0,
                `LED_STRIP_MODE_BREATH` = 1,
                `LED_STRIP_MODE_FLASH` = 2,
                `LED_STRIP_MODE_FLOW` = 3,
                `LED_STRIP_MODE_MAX` = 4
            ),
            `fields` = list(
                list(
                    `name` = "request",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "led_strip_mode",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "r",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "g",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "b",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvLedStripCommand_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9",
            `minimum` = 18,
            `maximum` = 18,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/LedStripCommand_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgResponseHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 16
                ),
                list(
                    `name` = "status_code",
                    `type` = "uint16",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 2
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvPlayEmoji_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43",
            `minimum` = 14,
            `maximum` = 14,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/PlayEmoji_Request",
            `constants` = list(
                `EMOTION_UNKNOWN` = 0,
                `EMOTION_IDLE_BLINK` = 1,
                `EMOTION_IDLE_CALM_1` = 10,
                `EMOTION_IDLE_CALM_2` = 11,
                `EMOTION_IDLE_GAME` = 20,
                `EMOTION_IDLE_CUTE_1` = 30,
                `EMOTION_IDLE_CUTE_2` = 31,
                `EMOTION_IDLE_CUTE_3` = 32,
                `EMOTION_IDLE_CUTE_4` = 33,
                `EMOTION_EYE_CLOSE` = 40,
                `EMOTION_EYE_OPEN` = 50,
                `EMOTION_EYE_BORING_1` = 60,
                `EMOTION_EYE_ABNORMAL` = 70,
                `EMOTION_EYE_SLEEPY` = 80,
                `EMOTION_EYE_HAPPY` = 90,
                `EMOTION_EYE_EXTREMEHAPPY_1` = 100,
                `EMOTION_EYE_EXTREMEHAPPY_2` = 101,
                `EMOTION_EYE_SAD` = 110,
                `EMOTION_EYE_SYMPATHY` = 120,
                `EMOTION_EYE_CONFUSE` = 130,
                `EMOTION_EYE_SHOCK` = 140,
                `EMOTION_EYE_ACTCUTE` = 150,
                `EMOTION_EYE_SERIOUS` = 160,
                `EMOTION_EYE_THINKING` = 170,
                `EMOTION_EYE_ANGRY` = 180,
                `EMOTION_EYE_EXTREMEANGRY` = 190,
                `EMOTION_EYE_ADORE` = 200,
                `EMOTION_EYE_EXTREMEADORE` = 210,
                `EMOTION_EYE_CHARGE` = 220,
                `EMOTION_MODE_ONCE` = 1,
                `EMOTION_MODE_LOOP` = 2
            ),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "emotion_id",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "mode",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "priority",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvPlayEmoji_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9",
            `minimum` = 29,
            `maximum` = 285,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/PlayEmoji_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgCommonResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "success",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "message",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvPlayMediaFile_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c",
            `minimum` = 30,
            `maximum` = 414,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/PlayMediaFile_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "media_file_req",
                    `type` = "Ros2Aimdk_msgsMsgPlayMediaFileRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 22
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvPlayMediaFile_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099",
            `minimum` = 50,
            `maximum` = 690,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/PlayMediaFile_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgCommonResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "tts_resp",
                    `type` = "Ros2Aimdk_msgsMsgPlayTtsResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 26
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvPlayTts_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7",
            `minimum` = 26,
            `maximum` = 410,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/PlayTts_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "tts_req",
                    `type` = "Ros2Aimdk_msgsMsgPlayTtsRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 18
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvPlayTts_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a",
            `minimum` = 50,
            `maximum` = 690,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/PlayTts_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgCommonResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "tts_resp",
                    `type` = "Ros2Aimdk_msgsMsgPlayTtsResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 26
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvPlayVideo_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878",
            `minimum` = 17,
            `maximum` = 145,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/PlayVideo_Request",
            `constants` = list(
                `EMOTION_MODE_ONCE` = 1,
                `EMOTION_MODE_LOOP` = 2
            ),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "video_path",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "mode",
                    `type` = "uint8",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "priority",
                    `type` = "int32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvPlayVideo_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627",
            `minimum` = 29,
            `maximum` = 285,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/PlayVideo_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgCommonResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "success",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "message",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec",
            `minimum` = 12,
            `maximum` = 544,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/SetAgentPropertiesRequest_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "contents",
                    `type` = "Ros2Aimdk_msgsMsgAgentProperties",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b",
            `minimum` = 24,
            `maximum` = 152,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/SetAgentPropertiesRequest_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgCommonResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvSetMcAction_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5",
            `minimum` = 16,
            `maximum` = 144,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/SetMcAction_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgRequestHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "command",
                    `type` = "Ros2Aimdk_msgsMsgMcActionCommand",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvSetMcAction_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f",
            `minimum` = 24,
            `maximum` = 152,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/SetMcAction_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "response",
                    `type` = "Ros2Aimdk_msgsMsgCommonResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvSetMcInputSource_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021",
            `minimum` = 24,
            `maximum` = 152,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/SetMcInputSource_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "request",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "action",
                    `type` = "Ros2Aimdk_msgsMsgMcInputAction",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "input_source",
                    `type` = "Ros2Aimdk_msgsMsgMcInputSource",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 12
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvSetMcInputSource_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb",
            `minimum` = 28,
            `maximum` = 28,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/SetMcInputSource_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "response",
                    `type` = "Ros2Aimdk_msgsMsgCommonTaskResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 28
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvSetMcPresetMotion_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea",
            `minimum` = 21,
            `maximum` = 149,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/SetMcPresetMotion_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Aimdk_msgsMsgRequestHeader",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "area",
                    `type` = "Ros2Aimdk_msgsMsgMcControlArea",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "motion",
                    `type` = "Ros2Aimdk_msgsMsgMcPresetMotion",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                ),
                list(
                    `name` = "interrupt",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                ),
                list(
                    `name` = "ani_path",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 128,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvSetMcPresetMotion_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85",
            `minimum` = 28,
            `maximum` = 28,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/SetMcPresetMotion_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "response",
                    `type` = "Ros2Aimdk_msgsMsgCommonTaskResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 28
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvSetMute_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3",
            `minimum` = 9,
            `maximum` = 9,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/SetMute_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "request",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "is_mute",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvSetMute_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50",
            `minimum` = 25,
            `maximum` = 153,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/SetMute_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "reponse",
                    `type` = "Ros2Aimdk_msgsMsgCommonResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "is_mute",
                    `type` = "bool",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 1
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvSetVolume_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad",
            `minimum` = 12,
            `maximum` = 12,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/SetVolume_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "request",
                    `type` = "Ros2Aimdk_msgsMsgCommonRequest",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8
                ),
                list(
                    `name` = "audio_volume",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsSrvSetVolume_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e",
            `minimum` = 28,
            `maximum` = 156,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/srv/SetVolume_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "reponse",
                    `type` = "Ros2Aimdk_msgsMsgCommonResponse",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 24
                ),
                list(
                    `name` = "audio_volume",
                    `type` = "uint32",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 4
                )
            )
        )
    )
    list(records = UwvmRos$records(schemas), interfaces = list(
        `aimdk_msgs/msg/AgentProperties` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgAgentProperties"
            )
        ),
        `aimdk_msgs/msg/AgentPropertiesValue` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgAgentPropertiesValue"
            )
        ),
        `aimdk_msgs/msg/AgentPropertyIdType` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgAgentPropertyIdType"
            )
        ),
        `aimdk_msgs/msg/AudioVadStateType` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgAudioVadStateType"
            )
        ),
        `aimdk_msgs/msg/CommonRequest` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgCommonRequest"
            )
        ),
        `aimdk_msgs/msg/CommonResponse` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgCommonResponse"
            )
        ),
        `aimdk_msgs/msg/CommonState` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgCommonState"
            )
        ),
        `aimdk_msgs/msg/CommonTaskResponse` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgCommonTaskResponse"
            )
        ),
        `aimdk_msgs/msg/FaceEmojiStatus` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgFaceEmojiStatus"
            )
        ),
        `aimdk_msgs/msg/HandCommand` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgHandCommand"
            )
        ),
        `aimdk_msgs/msg/HandCommandArray` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgHandCommandArray"
            )
        ),
        `aimdk_msgs/msg/HandState` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgHandState"
            )
        ),
        `aimdk_msgs/msg/HandStateArray` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgHandStateArray"
            )
        ),
        `aimdk_msgs/msg/HandType` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgHandType"
            )
        ),
        `aimdk_msgs/msg/JointCommand` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgJointCommand"
            )
        ),
        `aimdk_msgs/msg/JointCommandArray` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgJointCommandArray"
            )
        ),
        `aimdk_msgs/msg/JointState` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgJointState"
            )
        ),
        `aimdk_msgs/msg/JointStateArray` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgJointStateArray"
            )
        ),
        `aimdk_msgs/msg/McAction` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgMcAction"
            )
        ),
        `aimdk_msgs/msg/McActionCommand` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgMcActionCommand"
            )
        ),
        `aimdk_msgs/msg/McActionInfo` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgMcActionInfo"
            )
        ),
        `aimdk_msgs/msg/McActionStatus` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgMcActionStatus"
            )
        ),
        `aimdk_msgs/msg/McControlArea` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgMcControlArea"
            )
        ),
        `aimdk_msgs/msg/McInputAction` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgMcInputAction"
            )
        ),
        `aimdk_msgs/msg/McInputSource` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgMcInputSource"
            )
        ),
        `aimdk_msgs/msg/McLocomotionVelocity` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgMcLocomotionVelocity"
            )
        ),
        `aimdk_msgs/msg/McPresetMotion` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgMcPresetMotion"
            )
        ),
        `aimdk_msgs/msg/MessageHeader` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgMessageHeader"
            )
        ),
        `aimdk_msgs/msg/PlayMediaFileRequest` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgPlayMediaFileRequest"
            )
        ),
        `aimdk_msgs/msg/PlayTtsRequest` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgPlayTtsRequest"
            )
        ),
        `aimdk_msgs/msg/PlayTtsResponse` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgPlayTtsResponse"
            )
        ),
        `aimdk_msgs/msg/PmuState` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgPmuState"
            )
        ),
        `aimdk_msgs/msg/ProcessedAudioOutput` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgProcessedAudioOutput"
            )
        ),
        `aimdk_msgs/msg/RequestHeader` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgRequestHeader"
            )
        ),
        `aimdk_msgs/msg/ResponseHeader` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgResponseHeader"
            )
        ),
        `aimdk_msgs/msg/TouchState` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgTouchState"
            )
        ),
        `aimdk_msgs/msg/TtsPriorityLevel` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgTtsPriorityLevel"
            )
        ),
        `aimdk_msgs/srv/GetAllJointState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_279bd0608c0af834808b7f867ba30099a1d30b95cefbbb02b54b6f5e8a83ba8a",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvGetAllJointState_Request",
                `response` = "Ros2Aimdk_msgsSrvGetAllJointState_Response"
            )
        ),
        `aimdk_msgs/srv/GetCurrentInputSource` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8182a9c156b777821b4cde19692040de0cf2cca8ac05be57ed0738c921023539",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvGetCurrentInputSource_Request",
                `response` = "Ros2Aimdk_msgsSrvGetCurrentInputSource_Response"
            )
        ),
        `aimdk_msgs/srv/GetHandType` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7b1cc4858c777e502776f0349a8bae26361d02bfbc7c5890a6d40f682af9b4e7",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvGetHandType_Request",
                `response` = "Ros2Aimdk_msgsSrvGetHandType_Response"
            )
        ),
        `aimdk_msgs/srv/GetMcAction` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a95b95476db13d3d218d20b48025bd6bee4a0b1e77c019f20edf589b804a96cc",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvGetMcAction_Request",
                `response` = "Ros2Aimdk_msgsSrvGetMcAction_Response"
            )
        ),
        `aimdk_msgs/srv/GetMute` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8f6bb870876a102805f90896a06f238f053e6dba7712e7a1140e8a8d39baf192",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvGetMute_Request",
                `response` = "Ros2Aimdk_msgsSrvGetMute_Response"
            )
        ),
        `aimdk_msgs/srv/GetVolume` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d6e35b0432ba2584c9e62ce2c3535a227a09442672da9349c725767e516508a4",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvGetVolume_Request",
                `response` = "Ros2Aimdk_msgsSrvGetVolume_Response"
            )
        ),
        `aimdk_msgs/srv/LedStripCommand` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_23468ae488e4dc5beb789321ceefd42d902fdba512031e7912d2e0dc13c98866",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvLedStripCommand_Request",
                `response` = "Ros2Aimdk_msgsSrvLedStripCommand_Response"
            )
        ),
        `aimdk_msgs/srv/PlayEmoji` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_aa4c9e8e12aa8f62320d39cb315eeb53ddda7a2d04720ff7a4ffdbcd8027bbe6",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvPlayEmoji_Request",
                `response` = "Ros2Aimdk_msgsSrvPlayEmoji_Response"
            )
        ),
        `aimdk_msgs/srv/PlayMediaFile` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c8cb022639020f8d25eae83e90971c5a19eb5b6b3f953ddebe913ae8fdf95b2d",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvPlayMediaFile_Request",
                `response` = "Ros2Aimdk_msgsSrvPlayMediaFile_Response"
            )
        ),
        `aimdk_msgs/srv/PlayTts` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ddb5d35e66d30498e1704021c9f146c53c1257d10272d57d30bd5b9b9568135e",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvPlayTts_Request",
                `response` = "Ros2Aimdk_msgsSrvPlayTts_Response"
            )
        ),
        `aimdk_msgs/srv/PlayVideo` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5a50ce7cb64d8e95e2ee00bfa153579a059313a28ab904a648d96d7fc74df26e",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvPlayVideo_Request",
                `response` = "Ros2Aimdk_msgsSrvPlayVideo_Response"
            )
        ),
        `aimdk_msgs/srv/SetAgentPropertiesRequest` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_0fdb5da33f2268e29b7e02d3c601ae655081d0c45db6c9e188933dd6aa42fddb",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request",
                `response` = "Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response"
            )
        ),
        `aimdk_msgs/srv/SetMcAction` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_db8a256ae3f3076e9d3948a3edca0cbfe0a5788a2333c6b7e8179d3a02d2600d",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvSetMcAction_Request",
                `response` = "Ros2Aimdk_msgsSrvSetMcAction_Response"
            )
        ),
        `aimdk_msgs/srv/SetMcInputSource` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5cb41d592f88d74e0171cd8cb631101431a797d03c58d68232b0dc2c5065e189",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvSetMcInputSource_Request",
                `response` = "Ros2Aimdk_msgsSrvSetMcInputSource_Response"
            )
        ),
        `aimdk_msgs/srv/SetMcPresetMotion` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b73a2cd636577d75de536d6ee447ea924eaedec6182164f4be76c1fb36afb60e",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvSetMcPresetMotion_Request",
                `response` = "Ros2Aimdk_msgsSrvSetMcPresetMotion_Response"
            )
        ),
        `aimdk_msgs/srv/SetMute` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_4f26d16c45e77ca37aa7d391b85e93b0c10b266ee66a962da7f059233d2c1bd1",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvSetMute_Request",
                `response` = "Ros2Aimdk_msgsSrvSetMute_Response"
            )
        ),
        `aimdk_msgs/srv/SetVolume` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b26c304f3fb37e96b3ab6512311e12d5b7cc9f382d2e39e0a279a46223feb567",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Aimdk_msgsSrvSetVolume_Request",
                `response` = "Ros2Aimdk_msgsSrvSetVolume_Response"
            )
        ),
        `builtin_interfaces/msg/Time` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros2Builtin_interfacesMsgTime"
            )
        )
    ))
})
