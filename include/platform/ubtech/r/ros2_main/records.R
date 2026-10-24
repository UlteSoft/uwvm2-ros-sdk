# @file records.R
# @brief All 8 complete original ROS 2 vendor values.
# @details The module exposes only an ordinary owned namespace list.
UwvmUbtechRos2Main <- local({
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
            `symbol` = "Ros2Geometry_msgsMsgPoint",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
            `minimum` = 24,
            `maximum` = 24,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "geometry_msgs/msg/Point",
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
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
            `minimum` = 32,
            `maximum` = 32,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "geometry_msgs/msg/Quaternion",
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
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
            `minimum` = 56,
            `maximum` = 56,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "geometry_msgs/msg/Pose",
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
            `symbol` = "Ros2Std_msgsMsgHeader",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
            `minimum` = 12,
            `maximum` = 140,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "std_msgs/msg/Header",
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
            `symbol` = "Ros2Geometry_msgsMsgPoseStamped",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2",
            `minimum` = 68,
            `maximum` = 196,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "geometry_msgs/msg/PoseStamped",
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
            `symbol` = "Ros2Grab_demo_msgsMsgGraspCandidate",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5dfe34bfcc75bea067c1c30082a8c462575b2790a7326f85f90e7f913600bf37",
            `minimum` = 92,
            `maximum` = 604,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "grab_demo_msgs/msg/GraspCandidate",
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
                    `name` = "group_name",
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
                    `name` = "confidence",
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
                    `name` = "object_class",
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
            `symbol` = "Ros2Grab_demo_msgsMsgIKRequest",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b438f80854b2fee423938302dc415e1ef68a3988675998c427eab62a5ecc39fa",
            `minimum` = 64,
            `maximum` = 320,
            `semantics` = "",
            `ros_version` = 2,
            `native_type` = "grab_demo_msgs/msg/IKRequest",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "group_name",
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
        )
    )
    list(records = UwvmRos$records(schemas), interfaces = list(
        `builtin_interfaces/msg/Time` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros2Builtin_interfacesMsgTime"
            )
        ),
        `geometry_msgs/msg/Point` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgPoint"
            )
        ),
        `geometry_msgs/msg/Pose` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgPose"
            )
        ),
        `geometry_msgs/msg/PoseStamped` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros2Geometry_msgsMsgPoseStamped"
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
        `grab_demo_msgs/msg/GraspCandidate` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_5dfe34bfcc75bea067c1c30082a8c462575b2790a7326f85f90e7f913600bf37",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Grab_demo_msgsMsgGraspCandidate"
            )
        ),
        `grab_demo_msgs/msg/IKRequest` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_b438f80854b2fee423938302dc415e1ef68a3988675998c427eab62a5ecc39fa",
            `registered` = TRUE,
            `components` = list(
                `message` = "Ros2Grab_demo_msgsMsgIKRequest"
            )
        ),
        `std_msgs/msg/Header` = list(
            `kind` = "message",
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
            `registered` = FALSE,
            `components` = list(
                `message` = "Ros2Std_msgsMsgHeader"
            )
        )
    ))
})
