# @file records.R
# @brief All 51 complete original ROS 1 vendor values.
# @details The module exposes only an ordinary owned namespace list.
UwvmFourierRos1AuroraBridgeV1 <- local({
    schemas <- list(
        list(
            `symbol` = "Ros1Uwvm_fourier_bridgeMotionRecipe",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a",
            `minimum` = 18,
            `maximum` = 1170,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/MotionRecipe",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeExecuteMoveRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b",
            `minimum` = 12,
            `maximum` = 9372,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/ExecuteMoveRequest",
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
                    `type` = "Ros1Uwvm_fourier_bridgeMotionRecipe",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeExecuteMoveResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/ExecuteMoveResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetBaseDataRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetBaseDataRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetBaseDataResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a",
            `minimum` = 12,
            `maximum` = 652,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetBaseDataResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetCartesianStateRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae",
            `minimum` = 16,
            `maximum` = 272,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetCartesianStateRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetCartesianStateResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671",
            `minimum` = 12,
            `maximum` = 652,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetCartesianStateResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetContactDataRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetContactDataRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetContactDataResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293",
            `minimum` = 12,
            `maximum` = 652,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetContactDataResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetFsmNameRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetFsmNameRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetFsmNameResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55",
            `minimum` = 12,
            `maximum` = 268,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetFsmNameResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetFsmStateRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetFsmStateRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetFsmStateResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetFsmStateResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetGroupMotionStateRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetGroupMotionStateResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576",
            `minimum` = 16,
            `maximum` = 272,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetGroupMotorCfgRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72",
            `minimum` = 12,
            `maximum` = 652,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetGroupMotorCfgResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetGroupStateRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc",
            `minimum` = 16,
            `maximum` = 272,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetGroupStateRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetGroupStateResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb",
            `minimum` = 12,
            `maximum` = 652,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetGroupStateResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetSnapshotRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetSnapshotRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGroupState",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855",
            `minimum` = 20,
            `maximum` = 1684,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GroupState",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeStatus",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e",
            `minimum` = 32,
            `maximum` = 14400,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/Status",
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
                    `type` = "Ros1Uwvm_fourier_bridgeGroupState",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetSnapshotResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a",
            `minimum` = 40,
            `maximum` = 14536,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetSnapshotResponse",
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
                    `type` = "Ros1Uwvm_fourier_bridgeStatus",
                    `array` = "",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetStandPoseRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetStandPoseRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetStandPoseResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d",
            `minimum` = 12,
            `maximum` = 652,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetStandPoseResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetUpperFsmNameRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe",
            `minimum` = 12,
            `maximum` = 268,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetUpperFsmNameResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetUpperFsmStateRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetUpperFsmStateResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetVelocitySourceRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetVelocitySourceResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetVelocitySourceNameRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b",
            `minimum` = 12,
            `maximum` = 268,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GetVelocitySourceNameResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeGroupValues",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c",
            `minimum` = 8,
            `maximum` = 648,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/GroupValues",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetFsmStateRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885",
            `minimum` = 12,
            `maximum` = 12,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetFsmStateRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetFsmStateResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetFsmStateResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetGroupCommandRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220",
            `minimum` = 20,
            `maximum` = 15572,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetGroupCommandRequest",
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
                    `type` = "Ros1Uwvm_fourier_bridgeGroupValues",
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
                    `type` = "Ros1Uwvm_fourier_bridgeGroupValues",
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
                    `type` = "Ros1Uwvm_fourier_bridgeGroupValues",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetGroupCommandResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetGroupCommandResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d",
            `minimum` = 16,
            `maximum` = 10384,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetMotorCfgPdRequest",
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
                    `type` = "Ros1Uwvm_fourier_bridgeGroupValues",
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
                    `type` = "Ros1Uwvm_fourier_bridgeGroupValues",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetMotorCfgPdResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetStandPoseRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed",
            `minimum` = 32,
            `maximum` = 32,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetStandPoseRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetStandPoseResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetStandPoseResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758",
            `minimum` = 12,
            `maximum` = 12,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetUpperFsmStateRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetUpperFsmStateResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetVelocityRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d",
            `minimum` = 40,
            `maximum` = 40,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetVelocityRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetVelocityResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetVelocityResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb",
            `minimum` = 12,
            `maximum` = 12,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetVelocitySourceRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be",
            `minimum` = 8,
            `maximum` = 136,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/SetVelocitySourceResponse",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeVelocityCommand",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54",
            `minimum` = 40,
            `maximum` = 40,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/VelocityCommand",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33",
            `minimum` = 28,
            `maximum` = 1084,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest",
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
            `symbol` = "Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8",
            `minimum` = 9,
            `maximum` = 137,
            `semantics` = "",
            `ros_version` = 1,
            `native_type` = "uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse",
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
        `uwvm_fourier_bridge/ExecuteMove` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_deeffa3aad6e2da3a618b552536764447c31864566234b818258001ebb0436a2",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeExecuteMoveRequest",
                `response` = "Ros1Uwvm_fourier_bridgeExecuteMoveResponse"
            )
        ),
        `uwvm_fourier_bridge/GetBaseData` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a69d14d8868fce46927a5772eca976e2884ce8b4f52ff2f0533ecfbf1943b677",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetBaseDataRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetBaseDataResponse"
            )
        ),
        `uwvm_fourier_bridge/GetCartesianState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_0b698ced40e7974c5fc6df952cb2762a2763df9b8ce4a99eea04e5828de18e6b",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetCartesianStateRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetCartesianStateResponse"
            )
        ),
        `uwvm_fourier_bridge/GetContactData` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_d8048fb82be890dec829230cf13ae650f6e1c7a80de26cc6b30f23084ab4cda1",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetContactDataRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetContactDataResponse"
            )
        ),
        `uwvm_fourier_bridge/GetFsmName` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3051fed770a2fd9262cbc456a70abeedd8b4744dd3baf8f8bc43a069562827fd",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetFsmNameRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetFsmNameResponse"
            )
        ),
        `uwvm_fourier_bridge/GetFsmState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_1559b3e88de4d7be4e72bffce5ebe8cf985351e1f9742c583af9acbe3d0cb4c0",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetFsmStateRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetFsmStateResponse"
            )
        ),
        `uwvm_fourier_bridge/GetGroupMotionState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ca5563b3e6079da8363bfc3552215525a4073e94c98846277b1838fce92f0751",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse"
            )
        ),
        `uwvm_fourier_bridge/GetGroupMotorCfg` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_55c6e9f68cdfd862edfd5e6c9f2336ffed6fbb6835e0b7f6ffaa122a5ef03f0d",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse"
            )
        ),
        `uwvm_fourier_bridge/GetGroupState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c28464322ce334785df352c6720733acbcf432dbcd56b95a503bb3c77d1c5238",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetGroupStateRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetGroupStateResponse"
            )
        ),
        `uwvm_fourier_bridge/GetSnapshot` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_cbeaf65ef032acea69622f2ec3bab363615554228ab5e04123a885d7467a78f1",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetSnapshotRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetSnapshotResponse"
            )
        ),
        `uwvm_fourier_bridge/GetStandPose` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5baffcec74970b8d31b0d951f712c9c9adaa9df903a3292cb1fa3ad28bfdd64f",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetStandPoseRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetStandPoseResponse"
            )
        ),
        `uwvm_fourier_bridge/GetUpperFsmName` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6beab05a6e9fb183b562b658b66dbc5cb0d82cc95831ff2d5d741bca012f8f59",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse"
            )
        ),
        `uwvm_fourier_bridge/GetUpperFsmState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_2737f6560ad81a36121a157081603fbca207c069f66f7bffbc5c4d880e296523",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse"
            )
        ),
        `uwvm_fourier_bridge/GetVelocitySource` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b083c599b73b832376227edeec4eb05a733f1ab43dd14f39d3ad9822ac7b33ec",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse"
            )
        ),
        `uwvm_fourier_bridge/GetVelocitySourceName` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_f7ca412ae514e558ba841eb431f6c0947e76aef2f6ae4622e2a6f3b11bfe237d",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest",
                `response` = "Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse"
            )
        ),
        `uwvm_fourier_bridge/GroupState` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros1Uwvm_fourier_bridgeGroupState"
            )
        ),
        `uwvm_fourier_bridge/GroupValues` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros1Uwvm_fourier_bridgeGroupValues"
            )
        ),
        `uwvm_fourier_bridge/MotionRecipe` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros1Uwvm_fourier_bridgeMotionRecipe"
            )
        ),
        `uwvm_fourier_bridge/SetFsmState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7eb58a3b22e4ebd0948b4da9f66cea93db2c655454c858cc34c384ef6e1140fe",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeSetFsmStateRequest",
                `response` = "Ros1Uwvm_fourier_bridgeSetFsmStateResponse"
            )
        ),
        `uwvm_fourier_bridge/SetGroupCommand` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_0361c94252f73f79a79dd3eb367169a0d4a71e3c9f67337fc7f4e2ad4d88af07",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeSetGroupCommandRequest",
                `response` = "Ros1Uwvm_fourier_bridgeSetGroupCommandResponse"
            )
        ),
        `uwvm_fourier_bridge/SetMotorCfgPd` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ce75a3d9c17f19c27ce31406d1ed3eab065f8a0358b20154b6bfc78cbb5248df",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest",
                `response` = "Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse"
            )
        ),
        `uwvm_fourier_bridge/SetStandPose` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ac9c3bb559aad292ec34750b837c2b8bfddeffcf6da6792858371b69927b2ca9",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeSetStandPoseRequest",
                `response` = "Ros1Uwvm_fourier_bridgeSetStandPoseResponse"
            )
        ),
        `uwvm_fourier_bridge/SetUpperFsmState` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5c0b2b0cf2004c1d44c0dcfc9b9cc83fda6ac77f371f24a03b473a28b57c6278",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest",
                `response` = "Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse"
            )
        ),
        `uwvm_fourier_bridge/SetVelocity` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a0142cffa88caa7d2bdd519de3ef361e556c0e7db9862464f60835e1852bba1a",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeSetVelocityRequest",
                `response` = "Ros1Uwvm_fourier_bridgeSetVelocityResponse"
            )
        ),
        `uwvm_fourier_bridge/SetVelocitySource` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_6bcc9b55a50010bbf3ff383c9f0f895783cf46b39339c04c718ac40e197c045c",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest",
                `response` = "Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse"
            )
        ),
        `uwvm_fourier_bridge/Status` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros1Uwvm_fourier_bridgeStatus"
            )
        ),
        `uwvm_fourier_bridge/VelocityCommand` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros1Uwvm_fourier_bridgeVelocityCommand"
            )
        ),
        `uwvm_fourier_bridge/WaitGroupsMotionComplete` = list(
            `kind` = "service",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_58aef86ba192bf64e8c97e03bb120fbdf4693df069c80043d15de89695031157",
            `registered` = TRUE,
            `components` = list(
                `request` = "Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest",
                `response` = "Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse"
            )
        )
    ))
})
