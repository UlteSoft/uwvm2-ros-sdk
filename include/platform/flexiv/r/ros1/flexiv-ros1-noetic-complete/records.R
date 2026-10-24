#' @file records.R
#' @brief Preserve every original field, constant, bound and interface component.
#' @details Int64/uint64 values use exact typed raw words from the shared wire.
#' Native type identity remains unbound until a matching runtime/native registry
#' supplies it. Local codec identity is not a ROS grant or native type identity.
#' Units, frames and full field meanings remain those of the original catalog
#' and the complete locale API reference. No additional native resources open.
#' @return UwvmFlexivRos1Noetic contains complete codecs and original interface roles.
UwvmFlexivRos1Noetic <- local({
    UwvmRos <- roswasm_wire()
    schemas <- list(
        list(
            `symbol` = "Ros1Flexiv_msgsJointPosVel",
            `native_type` = "flexiv_msgs/JointPosVel",
            `ros_version` = 1,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa",
            `minimum` = 112,
            `maximum` = 112,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "positions",
                    `type` = "float64",
                    `array` = "array",
                    `count` = 7,
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
                    `array` = "array",
                    `count` = 7,
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
            `symbol` = "Ros1Flexiv_msgsMode",
            `native_type` = "flexiv_msgs/Mode",
            `ros_version` = 1,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422",
            `minimum` = 1,
            `maximum` = 1,
            `semantics` = "",
            `constants` = list(
                `MODE_UNKNOWN` = -1,
                `MODE_IDLE` = 0,
                `MODE_RT_JOINT_TORQUE` = 1,
                `MODE_RT_JOINT_POSITION` = 2,
                `MODE_NRT_JOINT_POSITION` = 3,
                `MODE_NRT_PLAN_EXECUTION` = 4,
                `MODE_NRT_PRIMITIVE_EXECUTION` = 5,
                `MODE_RT_CARTESIAN_MOTION_FORCE_BASE` = 6,
                `MODE_RT_CARTESIAN_MOTION_FORCE_TCP` = 7,
                `MODE_NRT_CARTESIAN_MOTION_FORCE_BASE` = 8,
                `MODE_NRT_CARTESIAN_MOTION_FORCE_TCP` = 9
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
            `symbol` = "Ros1Geometry_msgsPoint",
            `native_type` = "geometry_msgs/Point",
            `ros_version` = 1,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b",
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
            `symbol` = "Ros1Geometry_msgsQuaternion",
            `native_type` = "geometry_msgs/Quaternion",
            `ros_version` = 1,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934",
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
                ),
                list(
                    `name` = "w",
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
            `symbol` = "Ros1Geometry_msgsPose",
            `native_type` = "geometry_msgs/Pose",
            `ros_version` = 1,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471",
            `minimum` = 56,
            `maximum` = 56,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "position",
                    `type` = "Ros1Geometry_msgsPoint",
                    `array` = "",
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
                    `type` = "Ros1Geometry_msgsQuaternion",
                    `array` = "",
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
            `symbol` = "Ros1Geometry_msgsVector3",
            `native_type` = "geometry_msgs/Vector3",
            `ros_version` = 1,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc",
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
            `symbol` = "Ros1Geometry_msgsAccel",
            `native_type` = "geometry_msgs/Accel",
            `ros_version` = 1,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed",
            `minimum` = 48,
            `maximum` = 48,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "linear",
                    `type` = "Ros1Geometry_msgsVector3",
                    `array` = "",
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
                    `type` = "Ros1Geometry_msgsVector3",
                    `array` = "",
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
            `symbol` = "Ros1Geometry_msgsWrench",
            `native_type` = "geometry_msgs/Wrench",
            `ros_version` = 1,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3",
            `minimum` = 48,
            `maximum` = 48,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "force",
                    `type` = "Ros1Geometry_msgsVector3",
                    `array` = "",
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
                    `type` = "Ros1Geometry_msgsVector3",
                    `array` = "",
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
            `symbol` = "Ros1Flexiv_msgsRobotStates",
            `native_type` = "flexiv_msgs/RobotStates",
            `ros_version` = 1,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8",
            `minimum` = 864,
            `maximum` = 864,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "q",
                    `type` = "float64",
                    `array` = "array",
                    `count` = 7,
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
                    `array` = "array",
                    `count` = 7,
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
                    `array` = "array",
                    `count` = 7,
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
                    `array` = "array",
                    `count` = 7,
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
                    `array` = "array",
                    `count` = 7,
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
                    `name` = "tau_des",
                    `type` = "float64",
                    `array` = "array",
                    `count` = 7,
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
                    `array` = "array",
                    `count` = 7,
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
                    `array` = "array",
                    `count` = 7,
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
                    `type` = "Ros1Geometry_msgsPose",
                    `array` = "",
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
                ),
                list(
                    `name` = "tcp_pose_des",
                    `type` = "Ros1Geometry_msgsPose",
                    `array` = "",
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
                ),
                list(
                    `name` = "tcp_vel",
                    `type` = "Ros1Geometry_msgsAccel",
                    `array` = "",
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
                    `name` = "cam_pose",
                    `type` = "Ros1Geometry_msgsPose",
                    `array` = "",
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
                ),
                list(
                    `name` = "flange_pose",
                    `type` = "Ros1Geometry_msgsPose",
                    `array` = "",
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
                ),
                list(
                    `name` = "ft_sensor_raw",
                    `type` = "Ros1Geometry_msgsWrench",
                    `array` = "",
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
                    `name` = "ext_wrench_tcp_frame",
                    `type` = "Ros1Geometry_msgsWrench",
                    `array` = "",
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
                    `name` = "ext_wrench_base_frame",
                    `type` = "Ros1Geometry_msgsWrench",
                    `array` = "",
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
        )
    )
    list(records = UwvmRos$records(schemas), interfaces = list(
        list(
            `type` = "flexiv_msgs/JointPosVel",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 1,
            `codec_identity` = "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa",
            `components` = list(
                `message` = "Ros1Flexiv_msgsJointPosVel"
            )
        ),
        list(
            `type` = "flexiv_msgs/Mode",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 1,
            `codec_identity` = "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422",
            `components` = list(
                `message` = "Ros1Flexiv_msgsMode"
            )
        ),
        list(
            `type` = "flexiv_msgs/RobotStates",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 1,
            `codec_identity` = "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8",
            `components` = list(
                `message` = "Ros1Flexiv_msgsRobotStates"
            )
        ),
        list(
            `type` = "geometry_msgs/Accel",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 1,
            `codec_identity` = "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed",
            `components` = list(
                `message` = "Ros1Geometry_msgsAccel"
            )
        ),
        list(
            `type` = "geometry_msgs/Point",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 1,
            `codec_identity` = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b",
            `components` = list(
                `message` = "Ros1Geometry_msgsPoint"
            )
        ),
        list(
            `type` = "geometry_msgs/Pose",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 1,
            `codec_identity` = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471",
            `components` = list(
                `message` = "Ros1Geometry_msgsPose"
            )
        ),
        list(
            `type` = "geometry_msgs/Quaternion",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 1,
            `codec_identity` = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934",
            `components` = list(
                `message` = "Ros1Geometry_msgsQuaternion"
            )
        ),
        list(
            `type` = "geometry_msgs/Vector3",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 1,
            `codec_identity` = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc",
            `components` = list(
                `message` = "Ros1Geometry_msgsVector3"
            )
        ),
        list(
            `type` = "geometry_msgs/Wrench",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 1,
            `codec_identity` = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3",
            `components` = list(
                `message` = "Ros1Geometry_msgsWrench"
            )
        )
    ))
})
