#' @file records.R
#' @brief Preserve every original field, constant, bound and interface component.
#' @details Int64/uint64 values use exact typed raw words from the shared wire.
#' Native type identity remains unbound until a matching runtime/native registry
#' supplies it. Local codec identity is not a ROS grant or native type identity.
#' Units, frames and full field meanings remain those of the original catalog
#' and the complete locale API reference. No additional native resources open.
#' @return UwvmKinovaRos2Humble contains complete codecs and original interface roles.
UwvmKinovaRos2Humble <- local({
    UwvmRos <- roswasm_wire()
    schemas <- list(
        list(
            `symbol` = "Ros2Builtin_interfacesMsgDuration",
            `native_type` = "builtin_interfaces/msg/Duration",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
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
            `symbol` = "Ros2Std_msgsMsgHeader",
            `native_type` = "std_msgs/msg/Header",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
            `minimum` = 12,
            `maximum` = 140,
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
            `symbol` = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
            `native_type` = "trajectory_msgs/msg/JointTrajectoryPoint",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1",
            `minimum` = 24,
            `maximum` = 280,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "positions",
                    `type` = "float64",
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
                    `name` = "velocities",
                    `type` = "float64",
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
                    `name` = "accelerations",
                    `type` = "float64",
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
                    `name` = "effort",
                    `type` = "float64",
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
            `native_type` = "trajectory_msgs/msg/JointTrajectory",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77",
            `minimum` = 20,
            `maximum` = 1484,
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
                    `name` = "joint_names",
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
                    `name` = "points",
                    `type` = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                    `array` = "sequence",
                    `count` = 1,
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
            `symbol` = "Ros2Geometry_msgsMsgTransform",
            `native_type` = "geometry_msgs/msg/Transform",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
            `minimum` = 56,
            `maximum` = 56,
            `semantics` = "",
            `constants` = list(),
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
            `symbol` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
            `native_type` = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf",
            `minimum` = 20,
            `maximum` = 844,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "transforms",
                    `type` = "Ros2Geometry_msgsMsgTransform",
                    `array` = "sequence",
                    `count` = 1,
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
                    `count` = 8,
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
                    `count` = 8,
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
            `native_type` = "trajectory_msgs/msg/MultiDOFJointTrajectory",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5",
            `minimum` = 20,
            `maximum` = 2048,
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
                    `name` = "joint_names",
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
                    `name` = "points",
                    `type` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                    `array` = "sequence",
                    `count` = 1,
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
            `native_type` = "control_msgs/msg/JointTolerance",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a",
            `minimum` = 28,
            `maximum` = 156,
            `semantics` = "",
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
                )
            )
        ),
        list(
            `symbol` = "Ros2Control_msgsMsgJointComponentTolerance",
            `native_type` = "control_msgs/msg/JointComponentTolerance",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb",
            `minimum` = 30,
            `maximum` = 158,
            `semantics` = "",
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
            `native_type` = "control_msgs/action/FollowJointTrajectory_Goal",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018",
            `minimum` = 64,
            `maximum` = 8580,
            `semantics` = "",
            `constants` = list(),
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
                    `count` = 8,
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
                    `count` = 8,
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
                    `count` = 8,
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
                    `count` = 8,
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
            `native_type` = "control_msgs/action/FollowJointTrajectory_Result",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649",
            `minimum` = 8,
            `maximum` = 264,
            `semantics` = "",
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
            `symbol` = "Ros2Control_msgsActionFollowJointTrajectory_Feedback",
            `native_type` = "control_msgs/action/FollowJointTrajectory_Feedback",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529",
            `minimum` = 152,
            `maximum` = 4708,
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
                    `name` = "joint_names",
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
                    `count` = 1,
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
            `symbol` = "Ros2Sensor_msgsMsgJointState",
            `native_type` = "sensor_msgs/msg/JointState",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11",
            `minimum` = 28,
            `maximum` = 1404,
            `semantics` = "joint-state-optional-equal-length-arrays",
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
                    `name` = "name",
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
                    `name` = "position",
                    `type` = "float64",
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
                    `type` = "float64",
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
                    `name` = "effort",
                    `type` = "float64",
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
        )
    )
    list(records = UwvmRos$records(schemas), interfaces = list(
        list(
            `type` = "builtin_interfaces/msg/Duration",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
            `components` = list(
                `message` = "Ros2Builtin_interfacesMsgDuration"
            )
        ),
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
            `type` = "control_msgs/action/FollowJointTrajectory",
            `kind` = "action",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_e797f0f621691bc268c5ff018ce6f91ec9ae89a7ac64d99472cc296f661214a0",
            `components` = list(
                `goal` = "Ros2Control_msgsActionFollowJointTrajectory_Goal",
                `result` = "Ros2Control_msgsActionFollowJointTrajectory_Result",
                `feedback` = "Ros2Control_msgsActionFollowJointTrajectory_Feedback"
            )
        ),
        list(
            `type` = "control_msgs/msg/JointComponentTolerance",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb",
            `components` = list(
                `message` = "Ros2Control_msgsMsgJointComponentTolerance"
            )
        ),
        list(
            `type` = "control_msgs/msg/JointTolerance",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a",
            `components` = list(
                `message` = "Ros2Control_msgsMsgJointTolerance"
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
            `type` = "geometry_msgs/msg/Transform",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgTransform"
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
            `type` = "sensor_msgs/msg/JointState",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11",
            `components` = list(
                `message` = "Ros2Sensor_msgsMsgJointState"
            )
        ),
        list(
            `type` = "std_msgs/msg/Header",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
            `components` = list(
                `message` = "Ros2Std_msgsMsgHeader"
            )
        ),
        list(
            `type` = "trajectory_msgs/msg/JointTrajectory",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77",
            `components` = list(
                `message` = "Ros2Trajectory_msgsMsgJointTrajectory"
            )
        ),
        list(
            `type` = "trajectory_msgs/msg/JointTrajectoryPoint",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1",
            `components` = list(
                `message` = "Ros2Trajectory_msgsMsgJointTrajectoryPoint"
            )
        ),
        list(
            `type` = "trajectory_msgs/msg/MultiDOFJointTrajectory",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5",
            `components` = list(
                `message` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectory"
            )
        ),
        list(
            `type` = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf",
            `components` = list(
                `message` = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint"
            )
        )
    ))
})
