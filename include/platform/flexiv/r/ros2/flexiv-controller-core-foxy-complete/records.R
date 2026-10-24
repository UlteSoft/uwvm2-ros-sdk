#' @file records.R
#' @brief Preserve every original field, constant, bound and interface component.
#' @details Int64/uint64 values use exact typed raw words from the shared wire.
#' Native type identity remains unbound until a matching runtime/native registry
#' supplies it. Local codec identity is not a ROS grant or native type identity.
#' Units, frames and full field meanings remain those of the original catalog
#' and the complete locale API reference. No additional native resources open.
#' @return UwvmFlexivControllerCoreFoxy contains complete codecs and original interface roles.
UwvmFlexivControllerCoreFoxy <- local({
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
            `symbol` = "Ros2Sensor_msgsMsgJointState",
            `native_type` = "sensor_msgs/msg/JointState",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556",
            `minimum` = 28,
            `maximum` = 9372,
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
                    `count` = 32,
                    `string_bound` = 256,
                    `native_string_bound` = 0,
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
                    `name` = "velocity",
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
                    `name` = "effort",
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
            `symbol` = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
            `native_type` = "trajectory_msgs/msg/JointTrajectoryPoint",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c",
            `minimum` = 24,
            `maximum` = 1048,
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
                ),
                list(
                    `name` = "accelerations",
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
                    `name` = "effort",
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
            `codec_identity` = "UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4",
            `minimum` = 20,
            `maximum` = 16980,
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
                    `count` = 32,
                    `string_bound` = 256,
                    `native_string_bound` = 0,
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
            `symbol` = "Ros2Std_msgsMsgMultiArrayDimension",
            `native_type` = "std_msgs/msg/MultiArrayDimension",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d",
            `minimum` = 12,
            `maximum` = 268,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "label",
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
                ),
                list(
                    `name` = "size",
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
                    `name` = "stride",
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
            `symbol` = "Ros2Std_msgsMsgMultiArrayLayout",
            `native_type` = "std_msgs/msg/MultiArrayLayout",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40",
            `minimum` = 8,
            `maximum` = 2152,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "dim",
                    `type` = "Ros2Std_msgsMsgMultiArrayDimension",
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
                    `element_minimum` = 12
                ),
                list(
                    `name` = "data_offset",
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
            `symbol` = "Ros2Std_msgsMsgFloat64MultiArray",
            `native_type` = "std_msgs/msg/Float64MultiArray",
            `ros_version` = 2,
            `native_identity` = NULL,
            `codec_identity` = "UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2",
            `minimum` = 12,
            `maximum` = 2412,
            `semantics` = "",
            `constants` = list(),
            `fields` = list(
                list(
                    `name` = "layout",
                    `type` = "Ros2Std_msgsMsgMultiArrayLayout",
                    `array` = "",
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
                    `name` = "data",
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
            `type` = "std_msgs/msg/Header",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b",
            `components` = list(
                `message` = "Ros2Std_msgsMsgHeader"
            )
        ),
        list(
            `type` = "sensor_msgs/msg/JointState",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556",
            `components` = list(
                `message` = "Ros2Sensor_msgsMsgJointState"
            )
        ),
        list(
            `type` = "trajectory_msgs/msg/JointTrajectoryPoint",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c",
            `components` = list(
                `message` = "Ros2Trajectory_msgsMsgJointTrajectoryPoint"
            )
        ),
        list(
            `type` = "trajectory_msgs/msg/JointTrajectory",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4",
            `components` = list(
                `message` = "Ros2Trajectory_msgsMsgJointTrajectory"
            )
        ),
        list(
            `type` = "std_msgs/msg/MultiArrayDimension",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d",
            `components` = list(
                `message` = "Ros2Std_msgsMsgMultiArrayDimension"
            )
        ),
        list(
            `type` = "std_msgs/msg/MultiArrayLayout",
            `kind` = "message",
            `registered` = FALSE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40",
            `components` = list(
                `message` = "Ros2Std_msgsMsgMultiArrayLayout"
            )
        ),
        list(
            `type` = "std_msgs/msg/Float64MultiArray",
            `kind` = "message",
            `registered` = TRUE,
            `ros_version` = 2,
            `codec_identity` = "UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2",
            `components` = list(
                `message` = "Ros2Std_msgsMsgFloat64MultiArray"
            )
        )
    ))
})
