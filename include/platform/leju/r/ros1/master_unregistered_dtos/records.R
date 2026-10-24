# @file records.R
# @brief All 2 complete original ROS 1 vendor values.
# @details The module exposes only an ordinary owned namespace list.
UwvmLejuRos1MasterUnregisteredDtos <- local({
    schemas <- list(
        list(
            `symbol` = "Ros1Kuavo_sdkQv",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32",
            `minimum` = 4,
            `maximum` = 132,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "kuavo_sdk/qv",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "value",
                    `type` = "float64",
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
                    `element_minimum` = 8
                )
            )
        ),
        list(
            `symbol` = "Ros1Kuavo_sdkFullBodyTargetTrajectories",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32",
            `minimum` = 16,
            `maximum` = 2320,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "kuavo_sdk/fullBodyTargetTrajectories",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "timeTrajectory",
                    `type` = "float64",
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
                    `element_minimum` = 8
                ),
                list(
                    `name` = "footIndexTrajectory",
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
                ),
                list(
                    `name` = "fullBodyQTrajectory",
                    `type` = "Ros1Kuavo_sdkQv",
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
                    `element_minimum` = 4
                ),
                list(
                    `name` = "fullBodyVTrajectory",
                    `type` = "Ros1Kuavo_sdkQv",
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
                    `element_minimum` = 4
                )
            )
        )
    )
    list(records = UwvmRos$records(schemas), interfaces = list(
        `kuavo_sdk/fullBodyTargetTrajectories` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Kuavo_sdkFullBodyTargetTrajectories"
            )
        ),
        `kuavo_sdk/qv` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros1Kuavo_sdkQv"
            )
        )
    ))
})
