#' @file records.R
#' @brief Complete original ABB ROS 1 record descriptors.
#' @details Uses the shared genuine-R codec/transport package. Exact 64-bit defaults use decimal strings.
#' Source descriptors preserve all native declarations; NULL identities require external native binding.
SCHEMAS <- list(
    list(
        `symbol` = "Ros1Abb_egm_msgsEGMChannelState",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2",
        `minimum` = 17,
        `maximum` = 81,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_egm_msgs/EGMChannelState",
        `constants` = list(
            `EGM_UNDEFINED` = 1,
            `EGM_ERROR` = 2,
            `EGM_STOPPED` = 3,
            `EGM_RUNNING` = 4,
            `MOTORS_UNDEFINED` = 1,
            `MOTORS_ON` = 2,
            `MOTORS_OFF` = 3,
            `RAPID_UNDEFINED` = 1,
            `RAPID_STOPPED` = 2,
            `RAPID_RUNNING` = 3
        ),
        `fields` = list(
            list(
                `name` = "name",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 64,
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
                `name` = "active",
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
                `name` = "egm_convergence_met",
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
                `name` = "egm_client_state",
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
                `name` = "motor_state",
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
                `name` = "rapid_execution_state",
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
                `name` = "utilization_rate",
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
        `symbol` = "Ros1Time",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "normalized-time",
        `ros_version` = 1,
        `native_type` = "time",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "sec",
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
                `name` = "nsec",
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
        `symbol` = "Ros1Std_msgsHeader",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db",
        `minimum` = 16,
        `maximum` = 80,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "std_msgs/Header",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "seq",
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
                `name` = "stamp",
                `type` = "Ros1Time",
                `array` = "",
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
        `symbol` = "Ros1Abb_egm_msgsEGMState",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8",
        `minimum` = 20,
        `maximum` = 1380,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_egm_msgs/EGMState",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "header",
                `type` = "Ros1Std_msgsHeader",
                `array` = "",
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
                `name` = "egm_channels",
                `type` = "Ros1Abb_egm_msgsEGMChannelState",
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
                `element_minimum` = 17
            )
        )
    ),
    list(
        `symbol` = "Ros1Abb_rapid_msgsConfData",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2",
        `minimum` = 16,
        `maximum` = 16,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_msgs/ConfData",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "cf1",
                `type` = "float32",
                `array` = "",
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
                `name` = "cf4",
                `type` = "float32",
                `array` = "",
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
                `name` = "cf6",
                `type` = "float32",
                `array` = "",
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
                `name` = "cfx",
                `type` = "float32",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_msgsExtJoint",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a",
        `minimum` = 24,
        `maximum` = 24,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_msgs/ExtJoint",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "eax_a",
                `type` = "float32",
                `array` = "",
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
                `name` = "eax_b",
                `type` = "float32",
                `array` = "",
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
                `name` = "eax_c",
                `type` = "float32",
                `array` = "",
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
                `name` = "eax_d",
                `type` = "float32",
                `array` = "",
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
                `name` = "eax_e",
                `type` = "float32",
                `array` = "",
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
                `name` = "eax_f",
                `type` = "float32",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_msgsRobJoint",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0",
        `minimum` = 24,
        `maximum` = 24,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_msgs/RobJoint",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "rax_1",
                `type` = "float32",
                `array` = "",
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
                `name` = "rax_2",
                `type` = "float32",
                `array` = "",
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
                `name` = "rax_3",
                `type` = "float32",
                `array` = "",
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
                `name` = "rax_4",
                `type` = "float32",
                `array` = "",
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
                `name` = "rax_5",
                `type` = "float32",
                `array` = "",
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
                `name` = "rax_6",
                `type` = "float32",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_msgsJointTarget",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24",
        `minimum` = 48,
        `maximum` = 48,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_msgs/JointTarget",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "robax",
                `type` = "Ros1Abb_rapid_msgsRobJoint",
                `array` = "",
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
                `name` = "extax",
                `type` = "Ros1Abb_rapid_msgsExtJoint",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_msgsPos",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01",
        `minimum` = 12,
        `maximum` = 12,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_msgs/Pos",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "x",
                `type` = "float32",
                `array` = "",
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
                `name` = "y",
                `type` = "float32",
                `array` = "",
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
                `name` = "z",
                `type` = "float32",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_msgsOrient",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270",
        `minimum` = 16,
        `maximum` = 16,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_msgs/Orient",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "q1",
                `type` = "float32",
                `array` = "",
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
                `name` = "q2",
                `type` = "float32",
                `array` = "",
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
                `name` = "q3",
                `type` = "float32",
                `array` = "",
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
                `name` = "q4",
                `type` = "float32",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_msgsLoadData",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d",
        `minimum` = 44,
        `maximum` = 44,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_msgs/LoadData",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "mass",
                `type` = "float32",
                `array` = "",
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
                `name` = "cog",
                `type` = "Ros1Abb_rapid_msgsPos",
                `array` = "",
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
            ),
            list(
                `name` = "aom",
                `type` = "Ros1Abb_rapid_msgsOrient",
                `array` = "",
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
                `name` = "ix",
                `type` = "float32",
                `array` = "",
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
                `name` = "iy",
                `type` = "float32",
                `array` = "",
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
                `name` = "iz",
                `type` = "float32",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_msgsPose",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99",
        `minimum` = 28,
        `maximum` = 28,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_msgs/Pose",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "trans",
                `type` = "Ros1Abb_rapid_msgsPos",
                `array` = "",
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
            ),
            list(
                `name` = "rot",
                `type` = "Ros1Abb_rapid_msgsOrient",
                `array` = "",
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
            )
        )
    ),
    list(
        `symbol` = "Ros1Abb_rapid_msgsRobTarget",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce",
        `minimum` = 68,
        `maximum` = 68,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_msgs/RobTarget",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "trans",
                `type` = "Ros1Abb_rapid_msgsPos",
                `array` = "",
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
            ),
            list(
                `name` = "rot",
                `type` = "Ros1Abb_rapid_msgsOrient",
                `array` = "",
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
                `name` = "robconf",
                `type` = "Ros1Abb_rapid_msgsConfData",
                `array` = "",
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
                `name` = "extax",
                `type` = "Ros1Abb_rapid_msgsExtJoint",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_msgsToolData",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba",
        `minimum` = 73,
        `maximum` = 73,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_msgs/ToolData",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "robhold",
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
                `name` = "tframe",
                `type` = "Ros1Abb_rapid_msgsPose",
                `array` = "",
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
                `name` = "tload",
                `type` = "Ros1Abb_rapid_msgsLoadData",
                `array` = "",
                `count` = 0,
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
        `symbol` = "Ros1Abb_rapid_msgsWObjData",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f",
        `minimum` = 62,
        `maximum` = 574,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_msgs/WObjData",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "robhold",
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
                `name` = "ufprog",
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
                `name` = "ufmec",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
                `name` = "uframe",
                `type` = "Ros1Abb_rapid_msgsPose",
                `array` = "",
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
                `name` = "oframe",
                `type` = "Ros1Abb_rapid_msgsPose",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d",
        `minimum` = 204,
        `maximum` = 716,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/EGMActivateSettings",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "tool",
                `type` = "Ros1Abb_rapid_msgsToolData",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 73
            ),
            list(
                `name` = "wobj",
                `type` = "Ros1Abb_rapid_msgsWObjData",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 62
            ),
            list(
                `name` = "correction_frame",
                `type` = "Ros1Abb_rapid_msgsPose",
                `array` = "",
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
                `name` = "sensor_frame",
                `type` = "Ros1Abb_rapid_msgsPose",
                `array` = "",
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
                `name` = "cond_min_max",
                `type` = "float32",
                `array` = "",
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
                `name` = "lp_filter",
                `type` = "float32",
                `array` = "",
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
                `name` = "sample_rate",
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
                `name` = "max_speed_deviation",
                `type` = "float32",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsEGMRunSettings",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506",
        `minimum` = 40,
        `maximum` = 40,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/EGMRunSettings",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "cond_time",
                `type` = "float32",
                `array` = "",
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
                `name` = "ramp_in_time",
                `type` = "float32",
                `array` = "",
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
                `name` = "offset",
                `type` = "Ros1Abb_rapid_msgsPose",
                `array` = "",
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
                `name` = "pos_corr_gain",
                `type` = "float32",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779",
        `minimum` = 5,
        `maximum` = 5,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/EGMSetupSettings",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "use_filtering",
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
                `name` = "comm_timeout",
                `type` = "float32",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsEGMStopSettings",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/EGMStopSettings",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "ramp_out_time",
                `type` = "float32",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsEGMSettings",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b",
        `minimum` = 255,
        `maximum` = 767,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/EGMSettings",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "allow_egm_motions",
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
                `name` = "use_presync",
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
                `name` = "setup_uc",
                `type` = "Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 5
            ),
            list(
                `name` = "activate",
                `type` = "Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 204
            ),
            list(
                `name` = "run",
                `type` = "Ros1Abb_rapid_sm_addin_msgsEGMRunSettings",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 40
            ),
            list(
                `name` = "stop",
                `type` = "Ros1Abb_rapid_sm_addin_msgsEGMStopSettings",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_42cca857367e08720f989416d18d6a1f7d677f7e5bf49435b9735a9eb10a8f9c",
        `minimum` = 4,
        `maximum` = 68,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/GetEGMSettingsRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "task",
                `type` = "string",
                `array` = "",
                `count` = 0,
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_094fd8b0b992c26d708bbd09952d36a3921ad5e5e66f45edb9d19af5ec3472bc",
        `minimum` = 261,
        `maximum` = 1285,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/GetEGMSettingsResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "settings",
                `type` = "Ros1Abb_rapid_sm_addin_msgsEGMSettings",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 255
            ),
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsStateMachineState",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/StateMachineState",
        `constants` = list(
            `SM_STATE_UNKNOWN` = 1,
            `SM_STATE_IDLE` = 2,
            `SM_STATE_INITIALIZE` = 3,
            `SM_STATE_RUN_RAPID_ROUTINE` = 4,
            `SM_STATE_RUN_EGM_ROUTINE` = 5,
            `EGM_ACTION_UNKNOWN` = 1,
            `EGM_ACTION_NONE` = 2,
            `EGM_ACTION_RUN_JOINT` = 3,
            `EGM_ACTION_RUN_POSE` = 4,
            `EGM_ACTION_STOP` = 5,
            `EGM_ACTION_START_STREAM` = 6,
            `EGM_ACTION_STOP_STREAM` = 7
        ),
        `fields` = list(
            list(
                `name` = "rapid_task",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
                `name` = "sm_state",
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
                `name` = "egm_action",
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsRuntimeState",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c",
        `minimum` = 20,
        `maximum` = 8372,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/RuntimeState",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "header",
                `type` = "Ros1Std_msgsHeader",
                `array` = "",
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
                `name` = "state_machines",
                `type` = "Ros1Abb_rapid_sm_addin_msgsStateMachineState",
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
                `element_minimum` = 6
            )
        )
    ),
    list(
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_fe85c34f8dff2c0a547f89385d75771af13a03d997b880ab7be2eb84ea800155",
        `minimum` = 259,
        `maximum` = 835,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/SetEGMSettingsRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "task",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 64,
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
                `name` = "settings",
                `type` = "Ros1Abb_rapid_sm_addin_msgsEGMSettings",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 255
            )
        )
    ),
    list(
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c0d4e594a51a6cdd245ad03b6e27bbdc298c5c9fbe26cc25fa3594deef9b2591",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/SetEGMSettingsResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_b16ba3e98ee1d45864532b01f914746f041e49463b9330ef6056e427d199a5a3",
        `minimum` = 8,
        `maximum` = 584,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "task",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 64,
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
                `name` = "routine",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_44de2385f12a8612fa75ca7c3f97b07f22d04e920bdeca0f0bd7fed5322c680e",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_e39d7fee66c1efb9ea963216823f6e10bd632d78634d8c47f3283a1a1779f0c2",
        `minimum` = 9,
        `maximum` = 73,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/SetSGCommandRequest",
        `constants` = list(
            `SG_COMMAND_UNKNOWN` = 1,
            `SG_COMMAND_NONE` = 2,
            `SG_COMMAND_INITIALIZE` = 3,
            `SG_COMMAND_CALIBRATE` = 4,
            `SG_COMMAND_MOVE_TO` = 5,
            `SG_COMMAND_GRIP_IN` = 6,
            `SG_COMMAND_GRIP_OUT` = 7,
            `SG_COMMAND_BLOW_ON_1` = 8,
            `SG_COMMAND_BLOW_ON_2` = 9,
            `SG_COMMAND_BLOW_OFF_1` = 10,
            `SG_COMMAND_BLOW_OFF_2` = 11,
            `SG_COMMAND_VACUUM_ON_1` = 12,
            `SG_COMMAND_VACUUM_ON_2` = 13,
            `SG_COMMAND_VACUUM_OFF_1` = 14,
            `SG_COMMAND_VACUUM_OFF_2` = 15
        ),
        `fields` = list(
            list(
                `name` = "task",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 64,
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
                `name` = "command",
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
                `name` = "target_position",
                `type` = "float32",
                `array` = "",
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
        `symbol` = "Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_2f22b2098d86dd0764277247eb7f64dccecebf0cddce85654b01c1928eb9c192",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_rapid_sm_addin_msgs/SetSGCommandResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsGetFileContentsRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_75f5802b385cc1efb524fadea657fda1d5cc4298c5720222d33cd3dd39656f21",
        `minimum` = 4,
        `maximum` = 516,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetFileContentsRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "filename",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsGetFileContentsResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_693b53ed168f81a7c93ac8083977c4f8bd6f4a3999d079f5b47029699ba68fdb",
        `minimum` = 10,
        `maximum` = 4618,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetFileContentsResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "contents",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 4096,
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
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsGetIOSignalRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d98f7577756b476cac0dd325d45f333fcd2b735df7dce58fb660790b5a91f83b",
        `minimum` = 4,
        `maximum` = 516,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetIOSignalRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "signal",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsGetIOSignalResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_10a66146c4815b0d758ec81dde1c552695c97a8727ee995299018b23f129d79e",
        `minimum` = 10,
        `maximum` = 1034,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetIOSignalResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "value",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsRAPIDSymbolPath",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2",
        `minimum` = 12,
        `maximum` = 204,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/RAPIDSymbolPath",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "task",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 64,
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
                `name` = "module",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 64,
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
                `name` = "symbol",
                `type` = "string",
                `array` = "",
                `count` = 0,
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
        `symbol` = "Ros1Abb_robot_msgsGetRAPIDBoolRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_46e49c0d6796175d0c56460dd4c7d2557deaa8db4f1a3bec40b53636d3b44b96",
        `minimum` = 12,
        `maximum` = 204,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetRAPIDBoolRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "path",
                `type` = "Ros1Abb_robot_msgsRAPIDSymbolPath",
                `array` = "",
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
        `symbol` = "Ros1Abb_robot_msgsGetRAPIDBoolResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_bfe21e95cb79f1d9bc1bc1dc2f61c744a2a7dc49e5a5ed07b6c8619344b97b3f",
        `minimum` = 7,
        `maximum` = 519,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetRAPIDBoolResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "value",
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
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsGetRAPIDDnumRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9058d8774de0da657344a00d75a7f75878da2b0453bf25708bc8ed7f45c90c9d",
        `minimum` = 12,
        `maximum` = 204,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetRAPIDDnumRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "path",
                `type` = "Ros1Abb_robot_msgsRAPIDSymbolPath",
                `array` = "",
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
        `symbol` = "Ros1Abb_robot_msgsGetRAPIDDnumResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9c209b4b12d733e33b76cc33ae93b6d561ce1eb7f8864429a56bd073317a01b3",
        `minimum` = 14,
        `maximum` = 526,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetRAPIDDnumResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "value",
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
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsGetRAPIDNumRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_a316395c8a19b7c0a9c3a555e625fffc7d647c7b567f38c53b1c3735b50ee910",
        `minimum` = 12,
        `maximum` = 204,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetRAPIDNumRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "path",
                `type` = "Ros1Abb_robot_msgsRAPIDSymbolPath",
                `array` = "",
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
        `symbol` = "Ros1Abb_robot_msgsGetRAPIDNumResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_1573cba9a9046a6b304a49e3a77266fa0d6f615d2ea9a24692c25616970fd9b0",
        `minimum` = 10,
        `maximum` = 522,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetRAPIDNumResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "value",
                `type` = "float32",
                `array` = "",
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
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsGetRAPIDStringRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_56514142e9e064aa43d09078b49ed8ee0366189727c35a9bc130b35007da4c9c",
        `minimum` = 12,
        `maximum` = 204,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetRAPIDStringRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "path",
                `type` = "Ros1Abb_robot_msgsRAPIDSymbolPath",
                `array` = "",
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
        `symbol` = "Ros1Abb_robot_msgsGetRAPIDStringResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d1188827af3c307a721f8128b6f14fa6020f3187afce8a4162ce6562cdd1c854",
        `minimum` = 10,
        `maximum` = 1034,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetRAPIDStringResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "value",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsGetRAPIDSymbolRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_31302ad912a8ff39b56a429bc9dae22cbfc2c2101b8cd05162d00d9206aecf5b",
        `minimum` = 12,
        `maximum` = 204,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetRAPIDSymbolRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "path",
                `type` = "Ros1Abb_robot_msgsRAPIDSymbolPath",
                `array` = "",
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
        `symbol` = "Ros1Abb_robot_msgsGetRAPIDSymbolResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_182dc465ea5fb9543791b6fb76520313cee1ed472ab0296c8ef7a9ed3d4d110f",
        `minimum` = 10,
        `maximum` = 1034,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetRAPIDSymbolResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "value",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_bc5f87f4d0f33cbc640c8188fbb15c9b0f43b3067f2406700d6f5bd2475089b6",
        `minimum` = 0,
        `maximum` = 0,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetRobotControllerDescriptionRequest",
        `constants` = list(

        ),
        `fields` = list(

        )
    ),
    list(
        `symbol` = "Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7db41283fbe12a010e526b87d77a5bb7faecdf85595ef2dc13f14bfed56b6e39",
        `minimum` = 10,
        `maximum` = 4618,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetRobotControllerDescriptionResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "description",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 4096,
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
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsGetSpeedRatioRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_82230aebf6fa923e09bcd413ecb3b4803a6f1cfd3e8334e0ce0c496b73008373",
        `minimum` = 0,
        `maximum` = 0,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetSpeedRatioRequest",
        `constants` = list(

        ),
        `fields` = list(

        )
    ),
    list(
        `symbol` = "Ros1Abb_robot_msgsGetSpeedRatioResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7784360ddafa1b8ad9626fde0afa2b2335f6a294507036c3aee953df99e91940",
        `minimum` = 7,
        `maximum` = 519,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/GetSpeedRatioResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "speed_ratio",
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
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsMechanicalUnitState",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa",
        `minimum` = 5,
        `maximum` = 69,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/MechanicalUnitState",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "name",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 64,
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
                `name` = "activated",
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
        `symbol` = "Ros1Abb_robot_msgsRAPIDTaskState",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947",
        `minimum` = 7,
        `maximum` = 71,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/RAPIDTaskState",
        `constants` = list(
            `EXECUTION_STATE_UNKNOWN` = 1,
            `EXECUTION_STATE_READY` = 2,
            `EXECUTION_STATE_STOPPED` = 3,
            `EXECUTION_STATE_STARTED` = 4,
            `EXECUTION_STATE_UNINITIALIZED` = 5
        ),
        `fields` = list(
            list(
                `name` = "name",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 64,
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
                `name` = "activated",
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
                `name` = "execution_state",
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
                `name` = "motion_task",
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
        `symbol` = "Ros1Abb_robot_msgsServiceResponses",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4",
        `minimum` = 0,
        `maximum` = 0,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/ServiceResponses",
        `constants` = list(
            `SUCCESS` = "",
            `RC_SUCCESS` = 1,
            `FAILED` = "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)",
            `RC_FAILED` = 2,
            `SERVER_IS_BUSY` = "Server is busy",
            `RC_SERVER_IS_BUSY` = 1001,
            `EMPTY_FILENAME` = "Filename is empty",
            `RC_EMPTY_FILENAME` = 2001,
            `EMPTY_SIGNAL_NAME` = "Signal name is empty",
            `RC_EMPTY_SIGNAL_NAME` = 2002,
            `EMPTY_RAPID_TASK_NAME` = "RAPID task name is empty",
            `RC_EMPTY_RAPID_TASK_NAME` = 2003,
            `EMPTY_RAPID_MODULE_NAME` = "RAPID module name is empty",
            `RC_EMPTY_RAPID_MODULE_NAME` = 2004,
            `EMPTY_RAPID_SYMBOL_NAME` = "RAPID symbol name is empty",
            `RC_EMPTY_RAPID_SYMBOL_NAME` = 2005,
            `NOT_IN_AUTO_MODE` = "Robot controller is not in AUTO mode",
            `RC_NOT_IN_AUTO_MODE` = 3001,
            `MOTORS_ARE_OFF` = "Motors are off",
            `RC_MOTORS_ARE_OFF` = 3002,
            `MOTORS_ARE_ON` = "Motors are on",
            `RC_MOTORS_ARE_ON` = 3003,
            `RAPID_NOT_STOPPED` = "RAPID has not been stopped",
            `RC_RAPID_NOT_STOPPED` = 3004,
            `RAPID_NOT_RUNNING` = "RAPID is not running",
            `RC_RAPID_NOT_RUNNING` = 3005,
            `SM_RUNTIME_STATES_MISSING` = "No runtime states received for any StateMachine Add-In instance",
            `RC_SM_RUNTIME_STATES_MISSING` = 4001,
            `SM_UNKNOWN_RAPID_TASK` = "RAPID task not found among known StateMachine Add-In instances",
            `RC_SM_UNKNOWN_RAPID_TASK` = 4002,
            `SM_UNINITIALIZED` = "StateMachine Add-In instance has not been initialized",
            `RC_SM_UNINITIALIZED` = 4003
        ),
        `fields` = list(

        )
    ),
    list(
        `symbol` = "Ros1Abb_robot_msgsSetFileContentsRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f764448d9754e9ebc5e5fab64f0c8ebb01c534ec7b95751ed7d58e8ce0bd3012",
        `minimum` = 8,
        `maximum` = 4616,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetFileContentsRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "filename",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
                `name` = "contents",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 4096,
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
        `symbol` = "Ros1Abb_robot_msgsSetFileContentsResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3de2a08b8e158e0612898880d6d9c98f1995828eb53bd5639b47f730c6cbefd0",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetFileContentsResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsSetIOSignalRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_57a0197e2a5de7efd2fc91d945d699be24559baec6651179a1256f1d9d35bbc9",
        `minimum` = 8,
        `maximum` = 1032,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetIOSignalRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "signal",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsSetIOSignalResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_becc0f844ce6a7fabd8a683175edd8033ba5c943c2de152991755ee112b460e5",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetIOSignalResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsSetRAPIDBoolRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d8e5420678fe5feeffa20ad9ab8431678ec346f764c94871c4496c62e9dd8e8d",
        `minimum` = 13,
        `maximum` = 205,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetRAPIDBoolRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "path",
                `type` = "Ros1Abb_robot_msgsRAPIDSymbolPath",
                `array` = "",
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
            ),
            list(
                `name` = "value",
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
        `symbol` = "Ros1Abb_robot_msgsSetRAPIDBoolResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_da2ae1231cb0c1ec452fb2733d5c99dcae78ad0bfd10771241708931b271bf13",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetRAPIDBoolResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsSetRAPIDDnumRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0f17e3068f86bca6effb99f3bc850234b0163028f372340c450fce31657b9cf9",
        `minimum` = 20,
        `maximum` = 212,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetRAPIDDnumRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "path",
                `type` = "Ros1Abb_robot_msgsRAPIDSymbolPath",
                `array` = "",
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
            ),
            list(
                `name` = "value",
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
        `symbol` = "Ros1Abb_robot_msgsSetRAPIDDnumResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_1905aed9683e03494baa54627ddbaf4aed0b92357823c0c042f9b7c6a970c8ed",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetRAPIDDnumResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsSetRAPIDNumRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9982d02cb0b6ee5813f5fb38072d665226b7885aeb90517af881f4fc990f392f",
        `minimum` = 16,
        `maximum` = 208,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetRAPIDNumRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "path",
                `type` = "Ros1Abb_robot_msgsRAPIDSymbolPath",
                `array` = "",
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
            ),
            list(
                `name` = "value",
                `type` = "float32",
                `array` = "",
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
        `symbol` = "Ros1Abb_robot_msgsSetRAPIDNumResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_af1181242b4afdb6d387d39c24d0bc343e872fb9ab21c0ec1e451785786a4e64",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetRAPIDNumResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsSetRAPIDStringRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_e06839324f8abfa8780b683386f87bab1ec04f1e6463e63c0599f5c2f8a75f0c",
        `minimum` = 16,
        `maximum` = 720,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetRAPIDStringRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "path",
                `type` = "Ros1Abb_robot_msgsRAPIDSymbolPath",
                `array` = "",
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
            ),
            list(
                `name` = "value",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsSetRAPIDStringResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_e175bdff5a150722b8c50cf2e1c0f28a99289a0b148339efdee4b034ea3b96b4",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetRAPIDStringResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsSetRAPIDSymbolRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0654a5a8e5ec42f4feab54b086a008e02a74d44df65d2fcf60f007736e3fec7d",
        `minimum` = 16,
        `maximum` = 720,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetRAPIDSymbolRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "path",
                `type` = "Ros1Abb_robot_msgsRAPIDSymbolPath",
                `array` = "",
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
            ),
            list(
                `name` = "value",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsSetRAPIDSymbolResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_a4ca0a8821337d1f16ba1f2ad2b232aceaba419308ca03b27f43dac427a32846",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetRAPIDSymbolResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsSetSpeedRatioRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_a6ac368d243d488901b03d5e4303600d5f0eaf62150801103e5f5f9c0863fab5",
        `minimum` = 1,
        `maximum` = 1,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetSpeedRatioRequest",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "speed_ratio",
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
        `symbol` = "Ros1Abb_robot_msgsSetSpeedRatioResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9775dc1029993d1dfdf5f3080e6ae4262177ba96cdc0fbe9851dc4fea16c70d8",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SetSpeedRatioResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Abb_robot_msgsSystemState",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2",
        `minimum` = 27,
        `maximum` = 2331,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/SystemState",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "header",
                `type` = "Ros1Std_msgsHeader",
                `array` = "",
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
                `name` = "motors_on",
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
                `name` = "auto_mode",
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
                `name` = "rapid_running",
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
                `name` = "rapid_tasks",
                `type` = "Ros1Abb_robot_msgsRAPIDTaskState",
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
                `element_minimum` = 7
            ),
            list(
                `name` = "mechanical_units",
                `type` = "Ros1Abb_robot_msgsMechanicalUnitState",
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
                `element_minimum` = 5
            )
        )
    ),
    list(
        `symbol` = "Ros1Abb_robot_msgsTriggerWithResultCodeRequest",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_999f63504788e522f7d0108a895cf35cd101e9a50856e480ae9edabf791bcf94",
        `minimum` = 0,
        `maximum` = 0,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/TriggerWithResultCodeRequest",
        `constants` = list(

        ),
        `fields` = list(

        )
    ),
    list(
        `symbol` = "Ros1Abb_robot_msgsTriggerWithResultCodeResponse",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_4ef5c987592e849766b82b7fd99a65b7a1e17605f3e3341c99803181887967ff",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "abb_robot_msgs/TriggerWithResultCodeResponse",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result_code",
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
                `name` = "message",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
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
        `symbol` = "Ros1Duration",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "normalized-duration",
        `ros_version` = 1,
        `native_type` = "duration",
        `constants` = list(

        ),
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
                `name` = "nsec",
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
        `symbol` = "Ros1Trajectory_msgsJointTrajectoryPoint",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5",
        `minimum` = 24,
        `maximum` = 408,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "trajectory_msgs/JointTrajectoryPoint",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "positions",
                `type` = "float64",
                `array` = "sequence",
                `count` = 12,
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
                `name` = "velocities",
                `type` = "float64",
                `array` = "sequence",
                `count` = 12,
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
                `name` = "accelerations",
                `type` = "float64",
                `array` = "sequence",
                `count` = 12,
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
                `count` = 12,
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
                `name` = "time_from_start",
                `type` = "Ros1Duration",
                `array` = "",
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
        `symbol` = "Ros1Trajectory_msgsJointTrajectory",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b",
        `minimum` = 24,
        `maximum` = 4168,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "trajectory_msgs/JointTrajectory",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "header",
                `type` = "Ros1Std_msgsHeader",
                `array` = "",
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
                `name` = "joint_names",
                `type` = "string",
                `array` = "sequence",
                `count` = 12,
                `string_bound` = 64,
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
                `name` = "points",
                `type` = "Ros1Trajectory_msgsJointTrajectoryPoint",
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
                `element_minimum` = 24
            )
        )
    ),
    list(
        `symbol` = "Ros1Control_msgsJointTolerance",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88",
        `minimum` = 28,
        `maximum` = 92,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "control_msgs/JointTolerance",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "name",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 64,
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
            )
        )
    ),
    list(
        `symbol` = "Ros1Control_msgsFollowJointTrajectoryGoal",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_e9fda6f9e732450f2cf1af046ceb67815e6e1a22105eda2fee38f8f470252d40",
        `minimum` = 40,
        `maximum` = 6392,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "control_msgs/FollowJointTrajectoryGoal",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "trajectory",
                `type` = "Ros1Trajectory_msgsJointTrajectory",
                `array` = "",
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
                `name` = "path_tolerance",
                `type` = "Ros1Control_msgsJointTolerance",
                `array` = "sequence",
                `count` = 12,
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
                `name` = "goal_tolerance",
                `type` = "Ros1Control_msgsJointTolerance",
                `array` = "sequence",
                `count` = 12,
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
                `name` = "goal_time_tolerance",
                `type` = "Ros1Duration",
                `array` = "",
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
        `symbol` = "Ros1Control_msgsFollowJointTrajectoryResult",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281",
        `minimum` = 8,
        `maximum` = 4104,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "control_msgs/FollowJointTrajectoryResult",
        `constants` = list(
            `SUCCESSFUL` = 0,
            `INVALID_GOAL` = -1,
            `INVALID_JOINTS` = -2,
            `OLD_HEADER_TIMESTAMP` = -3,
            `PATH_TOLERANCE_VIOLATED` = -4,
            `GOAL_TOLERANCE_VIOLATED` = -5
        ),
        `fields` = list(
            list(
                `name` = "error_code",
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
                `name` = "error_string",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 4096,
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
        `symbol` = "Ros1Control_msgsFollowJointTrajectoryFeedback",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_a1ad5a1f8a00b60f97d06209737993bd395d83d1a008705d65193b63933b62a8",
        `minimum` = 92,
        `maximum` = 2124,
        `semantics` = "",
        `ros_version` = 1,
        `native_type` = "control_msgs/FollowJointTrajectoryFeedback",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "header",
                `type` = "Ros1Std_msgsHeader",
                `array` = "",
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
                `name` = "joint_names",
                `type` = "string",
                `array` = "sequence",
                `count` = 12,
                `string_bound` = 64,
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
                `name` = "desired",
                `type` = "Ros1Trajectory_msgsJointTrajectoryPoint",
                `array` = "",
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
                `name` = "actual",
                `type` = "Ros1Trajectory_msgsJointTrajectoryPoint",
                `array` = "",
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
                `name` = "error",
                `type` = "Ros1Trajectory_msgsJointTrajectoryPoint",
                `array` = "",
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
        `symbol` = "Ros1Sensor_msgsJointState",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057",
        `minimum` = 32,
        `maximum` = 1200,
        `semantics` = "joint-state-optional-equal-length-arrays",
        `ros_version` = 1,
        `native_type` = "sensor_msgs/JointState",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "header",
                `type` = "Ros1Std_msgsHeader",
                `array` = "",
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
                `name` = "name",
                `type` = "string",
                `array` = "sequence",
                `count` = 12,
                `string_bound` = 64,
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
                `count` = 12,
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
                `count` = 12,
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
                `count` = 12,
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
    )
)

INTERFACES <- list(
    `abb_egm_msgs/EGMChannelState` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_egm_msgsEGMChannelState"
        )
    ),
    `abb_egm_msgs/EGMState` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_egm_msgsEGMState"
        )
    ),
    `abb_rapid_msgs/ConfData` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_msgsConfData"
        )
    ),
    `abb_rapid_msgs/ExtJoint` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_msgsExtJoint"
        )
    ),
    `abb_rapid_msgs/JointTarget` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_msgsJointTarget"
        )
    ),
    `abb_rapid_msgs/LoadData` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_msgsLoadData"
        )
    ),
    `abb_rapid_msgs/Orient` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_msgsOrient"
        )
    ),
    `abb_rapid_msgs/Pos` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_msgsPos"
        )
    ),
    `abb_rapid_msgs/Pose` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_msgsPose"
        )
    ),
    `abb_rapid_msgs/RobJoint` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_msgsRobJoint"
        )
    ),
    `abb_rapid_msgs/RobTarget` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_msgsRobTarget"
        )
    ),
    `abb_rapid_msgs/ToolData` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_msgsToolData"
        )
    ),
    `abb_rapid_msgs/WObjData` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_msgsWObjData"
        )
    ),
    `abb_rapid_sm_addin_msgs/EGMActivateSettings` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings"
        )
    ),
    `abb_rapid_sm_addin_msgs/EGMRunSettings` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_sm_addin_msgsEGMRunSettings"
        )
    ),
    `abb_rapid_sm_addin_msgs/EGMSettings` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_sm_addin_msgsEGMSettings"
        )
    ),
    `abb_rapid_sm_addin_msgs/EGMSetupSettings` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings"
        )
    ),
    `abb_rapid_sm_addin_msgs/EGMStopSettings` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_sm_addin_msgsEGMStopSettings"
        )
    ),
    `abb_rapid_sm_addin_msgs/GetEGMSettings` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0253027efaf2571537e2c984f07e6142fea0b9fcf5c92f7a2ff3f523ac7b8ef5",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest",
            `response` = "Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse"
        )
    ),
    `abb_rapid_sm_addin_msgs/RuntimeState` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_sm_addin_msgsRuntimeState"
        )
    ),
    `abb_rapid_sm_addin_msgs/SetEGMSettings` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9aec8cde2ed1ce2d454df1aa284bf6a2113fded4b3d2d7a45427edcf0a2f6855",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest",
            `response` = "Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse"
        )
    ),
    `abb_rapid_sm_addin_msgs/SetRAPIDRoutine` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_bcd1f315393a4b291d9ad86528938844a7483bf7385f40849e0ca918e66be1ed",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest",
            `response` = "Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse"
        )
    ),
    `abb_rapid_sm_addin_msgs/SetSGCommand` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_6e5da5a8605f0f37cbd5a408b01c313cfb1179c572dc389ff51bae9cd1ebc1ff",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest",
            `response` = "Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse"
        )
    ),
    `abb_rapid_sm_addin_msgs/StateMachineState` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_rapid_sm_addin_msgsStateMachineState"
        )
    ),
    `abb_robot_msgs/GetFileContents` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_04b138b00b5a3edf5039a157017e54e6891c359ee0f12c7a72ee8422d56e3f9f",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsGetFileContentsRequest",
            `response` = "Ros1Abb_robot_msgsGetFileContentsResponse"
        )
    ),
    `abb_robot_msgs/GetIOSignal` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_036fef3e3d5eb67bde7e4d8ee2d18e560b596339f4bf4be03d9cdf5576f9689f",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsGetIOSignalRequest",
            `response` = "Ros1Abb_robot_msgsGetIOSignalResponse"
        )
    ),
    `abb_robot_msgs/GetRAPIDBool` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_182a675f61922c9dc50b22e4a3ed26d91c48310a89f35984929f177b3a3c28e9",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsGetRAPIDBoolRequest",
            `response` = "Ros1Abb_robot_msgsGetRAPIDBoolResponse"
        )
    ),
    `abb_robot_msgs/GetRAPIDDnum` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_e87bf91cee65dba3d10a4b472869bd963a9aa6af745462937de5977ef6d5a449",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsGetRAPIDDnumRequest",
            `response` = "Ros1Abb_robot_msgsGetRAPIDDnumResponse"
        )
    ),
    `abb_robot_msgs/GetRAPIDNum` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c35b8a47d36559867fe63d94cfecb62bfad30640bacec4827b392e21d9fa96e6",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsGetRAPIDNumRequest",
            `response` = "Ros1Abb_robot_msgsGetRAPIDNumResponse"
        )
    ),
    `abb_robot_msgs/GetRAPIDString` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_1281ff249af9139dab85872208e457616bd1ce0a2e467c57b67b39731eb04b44",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsGetRAPIDStringRequest",
            `response` = "Ros1Abb_robot_msgsGetRAPIDStringResponse"
        )
    ),
    `abb_robot_msgs/GetRAPIDSymbol` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7986012d8ad079e263d9b3c64b58e2a9df4e11fa0888aeccfb5bd5e4a37d60e7",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsGetRAPIDSymbolRequest",
            `response` = "Ros1Abb_robot_msgsGetRAPIDSymbolResponse"
        )
    ),
    `abb_robot_msgs/GetRobotControllerDescription` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_2b6a26336ee541bda91cf0a87657fffccaa128dca88870405939d475351f277f",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest",
            `response` = "Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse"
        )
    ),
    `abb_robot_msgs/GetSpeedRatio` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9b8666adc03ec3d5542d4e7a14bbfb521881dec822629550296ab7413a1178c7",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsGetSpeedRatioRequest",
            `response` = "Ros1Abb_robot_msgsGetSpeedRatioResponse"
        )
    ),
    `abb_robot_msgs/MechanicalUnitState` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_robot_msgsMechanicalUnitState"
        )
    ),
    `abb_robot_msgs/RAPIDSymbolPath` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_robot_msgsRAPIDSymbolPath"
        )
    ),
    `abb_robot_msgs/RAPIDTaskState` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_robot_msgsRAPIDTaskState"
        )
    ),
    `abb_robot_msgs/ServiceResponses` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros1Abb_robot_msgsServiceResponses"
        )
    ),
    `abb_robot_msgs/SetFileContents` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ff990d5dc508f98a3da7be8a384058a19d333f9e4838e86b71091e24bff7eb64",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsSetFileContentsRequest",
            `response` = "Ros1Abb_robot_msgsSetFileContentsResponse"
        )
    ),
    `abb_robot_msgs/SetIOSignal` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8ff8f149fadfaffd6f582f2090fd182a16b9a3d43858ae66d042d7365a880839",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsSetIOSignalRequest",
            `response` = "Ros1Abb_robot_msgsSetIOSignalResponse"
        )
    ),
    `abb_robot_msgs/SetRAPIDBool` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5b029cc2edc4850b305ff775050ae8f0034e8220c6e2b5c7296459154c4dcf3f",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsSetRAPIDBoolRequest",
            `response` = "Ros1Abb_robot_msgsSetRAPIDBoolResponse"
        )
    ),
    `abb_robot_msgs/SetRAPIDDnum` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_97eda55ed270b85a3bdb51b8ab78871daff9d633b3b78d3c8a2ec2548ebe6d6d",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsSetRAPIDDnumRequest",
            `response` = "Ros1Abb_robot_msgsSetRAPIDDnumResponse"
        )
    ),
    `abb_robot_msgs/SetRAPIDNum` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7dd40d2cdd66be9f56dd41e2b78e3b80df54dcbfd7443ba69d11a9329754476e",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsSetRAPIDNumRequest",
            `response` = "Ros1Abb_robot_msgsSetRAPIDNumResponse"
        )
    ),
    `abb_robot_msgs/SetRAPIDString` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_b352ad129019c8685cb84955b6d97e01ffe11e420cb3a6e49036e710435facdd",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsSetRAPIDStringRequest",
            `response` = "Ros1Abb_robot_msgsSetRAPIDStringResponse"
        )
    ),
    `abb_robot_msgs/SetRAPIDSymbol` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_44ff20c39fd153e71cb0241fde5920443443d3647af86b456665c1110313bdbf",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsSetRAPIDSymbolRequest",
            `response` = "Ros1Abb_robot_msgsSetRAPIDSymbolResponse"
        )
    ),
    `abb_robot_msgs/SetSpeedRatio` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_759ba188de8b29ddf84bb52f7a628e39ae89e05f522077531efc1c6ed0241bb6",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsSetSpeedRatioRequest",
            `response` = "Ros1Abb_robot_msgsSetSpeedRatioResponse"
        )
    ),
    `abb_robot_msgs/SystemState` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Abb_robot_msgsSystemState"
        )
    ),
    `abb_robot_msgs/TriggerWithResultCode` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5c859961ac03d6fafad46d79023a88cda8e5e609c341cd57659fa8effe7c367c",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros1Abb_robot_msgsTriggerWithResultCodeRequest",
            `response` = "Ros1Abb_robot_msgsTriggerWithResultCodeResponse"
        )
    ),
    `control_msgs/FollowJointTrajectory` = list(
        `kind` = "action",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_a0838ba66a1bcbcc3313564322c7ded0504bc86cb7138a77e7b8e22c94b3b2d2",
        `registered` = TRUE,
        `components` = list(
            `goal` = "Ros1Control_msgsFollowJointTrajectoryGoal",
            `result` = "Ros1Control_msgsFollowJointTrajectoryResult",
            `feedback` = "Ros1Control_msgsFollowJointTrajectoryFeedback"
        )
    ),
    `control_msgs/JointTolerance` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros1Control_msgsJointTolerance"
        )
    ),
    `sensor_msgs/JointState` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros1Sensor_msgsJointState"
        )
    ),
    `std_msgs/Header` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros1Std_msgsHeader"
        )
    ),
    `trajectory_msgs/JointTrajectory` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros1Trajectory_msgsJointTrajectory"
        )
    ),
    `trajectory_msgs/JointTrajectoryPoint` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros1Trajectory_msgsJointTrajectoryPoint"
        )
    )
)

#' @brief Construct one complete value with native defaults and strict original field names.
#' @param symbol Exact source-derived record symbol.
#' @param values Named list of original field overrides.
#' @return Owned complete record; validation failures raise an R condition.
record <- function(symbol, values = list()) { roswasm::record(SCHEMAS, symbol, values) }

#' @brief Encode every field under complete finite bounds.
#' @param value Complete generated value.
#' @return Owned raw vector; malformed values raise a condition before publication.
encode <- function(value) { roswasm::encode(SCHEMAS, value) }

#' @brief Transactionally decode exactly one complete canonical value.
#' @param symbol Original full record symbol.
#' @param bytes Whole raw-vector input; trailing or truncated input is rejected.
#' @return Fresh complete value or a codec condition.
decode <- function(symbol, bytes) { roswasm::decode(SCHEMAS, symbol, bytes) }
