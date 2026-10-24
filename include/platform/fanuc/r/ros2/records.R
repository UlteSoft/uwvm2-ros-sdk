#' @file records.R
#' @brief Complete original FANUC ROS 2 record descriptors.
#' @details Uses the shared genuine-R codec/transport package. Exact 64-bit defaults use decimal strings.
#' Source descriptors preserve all native declarations; NULL identities require external native binding.
SCHEMAS <- list(
    list(
        `symbol` = "Ros2Builtin_interfacesMsgDuration",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "normalized-time",
        `ros_version` = 2,
        `native_type` = "builtin_interfaces/msg/Duration",
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
        `symbol` = "Ros2Builtin_interfacesMsgTime",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "normalized-time",
        `ros_version` = 2,
        `native_type` = "builtin_interfaces/msg/Time",
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
        `symbol` = "Ros2Std_msgsMsgHeader",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
        `minimum` = 12,
        `maximum` = 76,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "std_msgs/msg/Header",
        `constants` = list(

        ),
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
        `symbol` = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5",
        `minimum` = 24,
        `maximum` = 408,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "trajectory_msgs/msg/JointTrajectoryPoint",
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
                `type` = "Ros2Builtin_interfacesMsgDuration",
                `array` = "",
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
        `symbol` = "Ros2Trajectory_msgsMsgJointTrajectory",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0",
        `minimum` = 20,
        `maximum` = 4164,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "trajectory_msgs/msg/JointTrajectory",
        `constants` = list(

        ),
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
                `type` = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
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
        `symbol` = "Ros2Geometry_msgsMsgVector3",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
        `minimum` = 24,
        `maximum` = 24,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "geometry_msgs/msg/Vector3",
        `constants` = list(

        ),
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
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
        `minimum` = 32,
        `maximum` = 32,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "geometry_msgs/msg/Quaternion",
        `constants` = list(

        ),
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
        `symbol` = "Ros2Geometry_msgsMsgTransform",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
        `minimum` = 56,
        `maximum` = 56,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "geometry_msgs/msg/Transform",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "translation",
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
                `name` = "rotation",
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
        `symbol` = "Ros2Geometry_msgsMsgTwist",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
        `minimum` = 48,
        `maximum` = 48,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "geometry_msgs/msg/Twist",
        `constants` = list(

        ),
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
        `symbol` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242",
        `minimum` = 20,
        `maximum` = 324,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "transforms",
                `type` = "Ros2Geometry_msgsMsgTransform",
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
                `element_minimum` = 56
            ),
            list(
                `name` = "velocities",
                `type` = "Ros2Geometry_msgsMsgTwist",
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
                `element_minimum` = 48
            ),
            list(
                `name` = "accelerations",
                `type` = "Ros2Geometry_msgsMsgTwist",
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
                `element_minimum` = 48
            ),
            list(
                `name` = "time_from_start",
                `type` = "Ros2Builtin_interfacesMsgDuration",
                `array` = "",
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
        `symbol` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectory",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401",
        `minimum` = 20,
        `maximum` = 1516,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "trajectory_msgs/msg/MultiDOFJointTrajectory",
        `constants` = list(

        ),
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
                `name` = "joint_names",
                `type` = "string",
                `array` = "sequence",
                `count` = 2,
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
                `type` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
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
                `element_minimum` = 20
            )
        )
    ),
    list(
        `symbol` = "Ros2Control_msgsMsgJointTolerance",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2",
        `minimum` = 28,
        `maximum` = 92,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "control_msgs/msg/JointTolerance",
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
        `symbol` = "Ros2Control_msgsMsgJointComponentTolerance",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342",
        `minimum` = 30,
        `maximum` = 542,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "control_msgs/msg/JointComponentTolerance",
        `constants` = list(
            `X_AXIS` = 1,
            `Y_AXIS` = 2,
            `Z_AXIS` = 3,
            `TRANSLATION` = 4,
            `ROTATION` = 5
        ),
        `fields` = list(
            list(
                `name` = "joint_name",
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
                `name` = "component",
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
        `symbol` = "Ros2Control_msgsActionFollowJointTrajectory_Goal",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16",
        `minimum` = 64,
        `maximum` = 20920,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "control_msgs/action/FollowJointTrajectory_Goal",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "trajectory",
                `type` = "Ros2Trajectory_msgsMsgJointTrajectory",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 20
            ),
            list(
                `name` = "multi_dof_trajectory",
                `type` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectory",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 20
            ),
            list(
                `name` = "path_tolerance",
                `type` = "Ros2Control_msgsMsgJointTolerance",
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
                `name` = "component_path_tolerance",
                `type` = "Ros2Control_msgsMsgJointComponentTolerance",
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
                `element_minimum` = 30
            ),
            list(
                `name` = "goal_tolerance",
                `type` = "Ros2Control_msgsMsgJointTolerance",
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
                `name` = "component_goal_tolerance",
                `type` = "Ros2Control_msgsMsgJointComponentTolerance",
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
                `element_minimum` = 30
            ),
            list(
                `name` = "goal_time_tolerance",
                `type` = "Ros2Builtin_interfacesMsgDuration",
                `array` = "",
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
        `symbol` = "Ros2Control_msgsActionFollowJointTrajectory_Result",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70",
        `minimum` = 8,
        `maximum` = 4104,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "control_msgs/action/FollowJointTrajectory_Result",
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
        `symbol` = "Ros2Control_msgsActionFollowJointTrajectory_Feedback",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb",
        `minimum` = 152,
        `maximum` = 4128,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "control_msgs/action/FollowJointTrajectory_Feedback",
        `constants` = list(

        ),
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
                `type` = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                `array` = "",
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
                `type` = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                `array` = "",
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
                `type` = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                `array` = "",
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
                `name` = "multi_dof_joint_names",
                `type` = "string",
                `array` = "sequence",
                `count` = 2,
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
                `name` = "multi_dof_desired",
                `type` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 20
            ),
            list(
                `name` = "multi_dof_actual",
                `type` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 20
            ),
            list(
                `name` = "multi_dof_error",
                `type` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                `array` = "",
                `count` = 0,
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
        `symbol` = "Ros2Fanuc_msgsMsgIOType",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_1815aa6b1bcab1efe21de0e31570ca650553b5c70f0793301f82c0ca7934c586",
        `minimum` = 4,
        `maximum` = 68,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/IOType",
        `constants` = list(
            `AI` = "AI",
            `AO` = "AO",
            `DI` = "DI",
            `DO` = "DO",
            `RI` = "RI",
            `RO` = "RO",
            `SI` = "SI",
            `SO` = "SO",
            `WI` = "WI",
            `WO` = "WO",
            `UI` = "UI",
            `UO` = "UO",
            `WSI` = "WSI",
            `WSO` = "WSO",
            `F` = "F",
            `M` = "M",
            `GI` = "GI",
            `GO` = "GO"
        ),
        `fields` = list(
            list(
                `name` = "type",
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
        `symbol` = "Ros2Fanuc_msgsMsgAnalogIO",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d62097527ba99bf6e803283350161cd1415173a22eb3cb20331a232366076d00",
        `minimum` = 10,
        `maximum` = 74,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/AnalogIO",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "io_type",
                `type` = "Ros2Fanuc_msgsMsgIOType",
                `array` = "",
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
                `name` = "index",
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
        `symbol` = "Ros2Fanuc_msgsMsgAnalogIOCmd",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_62f38a088ed23f8daf7163f26514ae1aabd7b1b64845ccdbc281cb7839d857ba",
        `minimum` = 4,
        `maximum` = 2372,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/AnalogIOCmd",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "values",
                `type` = "Ros2Fanuc_msgsMsgAnalogIO",
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
                `element_minimum` = 10
            )
        )
    ),
    list(
        `symbol` = "Ros2Fanuc_msgsMsgAnalogIOState",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_820b41fecbf6db8e2b2e67d60cd1167cf474b22ca6c489f4d2d64dd33eaac9a4",
        `minimum` = 4,
        `maximum` = 2372,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/AnalogIOState",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "values",
                `type` = "Ros2Fanuc_msgsMsgAnalogIO",
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
                `element_minimum` = 10
            )
        )
    ),
    list(
        `symbol` = "Ros2Fanuc_msgsMsgBoolIO",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9209ae1b8f5407a31beface0a3286f58bd823aabdc560c2a4bf4a9b1ca125aa7",
        `minimum` = 7,
        `maximum` = 71,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/BoolIO",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "io_type",
                `type` = "Ros2Fanuc_msgsMsgIOType",
                `array` = "",
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
                `name` = "index",
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
        `symbol` = "Ros2Fanuc_msgsMsgCollaborativeSpeedScaling",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_693a3b581527d2eaf0f697f31e87ca2da428d1f51b821d42d6b06af387a2fb45",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/CollaborativeSpeedScaling",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "collaborative_speed_scaling",
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
        `symbol` = "Ros2Fanuc_msgsMsgConnectionStatus",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8ce24fb87538922b1f3c0ae856eb223d716143064eb46a6cfce5fec01b45b078",
        `minimum` = 1,
        `maximum` = 1,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/ConnectionStatus",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "is_connected",
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
        `symbol` = "Ros2Fanuc_msgsMsgForceSensor",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_06c99b43d7347646179850f3ba79192da7ce71296667d93d88659efbc1004032",
        `minimum` = 28,
        `maximum` = 28,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/ForceSensor",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "force_x",
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
                `name` = "force_y",
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
                `name` = "force_z",
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
                `name` = "moment_x",
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
                `name` = "moment_y",
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
                `name` = "moment_z",
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
                `name` = "fs_type",
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
        `symbol` = "Ros2Fanuc_msgsMsgFrame",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_609d1b7e49315f7f0a0fe86fa997673acd0d009e57b563690f36624b59b9effb",
        `minimum` = 24,
        `maximum` = 24,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/Frame",
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
            ),
            list(
                `name` = "w",
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
                `name` = "p",
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
                `name` = "r",
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
        `symbol` = "Ros2Fanuc_msgsMsgIOCmd",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_462552bbaa3c9ed4caaf3108960d514e4ab61fcf2d6a84f0465b485bec1de45d",
        `minimum` = 4,
        `maximum` = 2276,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/IOCmd",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "values",
                `type` = "Ros2Fanuc_msgsMsgBoolIO",
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
                `element_minimum` = 7
            )
        )
    ),
    list(
        `symbol` = "Ros2Fanuc_msgsMsgIOState",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_332533445014c03d626a2c4dbdffd9421748aa6b73f49d407441fd6b9f2b24d8",
        `minimum` = 4,
        `maximum` = 2276,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/IOState",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "values",
                `type` = "Ros2Fanuc_msgsMsgBoolIO",
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
                `element_minimum` = 7
            )
        )
    ),
    list(
        `symbol` = "Ros2Fanuc_msgsMsgNumReg",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0fb9344c5768ea52ab072939f368f1e73dcc0ff83e74b4cb6d35fca47c1d29cc",
        `minimum` = 6,
        `maximum` = 6,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/NumReg",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "index",
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
        `symbol` = "Ros2Fanuc_msgsMsgNumRegCmd",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9c76500073889377525a0802c46bd96589a2639dd9534cf7ad2b9956cd95b5b6",
        `minimum` = 4,
        `maximum` = 196,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/NumRegCmd",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "values",
                `type` = "Ros2Fanuc_msgsMsgNumReg",
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
                `element_minimum` = 6
            )
        )
    ),
    list(
        `symbol` = "Ros2Fanuc_msgsMsgNumRegState",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9c8ff4917a6dd033e6a6776ae8525e93c2924d776f05fd54e7e8d2251fc48b3a",
        `minimum` = 4,
        `maximum` = 196,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/NumRegState",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "values",
                `type` = "Ros2Fanuc_msgsMsgNumReg",
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
                `element_minimum` = 6
            )
        )
    ),
    list(
        `symbol` = "Ros2Fanuc_msgsMsgRMIStatus",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_dc2e7eaabf44807142581905838f8951653682a6c6d61ebcf56494b16a10d5e8",
        `minimum` = 24,
        `maximum` = 1048,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/RMIStatus",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "program_status",
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
                `name` = "next_sequence",
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
                `name` = "last_sequence",
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
                `name` = "last_sequence_error",
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
                `name` = "last_sequence_instruction",
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
                `name` = "last_sequence_error_message",
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
        `symbol` = "Ros2Fanuc_msgsMsgRobotStatus",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3f31ee3631dc6f4c90eb5ded6209ccebf0f4193ddfe5f5032bdd2bcd71f8cc31",
        `minimum` = 5,
        `maximum` = 5,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/RobotStatus",
        `constants` = list(
            `CONTACT_STOP_MODE_NONE` = 0,
            `CONTACT_STOP_MODE_SAFE` = 1,
            `CONTACT_STOP_MODE_STOP` = 2,
            `CONTACT_STOP_MODE_DSBL` = 3,
            `CONTACT_STOP_MODE_ESCP` = 4
        ),
        `fields` = list(
            list(
                `name` = "in_error",
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
                `name` = "tp_enabled",
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
                `name` = "e_stopped",
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
                `name` = "motion_possible",
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
                `name` = "contact_stop_mode",
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
        `symbol` = "Ros2Fanuc_msgsMsgRobotStatusExt",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8ba47a11bfbe02026fe79b32e1ed02e5f609499ea55bb57c9f09af9fba389648",
        `minimum` = 18,
        `maximum` = 1042,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/msg/RobotStatusExt",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "error_code",
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
                `name` = "in_motion",
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
                `name` = "drives_powered",
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
                `name` = "gen_override",
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
                `name` = "speed_clamp_limit",
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
                `name` = "control_mode",
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
        `symbol` = "Ros2Fanuc_msgsSrvCfgForceSensor_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_01973ed21546cb747ad2ce2a990a8ec4e70efb66e1c8fc8856cf1082870984ff",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/CfgForceSensor_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "do_reset",
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
                `name` = "fs_type",
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
        `symbol` = "Ros2Fanuc_msgsSrvCfgForceSensor_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_41799ce44c937b1524889391db61e2b4d35795055cb4bbacfe5cc8bbd5b9a37b",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/CfgForceSensor_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetAnalogIO_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_cd567f97de2de581975c3d4f280eec545dea37c941d316fc3708bbc4d3af94d9",
        `minimum` = 6,
        `maximum` = 70,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetAnalogIO_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "io_type",
                `type` = "Ros2Fanuc_msgsMsgIOType",
                `array` = "",
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
                `name` = "index",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetAnalogIO_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3b53d3ce95d95454a782778c160fcc102ead869c5681c9c67224c373fef1b217",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetAnalogIO_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetBoolIO_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ce8c4b1efd2828e92656e897baf041e8965367a236079231101807c898d4b50c",
        `minimum` = 6,
        `maximum` = 70,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetBoolIO_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "io_type",
                `type` = "Ros2Fanuc_msgsMsgIOType",
                `array` = "",
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
                `name` = "index",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetBoolIO_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7dbdcdde8d76c4ef422ea158551dd912273220c25a08f28fc8d19fdf8bc8a01c",
        `minimum` = 5,
        `maximum` = 5,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetBoolIO_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetCartesianPosition_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_a694a17bde88131efcadac4f134464a7777beab4b09e17624ae7b173ab62c3e4",
        `minimum` = 1,
        `maximum` = 1,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetCartesianPosition_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "group",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetCartesianPosition_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0516f0145717b06550674e02f0b9c47f9b312f4f361c791f56257fbb79e67329",
        `minimum` = 54,
        `maximum` = 54,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetCartesianPosition_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "timetag",
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
                `name` = "utool",
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
                `name` = "uframe",
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
                `name` = "front",
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
                `name` = "up",
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
                `name` = "left",
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
                `name` = "flip",
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
                `name` = "turn4",
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
            ),
            list(
                `name` = "turn5",
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
            ),
            list(
                `name` = "turn6",
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
            ),
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
            ),
            list(
                `name` = "w",
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
                `name` = "p",
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
                `name` = "r",
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
                `name` = "ext1",
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
                `name` = "ext2",
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
                `name` = "ext3",
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
                `name` = "group",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetGroupIO_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_dbd2e8e791e8debc745843827ed296b51bf84159f4c4fe5d912c231d621de216",
        `minimum` = 6,
        `maximum` = 70,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetGroupIO_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "io_type",
                `type` = "Ros2Fanuc_msgsMsgIOType",
                `array` = "",
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
                `name` = "index",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetGroupIO_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9e131b91f36badc90ddae54a9855095241ab86c51b419b684d62879fae0bda7f",
        `minimum` = 6,
        `maximum` = 6,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetGroupIO_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "value",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetNumReg_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_727b5ff4ab9c8976280df12e80d3aee03b31288087adb94ee82161574fc8dcb5",
        `minimum` = 2,
        `maximum` = 2,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetNumReg_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "index",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetNumReg_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_78ae7ff82b3b2cd7d512fee8335f14a0759a71425fcf3d1b150dbe5e2a0179b3",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetNumReg_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetPayloadComp_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d48b88619f4a68ceeed02336e9ef078c27905707a21d977448fbbfbd560f398d",
        `minimum` = 2,
        `maximum` = 2,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetPayloadComp_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "payload_schedule_id",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetPayloadComp_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_012b216c949f99755a36678b6be28d032f698b472ce4fa9ba975bc6d453ae4e4",
        `minimum` = 32,
        `maximum` = 32,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetPayloadComp_Response",
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
                `name` = "cg_x",
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
                `name` = "cg_y",
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
                `name` = "cg_z",
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
                `name` = "in_x",
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
                `name` = "in_y",
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
                `name` = "in_z",
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
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetPayloadID_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_6c943659905c8adc7aa4b73832584994c83bfe009d18dc30a11d99b9fc0d6eef",
        `minimum` = 0,
        `maximum` = 0,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetPayloadID_Request",
        `constants` = list(

        ),
        `fields` = list(

        )
    ),
    list(
        `symbol` = "Ros2Fanuc_msgsSrvGetPayloadID_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5551f4eab590c87fd7679d593c9c446903bdaa02aa1ed2512b146768122a950c",
        `minimum` = 6,
        `maximum` = 6,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetPayloadID_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "payload_schedule_id",
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
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetPayloadValue_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d82667bd644873ae4fa5de0289ed94791eb2a7af49c1b8f86ed7f91cf875407a",
        `minimum` = 2,
        `maximum` = 2,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetPayloadValue_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "payload_schedule_id",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetPayloadValue_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c3361ceec2ccd5b4d3ef566cbd885f8cddba75b4f1dc1712144147827689f06d",
        `minimum` = 32,
        `maximum` = 32,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetPayloadValue_Response",
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
                `name` = "cg_x",
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
                `name` = "cg_y",
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
                `name` = "cg_z",
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
                `name` = "in_x",
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
                `name` = "in_y",
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
                `name` = "in_z",
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
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetPosReg_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f7f1391c5ea385bff615d95c5e38f01a809828b142112829dc436916b063505a",
        `minimum` = 2,
        `maximum` = 2,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetPosReg_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "index",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetPosReg_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_e540225b0d532c460905582ad99ee175dd771e971c7e75f5dfb9325d39ed6b27",
        `minimum` = 89,
        `maximum` = 601,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetPosReg_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "representation",
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
                `name` = "utool",
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
                `name` = "uframe",
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
                `name` = "front",
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
                `name` = "up",
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
                `name` = "left",
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
                `name` = "flip",
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
                `name` = "turn4",
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
            ),
            list(
                `name` = "turn5",
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
            ),
            list(
                `name` = "turn6",
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
            ),
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
            ),
            list(
                `name` = "w",
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
                `name` = "p",
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
                `name` = "r",
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
                `name` = "ext1",
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
                `name` = "ext2",
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
                `name` = "ext3",
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
                `name` = "j1",
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
                `name` = "j2",
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
                `name` = "j3",
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
                `name` = "j4",
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
                `name` = "j5",
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
                `name` = "j6",
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
                `name` = "j7",
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
                `name` = "j8",
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
                `name` = "j9",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetTCPSpeed_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_6bdfd44465b75bbd4e232f802dbd3c0bfa28e90a93f9a28b3c15fb150bce7ac7",
        `minimum` = 1,
        `maximum` = 1,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetTCPSpeed_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "group",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetTCPSpeed_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3ec07d99342f275506452f32076f9e1ea01bf32f43662311708a9b44ca951147",
        `minimum` = 13,
        `maximum` = 13,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetTCPSpeed_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "timetag",
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
                `name` = "speed",
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
                `name` = "group",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetUFrameData_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c1ef7077fd7f61ed8ff46931c8e39c5950658cfe1d36cffac10083ab304307be",
        `minimum` = 2,
        `maximum` = 2,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetUFrameData_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "uframe_number",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetUFrameData_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f956e1447bd4a15f547fdf5d6775836018d50153270fe8863c4b30d83422fd2e",
        `minimum` = 30,
        `maximum` = 30,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetUFrameData_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "uframe_number",
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
                `name` = "frame",
                `type` = "Ros2Fanuc_msgsMsgFrame",
                `array` = "",
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
                `name` = "group",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetUFrameUTool_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3d57da6f8003b33b2a079d4f284eb0f182d7e088074112b7f4ee25d3113bd443",
        `minimum` = 1,
        `maximum` = 1,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetUFrameUTool_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "group",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetUFrameUTool_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f9cb64b89f17b6811e4073b9f94d0fd6844d21ec4b846f78bfd13cb14a35a6b3",
        `minimum` = 7,
        `maximum` = 7,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetUFrameUTool_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "uframe_number",
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
                `name` = "utool_number",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetUToolData_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_10c3799dcb1b09dbcb6d1b794a00ecfaf69a8f457d95eeb92855f79dba7be1bc",
        `minimum` = 2,
        `maximum` = 2,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetUToolData_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "utool_number",
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
        `symbol` = "Ros2Fanuc_msgsSrvGetUToolData_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f3a2b94f337cec9c58156b803675f38885350cc3fc3171234c0d361afc800d81",
        `minimum` = 30,
        `maximum` = 30,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/GetUToolData_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "utool_number",
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
                `name` = "frame",
                `type` = "Ros2Fanuc_msgsMsgFrame",
                `array` = "",
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
                `name` = "group",
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
        `symbol` = "Ros2Fanuc_msgsSrvReadError_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_4b67ed8e2ecccefb6bdead80249f5916e6ea192d822183292db43351839fb6f9",
        `minimum` = 1,
        `maximum` = 1,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/ReadError_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "count",
                `type` = "uint8",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "1",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = 1
            )
        )
    ),
    list(
        `symbol` = "Ros2Fanuc_msgsSrvReadError_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_6e28db10c7afb06cb1256f6d74a43e26c5efa6c13fec8826ae0e623a5eb954b6",
        `minimum` = 25,
        `maximum` = 2585,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/ReadError_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "count",
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
                `name` = "error_data",
                `type` = "string",
                `array` = "array",
                `count` = 5,
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
        `symbol` = "Ros2Fanuc_msgsSrvReset_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_b73f661d569f6af8dad1cd6625f4c0c55ef2c14c79b3e9af0f17fdc02736abc4",
        `minimum` = 0,
        `maximum` = 0,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/Reset_Request",
        `constants` = list(

        ),
        `fields` = list(

        )
    ),
    list(
        `symbol` = "Ros2Fanuc_msgsSrvReset_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5e9b92e5a112b4934ce0893afaa09156fdb47c26b0aa6ae9a27d61920d308ab8",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/Reset_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetAnalogIO_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_a6bb4acfae23db79464faff849f359657537026d7c79f8a6c60259caec5e87f4",
        `minimum` = 10,
        `maximum` = 74,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetAnalogIO_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "io_type",
                `type` = "Ros2Fanuc_msgsMsgIOType",
                `array` = "",
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
                `name` = "index",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetAnalogIO_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_aeac383e2c4a292f1237494bff5b261cd0197542e00456b4ee0edf9b7fe8a39b",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetAnalogIO_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetBoolIO_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0e8ace58c769670a2519e733d020a3ca902bff99982514d5cd9ecda391c1a4cf",
        `minimum` = 7,
        `maximum` = 71,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetBoolIO_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "io_type",
                `type` = "Ros2Fanuc_msgsMsgIOType",
                `array` = "",
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
                `name` = "index",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetBoolIO_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c9c68ca577dd6e4d1743385d9c69c8f1c6e0780ae247877d823ab97a68e675a0",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetBoolIO_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetGenOverride_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7d321e33aaf6f58013c33ffc012c1ddbd27aefff3f21d7456030a1d590362039",
        `minimum` = 1,
        `maximum` = 1,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetGenOverride_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "value",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetGenOverride_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_1ffcb25cad7dbf51c216753dac2c117a191fb081a5a562e63d34d447e61f0a59",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetGenOverride_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetGroupIO_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_42a76aec283e26e3a2c99bb27a23778e34effb6c3328754793f783038a2b84bd",
        `minimum` = 8,
        `maximum` = 72,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetGroupIO_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "io_type",
                `type` = "Ros2Fanuc_msgsMsgIOType",
                `array` = "",
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
                `name` = "index",
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
                `name` = "value",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetGroupIO_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_aa6d2c99e8817273f8f2ab179df61d60efd8ee2cee0e1ec76c647956e22bff17",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetGroupIO_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetNumReg_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7e362b671b8770db33f3876308c41a930863a0805771fa05fcbb170782207e36",
        `minimum` = 6,
        `maximum` = 6,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetNumReg_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "index",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetNumReg_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7c7850ad8bb5c861d9b436311a8cf985e2e029d362877be80c5a6cb19021e482",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetNumReg_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetPayloadComp_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_92c495d71657249e15c172e850aa91869929a25817437567778df1b01d9037a8",
        `minimum` = 30,
        `maximum` = 30,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetPayloadComp_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "payload_schedule_id",
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
                `name` = "cg_x",
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
                `name` = "cg_y",
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
                `name` = "cg_z",
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
                `name` = "in_x",
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
                `name` = "in_y",
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
                `name` = "in_z",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetPayloadComp_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_37a9876e2a9c514fa8c4337ff1351f778d350318bdc6d8aa5d569b4039a2f76b",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetPayloadComp_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetPayloadID_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_aa15b59db17d2afb7ef9e74676a9b744763954ae063efafb91a3ab3c9852a1c0",
        `minimum` = 2,
        `maximum` = 2,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetPayloadID_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "payload_schedule_id",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetPayloadID_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7b704b36da10dc71b4cfaad92ea02ed22e4966077dc0940b03b8b8e49c5769c7",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetPayloadID_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetPayloadValue_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5d56ce8f2f8df9c3450d6a5dc77e9e77861471805aa6b9c6f8815c2e7c324974",
        `minimum` = 31,
        `maximum` = 31,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetPayloadValue_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "payload_schedule_id",
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
                `name` = "cg_x",
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
                `name` = "cg_y",
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
                `name` = "cg_z",
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
                `name` = "use_in",
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
                `name` = "in_x",
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
                `name` = "in_y",
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
                `name` = "in_z",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetPayloadValue_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_09f30071b49ac57353429e8a2862ee80d3dcab9237e8192d008c12a3628cc6ab",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetPayloadValue_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetPosReg_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f9af742e55a044a1a363a45cbe4a0a8ce4ca62fcaf43759041cef89149d96d30",
        `minimum` = 87,
        `maximum` = 599,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetPosReg_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "index",
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
                `name` = "representation",
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
                `name` = "utool",
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
                `name` = "uframe",
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
                `name` = "front",
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
                `name` = "up",
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
                `name` = "left",
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
                `name` = "flip",
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
                `name` = "turn4",
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
            ),
            list(
                `name` = "turn5",
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
            ),
            list(
                `name` = "turn6",
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
            ),
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
            ),
            list(
                `name` = "w",
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
                `name` = "p",
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
                `name` = "r",
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
                `name` = "ext1",
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
                `name` = "ext2",
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
                `name` = "ext3",
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
                `name` = "j1",
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
                `name` = "j2",
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
                `name` = "j3",
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
                `name` = "j4",
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
                `name` = "j5",
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
                `name` = "j6",
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
                `name` = "j7",
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
                `name` = "j8",
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
                `name` = "j9",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetPosReg_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_fb6f889d30c921df31f55cdc760346eb0d655816e71b52d4aac7a1e56d4e9cb2",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetPosReg_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetUFrameData_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_a067808d8fe5ca1418e18ac492313ad9211cc8f3bf402ad0ac51a2850a2bc169",
        `minimum` = 26,
        `maximum` = 26,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetUFrameData_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "uframe_number",
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
                `name` = "frame",
                `type` = "Ros2Fanuc_msgsMsgFrame",
                `array` = "",
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
                `name` = "group",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetUFrameData_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f436e4fe5bd06b048f4f53d2df4933ac8eac5a784f31b42ccf13f5eaf1696eee",
        `minimum` = 5,
        `maximum` = 5,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetUFrameData_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "group",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetUFrameUTool_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0b86b0a37e4dc23e0ff651df867f5958e7440bf4712b47779d69ca699af4c09f",
        `minimum` = 3,
        `maximum` = 3,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetUFrameUTool_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "uframe_number",
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
                `name` = "utool_number",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetUFrameUTool_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_b77837445c9663f29f23465cc7178a183d245486f74bcff732fc2f4025b82a67",
        `minimum` = 5,
        `maximum` = 5,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetUFrameUTool_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "group",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetUToolData_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7d5b911133645744c8def79bc16c8b7c4ee4e87a057ea33741031d6a94e620ab",
        `minimum` = 26,
        `maximum` = 26,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetUToolData_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "utool_number",
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
                `name` = "frame",
                `type` = "Ros2Fanuc_msgsMsgFrame",
                `array` = "",
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
                `name` = "group",
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
        `symbol` = "Ros2Fanuc_msgsSrvSetUToolData_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_b33d265f275dfcb5fe20432d5e38b55574c85260135bded477c2d5fa2c85c7cb",
        `minimum` = 5,
        `maximum` = 5,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SetUToolData_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "group",
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
        `symbol` = "Ros2Fanuc_msgsSrvSwitchControlState_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_b485b7071fe2737c7dc8f0360a15b7be30f997430142d8260454fd423172cc21",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SwitchControlState_Request",
        `constants` = list(
            `STOP` = 0,
            `START` = 1
        ),
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
            )
        )
    ),
    list(
        `symbol` = "Ros2Fanuc_msgsSrvSwitchControlState_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8a3d7a3c1037174f4118843e34222ef8811eff3cc885a0c688d98071e1a9496c",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "fanuc_msgs/srv/SwitchControlState_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Rmi_msgsMsgCallParam",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ed625d80db6c4314b8373f2d205344d6ab8d71be46182dab5a497d36564a2255",
        `minimum` = 16,
        `maximum` = 592,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/msg/CallParam",
        `constants` = list(
            `AR` = "AR",
            `PR` = "PR",
            `SR` = "SR",
            `R` = "R",
            `P` = "P",
            `INT` = "INT",
            `INTEGER` = "INT",
            `FLOAT` = "FLOAT",
            `STRING` = "String",
            `STR` = "String"
        ),
        `fields` = list(
            list(
                `name` = "type",
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
                `name` = "int_value",
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
                `name` = "float_value",
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
                `name` = "string_value",
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
        `symbol` = "Ros2Rmi_msgsMsgCartesian",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_2a0e1fff119007499a63d55c9722f666be1436a9212d9e43b556af347e8e4b40",
        `minimum` = 45,
        `maximum` = 45,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/msg/Cartesian",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "utool",
                `type` = "int8",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "1",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = 1
            ),
            list(
                `name` = "uframe",
                `type` = "int8",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "0",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = 0
            ),
            list(
                `name` = "front",
                `type` = "uint8",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "1",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = 1
            ),
            list(
                `name` = "up",
                `type` = "uint8",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "1",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = 1
            ),
            list(
                `name` = "left",
                `type` = "uint8",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "0",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = 0
            ),
            list(
                `name` = "flip",
                `type` = "uint8",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "0",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = 0
            ),
            list(
                `name` = "turn4",
                `type` = "int8",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "0",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = 0
            ),
            list(
                `name` = "turn5",
                `type` = "int8",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "0",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = 0
            ),
            list(
                `name` = "turn6",
                `type` = "int8",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "0",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = 0
            ),
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
            ),
            list(
                `name` = "w",
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
                `name` = "p",
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
                `name` = "r",
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
                `name` = "ext1",
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
                `name` = "ext2",
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
                `name` = "ext3",
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
        `symbol` = "Ros2Rmi_msgsMsgCommand",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d2741856b8cdf57aa716566edfc705957611557b7da5b6099b173903bdd9960c",
        `minimum` = 4,
        `maximum` = 68,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/msg/Command",
        `constants` = list(
            `INITIAZLIE` = "INITIALIZE",
            `INIT` = "INITIALIZE",
            `ABORT` = "ABORT",
            `PAUSE` = "PAUSE",
            `RESUME` = "RESUME"
        ),
        `fields` = list(
            list(
                `name` = "type",
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
        `symbol` = "Ros2Rmi_msgsMsgCommandOptions",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0be0c508035725bf9686807cb8b5267e23f709b7aa34b0910a44ff3604670147",
        `minimum` = 12,
        `maximum` = 1036,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/msg/CommandOptions",
        `constants` = list(
            `RTSA_ON` = "ON",
            `RTSA_OFF` = "OFF",
            `PLTZ_ZERODN` = "ZERODN",
            `PLTZ_ZEROUP` = "ZEROUP",
            `PLTZ_PSPIDN` = "PSPIDN",
            `PLTZ_PSPIUP` = "PSPIUP",
            `PLTZ_MSPIDN` = "MSPIDN",
            `PLTZ_MSPIUP` = "MSPIUP"
        ),
        `fields` = list(
            list(
                `name` = "use_group_mask",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "group_mask",
                `type` = "uint8",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "1",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = 1
            ),
            list(
                `name` = "use_rtsa",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "rtsa",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "ON",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 4,
                `default` = "ON"
            ),
            list(
                `name` = "use_pltzmode",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "pltzmode",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "ZERODN",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 4,
                `default` = "ZERODN"
            )
        )
    ),
    list(
        `symbol` = "Ros2Rmi_msgsMsgJoint",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0ba90adf6cc287bc306fd2a77c52c2e4d62731cfac37bb2cc116ee846249a42d",
        `minimum` = 36,
        `maximum` = 36,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/msg/Joint",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "positions",
                `type` = "float32",
                `array` = "array",
                `count` = 9,
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
        `symbol` = "Ros2Rmi_msgsMsgMotionInstructionOptions",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f8d9ed2e083c577b0cae8965df71aa99643d12ce5a5a6ce558894edfb756bcc6",
        `minimum` = 52,
        `maximum` = 2612,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/msg/MotionInstructionOptions",
        `constants` = list(
            `LCB_TYPE_TB` = "TB",
            `LCB_TYPE_TA` = "TA",
            `LCB_TYPE_DB` = "DB",
            `PORT_TYPE_DOUT` = 1,
            `PORT_TYPE_DO` = 1,
            `PORT_TYPE_ROUT` = 2,
            `PORT_TYPE_RO` = 2
        ),
        `fields` = list(
            list(
                `name` = "use_acc",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "acc",
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
                `name` = "use_offset_pr_number",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "offset_pr_number",
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
                `name` = "use_vision_pr_number",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "vision_pr_number",
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
                `name` = "use_wrist_joint",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "wrist_joint",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "ON",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 4,
                `default` = "ON"
            ),
            list(
                `name` = "use_mrot",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "mrot",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "ON",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 4,
                `default` = "ON"
            ),
            list(
                `name` = "use_lcb_type",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "lcb_type",
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
                `name` = "use_lcb_value",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "lcb_value",
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
                `name` = "use_port_type",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "port_type",
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
                `name` = "use_port_number",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "port_number",
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
                `name` = "use_port_value",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "port_value",
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
                `name` = "use_tool_offset_pr_number",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "tool_offset_pr_number",
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
                `name` = "use_alim",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "alim",
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
                `name` = "use_alim_reg",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "alim_reg",
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
                `name` = "use_no_blend",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "no_blend",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "ON",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 4,
                `default` = "ON"
            )
        )
    ),
    list(
        `symbol` = "Ros2Rmi_msgsMsgMotionType",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c51cc7a32f6853d13bedaf3306dd79e445de6c0d16ae0ec39034ce0ae6d19c8a",
        `minimum` = 4,
        `maximum` = 68,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/msg/MotionType",
        `constants` = list(
            `J` = "J",
            `JOINT` = "J",
            `L` = "L",
            `LINEAR` = "L",
            `C` = "C",
            `CIRCULAR` = "C",
            `S` = "S",
            `SPLINE` = "S"
        ),
        `fields` = list(
            list(
                `name` = "type",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 64,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "J",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 4,
                `default` = "J"
            )
        )
    ),
    list(
        `symbol` = "Ros2Rmi_msgsMsgRepresentation",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_b439506f2dc2135bb484b3abb308dfdf5c07367af5a4d6d0f5435ad9bba8ea6f",
        `minimum` = 4,
        `maximum` = 516,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/msg/Representation",
        `constants` = list(
            `JOINT` = "JOINT",
            `J` = "JOINT",
            `CARTESIAN` = "CARTESIAN",
            `CART` = "CARTESIAN",
            `C` = "CARTESIAN"
        ),
        `fields` = list(
            list(
                `name` = "representation",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 512,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "JOINT",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 4,
                `default` = "JOINT"
            )
        )
    ),
    list(
        `symbol` = "Ros2Rmi_msgsMsgSpeedType",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_e4f4dbda84d8d8cd4d026b0beb52005663c7c4ee602c8d1e4d5853589777c282",
        `minimum` = 4,
        `maximum` = 68,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/msg/SpeedType",
        `constants` = list(
            `PERCENT` = "Percent",
            `PERCENTAGE` = "Percent",
            `MMSEC` = "mmSec",
            `INCHMIN` = "InchMin",
            `TIME` = "Time",
            `SECONDS` = "Time",
            `SEC` = "Time",
            `MSEC` = "mSec"
        ),
        `fields` = list(
            list(
                `name` = "type",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 64,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "Percent",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 4,
                `default` = "Percent"
            )
        )
    ),
    list(
        `symbol` = "Ros2Rmi_msgsMsgTermType",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5ddbb483126e0ab5799ed865480da457179d83a271581c1471aec940bedc4535",
        `minimum` = 4,
        `maximum` = 68,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/msg/TermType",
        `constants` = list(
            `FINE` = "FINE",
            `CNT` = "CNT",
            `CR` = "CR",
            `CD` = "CD"
        ),
        `fields` = list(
            list(
                `name` = "type",
                `type` = "string",
                `array` = "",
                `count` = 0,
                `string_bound` = 64,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "FINE",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 4,
                `default` = "FINE"
            )
        )
    ),
    list(
        `symbol` = "Ros2Rmi_msgsSrvAddCall_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_4d652cfbaef29487a0a688932ee926d7a4026c5e7ac8a0eace583b503c37bcd8",
        `minimum` = 8,
        `maximum` = 9992,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddCall_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "program_name",
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
                `name` = "params",
                `type` = "Ros2Rmi_msgsMsgCallParam",
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
                `element_minimum` = 16
            )
        )
    ),
    list(
        `symbol` = "Ros2Rmi_msgsSrvAddCall_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_4f8495dfc3c69ec640444fd24843a7bb3e30008d90945bdd64817d8acb7964e1",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddCall_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "sequence_id",
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
        `symbol` = "Ros2Rmi_msgsSrvAddMotionInstruction_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3f22c49cb2d32e6a8f3954f3d3cbf0021c87e0363b1f2ded4ac20a97a5b59391",
        `minimum` = 238,
        `maximum` = 4014,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddMotionInstruction_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "motion_type",
                `type` = "Ros2Rmi_msgsMsgMotionType",
                `array` = "",
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
                `name` = "incremental",
                `type` = "bool",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = "False",
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 1,
                `default` = FALSE
            ),
            list(
                `name` = "representation",
                `type` = "Ros2Rmi_msgsMsgRepresentation",
                `array` = "",
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
                `name` = "joint",
                `type` = "Ros2Rmi_msgsMsgJoint",
                `array` = "",
                `count` = 0,
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
                `name` = "cartesian",
                `type` = "Ros2Rmi_msgsMsgCartesian",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 45
            ),
            list(
                `name` = "speed_type",
                `type` = "Ros2Rmi_msgsMsgSpeedType",
                `array` = "",
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
                `name` = "speed_value",
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
                `name` = "term_type",
                `type` = "Ros2Rmi_msgsMsgTermType",
                `array` = "",
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
                `name` = "term_value",
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
                `name` = "via_representation",
                `type` = "Ros2Rmi_msgsMsgRepresentation",
                `array` = "",
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
                `name` = "via_joint",
                `type` = "Ros2Rmi_msgsMsgJoint",
                `array` = "",
                `count` = 0,
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
                `name` = "via_cartesian",
                `type` = "Ros2Rmi_msgsMsgCartesian",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 45
            ),
            list(
                `name` = "options",
                `type` = "Ros2Rmi_msgsMsgMotionInstructionOptions",
                `array` = "",
                `count` = 0,
                `string_bound` = 0,
                `native_string_bound` = 0,
                `native_sequence_bound` = 0,
                `native_default` = NULL,
                `native_scalar` = "",
                `string_encoding` = "utf8",
                `float_policy` = "finite",
                `raw` = FALSE,
                `element_minimum` = 52
            )
        )
    ),
    list(
        `symbol` = "Ros2Rmi_msgsSrvAddMotionInstruction_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_79fee3e965fda63c3a53ad2178ff48614878acc9f6af74cc27a8c2812b68ac6b",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddMotionInstruction_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "sequence_id",
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
        `symbol` = "Ros2Rmi_msgsSrvAddSetPayload_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_45da9f81e8c26f49490a4e6eba5c8be0ee67285124540eb1c3e1f2c3e0fd821b",
        `minimum` = 1,
        `maximum` = 1,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddSetPayload_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "schedule_number",
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
        `symbol` = "Ros2Rmi_msgsSrvAddSetPayload_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_bfc5bc7b92f292c2980496cb18fbe953ea1b49d45f7950f0125bbbf880bdf72a",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddSetPayload_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "sequence_id",
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
        `symbol` = "Ros2Rmi_msgsSrvAddSetUFrame_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_64c83dd2be89b4b6dcf3b3c2ea70184971e6a359914ff1a5cd26d4b114d35475",
        `minimum` = 1,
        `maximum` = 1,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddSetUFrame_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "frame_number",
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
        `symbol` = "Ros2Rmi_msgsSrvAddSetUFrame_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_e344ef6efacc8d569111d1c6ef4028e1a5bb54af49d3e8f486ae89b83c674647",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddSetUFrame_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "sequence_id",
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
        `symbol` = "Ros2Rmi_msgsSrvAddSetUTool_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d1327022326cd41caed6001449517a41f589e148c38d6db30923922175f05c46",
        `minimum` = 1,
        `maximum` = 1,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddSetUTool_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "tool_number",
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
        `symbol` = "Ros2Rmi_msgsSrvAddSetUTool_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_dd4c36458027b87559200cf5f6aa72a60af2d103f663f2fa9daca47ce8020ff6",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddSetUTool_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "sequence_id",
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
        `symbol` = "Ros2Rmi_msgsSrvAddWaitDIN_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c32214f1ff1b0b6980583fc3088f412e856efb5eaa9c336cf798ef8ad85c61ab",
        `minimum` = 6,
        `maximum` = 518,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddWaitDIN_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "port_number",
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
                `name` = "port_value",
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
        `symbol` = "Ros2Rmi_msgsSrvAddWaitDIN_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7d3933f573619ba49f19df7c11f1d73ef211c17581f660f8c0fbcc152cd519d4",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddWaitDIN_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "sequence_id",
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
        `symbol` = "Ros2Rmi_msgsSrvAddWaitTime_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8487f4b7dcfb044c72f7fb62a31ffe9cdc4321a9ebdaa0550a363e32acbadc46",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddWaitTime_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "time",
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
        `symbol` = "Ros2Rmi_msgsSrvAddWaitTime_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f9578c08b971f32f91d1c94b8713cafe648e25147394e20c85bb335254fa20c8",
        `minimum` = 8,
        `maximum` = 8,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/AddWaitTime_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
                `name` = "sequence_id",
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
        `symbol` = "Ros2Rmi_msgsSrvCallCommand_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d1f890a2beec0ca9294ff4f641d1738855d576a917ed05eb34517886c73f381c",
        `minimum` = 16,
        `maximum` = 1104,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/CallCommand_Request",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "command",
                `type` = "Ros2Rmi_msgsMsgCommand",
                `array` = "",
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
                `name` = "options",
                `type` = "Ros2Rmi_msgsMsgCommandOptions",
                `array` = "",
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
        `symbol` = "Ros2Rmi_msgsSrvCallCommand_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_64d92e6fadc651073469318ad15d2e98ec3d059c629838cefc5820b17ab6f1bc",
        `minimum` = 4,
        `maximum` = 4,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "rmi_msgs/srv/CallCommand_Response",
        `constants` = list(

        ),
        `fields` = list(
            list(
                `name` = "result",
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
        `symbol` = "Ros2Sensor_msgsMsgJointState",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884",
        `minimum` = 28,
        `maximum` = 1196,
        `semantics` = "joint-state-optional-equal-length-arrays",
        `ros_version` = 2,
        `native_type` = "sensor_msgs/msg/JointState",
        `constants` = list(

        ),
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
    ),
    list(
        `symbol` = "Ros2Std_srvsSrvTrigger_Request",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77",
        `minimum` = 0,
        `maximum` = 0,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "std_srvs/srv/Trigger_Request",
        `constants` = list(

        ),
        `fields` = list(

        )
    ),
    list(
        `symbol` = "Ros2Std_srvsSrvTrigger_Response",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d",
        `minimum` = 5,
        `maximum` = 517,
        `semantics` = "",
        `ros_version` = 2,
        `native_type` = "std_srvs/srv/Trigger_Response",
        `constants` = list(

        ),
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
    )
)

INTERFACES <- list(
    `builtin_interfaces/msg/Duration` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros2Builtin_interfacesMsgDuration"
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
    ),
    `control_msgs/action/FollowJointTrajectory` = list(
        `kind` = "action",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_bd40771444c5441b79e63bdf5f2d5829d2c8b7ea0ccfd285baba8867cdc43757",
        `registered` = TRUE,
        `components` = list(
            `goal` = "Ros2Control_msgsActionFollowJointTrajectory_Goal",
            `result` = "Ros2Control_msgsActionFollowJointTrajectory_Result",
            `feedback` = "Ros2Control_msgsActionFollowJointTrajectory_Feedback"
        )
    ),
    `control_msgs/msg/JointComponentTolerance` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros2Control_msgsMsgJointComponentTolerance"
        )
    ),
    `control_msgs/msg/JointTolerance` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros2Control_msgsMsgJointTolerance"
        )
    ),
    `fanuc_msgs/msg/AnalogIO` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d62097527ba99bf6e803283350161cd1415173a22eb3cb20331a232366076d00",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgAnalogIO"
        )
    ),
    `fanuc_msgs/msg/AnalogIOCmd` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_62f38a088ed23f8daf7163f26514ae1aabd7b1b64845ccdbc281cb7839d857ba",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgAnalogIOCmd"
        )
    ),
    `fanuc_msgs/msg/AnalogIOState` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_820b41fecbf6db8e2b2e67d60cd1167cf474b22ca6c489f4d2d64dd33eaac9a4",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgAnalogIOState"
        )
    ),
    `fanuc_msgs/msg/BoolIO` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9209ae1b8f5407a31beface0a3286f58bd823aabdc560c2a4bf4a9b1ca125aa7",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgBoolIO"
        )
    ),
    `fanuc_msgs/msg/CollaborativeSpeedScaling` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_693a3b581527d2eaf0f697f31e87ca2da428d1f51b821d42d6b06af387a2fb45",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgCollaborativeSpeedScaling"
        )
    ),
    `fanuc_msgs/msg/ConnectionStatus` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8ce24fb87538922b1f3c0ae856eb223d716143064eb46a6cfce5fec01b45b078",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgConnectionStatus"
        )
    ),
    `fanuc_msgs/msg/ForceSensor` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_06c99b43d7347646179850f3ba79192da7ce71296667d93d88659efbc1004032",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgForceSensor"
        )
    ),
    `fanuc_msgs/msg/Frame` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_609d1b7e49315f7f0a0fe86fa997673acd0d009e57b563690f36624b59b9effb",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgFrame"
        )
    ),
    `fanuc_msgs/msg/IOCmd` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_462552bbaa3c9ed4caaf3108960d514e4ab61fcf2d6a84f0465b485bec1de45d",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgIOCmd"
        )
    ),
    `fanuc_msgs/msg/IOState` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_332533445014c03d626a2c4dbdffd9421748aa6b73f49d407441fd6b9f2b24d8",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgIOState"
        )
    ),
    `fanuc_msgs/msg/IOType` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_1815aa6b1bcab1efe21de0e31570ca650553b5c70f0793301f82c0ca7934c586",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgIOType"
        )
    ),
    `fanuc_msgs/msg/NumReg` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0fb9344c5768ea52ab072939f368f1e73dcc0ff83e74b4cb6d35fca47c1d29cc",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgNumReg"
        )
    ),
    `fanuc_msgs/msg/NumRegCmd` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9c76500073889377525a0802c46bd96589a2639dd9534cf7ad2b9956cd95b5b6",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgNumRegCmd"
        )
    ),
    `fanuc_msgs/msg/NumRegState` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9c8ff4917a6dd033e6a6776ae8525e93c2924d776f05fd54e7e8d2251fc48b3a",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgNumRegState"
        )
    ),
    `fanuc_msgs/msg/RMIStatus` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_dc2e7eaabf44807142581905838f8951653682a6c6d61ebcf56494b16a10d5e8",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgRMIStatus"
        )
    ),
    `fanuc_msgs/msg/RobotStatus` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3f31ee3631dc6f4c90eb5ded6209ccebf0f4193ddfe5f5032bdd2bcd71f8cc31",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgRobotStatus"
        )
    ),
    `fanuc_msgs/msg/RobotStatusExt` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8ba47a11bfbe02026fe79b32e1ed02e5f609499ea55bb57c9f09af9fba389648",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Fanuc_msgsMsgRobotStatusExt"
        )
    ),
    `fanuc_msgs/srv/CfgForceSensor` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0c3d09d5b7a7da6ee5bf2ea22581a0f77a7c4b4960040094e28880696c0631aa",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvCfgForceSensor_Request",
            `response` = "Ros2Fanuc_msgsSrvCfgForceSensor_Response"
        )
    ),
    `fanuc_msgs/srv/GetAnalogIO` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_2ef419ee9d2733d5a5a7f0bba7acd91a3df314af1f3562c5b5b43b291b1f8968",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetAnalogIO_Request",
            `response` = "Ros2Fanuc_msgsSrvGetAnalogIO_Response"
        )
    ),
    `fanuc_msgs/srv/GetBoolIO` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_181dbe97f6705b1bd0dda6f86aa7f9ba59555718afb59ab074f7b2e68bb90f34",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetBoolIO_Request",
            `response` = "Ros2Fanuc_msgsSrvGetBoolIO_Response"
        )
    ),
    `fanuc_msgs/srv/GetCartesianPosition` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_31c40acb06059b0dd6fbfd7b1bffb1bd336da8696a7f306662763e0a8e060fb0",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetCartesianPosition_Request",
            `response` = "Ros2Fanuc_msgsSrvGetCartesianPosition_Response"
        )
    ),
    `fanuc_msgs/srv/GetGroupIO` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7b069a6b89528ab5d916170981f5892b572a4354244d69ac183b74d86b766439",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetGroupIO_Request",
            `response` = "Ros2Fanuc_msgsSrvGetGroupIO_Response"
        )
    ),
    `fanuc_msgs/srv/GetNumReg` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8fc52b682cfce5ce0b3307867e4a6c3fcc9c35cd5b4c924c427ed6956a230530",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetNumReg_Request",
            `response` = "Ros2Fanuc_msgsSrvGetNumReg_Response"
        )
    ),
    `fanuc_msgs/srv/GetPayloadComp` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_2f4f001ea12c464e2610feebed2149b61e3fb1c232609b4e87c666f2dd0d633c",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetPayloadComp_Request",
            `response` = "Ros2Fanuc_msgsSrvGetPayloadComp_Response"
        )
    ),
    `fanuc_msgs/srv/GetPayloadID` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3838f3a5a8c9ef0a40f77abafdfc38c2fd5bc2f6f2fa714f184c904e99f81cd6",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetPayloadID_Request",
            `response` = "Ros2Fanuc_msgsSrvGetPayloadID_Response"
        )
    ),
    `fanuc_msgs/srv/GetPayloadValue` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8a309e04e5785a23b077faf5de03a9b2881f19dcb4759b0309612ba9db280b69",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetPayloadValue_Request",
            `response` = "Ros2Fanuc_msgsSrvGetPayloadValue_Response"
        )
    ),
    `fanuc_msgs/srv/GetPosReg` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8d2207bd697f119a857d62cb1c2fb474b7664225bf5ffb4059823f44512b552b",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetPosReg_Request",
            `response` = "Ros2Fanuc_msgsSrvGetPosReg_Response"
        )
    ),
    `fanuc_msgs/srv/GetTCPSpeed` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_62085ae96ac6ff0485b294f360bfbef3aa19fcef6fdff44f7e7229f4847496d8",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetTCPSpeed_Request",
            `response` = "Ros2Fanuc_msgsSrvGetTCPSpeed_Response"
        )
    ),
    `fanuc_msgs/srv/GetUFrameData` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_b740b9f568a9e3a6d711e5e9ffd72fe7934418e68c6cc319c3cf364a307911ad",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetUFrameData_Request",
            `response` = "Ros2Fanuc_msgsSrvGetUFrameData_Response"
        )
    ),
    `fanuc_msgs/srv/GetUFrameUTool` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_4ee97404dfc655adc0f3b0a4fe4dcc741e0498521516965fc373c95cf643b79d",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetUFrameUTool_Request",
            `response` = "Ros2Fanuc_msgsSrvGetUFrameUTool_Response"
        )
    ),
    `fanuc_msgs/srv/GetUToolData` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d1d123a1996d42cfa0479379ea2ad521a5ccca5f7d228476594635852b584032",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvGetUToolData_Request",
            `response` = "Ros2Fanuc_msgsSrvGetUToolData_Response"
        )
    ),
    `fanuc_msgs/srv/ReadError` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_750f4fa11d8bf6f9970ed32cd0d49956dc489e5d5a7460ff2d4289b56fefb0b8",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvReadError_Request",
            `response` = "Ros2Fanuc_msgsSrvReadError_Response"
        )
    ),
    `fanuc_msgs/srv/Reset` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_62854b1e2a815b194eca69240b6a007162601743b7a6ebdea856c0e49067e7fe",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvReset_Request",
            `response` = "Ros2Fanuc_msgsSrvReset_Response"
        )
    ),
    `fanuc_msgs/srv/SetAnalogIO` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_2296af5f0b47b644c232fbfbf365bd185effaa1156d762925e46cb9390134f38",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSetAnalogIO_Request",
            `response` = "Ros2Fanuc_msgsSrvSetAnalogIO_Response"
        )
    ),
    `fanuc_msgs/srv/SetBoolIO` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_b55ede16b8043df85f59d0400528d34841df651d1224746bf4108516ed3c5133",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSetBoolIO_Request",
            `response` = "Ros2Fanuc_msgsSrvSetBoolIO_Response"
        )
    ),
    `fanuc_msgs/srv/SetGenOverride` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_8ad45876cce16ffd23c057d2174b43eb0076f55a07eba4884f354552e11b9874",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSetGenOverride_Request",
            `response` = "Ros2Fanuc_msgsSrvSetGenOverride_Response"
        )
    ),
    `fanuc_msgs/srv/SetGroupIO` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_1a8395e1034456d563e1a3635c8afa8672bd5a7a66c4581e6ef151a93097c93c",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSetGroupIO_Request",
            `response` = "Ros2Fanuc_msgsSrvSetGroupIO_Response"
        )
    ),
    `fanuc_msgs/srv/SetNumReg` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_66b9dff6e170a8f55c03134f30a5d16095d6cbd2ab8e1951bd29c66d180abf07",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSetNumReg_Request",
            `response` = "Ros2Fanuc_msgsSrvSetNumReg_Response"
        )
    ),
    `fanuc_msgs/srv/SetPayloadComp` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9d166af8c15848c01a8e2f78b383083085d3765dface4f346f481ee03864b571",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSetPayloadComp_Request",
            `response` = "Ros2Fanuc_msgsSrvSetPayloadComp_Response"
        )
    ),
    `fanuc_msgs/srv/SetPayloadID` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_6041b6deb6598576e23a3c1fee17a45aeec3d02ce90d7906563c4d951c5c4417",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSetPayloadID_Request",
            `response` = "Ros2Fanuc_msgsSrvSetPayloadID_Response"
        )
    ),
    `fanuc_msgs/srv/SetPayloadValue` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_a4cdbd15320e60d560906abf26c26f2c1e893c1a0ba6a19815c4ea42cca8605d",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSetPayloadValue_Request",
            `response` = "Ros2Fanuc_msgsSrvSetPayloadValue_Response"
        )
    ),
    `fanuc_msgs/srv/SetPosReg` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_712106c0c91b6fcd728475fb4ca33a1ecb2d351f74863a8ade4d49fdd1092a7c",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSetPosReg_Request",
            `response` = "Ros2Fanuc_msgsSrvSetPosReg_Response"
        )
    ),
    `fanuc_msgs/srv/SetUFrameData` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_42bfaf10161ebc87ef2b8d6c9cf9e955e1cc8af92af760d9f5df6c3c84b5f05a",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSetUFrameData_Request",
            `response` = "Ros2Fanuc_msgsSrvSetUFrameData_Response"
        )
    ),
    `fanuc_msgs/srv/SetUFrameUTool` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f4579319b0b6d25efc747aaf3f71169e287d6ceb4ad109841dca5fdce1f8132b",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSetUFrameUTool_Request",
            `response` = "Ros2Fanuc_msgsSrvSetUFrameUTool_Response"
        )
    ),
    `fanuc_msgs/srv/SetUToolData` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_76b07b3e89e55fe81fad5b87963cc42aa0be9a7d107788207c55f2cdc135976f",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSetUToolData_Request",
            `response` = "Ros2Fanuc_msgsSrvSetUToolData_Response"
        )
    ),
    `fanuc_msgs/srv/SwitchControlState` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7f75ef3d22c1e3761a0f83cef64f57372fd3d67f7943583ee42c59c0fb0d45c1",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Fanuc_msgsSrvSwitchControlState_Request",
            `response` = "Ros2Fanuc_msgsSrvSwitchControlState_Response"
        )
    ),
    `geometry_msgs/msg/Quaternion` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros2Geometry_msgsMsgQuaternion"
        )
    ),
    `geometry_msgs/msg/Transform` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros2Geometry_msgsMsgTransform"
        )
    ),
    `geometry_msgs/msg/Twist` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros2Geometry_msgsMsgTwist"
        )
    ),
    `geometry_msgs/msg/Vector3` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros2Geometry_msgsMsgVector3"
        )
    ),
    `rmi_msgs/msg/CallParam` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ed625d80db6c4314b8373f2d205344d6ab8d71be46182dab5a497d36564a2255",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Rmi_msgsMsgCallParam"
        )
    ),
    `rmi_msgs/msg/Cartesian` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_2a0e1fff119007499a63d55c9722f666be1436a9212d9e43b556af347e8e4b40",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Rmi_msgsMsgCartesian"
        )
    ),
    `rmi_msgs/msg/Command` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d2741856b8cdf57aa716566edfc705957611557b7da5b6099b173903bdd9960c",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Rmi_msgsMsgCommand"
        )
    ),
    `rmi_msgs/msg/CommandOptions` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0be0c508035725bf9686807cb8b5267e23f709b7aa34b0910a44ff3604670147",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Rmi_msgsMsgCommandOptions"
        )
    ),
    `rmi_msgs/msg/Joint` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_0ba90adf6cc287bc306fd2a77c52c2e4d62731cfac37bb2cc116ee846249a42d",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Rmi_msgsMsgJoint"
        )
    ),
    `rmi_msgs/msg/MotionInstructionOptions` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f8d9ed2e083c577b0cae8965df71aa99643d12ce5a5a6ce558894edfb756bcc6",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Rmi_msgsMsgMotionInstructionOptions"
        )
    ),
    `rmi_msgs/msg/MotionType` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_c51cc7a32f6853d13bedaf3306dd79e445de6c0d16ae0ec39034ce0ae6d19c8a",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Rmi_msgsMsgMotionType"
        )
    ),
    `rmi_msgs/msg/Representation` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_b439506f2dc2135bb484b3abb308dfdf5c07367af5a4d6d0f5435ad9bba8ea6f",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Rmi_msgsMsgRepresentation"
        )
    ),
    `rmi_msgs/msg/SpeedType` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_e4f4dbda84d8d8cd4d026b0beb52005663c7c4ee602c8d1e4d5853589777c282",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Rmi_msgsMsgSpeedType"
        )
    ),
    `rmi_msgs/msg/TermType` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_5ddbb483126e0ab5799ed865480da457179d83a271581c1471aec940bedc4535",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Rmi_msgsMsgTermType"
        )
    ),
    `rmi_msgs/srv/AddCall` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_eb552ee3930f56e6642f1bb0c1908c3078dce69d418269a1478dab02fa86954f",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Rmi_msgsSrvAddCall_Request",
            `response` = "Ros2Rmi_msgsSrvAddCall_Response"
        )
    ),
    `rmi_msgs/srv/AddMotionInstruction` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_4ac733ef727afcb747248a522d29eb82719f6cc4047bc574518da86bf69c9c83",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Rmi_msgsSrvAddMotionInstruction_Request",
            `response` = "Ros2Rmi_msgsSrvAddMotionInstruction_Response"
        )
    ),
    `rmi_msgs/srv/AddSetPayload` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3815103f03508dcdd68e71db6c3e2065cdbedc9893554c29f63e4d1ac3054926",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Rmi_msgsSrvAddSetPayload_Request",
            `response` = "Ros2Rmi_msgsSrvAddSetPayload_Response"
        )
    ),
    `rmi_msgs/srv/AddSetUFrame` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_ddbb9115787cd7421d40b557b1f11046983de9fc0ded8398d4fed43df6bdfdf2",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Rmi_msgsSrvAddSetUFrame_Request",
            `response` = "Ros2Rmi_msgsSrvAddSetUFrame_Response"
        )
    ),
    `rmi_msgs/srv/AddSetUTool` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_9fb04e61b75b8c469d261322c544d16bfdb903834b34bac580f26469471e0972",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Rmi_msgsSrvAddSetUTool_Request",
            `response` = "Ros2Rmi_msgsSrvAddSetUTool_Response"
        )
    ),
    `rmi_msgs/srv/AddWaitDIN` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_e990aaad83a6463867466ab9e9eb70b137d59f2cc4b08e7928a7b1d2b7814b8b",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Rmi_msgsSrvAddWaitDIN_Request",
            `response` = "Ros2Rmi_msgsSrvAddWaitDIN_Response"
        )
    ),
    `rmi_msgs/srv/AddWaitTime` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_3ebf7bd8e5b7822826d6bacf9ae6c5f3c7d30f56e5d6be2418c2727eb6f23a86",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Rmi_msgsSrvAddWaitTime_Request",
            `response` = "Ros2Rmi_msgsSrvAddWaitTime_Response"
        )
    ),
    `rmi_msgs/srv/CallCommand` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_f2545dd77939bf2640726d07c8ccdea933bcbd54a24e9bdd39fac3feb9805cde",
        `registered` = TRUE,
        `components` = list(
            `request` = "Ros2Rmi_msgsSrvCallCommand_Request",
            `response` = "Ros2Rmi_msgsSrvCallCommand_Response"
        )
    ),
    `sensor_msgs/msg/JointState` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884",
        `registered` = TRUE,
        `components` = list(
            `message` = "Ros2Sensor_msgsMsgJointState"
        )
    ),
    `std_msgs/msg/Header` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros2Std_msgsMsgHeader"
        )
    ),
    `std_srvs/srv/Trigger` = list(
        `kind` = "service",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_2bafba62f4b166a5e736d6b5f0a5db9a8f8c2f02dc21daa0779ff56f8b87e583",
        `registered` = FALSE,
        `components` = list(
            `request` = "Ros2Std_srvsSrvTrigger_Request",
            `response` = "Ros2Std_srvsSrvTrigger_Response"
        )
    ),
    `trajectory_msgs/msg/JointTrajectory` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros2Trajectory_msgsMsgJointTrajectory"
        )
    ),
    `trajectory_msgs/msg/JointTrajectoryPoint` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros2Trajectory_msgsMsgJointTrajectoryPoint"
        )
    ),
    `trajectory_msgs/msg/MultiDOFJointTrajectory` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectory"
        )
    ),
    `trajectory_msgs/msg/MultiDOFJointTrajectoryPoint` = list(
        `kind` = "message",
        `native_identity` = NULL,
        `codec_identity` = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242",
        `registered` = FALSE,
        `components` = list(
            `message` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint"
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
