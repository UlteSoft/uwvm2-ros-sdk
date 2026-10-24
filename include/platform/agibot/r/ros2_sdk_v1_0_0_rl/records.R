# @file records.R
# @brief All 19 complete original ROS 2 vendor values.
# @details The module exposes only an ordinary owned namespace list.
UwvmAgibotRos2SdkV100Rl <- local({
    schemas <- list(
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
            `symbol` = "Ros2Aimdk_msgsMsgDomainErrorState",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231",
            `minimum` = 1,
            `maximum` = 1,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/DomainErrorState",
            `constants` = list(
                `NONE` = 0,
                `DAMPING` = 1,
                `POWERDOWN` = 2,
                `DISABLE` = 3,
                `DISCONNECT` = 4
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
            `codec_identity` = "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53",
            `minimum` = 30,
            `maximum` = 158,
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
                    `name` = "error_code",
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
            `symbol` = "Ros2Aimdk_msgsMsgJointStateArray",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e",
            `minimum` = 29,
            `maximum` = 10269,
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
                    `name` = "state",
                    `type` = "Ros2Aimdk_msgsMsgDomainErrorState",
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
                    `element_minimum` = 30
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgModuleChannelInfo",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696",
            `minimum` = 58,
            `maximum` = 586,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/ModuleChannelInfo",
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
                    `name` = "type",
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
                    `name` = "frequency",
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
                    `name` = "min_time_diff",
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
                    `name` = "max_time_diff",
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
                    `name` = "std_dev",
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
                    `name` = "window_size",
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
                    `name` = "timeout_threshold",
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
                    `name` = "is_active",
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
                    `name` = "is_timeout",
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
                    `name` = "backends",
                    `type` = "string",
                    `array` = "sequence",
                    `count` = 4,
                    `string_bound` = 64,
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
            `symbol` = "Ros2Aimdk_msgsMsgModuleRpcInfo",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8",
            `minimum` = 16,
            `maximum` = 672,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/ModuleRpcInfo",
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
                    `name` = "req_type",
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
                    `name` = "res_type",
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
                    `name` = "backends",
                    `type` = "string",
                    `array` = "sequence",
                    `count` = 4,
                    `string_bound` = 64,
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
            `symbol` = "Ros2Aimdk_msgsMsgModuleResourceInfo",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f",
            `minimum` = 20,
            `maximum` = 5180,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/ModuleResourceInfo",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "module_name",
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
                    `name` = "rpc_clients",
                    `type` = "Ros2Aimdk_msgsMsgModuleRpcInfo",
                    `array` = "sequence",
                    `count` = 2,
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
                    `name` = "rpc_services",
                    `type` = "Ros2Aimdk_msgsMsgModuleRpcInfo",
                    `array` = "sequence",
                    `count` = 2,
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
                    `name` = "pub_channels",
                    `type` = "Ros2Aimdk_msgsMsgModuleChannelInfo",
                    `array` = "sequence",
                    `count` = 2,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 58
                ),
                list(
                    `name` = "sub_channels",
                    `type` = "Ros2Aimdk_msgsMsgModuleChannelInfo",
                    `array` = "sequence",
                    `count` = 2,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 58
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgThreadResourceInfo",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15",
            `minimum` = 32,
            `maximum` = 352,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/ThreadResourceInfo",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "thread_id",
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
                    `name` = "thread_name",
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
                    `name` = "cpu_usage_ratio",
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
                    `name` = "cpu_sched_policy",
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
                    `name` = "cpu_sched_priority",
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
                    `name` = "bounding_cpus",
                    `type` = "int32",
                    `array` = "sequence",
                    `count` = 16,
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
            `symbol` = "Ros2Aimdk_msgsMsgProcessResourceInfo",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550",
            `minimum` = 48,
            `maximum` = 1584,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/ProcessResourceInfo",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "process_id",
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
                    `name` = "process_name",
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
                    `name` = "process_mem_usage",
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
                    `name` = "process_mem_usage_ratio",
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
                    `name` = "process_cpu_usage_ratio",
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
                    `name` = "thread_count",
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
                    `name` = "threads",
                    `type` = "Ros2Aimdk_msgsMsgThreadResourceInfo",
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
                    `element_minimum` = 32
                )
            )
        ),
        list(
            `symbol` = "Ros2Aimdk_msgsMsgProcessInfo",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996",
            `minimum` = 80,
            `maximum` = 12232,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "aimdk_msgs/msg/ProcessInfo",
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
                    `name` = "app_name",
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
                    `name` = "resource",
                    `type` = "Ros2Aimdk_msgsMsgProcessResourceInfo",
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
                    `element_minimum` = 48
                ),
                list(
                    `name` = "modules",
                    `type` = "Ros2Aimdk_msgsMsgModuleResourceInfo",
                    `array` = "sequence",
                    `count` = 2,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 20
                )
            )
        )
    )
    list(records = UwvmRos$records(schemas), interfaces = list(
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
        `aimdk_msgs/msg/DomainErrorState` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgDomainErrorState"
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
            `codec_identity` = "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgJointState"
            )
        ),
        `aimdk_msgs/msg/JointStateArray` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgJointStateArray"
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
        `aimdk_msgs/msg/ModuleChannelInfo` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgModuleChannelInfo"
            )
        ),
        `aimdk_msgs/msg/ModuleResourceInfo` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgModuleResourceInfo"
            )
        ),
        `aimdk_msgs/msg/ModuleRpcInfo` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgModuleRpcInfo"
            )
        ),
        `aimdk_msgs/msg/ProcessInfo` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgProcessInfo"
            )
        ),
        `aimdk_msgs/msg/ProcessResourceInfo` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgProcessResourceInfo"
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
        `aimdk_msgs/msg/ThreadResourceInfo` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Aimdk_msgsMsgThreadResourceInfo"
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
