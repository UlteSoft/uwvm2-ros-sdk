# @file records.rb
# @brief Complete original YASKAWA ROS 2 owning values and codecs.
# @details Every field, constant, default and bound is retained; constructing values grants no ROS authority.
require "roswasm/wire"
module Uwvm
    module Yaskawa
        module Ros2
            # @brief Complete source schemas in dependency order; exact words retain Integer precision.
            SCHEMAS = [
                {
                    "symbol" => "Ros2Builtin_interfacesMsgDuration",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "normalized-time",
                    "ros_version" => 2,
                    "native_type" => "builtin_interfaces/msg/Duration",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "sec",
                            "type" => "int32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "nanosec",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Builtin_interfacesMsgTime",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "normalized-time",
                    "ros_version" => 2,
                    "native_type" => "builtin_interfaces/msg/Time",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "sec",
                            "type" => "int32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "nanosec",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Std_msgsMsgHeader",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
                    "minimum" => 12,
                    "maximum" => 76,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "std_msgs/msg/Header",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "stamp",
                            "type" => "Ros2Builtin_interfacesMsgTime",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "frame_id",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 64,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5",
                    "minimum" => 24,
                    "maximum" => 408,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "trajectory_msgs/msg/JointTrajectoryPoint",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "positions",
                            "type" => "float64",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "velocities",
                            "type" => "float64",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "accelerations",
                            "type" => "float64",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "effort",
                            "type" => "float64",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "time_from_start",
                            "type" => "Ros2Builtin_interfacesMsgDuration",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Trajectory_msgsMsgJointTrajectory",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0",
                    "minimum" => 20,
                    "maximum" => 4164,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "trajectory_msgs/msg/JointTrajectory",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "header",
                            "type" => "Ros2Std_msgsMsgHeader",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 12
                        },
                        {
                            "name" => "joint_names",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 64,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "points",
                            "type" => "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                            "array" => "sequence",
                            "count" => 8,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 24
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Geometry_msgsMsgVector3",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
                    "minimum" => 24,
                    "maximum" => 24,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "geometry_msgs/msg/Vector3",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "x",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "y",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "z",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Geometry_msgsMsgQuaternion",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
                    "minimum" => 32,
                    "maximum" => 32,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "geometry_msgs/msg/Quaternion",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "x",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => "0.0",
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8,
                            "default" => 0.0
                        },
                        {
                            "name" => "y",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => "0.0",
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8,
                            "default" => 0.0
                        },
                        {
                            "name" => "z",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => "0.0",
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8,
                            "default" => 0.0
                        },
                        {
                            "name" => "w",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => "1.0",
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8,
                            "default" => 1.0
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Geometry_msgsMsgTransform",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
                    "minimum" => 56,
                    "maximum" => 56,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "geometry_msgs/msg/Transform",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "translation",
                            "type" => "Ros2Geometry_msgsMsgVector3",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 24
                        },
                        {
                            "name" => "rotation",
                            "type" => "Ros2Geometry_msgsMsgQuaternion",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 32
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Geometry_msgsMsgTwist",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
                    "minimum" => 48,
                    "maximum" => 48,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "geometry_msgs/msg/Twist",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "linear",
                            "type" => "Ros2Geometry_msgsMsgVector3",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 24
                        },
                        {
                            "name" => "angular",
                            "type" => "Ros2Geometry_msgsMsgVector3",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 24
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242",
                    "minimum" => 20,
                    "maximum" => 324,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "transforms",
                            "type" => "Ros2Geometry_msgsMsgTransform",
                            "array" => "sequence",
                            "count" => 2,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 56
                        },
                        {
                            "name" => "velocities",
                            "type" => "Ros2Geometry_msgsMsgTwist",
                            "array" => "sequence",
                            "count" => 2,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 48
                        },
                        {
                            "name" => "accelerations",
                            "type" => "Ros2Geometry_msgsMsgTwist",
                            "array" => "sequence",
                            "count" => 2,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 48
                        },
                        {
                            "name" => "time_from_start",
                            "type" => "Ros2Builtin_interfacesMsgDuration",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Trajectory_msgsMsgMultiDOFJointTrajectory",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401",
                    "minimum" => 20,
                    "maximum" => 1516,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "trajectory_msgs/msg/MultiDOFJointTrajectory",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "header",
                            "type" => "Ros2Std_msgsMsgHeader",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 12
                        },
                        {
                            "name" => "joint_names",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 2,
                            "string_bound" => 64,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "points",
                            "type" => "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                            "array" => "sequence",
                            "count" => 4,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 20
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Control_msgsMsgJointTolerance",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2",
                    "minimum" => 28,
                    "maximum" => 92,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "control_msgs/msg/JointTolerance",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "name",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 64,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "position",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "velocity",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "acceleration",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Control_msgsMsgJointComponentTolerance",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342",
                    "minimum" => 30,
                    "maximum" => 542,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "control_msgs/msg/JointComponentTolerance",
                    "constants" => {
                        "X_AXIS" => 1,
                        "Y_AXIS" => 2,
                        "Z_AXIS" => 3,
                        "TRANSLATION" => 4,
                        "ROTATION" => 5
                    },
                    "fields" => [
                        {
                            "name" => "joint_name",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "component",
                            "type" => "uint16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "position",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "velocity",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "acceleration",
                            "type" => "float64",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Control_msgsActionFollowJointTrajectory_Goal",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16",
                    "minimum" => 64,
                    "maximum" => 20920,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "control_msgs/action/FollowJointTrajectory_Goal",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "trajectory",
                            "type" => "Ros2Trajectory_msgsMsgJointTrajectory",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 20
                        },
                        {
                            "name" => "multi_dof_trajectory",
                            "type" => "Ros2Trajectory_msgsMsgMultiDOFJointTrajectory",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 20
                        },
                        {
                            "name" => "path_tolerance",
                            "type" => "Ros2Control_msgsMsgJointTolerance",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 28
                        },
                        {
                            "name" => "component_path_tolerance",
                            "type" => "Ros2Control_msgsMsgJointComponentTolerance",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 30
                        },
                        {
                            "name" => "goal_tolerance",
                            "type" => "Ros2Control_msgsMsgJointTolerance",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 28
                        },
                        {
                            "name" => "component_goal_tolerance",
                            "type" => "Ros2Control_msgsMsgJointComponentTolerance",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 30
                        },
                        {
                            "name" => "goal_time_tolerance",
                            "type" => "Ros2Builtin_interfacesMsgDuration",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Control_msgsActionFollowJointTrajectory_Result",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70",
                    "minimum" => 8,
                    "maximum" => 4104,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "control_msgs/action/FollowJointTrajectory_Result",
                    "constants" => {
                        "SUCCESSFUL" => 0,
                        "INVALID_GOAL" => -1,
                        "INVALID_JOINTS" => -2,
                        "OLD_HEADER_TIMESTAMP" => -3,
                        "PATH_TOLERANCE_VIOLATED" => -4,
                        "GOAL_TOLERANCE_VIOLATED" => -5
                    },
                    "fields" => [
                        {
                            "name" => "error_code",
                            "type" => "int32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "error_string",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 4096,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Control_msgsActionFollowJointTrajectory_Feedback",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb",
                    "minimum" => 152,
                    "maximum" => 4128,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "control_msgs/action/FollowJointTrajectory_Feedback",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "header",
                            "type" => "Ros2Std_msgsMsgHeader",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 12
                        },
                        {
                            "name" => "joint_names",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 64,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "desired",
                            "type" => "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 24
                        },
                        {
                            "name" => "actual",
                            "type" => "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 24
                        },
                        {
                            "name" => "error",
                            "type" => "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 24
                        },
                        {
                            "name" => "multi_dof_joint_names",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 2,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "multi_dof_desired",
                            "type" => "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 20
                        },
                        {
                            "name" => "multi_dof_actual",
                            "type" => "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 20
                        },
                        {
                            "name" => "multi_dof_error",
                            "type" => "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 20
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Geometry_msgsMsgTransformStamped",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792",
                    "minimum" => 72,
                    "maximum" => 648,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "geometry_msgs/msg/TransformStamped",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "header",
                            "type" => "Ros2Std_msgsMsgHeader",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 12
                        },
                        {
                            "name" => "child_frame_id",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "transform",
                            "type" => "Ros2Geometry_msgsMsgTransform",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 56
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsMsgDebugLevel",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/msg/DebugLevel",
                    "constants" => {
                        "DEBUG" => 5,
                        "INFO" => 4,
                        "WARN" => 3,
                        "ERROR" => 2,
                        "FATAL" => 1,
                        "NONE" => 0
                    },
                    "fields" => [
                        {
                            "name" => "val",
                            "type" => "uint8",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsMsgDeviceInfo",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b",
                    "minimum" => 20,
                    "maximum" => 2580,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/msg/DeviceInfo",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "model",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "serial_number",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "hw_version",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "sw_version",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "address",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsMsgRobotMode",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/msg/RobotMode",
                    "constants" => {
                        "UNKNOWN" => -1,
                        "MANUAL" => 1,
                        "AUTO" => 2
                    },
                    "fields" => [
                        {
                            "name" => "val",
                            "type" => "int8",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsMsgTriState",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/msg/TriState",
                    "constants" => {
                        "UNKNOWN" => -1,
                        "TRUE" => 1,
                        "ON" => 1,
                        "ENABLED" => 1,
                        "HIGH" => 1,
                        "CLOSED" => 1,
                        "FALSE" => 0,
                        "OFF" => 0,
                        "DISABLED" => 0,
                        "LOW" => 0,
                        "OPEN" => 0
                    },
                    "fields" => [
                        {
                            "name" => "val",
                            "type" => "int8",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsMsgRobotStatus",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba",
                    "minimum" => 22,
                    "maximum" => 150,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/msg/RobotStatus",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "header",
                            "type" => "Ros2Std_msgsMsgHeader",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 12
                        },
                        {
                            "name" => "mode",
                            "type" => "Ros2Industrial_msgsMsgRobotMode",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "e_stopped",
                            "type" => "Ros2Industrial_msgsMsgTriState",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "drives_powered",
                            "type" => "Ros2Industrial_msgsMsgTriState",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "motion_possible",
                            "type" => "Ros2Industrial_msgsMsgTriState",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "in_motion",
                            "type" => "Ros2Industrial_msgsMsgTriState",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "in_error",
                            "type" => "Ros2Industrial_msgsMsgTriState",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "error_codes",
                            "type" => "int32",
                            "array" => "sequence",
                            "count" => 16,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsMsgServiceReturnCode",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/msg/ServiceReturnCode",
                    "constants" => {
                        "SUCCESS" => 1,
                        "FAILURE" => -1
                    },
                    "fields" => [
                        {
                            "name" => "val",
                            "type" => "int8",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsSrvCmdJointTrajectory_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1def3934b243546a4591b7be1ef2eb27002fbd9d3725302016e3b1846805149d",
                    "minimum" => 20,
                    "maximum" => 4164,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/srv/CmdJointTrajectory_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "trajectory",
                            "type" => "Ros2Trajectory_msgsMsgJointTrajectory",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 20
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsSrvCmdJointTrajectory_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1e4d064ef659e5d1cc73bdd90f82657a16087c96e0f75b632e2be2be884bca8b",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/srv/CmdJointTrajectory_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "code",
                            "type" => "Ros2Industrial_msgsMsgServiceReturnCode",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsSrvGetRobotInfo_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_688a272f6ee39921013c6c39a7b0b0c4e2cda5119787088234103518ba25c1d2",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/srv/GetRobotInfo_Request",
                    "constants" => {

                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsSrvGetRobotInfo_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6d37cdcd8afc918329d7856e682d7fcdae2931832474a9194143c21079ed4152",
                    "minimum" => 25,
                    "maximum" => 32768,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/srv/GetRobotInfo_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "controller",
                            "type" => "Ros2Industrial_msgsMsgDeviceInfo",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 20
                        },
                        {
                            "name" => "robots",
                            "type" => "Ros2Industrial_msgsMsgDeviceInfo",
                            "array" => "sequence",
                            "count" => 16,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 20
                        },
                        {
                            "name" => "code",
                            "type" => "Ros2Industrial_msgsMsgServiceReturnCode",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsSrvSetDrivePower_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b4fc5e109e131a97820ab5856b34839c572ac0b0c256d70457c176e401844f96",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/srv/SetDrivePower_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "drive_power",
                            "type" => "bool",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsSrvSetDrivePower_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_050fb9a727ebedd240e9023b9a2379a5d72e0d9fa335bead0c40d783abb22cff",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/srv/SetDrivePower_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "code",
                            "type" => "Ros2Industrial_msgsMsgServiceReturnCode",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bbadd39c05cab90b14f4b1fad23ff05ac83325f6cc57810cd649e04fa29fe014",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/srv/SetRemoteLoggerLevel_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "level",
                            "type" => "Ros2Industrial_msgsMsgDebugLevel",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b8681d031a4bb5a67b842277af2e2156e8339bdef23be88d2b64e296a7e3d63b",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/srv/SetRemoteLoggerLevel_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "code",
                            "type" => "Ros2Industrial_msgsMsgServiceReturnCode",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsSrvStartMotion_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0a96fb9489f863612a91bf82f995f2f28bcb7fb403bde74c617925c789e4dcd8",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/srv/StartMotion_Request",
                    "constants" => {

                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsSrvStartMotion_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3bb3650fbe638a6d300bcd9fcd5acf574bd54d00a7368edd3014bf44dcf66c16",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/srv/StartMotion_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "code",
                            "type" => "Ros2Industrial_msgsMsgServiceReturnCode",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsSrvStopMotion_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fe5a7cf0da30270eab5cfb1ab8c1fbd37d2b4c4f91ef29662a0ddcac39e6ef49",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/srv/StopMotion_Request",
                    "constants" => {

                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Industrial_msgsSrvStopMotion_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c26bda240d86becc5b8b4ea80380eba3602092a5ec4a06818dbfbd38c24015b5",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "industrial_msgs/srv/StopMotion_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "code",
                            "type" => "Ros2Industrial_msgsMsgServiceReturnCode",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesMsgAlarmCauseRemedy",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5",
                    "minimum" => 8,
                    "maximum" => 1032,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/msg/AlarmCauseRemedy",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "cause",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "remedy",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesMsgAlarmInfo",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f",
                    "minimum" => 32,
                    "maximum" => 25248,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/msg/AlarmInfo",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "number",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "sub_code",
                            "type" => "int32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "datetime",
                            "type" => "Ros2Builtin_interfacesMsgTime",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "contents",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 4096,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "description",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 4096,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "help",
                            "type" => "Ros2Motoros2_interfacesMsgAlarmCauseRemedy",
                            "array" => "sequence",
                            "count" => 16,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesMsgErrorInfo",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67",
                    "minimum" => 20,
                    "maximum" => 532,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/msg/ErrorInfo",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "number",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "sub_code",
                            "type" => "int32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "datetime",
                            "type" => "Ros2Builtin_interfacesMsgTime",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesMsgInformJobCrudResultCodes",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/msg/InformJobCrudResultCodes",
                    "constants" => {
                        "RC_OK" => 1,
                        "STR_OK" => "Success",
                        "RC_ERR_REFRESHING_JOB_LIST" => 10,
                        "STR_ERR_REFRESHING_JOB_LIST" => "Error refreshing job list",
                        "RC_ERR_RETRIEVING_FILE_COUNT" => 11,
                        "STR_ERR_RETRIEVING_FILE_COUNT" => "Error retrieving file count",
                        "RC_ERR_TOO_MANY_JOBS" => 12,
                        "STR_ERR_TOO_MANY_JOBS" => "Too many jobs",
                        "RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST" => 13,
                        "STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST" => "Failed retrieving job name from list",
                        "RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE" => 14,
                        "STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE" => "Error adding job name to service response"
                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesMsgInitTrajEnum",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763",
                    "minimum" => 2,
                    "maximum" => 2,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/msg/InitTrajEnum",
                    "constants" => {
                        "INIT_TRAJ_OK" => 0,
                        "INIT_TRAJ_OK_STR" => "OK",
                        "INIT_TRAJ_UNSPECIFIED" => 200,
                        "INIT_TRAJ_UNSPECIFIED_STR" => "Unspecified failure",
                        "INIT_TRAJ_TOO_SMALL" => 201,
                        "INIT_TRAJ_TOO_SMALL_STR" => "Trajectory must contain at least two points.",
                        "INIT_TRAJ_TOO_BIG" => 202,
                        "INIT_TRAJ_TOO_BIG_STR" => "Trajectory contains too many points (Not enough memory).",
                        "INIT_TRAJ_ALREADY_IN_MOTION" => 203,
                        "INIT_TRAJ_ALREADY_IN_MOTION_STR" => "Already running a trajectory.",
                        "INIT_TRAJ_INVALID_STARTING_POS" => 204,
                        "INIT_TRAJ_INVALID_STARTING_POS_STR" => "The first point must match the robot's current position.",
                        "INIT_TRAJ_INVALID_VELOCITY" => 205,
                        "INIT_TRAJ_INVALID_VELOCITY_STR" => "The commanded velocity is too high.",
                        "INIT_TRAJ_INVALID_JOINTNAME" => 206,
                        "INIT_TRAJ_INVALID_JOINTNAME_STR" => "Invalid joint name specified. Check motoros2_config.yaml.",
                        "INIT_TRAJ_INCOMPLETE_JOINTLIST" => 207,
                        "INIT_TRAJ_INCOMPLETE_JOINTLIST_STR" => "Trajectory must contain data for all joints.",
                        "INIT_TRAJ_INVALID_TIME" => 208,
                        "INIT_TRAJ_INVALID_TIME_STR" => "Invalid time in trajectory.",
                        "INIT_TRAJ_WRONG_MODE" => 209,
                        "INIT_TRAJ_WRONG_MODE_STR" => "Must call start_traj_mode service",
                        "INIT_TRAJ_BACKWARD_TIME" => 210,
                        "INIT_TRAJ_BACKWARD_TIME_STR" => "Trajectory message contains waypoints that are not strictly increasing in time.",
                        "INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS" => 211,
                        "INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR" => "Trajectory did not contain position data for all axes.",
                        "INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES" => 212,
                        "INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR" => "Trajectory did not contain velocity data for all axes.",
                        "INIT_TRAJ_INVALID_ENDING_VELOCITY" => 213,
                        "INIT_TRAJ_INVALID_ENDING_VELOCITY_STR" => "The final point in the trajectory must have zero velocity.",
                        "INIT_TRAJ_INVALID_ENDING_ACCELERATION" => 214,
                        "INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR" => "The final point in the trajectory must have zero acceleration.",
                        "INIT_TRAJ_DUPLICATE_JOINT_NAME" => 215,
                        "INIT_TRAJ_DUPLICATE_JOINT_NAME_STR" => "The trajectory contains duplicate joint names."
                    },
                    "fields" => [
                        {
                            "name" => "value",
                            "type" => "uint16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesMsgIoResultCodes",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/msg/IoResultCodes",
                    "constants" => {
                        "OK" => 0,
                        "OK_STR" => "Success",
                        "READ_ADDRESS_INVALID" => 1001,
                        "READ_ADDRESS_INVALID_STR" => "Address cannot be read from (out of readable range)",
                        "WRITE_ADDRESS_INVALID" => 1002,
                        "WRITE_ADDRESS_INVALID_STR" => "Address cannot be written to (out of writable range)",
                        "WRITE_VALUE_INVALID" => 1003,
                        "WRITE_VALUE_INVALID_STR" => "Illegal value for the type of IO element addressed",
                        "READ_API_ERROR" => 1004,
                        "READ_API_ERROR_STR" => "The MotoPlus function mpReadIO returned -1. No further information is available",
                        "WRITE_API_ERROR" => 1005,
                        "WRITE_API_ERROR_STR" => "The MotoPlus function mpWriteIO returned -1. No further information is available",
                        "UNKNOWN_API_ERROR_STR" => "Unknown error accessing I/O. No further information is available"
                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesMsgMotionReadyEnum",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6",
                    "minimum" => 2,
                    "maximum" => 2,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/msg/MotionReadyEnum",
                    "constants" => {
                        "READY" => 1,
                        "READY_STR" => "Ready",
                        "NOT_READY_UNSPECIFIED" => 100,
                        "NOT_READY_UNSPECIFIED_STR" => "Unspecified",
                        "NOT_READY_ALARM" => 101,
                        "NOT_READY_ALARM_STR" => "The controller has an active Alarm",
                        "NOT_READY_ERROR" => 102,
                        "NOT_READY_ERROR_STR" => "The controller has an active Error",
                        "NOT_READY_ESTOP" => 103,
                        "NOT_READY_ESTOP_STR" => "The controller is in E-Stop",
                        "NOT_READY_NOT_PLAY" => 104,
                        "NOT_READY_NOT_PLAY_STR" => "The teach pendant must not be in TEACH mode",
                        "NOT_READY_NOT_REMOTE" => 105,
                        "NOT_READY_NOT_REMOTE_STR" => "The teach pendant must be in REMOTE mode",
                        "NOT_READY_SERVO_OFF" => 106,
                        "NOT_READY_SERVO_OFF_STR" => "Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service",
                        "NOT_READY_HOLD" => 107,
                        "NOT_READY_HOLD_STR" => "The controller is in HOLD",
                        "NOT_READY_JOB_NOT_STARTED" => 108,
                        "NOT_READY_JOB_NOT_STARTED_STR" => "The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service",
                        "NOT_READY_NOT_ON_WAIT_CMD" => 109,
                        "NOT_READY_NOT_ON_WAIT_CMD_STR" => "INFORM job is not on a WAIT command. Check the format of INIT_ROS",
                        "NOT_READY_PFL_ACTIVE" => 111,
                        "NOT_READY_PFL_ACTIVE_STR" => "A PFL event has occurred. Please return the robot to a safe state",
                        "NOT_READY_INC_MOVE_ERROR" => 112,
                        "NOT_READY_INC_MOVE_ERROR_STR" => "The controller is in an error state. Please call reset_error to attempt to clear the error",
                        "NOT_READY_OTHER_PROGRAM_RUNNING" => 113,
                        "NOT_READY_OTHER_PROGRAM_RUNNING_STR" => "Controller is running another job",
                        "NOT_READY_OTHER_TRAJ_MODE_ACTIVE" => 114,
                        "NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR" => "Another trajectory mode is already active. Please call stop_traj_mode service",
                        "NOT_READY_NOT_CONT_CYCLE_MODE" => 115,
                        "NOT_READY_NOT_CONT_CYCLE_MODE_STR" => "AUTO cycle mode not set. Please set the cycle mode to AUTO",
                        "NOT_READY_MAJOR_ALARM" => 116,
                        "NOT_READY_MAJOR_ALARM_STR" => "Major Alarms can't be reset. Please check the teach pendant",
                        "NOT_READY_ECO_MODE" => 117,
                        "NOT_READY_ECO_MODE_STR" => "Couldn't disable eco mode",
                        "NOT_READY_SERVO_ON_TIMEOUT" => 118,
                        "NOT_READY_SERVO_ON_TIMEOUT_STR" => "Timed out while waiting for servo on"
                    },
                    "fields" => [
                        {
                            "name" => "value",
                            "type" => "uint16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesMsgQueueResultEnum",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23",
                    "minimum" => 2,
                    "maximum" => 2,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/msg/QueueResultEnum",
                    "constants" => {
                        "SUCCESS" => 1,
                        "SUCCESS_STR" => "",
                        "WRONG_MODE" => 2,
                        "WRONG_MODE_STR" => "Must call start_point_queue_mode service",
                        "INIT_FAILURE" => 3,
                        "INIT_FAILURE_STR" => "Failed to initialize the streaming trajectory",
                        "BUSY" => 4,
                        "BUSY_STR" => "Busy processing the previous trajectory point. Please resend the next point shortly",
                        "INVALID_JOINT_LIST" => 5,
                        "INVALID_JOINT_LIST_STR" => "Point must contain data for all joints",
                        "UNABLE_TO_PROCESS_POINT" => 6,
                        "UNABLE_TO_PROCESS_POINT_STR" => "Error while processing the trajectory point. Check debug log for more details"
                    },
                    "fields" => [
                        {
                            "name" => "value",
                            "type" => "uint16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesMsgSelectionResultCodes",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/msg/SelectionResultCodes",
                    "constants" => {
                        "OK" => 0,
                        "OK_STR" => "",
                        "INVALID_CONTROLLER_STATE" => 400,
                        "INVALID_CONTROLLER_STATE_STR" => "Pendant is not in REMOTE mode",
                        "INVALID_CONTROL_GROUP" => 401,
                        "INVALID_CONTROL_GROUP_STR" => "Invalid control group",
                        "INVALID_SELECTION_INDEX" => 402,
                        "INVALID_SELECTION_INDEX_STR" => "Invalid tool selection"
                    },
                    "fields" => [
                        {
                            "name" => "value",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_aadcd63f3bc47424c38767afdc1589561e3c90e8aeae9bdceef88b1033d57a7e",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/GetActiveAlarmInfo_Request",
                    "constants" => {

                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e11bdbb95b6ded88d035696260c58dad32bcf3604aa4e89dd41c0dab26541567",
                    "minimum" => 16,
                    "maximum" => 32768,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/GetActiveAlarmInfo_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "result_message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "alarms",
                            "type" => "Ros2Motoros2_interfacesMsgAlarmInfo",
                            "array" => "sequence",
                            "count" => 16,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 32
                        },
                        {
                            "name" => "errors",
                            "type" => "Ros2Motoros2_interfacesMsgErrorInfo",
                            "array" => "sequence",
                            "count" => 16,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 20
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvListInformJobs_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e77eedadef98d98321b1757b88284022afcdb1ffef52b98820b0c4ba596d643c",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/ListInformJobs_Request",
                    "constants" => {

                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvListInformJobs_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_49021f0abc00f8df1ef49605a244cb6bba8d8b45ece5365ae35d747d2506eadc",
                    "minimum" => 12,
                    "maximum" => 8780,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/ListInformJobs_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "names",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvQueueTrajPoint_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3d37f9981d6abaca33ec0b5378fa3a1ac301791cc9be94d5bdcf4ea6aa81b8d0",
                    "minimum" => 28,
                    "maximum" => 1228,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/QueueTrajPoint_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "joint_names",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 64,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "point",
                            "type" => "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 24
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvQueueTrajPoint_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d4887ed24d39332a5ccfd4a3d072004dd8f314fe5c166bf0bd57520a826cbccd",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/QueueTrajPoint_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "Ros2Motoros2_interfacesMsgQueueResultEnum",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvReadGroupIO_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6ee09ac379e169fc23b81a551e9a9ed21c3f82b5010859984e911b17152beb7f",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/ReadGroupIO_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "address",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvReadGroupIO_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_292fcf6e8c46a2509ee4cc5238d443157f37fed0de898367248b967e9001ea0d",
                    "minimum" => 10,
                    "maximum" => 522,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/ReadGroupIO_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "success",
                            "type" => "bool",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "value",
                            "type" => "uint8",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvReadMRegister_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f31f0983466054f5ac5dcb2ab80ab7721d606a681b833ebb376cc87f96054f6f",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/ReadMRegister_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "address",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvReadMRegister_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8d6ded2876adfa2079711205cb0110a82ead6f51db05f266bf285308cd815a04",
                    "minimum" => 11,
                    "maximum" => 523,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/ReadMRegister_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "success",
                            "type" => "bool",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "value",
                            "type" => "uint16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvReadSingleIO_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_30e28db303b772f26b2b3cf6165a0ff79037d037d60e8115b4ee8e177f17e8bb",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/ReadSingleIO_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "address",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvReadSingleIO_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b42013571274e85769ffac4d47129de8b76e4a675bdef3efefebc9ee19e92082",
                    "minimum" => 13,
                    "maximum" => 525,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/ReadSingleIO_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "success",
                            "type" => "bool",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "value",
                            "type" => "int32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvResetError_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2737855d0608478946e2d9ab7f06c92585199c1082ec8406a012f50ad56beae3",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/ResetError_Request",
                    "constants" => {

                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvResetError_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0af14ee02c157ecc39b143225a580e475473306389ccc3ba198cf22ca47d82f3",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/ResetError_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "Ros2Motoros2_interfacesMsgMotionReadyEnum",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvSelectMotionTool_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e6c884ae0a97337c1e441efe099b7869dc95205fcbca0a8082d4d9b06f5b438c",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/SelectMotionTool_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "group_number",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "tool_number",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvSelectMotionTool_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_088349a49c14c52282c25b428628462c48618c3b5202df560dcc5c9bed742640",
                    "minimum" => 9,
                    "maximum" => 521,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/SelectMotionTool_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "Ros2Motoros2_interfacesMsgSelectionResultCodes",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "success",
                            "type" => "bool",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvStartPointQueueMode_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_58a4827fc6535ef0ffc64ee25c5c4af75aa0fe199fa0350a88a95d2e991164a1",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/StartPointQueueMode_Request",
                    "constants" => {

                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvStartPointQueueMode_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bc553d5640e1c4644a5d5bdc2dfcefc9dbe789ef1e2a23dd620f08963467b6ff",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/StartPointQueueMode_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "Ros2Motoros2_interfacesMsgMotionReadyEnum",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvStartTrajMode_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0b8b2ad5db5901047035e1070b675618afc516a1ae8c3308cfdcad1174d34789",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/StartTrajMode_Request",
                    "constants" => {

                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvStartTrajMode_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_170e25737e6a2b06f5d5d9f331d748c97cf0306284271757953a4a801c722939",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/StartTrajMode_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "Ros2Motoros2_interfacesMsgMotionReadyEnum",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvWriteGroupIO_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2d348ed71408a0dd1dd28ee2ed2ca1db56bb07a14546d0fe13ccf64e8553d52c",
                    "minimum" => 5,
                    "maximum" => 5,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/WriteGroupIO_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "address",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "value",
                            "type" => "uint8",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvWriteGroupIO_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_06769934711b27fd32cdcbf849504e160189ee82ea32e0e71a2903af47c5d766",
                    "minimum" => 9,
                    "maximum" => 521,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/WriteGroupIO_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "success",
                            "type" => "bool",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvWriteMRegister_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8df4536be27f0632052725d5616fd5b047f49fc306fc7735854d9de4fb15d4ef",
                    "minimum" => 6,
                    "maximum" => 6,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/WriteMRegister_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "address",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "value",
                            "type" => "uint16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvWriteMRegister_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a61cc0596a7545ef4836bdc64dc9d6b4ed99b0abd18a726eb37e6215f51c729a",
                    "minimum" => 9,
                    "maximum" => 521,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/WriteMRegister_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "success",
                            "type" => "bool",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvWriteSingleIO_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6361affcd8b7ebaaa1fe6b5806e64a7c18f7a96a1178614cfce487de813a6392",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/WriteSingleIO_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "address",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "value",
                            "type" => "int32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Motoros2_interfacesSrvWriteSingleIO_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_12328db372a572fe9b0c7207331a7971d5d7c9033376e3be410db579b85fb794",
                    "minimum" => 9,
                    "maximum" => 521,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "motoros2_interfaces/srv/WriteSingleIO_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
                            "type" => "uint32",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "success",
                            "type" => "bool",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Sensor_msgsMsgJointState",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884",
                    "minimum" => 28,
                    "maximum" => 1196,
                    "semantics" => "joint-state-optional-equal-length-arrays",
                    "ros_version" => 2,
                    "native_type" => "sensor_msgs/msg/JointState",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "header",
                            "type" => "Ros2Std_msgsMsgHeader",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 12
                        },
                        {
                            "name" => "name",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 64,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "position",
                            "type" => "float64",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "velocity",
                            "type" => "float64",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "effort",
                            "type" => "float64",
                            "array" => "sequence",
                            "count" => 12,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Std_srvsSrvTrigger_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "std_srvs/srv/Trigger_Request",
                    "constants" => {

                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Std_srvsSrvTrigger_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d",
                    "minimum" => 5,
                    "maximum" => 517,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "std_srvs/srv/Trigger_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "success",
                            "type" => "bool",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 512,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Tf2_msgsMsgTFMessage",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a",
                    "minimum" => 4,
                    "maximum" => 10372,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "tf2_msgs/msg/TFMessage",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "transforms",
                            "type" => "Ros2Geometry_msgsMsgTransformStamped",
                            "array" => "sequence",
                            "count" => 16,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "raw" => false,
                            "element_minimum" => 72
                        }
                    ]
                }
            ]
            # @brief Build all complete value classes using the single shared Ruby wire implementation.
            RECORDS = Uwvm::RosWasm::Wire.records(SCHEMAS)
            RECORDS.each { |name, klass| const_set(name, klass) }
            # @brief Complete original interface roles and source identities; nil is never inferred.
            INTERFACES = {
                "builtin_interfaces/msg/Duration" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Builtin_interfacesMsgDuration"
                    }
                },
                "builtin_interfaces/msg/Time" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Builtin_interfacesMsgTime"
                    }
                },
                "control_msgs/action/FollowJointTrajectory" => {
                    "kind" => "action",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bd40771444c5441b79e63bdf5f2d5829d2c8b7ea0ccfd285baba8867cdc43757",
                    "registered" => true,
                    "components" => {
                        "goal" => "Ros2Control_msgsActionFollowJointTrajectory_Goal",
                        "result" => "Ros2Control_msgsActionFollowJointTrajectory_Result",
                        "feedback" => "Ros2Control_msgsActionFollowJointTrajectory_Feedback"
                    }
                },
                "control_msgs/msg/JointComponentTolerance" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Control_msgsMsgJointComponentTolerance"
                    }
                },
                "control_msgs/msg/JointTolerance" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Control_msgsMsgJointTolerance"
                    }
                },
                "geometry_msgs/msg/Quaternion" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Geometry_msgsMsgQuaternion"
                    }
                },
                "geometry_msgs/msg/Transform" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Geometry_msgsMsgTransform"
                    }
                },
                "geometry_msgs/msg/TransformStamped" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Geometry_msgsMsgTransformStamped"
                    }
                },
                "geometry_msgs/msg/Twist" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Geometry_msgsMsgTwist"
                    }
                },
                "geometry_msgs/msg/Vector3" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Geometry_msgsMsgVector3"
                    }
                },
                "industrial_msgs/msg/DebugLevel" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Industrial_msgsMsgDebugLevel"
                    }
                },
                "industrial_msgs/msg/DeviceInfo" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Industrial_msgsMsgDeviceInfo"
                    }
                },
                "industrial_msgs/msg/RobotMode" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Industrial_msgsMsgRobotMode"
                    }
                },
                "industrial_msgs/msg/RobotStatus" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Industrial_msgsMsgRobotStatus"
                    }
                },
                "industrial_msgs/msg/ServiceReturnCode" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Industrial_msgsMsgServiceReturnCode"
                    }
                },
                "industrial_msgs/msg/TriState" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Industrial_msgsMsgTriState"
                    }
                },
                "industrial_msgs/srv/CmdJointTrajectory" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e8df4c16f0b40ccebce141f41beb199ffdfcace748f4bd57a8623c5aafe9d18f",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Industrial_msgsSrvCmdJointTrajectory_Request",
                        "response" => "Ros2Industrial_msgsSrvCmdJointTrajectory_Response"
                    }
                },
                "industrial_msgs/srv/GetRobotInfo" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6e5a274d17ba3c1eadacdb354e10f3beb536bfb28fefa25c36d90e5b1a98a05d",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Industrial_msgsSrvGetRobotInfo_Request",
                        "response" => "Ros2Industrial_msgsSrvGetRobotInfo_Response"
                    }
                },
                "industrial_msgs/srv/SetDrivePower" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_139774184d22a01cdcaf17d2e4c73c56a9077bc40834f6c5912a8c08dee7109f",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Industrial_msgsSrvSetDrivePower_Request",
                        "response" => "Ros2Industrial_msgsSrvSetDrivePower_Response"
                    }
                },
                "industrial_msgs/srv/SetRemoteLoggerLevel" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6aaca700956f41c06c20b8069e644cf04ad5fa01c5835623df3b8de946da1ad1",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request",
                        "response" => "Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response"
                    }
                },
                "industrial_msgs/srv/StartMotion" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1cf62b342e5cc9b8a9fa463e1971d14bc73b6450e425a7fe9c16caa3529c67b0",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Industrial_msgsSrvStartMotion_Request",
                        "response" => "Ros2Industrial_msgsSrvStartMotion_Response"
                    }
                },
                "industrial_msgs/srv/StopMotion" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ee44e3fdaf3b705212972d964e3210babaf941de4be14e94cdd33aa54aea49a0",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Industrial_msgsSrvStopMotion_Request",
                        "response" => "Ros2Industrial_msgsSrvStopMotion_Response"
                    }
                },
                "motoros2_interfaces/msg/AlarmCauseRemedy" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Motoros2_interfacesMsgAlarmCauseRemedy"
                    }
                },
                "motoros2_interfaces/msg/AlarmInfo" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Motoros2_interfacesMsgAlarmInfo"
                    }
                },
                "motoros2_interfaces/msg/ErrorInfo" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Motoros2_interfacesMsgErrorInfo"
                    }
                },
                "motoros2_interfaces/msg/InformJobCrudResultCodes" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Motoros2_interfacesMsgInformJobCrudResultCodes"
                    }
                },
                "motoros2_interfaces/msg/InitTrajEnum" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Motoros2_interfacesMsgInitTrajEnum"
                    }
                },
                "motoros2_interfaces/msg/IoResultCodes" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Motoros2_interfacesMsgIoResultCodes"
                    }
                },
                "motoros2_interfaces/msg/MotionReadyEnum" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Motoros2_interfacesMsgMotionReadyEnum"
                    }
                },
                "motoros2_interfaces/msg/QueueResultEnum" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Motoros2_interfacesMsgQueueResultEnum"
                    }
                },
                "motoros2_interfaces/msg/SelectionResultCodes" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Motoros2_interfacesMsgSelectionResultCodes"
                    }
                },
                "motoros2_interfaces/srv/GetActiveAlarmInfo" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0ba75d003a58f500c933d13af5e3adca9566d503393bda636febb84972f116c0",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request",
                        "response" => "Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response"
                    }
                },
                "motoros2_interfaces/srv/ListInformJobs" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9954d2544fc3f6a93a863325ee37db0db935e34f785cb8dff1bbcdc6bed008ce",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvListInformJobs_Request",
                        "response" => "Ros2Motoros2_interfacesSrvListInformJobs_Response"
                    }
                },
                "motoros2_interfaces/srv/QueueTrajPoint" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_68502de019123622ff8db751ea9b1b026c92b0792e6349f4682320eee6dd34f7",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvQueueTrajPoint_Request",
                        "response" => "Ros2Motoros2_interfacesSrvQueueTrajPoint_Response"
                    }
                },
                "motoros2_interfaces/srv/ReadGroupIO" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6660903dbabb303801f8ce21560ff9219dc39fcf07a3d2e0fb3e795efd295ce7",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvReadGroupIO_Request",
                        "response" => "Ros2Motoros2_interfacesSrvReadGroupIO_Response"
                    }
                },
                "motoros2_interfaces/srv/ReadMRegister" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1a90ea4c10f6cf6101b226da050d17e3204f64fc4e7c34fda6a9c77a895268e4",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvReadMRegister_Request",
                        "response" => "Ros2Motoros2_interfacesSrvReadMRegister_Response"
                    }
                },
                "motoros2_interfaces/srv/ReadSingleIO" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_45367596a399144ccce710f19aec8e07af2b937f0358cc533f12454e63167ea4",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvReadSingleIO_Request",
                        "response" => "Ros2Motoros2_interfacesSrvReadSingleIO_Response"
                    }
                },
                "motoros2_interfaces/srv/ResetError" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_df40965a10883ee12932604f28fb1feebe7f0f1eb6515067b647ec90fae3951d",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvResetError_Request",
                        "response" => "Ros2Motoros2_interfacesSrvResetError_Response"
                    }
                },
                "motoros2_interfaces/srv/SelectMotionTool" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_021260e9311f4412bfdd8cf4a4cd6e6af113d82169e543103ae6acaab065b00e",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvSelectMotionTool_Request",
                        "response" => "Ros2Motoros2_interfacesSrvSelectMotionTool_Response"
                    }
                },
                "motoros2_interfaces/srv/StartPointQueueMode" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4368b9861121806a833f5227574e33547fe20a4891c4d1f146236fbe09891ef7",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvStartPointQueueMode_Request",
                        "response" => "Ros2Motoros2_interfacesSrvStartPointQueueMode_Response"
                    }
                },
                "motoros2_interfaces/srv/StartTrajMode" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d5c0a1821382852c10710973aa0214199a5e24a499972078db30fa8656c3edb8",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvStartTrajMode_Request",
                        "response" => "Ros2Motoros2_interfacesSrvStartTrajMode_Response"
                    }
                },
                "motoros2_interfaces/srv/WriteGroupIO" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_64fc54e69a98903782576a539df8311d1af2565893b6f87dfe0d59061565e834",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvWriteGroupIO_Request",
                        "response" => "Ros2Motoros2_interfacesSrvWriteGroupIO_Response"
                    }
                },
                "motoros2_interfaces/srv/WriteMRegister" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2bfb27c3f17b05fe8b7121b65cb7d2a2f2c54ed2eb9d8f8334d8d3149192f4f4",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvWriteMRegister_Request",
                        "response" => "Ros2Motoros2_interfacesSrvWriteMRegister_Response"
                    }
                },
                "motoros2_interfaces/srv/WriteSingleIO" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d9671caa86e0a7d249e3d7bea385898517595733fa6e5e0cd16c964d8d66691a",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Motoros2_interfacesSrvWriteSingleIO_Request",
                        "response" => "Ros2Motoros2_interfacesSrvWriteSingleIO_Response"
                    }
                },
                "sensor_msgs/msg/JointState" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Sensor_msgsMsgJointState"
                    }
                },
                "std_msgs/msg/Header" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Std_msgsMsgHeader"
                    }
                },
                "std_srvs/srv/Trigger" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2bafba62f4b166a5e736d6b5f0a5db9a8f8c2f02dc21daa0779ff56f8b87e583",
                    "registered" => false,
                    "components" => {
                        "request" => "Ros2Std_srvsSrvTrigger_Request",
                        "response" => "Ros2Std_srvsSrvTrigger_Response"
                    }
                },
                "tf2_msgs/msg/TFMessage" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Tf2_msgsMsgTFMessage"
                    }
                },
                "trajectory_msgs/msg/JointTrajectory" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Trajectory_msgsMsgJointTrajectory"
                    }
                },
                "trajectory_msgs/msg/JointTrajectoryPoint" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Trajectory_msgsMsgJointTrajectoryPoint"
                    }
                },
                "trajectory_msgs/msg/MultiDOFJointTrajectory" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Trajectory_msgsMsgMultiDOFJointTrajectory"
                    }
                },
                "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint"
                    }
                }
            }
        end
    end
end
