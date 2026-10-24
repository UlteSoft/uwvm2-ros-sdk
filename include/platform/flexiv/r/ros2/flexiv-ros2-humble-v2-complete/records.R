#' @file records.R
#' @brief Preserve every original field, constant, bound and interface component.
#' @details Int64/uint64 values use exact typed raw words from the shared wire.
#' Native type identity remains unbound until a matching runtime/native registry
#' supplies it. Local codec identity is not a ROS grant or native type identity.
#' Units, frames and full field meanings remain those of the original catalog
#' and the complete locale API reference. No additional native resources open.
#' @return UwvmFlexivRos2HumbleV2 contains complete codecs and original interface roles.
UwvmFlexivRos2HumbleV2 <- local({
    UwvmRos <- roswasm_wire()
    schemas <- list(
        list(
            `symbol` = "Ros2Builtin_interfacesMsgTime",
            `native_type` = "builtin_interfaces/msg/Time",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "normalized-time",
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
            `symbol` = "Ros2Flexiv_msgsActionGrasp_Goal",
            `native_type` = "flexiv_msgs/action/Grasp_Goal",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce",
            `minimum` = 8,
            `maximum` = 8,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "force",
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
            `symbol` = "Ros2Flexiv_msgsActionGrasp_Result",
            `native_type` = "flexiv_msgs/action/Grasp_Result",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a",
            `minimum` = 5,
            `maximum` = 261,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
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
                    `name` = "error",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 256,
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
            `symbol` = "Ros2Flexiv_msgsActionGrasp_Feedback",
            `native_type` = "flexiv_msgs/action/Grasp_Feedback",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05",
            `minimum` = 17,
            `maximum` = 17,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "current_width",
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
                    `name` = "current_force",
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
                    `name` = "moving",
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
            `symbol` = "Ros2Flexiv_msgsActionMove_Goal",
            `native_type` = "flexiv_msgs/action/Move_Goal",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2",
            `minimum` = 24,
            `maximum` = 24,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "width",
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
                    `name` = "max_force",
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
            `symbol` = "Ros2Flexiv_msgsActionMove_Result",
            `native_type` = "flexiv_msgs/action/Move_Result",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d",
            `minimum` = 5,
            `maximum` = 261,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
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
                    `name` = "error",
                    `type` = "string",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 256,
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
            `symbol` = "Ros2Flexiv_msgsActionMove_Feedback",
            `native_type` = "flexiv_msgs/action/Move_Feedback",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38",
            `minimum` = 17,
            `maximum` = 17,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "current_width",
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
                    `name` = "current_force",
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
                    `name` = "moving",
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
            `symbol` = "Ros2Flexiv_msgsMsgDigital",
            `native_type` = "flexiv_msgs/msg/Digital",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf",
            `minimum` = 2,
            `maximum` = 2,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "pin",
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
                    `name` = "state",
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
            `symbol` = "Ros2Flexiv_msgsMsgGPIOStates",
            `native_type` = "flexiv_msgs/msg/GPIOStates",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14",
            `minimum` = 4,
            `maximum` = 68,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "states",
                    `type` = "Ros2Flexiv_msgsMsgDigital",
                    `array` = "sequence",
                    `count` = 32,
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
            `symbol` = "Ros2Flexiv_msgsMsgJointPosVel",
            `native_type` = "flexiv_msgs/msg/JointPosVel",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca",
            `minimum` = 8,
            `maximum` = 520,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "positions",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 32,
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
                    `count` = 32,
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
            `symbol` = "Ros2Flexiv_msgsMsgMode",
            `native_type` = "flexiv_msgs/msg/Mode",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6",
            `minimum` = 1,
            `maximum` = 1,
            `semantics` = "",
            `constants` = list(
                `MODE_UNKNOWN` = -1,
                `MODE_IDLE` = 0,
                `MODE_RT_JOINT_TORQUE` = 1,
                `MODE_RT_JOINT_IMPEDANCE` = 2,
                `MODE_NRT_JOINT_IMPEDANCE` = 3,
                `MODE_RT_JOINT_POSITION` = 4,
                `MODE_NRT_JOINT_POSITION` = 5,
                `MODE_NRT_PLAN_EXECUTION` = 6,
                `MODE_NRT_PRIMITIVE_EXECUTION` = 7,
                `MODE_RT_CARTESIAN_MOTION_FORCE` = 8,
                `MODE_NRT_CARTESIAN_MOTION_FORCE` = 9,
                `MODE_NRT_SUPER_PRIMITIVE` = 10
            ),
            `fields` = list(
                list(
                    `name` = "mode",
                    `type` = "int8",
                    `array` = "",
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
            `symbol` = "Ros2Std_msgsMsgHeader",
            `native_type` = "std_msgs/msg/Header",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b",
            `minimum` = 12,
            `maximum` = 268,
            `semantics` = "",
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
                    `string_bound` = 256,
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
            `symbol` = "Ros2Geometry_msgsMsgPoint",
            `native_type` = "geometry_msgs/msg/Point",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
            `minimum` = 24,
            `maximum` = 24,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "x",
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
                    `name` = "y",
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
                    `name` = "z",
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
            `symbol` = "Ros2Geometry_msgsMsgQuaternion",
            `native_type` = "geometry_msgs/msg/Quaternion",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
            `minimum` = 32,
            `maximum` = 32,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "x",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = "0.0",
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8,
                    `default` = 0.0
                ),
                list(
                    `name` = "y",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = "0.0",
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8,
                    `default` = 0.0
                ),
                list(
                    `name` = "z",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = "0.0",
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8,
                    `default` = 0.0
                ),
                list(
                    `name` = "w",
                    `type` = "float64",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = "1.0",
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 8,
                    `default` = 1.0
                )
            )
        ),
        list(
            `symbol` = "Ros2Geometry_msgsMsgPose",
            `native_type` = "geometry_msgs/msg/Pose",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
            `minimum` = 56,
            `maximum` = 56,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "position",
                    `type` = "Ros2Geometry_msgsMsgPoint",
                    `array` = "",
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
                    `name` = "orientation",
                    `type` = "Ros2Geometry_msgsMsgQuaternion",
                    `array` = "",
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
            `symbol` = "Ros2Geometry_msgsMsgPoseStamped",
            `native_type` = "geometry_msgs/msg/PoseStamped",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad",
            `minimum` = 68,
            `maximum` = 324,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Std_msgsMsgHeader",
                    `array` = "",
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
                    `name` = "pose",
                    `type` = "Ros2Geometry_msgsMsgPose",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 56
                )
            )
        ),
        list(
            `symbol` = "Ros2Geometry_msgsMsgVector3",
            `native_type` = "geometry_msgs/msg/Vector3",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
            `minimum` = 24,
            `maximum` = 24,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "x",
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
                    `name` = "y",
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
                    `name` = "z",
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
            `symbol` = "Ros2Geometry_msgsMsgTwist",
            `native_type` = "geometry_msgs/msg/Twist",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
            `minimum` = 48,
            `maximum` = 48,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "linear",
                    `type` = "Ros2Geometry_msgsMsgVector3",
                    `array` = "",
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
                    `name` = "angular",
                    `type` = "Ros2Geometry_msgsMsgVector3",
                    `array` = "",
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
            `symbol` = "Ros2Geometry_msgsMsgTwistStamped",
            `native_type` = "geometry_msgs/msg/TwistStamped",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308",
            `minimum` = 60,
            `maximum` = 316,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Std_msgsMsgHeader",
                    `array` = "",
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
                    `name` = "twist",
                    `type` = "Ros2Geometry_msgsMsgTwist",
                    `array` = "",
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
                )
            )
        ),
        list(
            `symbol` = "Ros2Geometry_msgsMsgWrench",
            `native_type` = "geometry_msgs/msg/Wrench",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6",
            `minimum` = 48,
            `maximum` = 48,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "force",
                    `type` = "Ros2Geometry_msgsMsgVector3",
                    `array` = "",
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
                    `name` = "torque",
                    `type` = "Ros2Geometry_msgsMsgVector3",
                    `array` = "",
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
            `symbol` = "Ros2Geometry_msgsMsgWrenchStamped",
            `native_type` = "geometry_msgs/msg/WrenchStamped",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177",
            `minimum` = 60,
            `maximum` = 316,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Std_msgsMsgHeader",
                    `array` = "",
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
                    `name` = "wrench",
                    `type` = "Ros2Geometry_msgsMsgWrench",
                    `array` = "",
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
                )
            )
        ),
        list(
            `symbol` = "Ros2Flexiv_msgsMsgRobotStates",
            `native_type` = "flexiv_msgs/msg/RobotStates",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a",
            `minimum` = 552,
            `maximum` = 5160,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "header",
                    `type` = "Ros2Std_msgsMsgHeader",
                    `array` = "",
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
                    `name` = "robot_timestamp",
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
                    `name` = "q",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 32,
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
                    `name` = "theta",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 32,
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
                    `name` = "dq",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 32,
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
                    `name` = "dtheta",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 32,
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
                    `name` = "tau",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 32,
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
                    `name` = "tau_dot",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 32,
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
                    `name` = "tau_ext",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 32,
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
                    `name` = "tau_interact",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 32,
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
                    `name` = "temperature",
                    `type` = "float64",
                    `array` = "sequence",
                    `count` = 32,
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
                    `name` = "tcp_pose",
                    `type` = "Ros2Geometry_msgsMsgPoseStamped",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 68
                ),
                list(
                    `name` = "tcp_twist",
                    `type` = "Ros2Geometry_msgsMsgTwistStamped",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 60
                ),
                list(
                    `name` = "flange_pose",
                    `type` = "Ros2Geometry_msgsMsgPoseStamped",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 68
                ),
                list(
                    `name` = "raw_ft_sensor",
                    `type` = "Ros2Geometry_msgsMsgWrenchStamped",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 60
                ),
                list(
                    `name` = "tcp_wrench_local",
                    `type` = "Ros2Geometry_msgsMsgWrenchStamped",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 60
                ),
                list(
                    `name` = "tcp_wrench",
                    `type` = "Ros2Geometry_msgsMsgWrenchStamped",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 60
                ),
                list(
                    `name` = "raw_tcp_wrench_local",
                    `type` = "Ros2Geometry_msgsMsgWrenchStamped",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 60
                ),
                list(
                    `name` = "raw_tcp_wrench",
                    `type` = "Ros2Geometry_msgsMsgWrenchStamped",
                    `array` = "",
                    `count` = 0,
                    `string_bound` = 0,
                    `native_string_bound` = 0,
                    `native_sequence_bound` = 0,
                    `native_default` = NULL,
                    `native_scalar` = "",
                    `string_encoding` = "utf8",
                    `float_policy` = "finite",
                    `raw` = FALSE,
                    `element_minimum` = 60
                )
            )
        )
    )
    list(records = UwvmRos$records(schemas), interfaces = list(
        list(
            `type` = "builtin_interfaces/msg/Time",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
            `components` = list(
                `message` = "Ros2Builtin_interfacesMsgTime"
            )
        ),
        list(
            `type` = "flexiv_msgs/action/Grasp",
            `kind` = "action",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_fc44c561773bdf618c65d2a233c42f9b530cf6ab9c3a27320efaa17e2bf50942",
            `components` = list(
                `goal` = "Ros2Flexiv_msgsActionGrasp_Goal",
                `result` = "Ros2Flexiv_msgsActionGrasp_Result",
                `feedback` = "Ros2Flexiv_msgsActionGrasp_Feedback"
            )
        ),
        list(
            `type` = "flexiv_msgs/action/Move",
            `kind` = "action",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_b23a0ce92a7815570ac3e651cf50ab3e192258fb790ffad687c3c515551067da",
            `components` = list(
                `goal` = "Ros2Flexiv_msgsActionMove_Goal",
                `result` = "Ros2Flexiv_msgsActionMove_Result",
                `feedback` = "Ros2Flexiv_msgsActionMove_Feedback"
            )
        ),
        list(
            `type` = "flexiv_msgs/msg/Digital",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf",
            `components` = list(
                `message` = "Ros2Flexiv_msgsMsgDigital"
            )
        ),
        list(
            `type` = "flexiv_msgs/msg/GPIOStates",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14",
            `components` = list(
                `message` = "Ros2Flexiv_msgsMsgGPIOStates"
            )
        ),
        list(
            `type` = "flexiv_msgs/msg/JointPosVel",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca",
            `components` = list(
                `message` = "Ros2Flexiv_msgsMsgJointPosVel"
            )
        ),
        list(
            `type` = "flexiv_msgs/msg/Mode",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6",
            `components` = list(
                `message` = "Ros2Flexiv_msgsMsgMode"
            )
        ),
        list(
            `type` = "flexiv_msgs/msg/RobotStates",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a",
            `components` = list(
                `message` = "Ros2Flexiv_msgsMsgRobotStates"
            )
        ),
        list(
            `type` = "geometry_msgs/msg/Point",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgPoint"
            )
        ),
        list(
            `type` = "geometry_msgs/msg/Pose",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgPose"
            )
        ),
        list(
            `type` = "geometry_msgs/msg/PoseStamped",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad",
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgPoseStamped"
            )
        ),
        list(
            `type` = "geometry_msgs/msg/Quaternion",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgQuaternion"
            )
        ),
        list(
            `type` = "geometry_msgs/msg/Twist",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgTwist"
            )
        ),
        list(
            `type` = "geometry_msgs/msg/TwistStamped",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308",
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgTwistStamped"
            )
        ),
        list(
            `type` = "geometry_msgs/msg/Vector3",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgVector3"
            )
        ),
        list(
            `type` = "geometry_msgs/msg/Wrench",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6",
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgWrench"
            )
        ),
        list(
            `type` = "geometry_msgs/msg/WrenchStamped",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177",
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgWrenchStamped"
            )
        ),
        list(
            `type` = "std_msgs/msg/Header",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b",
            `components` = list(
                `message` = "Ros2Std_msgsMsgHeader"
            )
        )
    ))
})
