# @file records.R
# @brief All 51 complete original ROS 2 vendor values.
# @details The module exposes only an ordinary owned namespace list.
UwvmFourierRos2AuroraBridgeV1 <- local({
    schemas <- list(
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeMsgGroupState",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4",
            `minimum` = 20,
            `maximum` = 1684,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/msg/GroupState",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "group",
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
                    `element_minimum` = 8
                ),
                list(
                    `name` = "velocity",
                    `type` = "float64",
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
                    `element_minimum` = 8
                ),
                list(
                    `name` = "effort",
                    `type` = "float64",
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
                    `element_minimum` = 8
                ),
                list(
                    `name` = "motion_state",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeMsgGroupValues",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3",
            `minimum` = 8,
            `maximum` = 648,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/msg/GroupValues",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "group",
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
                    `name` = "values",
                    `type` = "float64",
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
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeMsgMotionRecipe",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14",
            `minimum` = 18,
            `maximum` = 1170,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/msg/MotionRecipe",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "move_type",
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
                    `name` = "group",
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
                    `element_minimum` = 8
                ),
                list(
                    `name` = "has_velocity",
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
                    `name` = "velocity",
                    `type` = "float64",
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
                    `element_minimum` = 8
                ),
                list(
                    `name` = "expected_velocity",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeMsgStatus",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e",
            `minimum` = 32,
            `maximum` = 14400,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/msg/Status",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "fsm_state",
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
                    `name` = "fsm_name",
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
                    `name` = "upper_fsm_state",
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
                    `name` = "upper_fsm_name",
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
                    `name` = "velocity_source",
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
                    `name` = "velocity_source_name",
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
                    `name` = "stand_pose",
                    `type` = "float64",
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
                    `element_minimum` = 8
                ),
                list(
                    `name` = "groups",
                    `type` = "Ros2Uwvm_fourier_bridgeMsgGroupState",
                    `array` = "sequence",
                    `count` = 8,
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
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeMsgVelocityCommand",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d",
            `minimum` = 40,
            `maximum` = 40,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/msg/VelocityCommand",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "vx",
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
                    `name` = "vy",
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
                    `name` = "yaw",
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
                    `name` = "duration",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b",
            `minimum` = 12,
            `maximum` = 9372,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/ExecuteMove_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "moves",
                    `type` = "Ros2Uwvm_fourier_bridgeMsgMotionRecipe",
                    `array` = "sequence",
                    `count` = 8,
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/ExecuteMove_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetBaseData_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "key",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804",
            `minimum` = 12,
            `maximum` = 652,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetBaseData_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
                    `name` = "values",
                    `type` = "float64",
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
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee",
            `minimum` = 16,
            `maximum` = 272,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetCartesianState_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "group",
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
                    `name` = "key",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40",
            `minimum` = 12,
            `maximum` = 652,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetCartesianState_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
                    `name` = "values",
                    `type` = "float64",
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
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetContactData_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetContactData_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "key",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetContactData_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e",
            `minimum` = 12,
            `maximum` = 652,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetContactData_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
                    `name` = "values",
                    `type` = "float64",
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
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetFsmName_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e",
            `minimum` = 12,
            `maximum` = 268,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetFsmName_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetFsmState_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetFsmState_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetGroupMotionState_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "group",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetGroupMotionState_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a",
            `minimum` = 16,
            `maximum` = 272,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "group",
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
                    `name` = "key",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868",
            `minimum` = 12,
            `maximum` = 652,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
                    `name` = "values",
                    `type` = "float64",
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
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9",
            `minimum` = 16,
            `maximum` = 272,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetGroupState_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "group",
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
                    `name` = "key",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d",
            `minimum` = 12,
            `maximum` = 652,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetGroupState_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
                    `name` = "values",
                    `type` = "float64",
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
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetSnapshot_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3",
            `minimum` = 40,
            `maximum` = 14536,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetSnapshot_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
                    `name` = "value",
                    `type` = "Ros2Uwvm_fourier_bridgeMsgStatus",
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
                    `element_minimum` = 32
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetStandPose_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2",
            `minimum` = 12,
            `maximum` = 652,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetStandPose_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
                    `name` = "values",
                    `type` = "float64",
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
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetUpperFsmName_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed",
            `minimum` = 12,
            `maximum` = 268,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetUpperFsmName_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetUpperFsmState_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetUpperFsmState_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetVelocitySource_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetVelocitySource_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetVelocitySourceName_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                )
            )
        ),
        list(
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40",
            `minimum` = 12,
            `maximum` = 268,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/GetVelocitySourceName_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d",
            `minimum` = 12,
            `maximum` = 12,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetFsmState_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetFsmState_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9",
            `minimum` = 20,
            `maximum` = 15572,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetGroupCommand_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "position",
                    `type` = "Ros2Uwvm_fourier_bridgeMsgGroupValues",
                    `array` = "sequence",
                    `count` = 8,
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
                    `type` = "Ros2Uwvm_fourier_bridgeMsgGroupValues",
                    `array` = "sequence",
                    `count` = 8,
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
                    `name` = "torque",
                    `type` = "Ros2Uwvm_fourier_bridgeMsgGroupValues",
                    `array` = "sequence",
                    `count` = 8,
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetGroupCommand_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de",
            `minimum` = 16,
            `maximum` = 10384,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetMotorCfgPd_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "kp",
                    `type` = "Ros2Uwvm_fourier_bridgeMsgGroupValues",
                    `array` = "sequence",
                    `count` = 8,
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
                    `name` = "kd",
                    `type` = "Ros2Uwvm_fourier_bridgeMsgGroupValues",
                    `array` = "sequence",
                    `count` = 8,
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetMotorCfgPd_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211",
            `minimum` = 32,
            `maximum` = 32,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetStandPose_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "delta_z",
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
                    `name` = "delta_pitch",
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
                    `name` = "delta_yaw",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetStandPose_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182",
            `minimum` = 12,
            `maximum` = 12,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetUpperFsmState_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetUpperFsmState_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44",
            `minimum` = 40,
            `maximum` = 40,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetVelocity_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "vx",
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
                    `name` = "vy",
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
                    `name` = "yaw",
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
                    `name` = "duration",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetVelocity_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c",
            `minimum` = 12,
            `maximum` = 12,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetVelocitySource_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "source",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/SetVelocitySource_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202",
            `minimum` = 28,
            `maximum` = 1084,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "sequence",
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
                    `name` = "groups",
                    `type` = "string",
                    `array` = "sequence",
                    `count` = 8,
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
                    `name` = "timeout_seconds",
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
                    `name` = "poll_seconds",
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
            `symbol` = "Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f",
            `minimum` = 9,
            `maximum` = 137,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "status",
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
                    `name` = "error",
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
                    `name` = "complete",
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
        )
    )
    list(records = UwvmRos$records(schemas), interfaces = list(
        `uwvm_fourier_bridge/msg/GroupState` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Uwvm_fourier_bridgeMsgGroupState"
            )
        ),
        `uwvm_fourier_bridge/msg/GroupValues` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Uwvm_fourier_bridgeMsgGroupValues"
            )
        ),
        `uwvm_fourier_bridge/msg/MotionRecipe` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Uwvm_fourier_bridgeMsgMotionRecipe"
            )
        ),
        `uwvm_fourier_bridge/msg/Status` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Uwvm_fourier_bridgeMsgStatus"
            )
        ),
        `uwvm_fourier_bridge/msg/VelocityCommand` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Uwvm_fourier_bridgeMsgVelocityCommand"
            )
        ),
        `uwvm_fourier_bridge/srv/ExecuteMove` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3d524d5037753a16963eb13024e6f0aac177c86f0318c120e98b34f7637759c5",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetBaseData` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_33465b066892da2cbcfd600aabbea8b2d8bd55ae166b0b45e3439c867ec8b09d",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetCartesianState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_4a4fb765830d8334545e776e5af2be4243247976119da538ffc009abfde028e4",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetContactData` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c77818cd9f6ef571a1f0746365499b3133676cdf1b3b652e6b3c6551aa7f9cf5",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetContactData_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetContactData_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetFsmName` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_224061a36b18163063b58ba3d0bfae9bdb892001d9f045eaa6a434b07907947c",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetFsmState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e312852e3daace8c73ef9154a9541b8d901ec6dd2c02e686c7f4519f17725f34",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetGroupMotionState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6580234e6eb544f932ab394125546adebdaa5a511cac96b47896fcd563ae9e90",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetGroupMotorCfg` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ca36497f1604471de5bb504997f18944ff6948648d5da7c8b6cd5d30c56f35fb",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetGroupState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_016965e2d9468fa39b392ecd1867aafceece75e5cdca02df22ec7cb115d0679f",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetSnapshot` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_84d7e96ea21959fdefe536fec93b0c53086c08361321f6f528109d85f6815626",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetStandPose` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7a03e8daab6fde6a2801589af4f2d2e9dcdf58cd92124923674ebf6e2c59f9df",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetUpperFsmName` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_57d4a79f73f84fea3e1e563e624ef98ba85925e9eb6869f9f629bb3ecef84b60",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetUpperFsmState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7e53ee016ab11c9b2cf1024f39cccd18a3318a0a2d31c862db7ccd80bfea3009",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetVelocitySource` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9561b4c680aaba4a0f47aeaef4bec56e8bac70118b62baffabcb745454556cf5",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/GetVelocitySourceName` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_88870a0e9cba79a6caed3be13571d4b78c1871daccfeda6491abc8c0da468388",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/SetFsmState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9507a27e3e3fce5913600b5e4bf954fcec32e8006afc6f5fa046852fa6774dbc",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/SetGroupCommand` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_25f339db010bf01b59484b667237ee5440081b4f72c38c77b2e4a3c36558ea92",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/SetMotorCfgPd` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_bce1cc76cc46343ea9da87185f4612f7ac3392cb540e89f1e3c1e495de0c9a9e",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/SetStandPose` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_cc313a5051581f335ab970bf4f6dd3847ac33fecb5508ea14f237b77b1285487",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/SetUpperFsmState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_45d552fb6986fe64fc14b66e8bdd63ebdbc995c2c806eca5cb2d954c8835e2a2",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/SetVelocity` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_1d90a138562a5ac1222fb57ba3e4b02f3ecbb6bd02ddbf93a925e5b5446b12ce",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/SetVelocitySource` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_57cd2a4ce6b13785f35173eeeafc13338243d24645b74ccb8d675f7833c88484",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response"
            )
        ),
        `uwvm_fourier_bridge/srv/WaitGroupsMotionComplete` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e3fd81ae51305ee817ab9b32eae49560ef5df74fe2548f8d7b2ba5e880b50b89",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request",
                `response` = "Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response"
            )
        )
    ))
})
