#' @file records.R
#' @brief Preserve every original field, constant, bound and interface component.
#' @details Int64/uint64 values use exact typed raw words from the shared wire.
#' Native type identity remains unbound until a matching runtime/native registry
#' supplies it. Local codec identity is not a ROS grant or native type identity.
#' Units, frames and full field meanings remain those of the original catalog
#' and the complete locale API reference. No additional native resources open.
#' @return UwvmFlexivRos2Foxy contains complete codecs and original interface roles.
UwvmFlexivRos2Foxy <- local({
    UwvmRos <- roswasm_wire()
    schemas <- list(
        list(
            `symbol` = "Ros2Flexiv_msgsMsgJointPosVel",
            `native_type` = "flexiv_msgs/msg/JointPosVel",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8",
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
            `symbol` = "Ros2Flexiv_msgsMsgMode",
            `native_type` = "flexiv_msgs/msg/Mode",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f",
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
            `symbol` = "Ros2Geometry_msgsMsgAccel",
            `native_type` = "geometry_msgs/msg/Accel",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde",
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
            `symbol` = "Ros2Flexiv_msgsMsgRobotStates",
            `native_type` = "flexiv_msgs/msg/RobotStates",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b",
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
                ),
                list(
                    `name` = "tcp_pose_des",
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
                ),
                list(
                    `name` = "tcp_vel",
                    `type` = "Ros2Geometry_msgsMsgAccel",
                    `array` = "",
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
                ),
                list(
                    `name` = "flange_pose",
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
                ),
                list(
                    `name` = "ft_sensor_raw",
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
                ),
                list(
                    `name` = "ext_wrench_tcp_frame",
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
                ),
                list(
                    `name` = "ext_wrench_base_frame",
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
        )
    )
    list(records = UwvmRos$records(schemas), interfaces = list(
        list(
            `type` = "flexiv_msgs/msg/JointPosVel",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8",
            `components` = list(
                `message` = "Ros2Flexiv_msgsMsgJointPosVel"
            )
        ),
        list(
            `type` = "flexiv_msgs/msg/Mode",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f",
            `components` = list(
                `message` = "Ros2Flexiv_msgsMsgMode"
            )
        ),
        list(
            `type` = "flexiv_msgs/msg/RobotStates",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b",
            `components` = list(
                `message` = "Ros2Flexiv_msgsMsgRobotStates"
            )
        ),
        list(
            `type` = "geometry_msgs/msg/Accel",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde",
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgAccel"
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
        )
    ))
})
