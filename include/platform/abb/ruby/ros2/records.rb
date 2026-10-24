# @file records.rb
# @brief Complete original ABB ROS 2 owning values and codecs.
# @details Every field, constant, default and bound is retained; constructing values grants no ROS authority.
require "roswasm/wire"
module Uwvm
    module Abb
        module Ros2
            # @brief Complete source schemas in dependency order; exact words retain Integer precision.
            SCHEMAS = [
                {
                    "symbol" => "Ros2Abb_egm_msgsMsgEGMChannelState",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519",
                    "minimum" => 17,
                    "maximum" => 81,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_egm_msgs/msg/EGMChannelState",
                    "constants" => {
                        "EGM_UNDEFINED" => 1,
                        "EGM_ERROR" => 2,
                        "EGM_STOPPED" => 3,
                        "EGM_RUNNING" => 4,
                        "MOTORS_UNDEFINED" => 1,
                        "MOTORS_ON" => 2,
                        "MOTORS_OFF" => 3,
                        "RAPID_UNDEFINED" => 1,
                        "RAPID_STOPPED" => 2,
                        "RAPID_RUNNING" => 3
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
                            "name" => "active",
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
                            "name" => "egm_convergence_met",
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
                            "name" => "egm_client_state",
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
                        },
                        {
                            "name" => "motor_state",
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
                        },
                        {
                            "name" => "rapid_execution_state",
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
                        },
                        {
                            "name" => "utilization_rate",
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
                    "symbol" => "Ros2Abb_egm_msgsMsgEGMState",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d",
                    "minimum" => 16,
                    "maximum" => 1376,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_egm_msgs/msg/EGMState",
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
                            "name" => "egm_channels",
                            "type" => "Ros2Abb_egm_msgsMsgEGMChannelState",
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
                            "element_minimum" => 17
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_rapid_msgsMsgConfData",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571",
                    "minimum" => 16,
                    "maximum" => 16,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_msgs/msg/ConfData",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "cf1",
                            "type" => "float32",
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
                            "name" => "cf4",
                            "type" => "float32",
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
                            "name" => "cf6",
                            "type" => "float32",
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
                            "name" => "cfx",
                            "type" => "float32",
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
                    "symbol" => "Ros2Abb_rapid_msgsMsgExtJoint",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2",
                    "minimum" => 24,
                    "maximum" => 24,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_msgs/msg/ExtJoint",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "eax_a",
                            "type" => "float32",
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
                            "name" => "eax_b",
                            "type" => "float32",
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
                            "name" => "eax_c",
                            "type" => "float32",
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
                            "name" => "eax_d",
                            "type" => "float32",
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
                            "name" => "eax_e",
                            "type" => "float32",
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
                            "name" => "eax_f",
                            "type" => "float32",
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
                    "symbol" => "Ros2Abb_rapid_msgsMsgRobJoint",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd",
                    "minimum" => 24,
                    "maximum" => 24,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_msgs/msg/RobJoint",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "rax_1",
                            "type" => "float32",
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
                            "name" => "rax_2",
                            "type" => "float32",
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
                            "name" => "rax_3",
                            "type" => "float32",
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
                            "name" => "rax_4",
                            "type" => "float32",
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
                            "name" => "rax_5",
                            "type" => "float32",
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
                            "name" => "rax_6",
                            "type" => "float32",
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
                    "symbol" => "Ros2Abb_rapid_msgsMsgJointTarget",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540",
                    "minimum" => 48,
                    "maximum" => 48,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_msgs/msg/JointTarget",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "robax",
                            "type" => "Ros2Abb_rapid_msgsMsgRobJoint",
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
                            "name" => "extax",
                            "type" => "Ros2Abb_rapid_msgsMsgExtJoint",
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
                    "symbol" => "Ros2Abb_rapid_msgsMsgPos",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2",
                    "minimum" => 12,
                    "maximum" => 12,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_msgs/msg/Pos",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "x",
                            "type" => "float32",
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
                            "name" => "y",
                            "type" => "float32",
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
                            "name" => "z",
                            "type" => "float32",
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
                    "symbol" => "Ros2Abb_rapid_msgsMsgOrient",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e",
                    "minimum" => 16,
                    "maximum" => 16,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_msgs/msg/Orient",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "q1",
                            "type" => "float32",
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
                            "name" => "q2",
                            "type" => "float32",
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
                            "name" => "q3",
                            "type" => "float32",
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
                            "name" => "q4",
                            "type" => "float32",
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
                    "symbol" => "Ros2Abb_rapid_msgsMsgLoadData",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9",
                    "minimum" => 44,
                    "maximum" => 44,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_msgs/msg/LoadData",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "mass",
                            "type" => "float32",
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
                            "name" => "cog",
                            "type" => "Ros2Abb_rapid_msgsMsgPos",
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
                            "name" => "aom",
                            "type" => "Ros2Abb_rapid_msgsMsgOrient",
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
                            "element_minimum" => 16
                        },
                        {
                            "name" => "ix",
                            "type" => "float32",
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
                            "name" => "iy",
                            "type" => "float32",
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
                            "name" => "iz",
                            "type" => "float32",
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
                    "symbol" => "Ros2Abb_rapid_msgsMsgPose",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2",
                    "minimum" => 28,
                    "maximum" => 28,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_msgs/msg/Pose",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "trans",
                            "type" => "Ros2Abb_rapid_msgsMsgPos",
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
                            "name" => "rot",
                            "type" => "Ros2Abb_rapid_msgsMsgOrient",
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
                            "element_minimum" => 16
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_rapid_msgsMsgRobTarget",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8",
                    "minimum" => 68,
                    "maximum" => 68,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_msgs/msg/RobTarget",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "trans",
                            "type" => "Ros2Abb_rapid_msgsMsgPos",
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
                            "name" => "rot",
                            "type" => "Ros2Abb_rapid_msgsMsgOrient",
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
                            "element_minimum" => 16
                        },
                        {
                            "name" => "robconf",
                            "type" => "Ros2Abb_rapid_msgsMsgConfData",
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
                            "element_minimum" => 16
                        },
                        {
                            "name" => "extax",
                            "type" => "Ros2Abb_rapid_msgsMsgExtJoint",
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
                    "symbol" => "Ros2Abb_rapid_msgsMsgToolData",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237",
                    "minimum" => 73,
                    "maximum" => 73,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_msgs/msg/ToolData",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "robhold",
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
                            "name" => "tframe",
                            "type" => "Ros2Abb_rapid_msgsMsgPose",
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
                            "element_minimum" => 28
                        },
                        {
                            "name" => "tload",
                            "type" => "Ros2Abb_rapid_msgsMsgLoadData",
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
                            "element_minimum" => 44
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_rapid_msgsMsgWObjData",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd",
                    "minimum" => 62,
                    "maximum" => 574,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_msgs/msg/WObjData",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "robhold",
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
                            "name" => "ufprog",
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
                            "name" => "ufmec",
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
                            "name" => "uframe",
                            "type" => "Ros2Abb_rapid_msgsMsgPose",
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
                            "element_minimum" => 28
                        },
                        {
                            "name" => "oframe",
                            "type" => "Ros2Abb_rapid_msgsMsgPose",
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
                            "element_minimum" => 28
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa",
                    "minimum" => 204,
                    "maximum" => 716,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/msg/EGMActivateSettings",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "tool",
                            "type" => "Ros2Abb_rapid_msgsMsgToolData",
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
                            "element_minimum" => 73
                        },
                        {
                            "name" => "wobj",
                            "type" => "Ros2Abb_rapid_msgsMsgWObjData",
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
                            "element_minimum" => 62
                        },
                        {
                            "name" => "correction_frame",
                            "type" => "Ros2Abb_rapid_msgsMsgPose",
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
                            "element_minimum" => 28
                        },
                        {
                            "name" => "sensor_frame",
                            "type" => "Ros2Abb_rapid_msgsMsgPose",
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
                            "element_minimum" => 28
                        },
                        {
                            "name" => "cond_min_max",
                            "type" => "float32",
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
                            "name" => "lp_filter",
                            "type" => "float32",
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
                            "name" => "sample_rate",
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
                        },
                        {
                            "name" => "max_speed_deviation",
                            "type" => "float32",
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
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2",
                    "minimum" => 40,
                    "maximum" => 40,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/msg/EGMRunSettings",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "cond_time",
                            "type" => "float32",
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
                            "name" => "ramp_in_time",
                            "type" => "float32",
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
                            "name" => "offset",
                            "type" => "Ros2Abb_rapid_msgsMsgPose",
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
                            "element_minimum" => 28
                        },
                        {
                            "name" => "pos_corr_gain",
                            "type" => "float32",
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
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c",
                    "minimum" => 5,
                    "maximum" => 5,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/msg/EGMSetupSettings",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "use_filtering",
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
                            "name" => "comm_timeout",
                            "type" => "float32",
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
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/msg/EGMStopSettings",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "ramp_out_time",
                            "type" => "float32",
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
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3",
                    "minimum" => 255,
                    "maximum" => 767,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/msg/EGMSettings",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "allow_egm_motions",
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
                            "name" => "use_presync",
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
                            "name" => "setup_uc",
                            "type" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings",
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
                            "element_minimum" => 5
                        },
                        {
                            "name" => "activate",
                            "type" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings",
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
                            "element_minimum" => 204
                        },
                        {
                            "name" => "run",
                            "type" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings",
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
                            "element_minimum" => 40
                        },
                        {
                            "name" => "stop",
                            "type" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings",
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
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/msg/StateMachineState",
                    "constants" => {
                        "SM_STATE_UNKNOWN" => 1,
                        "SM_STATE_IDLE" => 2,
                        "SM_STATE_INITIALIZE" => 3,
                        "SM_STATE_RUN_RAPID_ROUTINE" => 4,
                        "SM_STATE_RUN_EGM_ROUTINE" => 5,
                        "EGM_ACTION_UNKNOWN" => 1,
                        "EGM_ACTION_NONE" => 2,
                        "EGM_ACTION_RUN_JOINT" => 3,
                        "EGM_ACTION_RUN_POSE" => 4,
                        "EGM_ACTION_STOP" => 5,
                        "EGM_ACTION_START_STREAM" => 6,
                        "EGM_ACTION_STOP_STREAM" => 7
                    },
                    "fields" => [
                        {
                            "name" => "rapid_task",
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
                            "name" => "sm_state",
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
                        },
                        {
                            "name" => "egm_action",
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
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9",
                    "minimum" => 16,
                    "maximum" => 8368,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/msg/RuntimeState",
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
                            "name" => "state_machines",
                            "type" => "Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState",
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
                            "element_minimum" => 6
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_363be2459fcc9c475c6305cbcfebf7689e891eb27645b7667960aace23d56e8e",
                    "minimum" => 4,
                    "maximum" => 68,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "task",
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
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d8f340e1c6d78fc0a782c3279efb34ae5e11df175a82f9dd5ee82e603d6b2ffb",
                    "minimum" => 261,
                    "maximum" => 1285,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "settings",
                            "type" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings",
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
                            "element_minimum" => 255
                        },
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c2f3dd535e9475526bf18bdffa0e9a839049d315c9aebb150f8561ee3361a2bd",
                    "minimum" => 259,
                    "maximum" => 835,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "task",
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
                            "name" => "settings",
                            "type" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings",
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
                            "element_minimum" => 255
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6a1adeebe31dfe101a6d57019e26ee2f1144b9a6ce30aee08d4c6fe56ea6838d",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4561b7e5e296a1a329d5f5684bcbde1ef41324554a34e9a79a85824286dd477c",
                    "minimum" => 8,
                    "maximum" => 584,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "task",
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
                            "name" => "routine",
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
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_980d2a16536289f446161acdf2fc57d459baa2290d74f1dd5aaf8129126cbba1",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5d6983aa85c2c52f8ec06cbd723d5929cfc381db2e0bfffb4c27078497d86c90",
                    "minimum" => 9,
                    "maximum" => 73,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request",
                    "constants" => {
                        "SG_COMMAND_UNKNOWN" => 1,
                        "SG_COMMAND_NONE" => 2,
                        "SG_COMMAND_INITIALIZE" => 3,
                        "SG_COMMAND_CALIBRATE" => 4,
                        "SG_COMMAND_MOVE_TO" => 5,
                        "SG_COMMAND_GRIP_IN" => 6,
                        "SG_COMMAND_GRIP_OUT" => 7,
                        "SG_COMMAND_BLOW_ON_1" => 8,
                        "SG_COMMAND_BLOW_ON_2" => 9,
                        "SG_COMMAND_BLOW_OFF_1" => 10,
                        "SG_COMMAND_BLOW_OFF_2" => 11,
                        "SG_COMMAND_VACUUM_ON_1" => 12,
                        "SG_COMMAND_VACUUM_ON_2" => 13,
                        "SG_COMMAND_VACUUM_OFF_1" => 14,
                        "SG_COMMAND_VACUUM_OFF_2" => 15
                    },
                    "fields" => [
                        {
                            "name" => "task",
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
                            "name" => "command",
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
                        },
                        {
                            "name" => "target_position",
                            "type" => "float32",
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
                    "symbol" => "Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_87cdc41c81d49930dce7193d4b7af98add266a6e9a7cf5e69457d01ded388cf8",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsMsgMechanicalUnitState",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8",
                    "minimum" => 5,
                    "maximum" => 69,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/msg/MechanicalUnitState",
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
                            "name" => "activated",
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
                    "symbol" => "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e",
                    "minimum" => 12,
                    "maximum" => 204,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/msg/RAPIDSymbolPath",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "task",
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
                            "name" => "module",
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
                            "name" => "symbol",
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
                    "symbol" => "Ros2Abb_robot_msgsMsgRAPIDTaskState",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd",
                    "minimum" => 7,
                    "maximum" => 71,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/msg/RAPIDTaskState",
                    "constants" => {
                        "EXECUTION_STATE_UNKNOWN" => 1,
                        "EXECUTION_STATE_READY" => 2,
                        "EXECUTION_STATE_STOPPED" => 3,
                        "EXECUTION_STATE_STARTED" => 4,
                        "EXECUTION_STATE_UNINITIALIZED" => 5
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
                            "name" => "activated",
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
                            "name" => "execution_state",
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
                        },
                        {
                            "name" => "motion_task",
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
                    "symbol" => "Ros2Abb_robot_msgsMsgServiceResponses",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/msg/ServiceResponses",
                    "constants" => {
                        "SUCCESS" => "",
                        "RC_SUCCESS" => 1,
                        "FAILED" => "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)",
                        "RC_FAILED" => 2,
                        "SERVER_IS_BUSY" => "Server is busy",
                        "RC_SERVER_IS_BUSY" => 1001,
                        "EMPTY_FILENAME" => "Filename is empty",
                        "RC_EMPTY_FILENAME" => 2001,
                        "EMPTY_SIGNAL_NAME" => "Signal name is empty",
                        "RC_EMPTY_SIGNAL_NAME" => 2002,
                        "EMPTY_RAPID_TASK_NAME" => "RAPID task name is empty",
                        "RC_EMPTY_RAPID_TASK_NAME" => 2003,
                        "EMPTY_RAPID_MODULE_NAME" => "RAPID module name is empty",
                        "RC_EMPTY_RAPID_MODULE_NAME" => 2004,
                        "EMPTY_RAPID_SYMBOL_NAME" => "RAPID symbol name is empty",
                        "RC_EMPTY_RAPID_SYMBOL_NAME" => 2005,
                        "NOT_IN_AUTO_MODE" => "Robot controller is not in AUTO mode",
                        "RC_NOT_IN_AUTO_MODE" => 3001,
                        "MOTORS_ARE_OFF" => "Motors are off",
                        "RC_MOTORS_ARE_OFF" => 3002,
                        "MOTORS_ARE_ON" => "Motors are on",
                        "RC_MOTORS_ARE_ON" => 3003,
                        "RAPID_NOT_STOPPED" => "RAPID has not been stopped",
                        "RC_RAPID_NOT_STOPPED" => 3004,
                        "RAPID_NOT_RUNNING" => "RAPID is not running",
                        "RC_RAPID_NOT_RUNNING" => 3005,
                        "SM_RUNTIME_STATES_MISSING" => "No runtime states received for any StateMachine Add-In instance",
                        "RC_SM_RUNTIME_STATES_MISSING" => 4001,
                        "SM_UNKNOWN_RAPID_TASK" => "RAPID task not found among known StateMachine Add-In instances",
                        "RC_SM_UNKNOWN_RAPID_TASK" => 4002,
                        "SM_UNINITIALIZED" => "StateMachine Add-In instance has not been initialized",
                        "RC_SM_UNINITIALIZED" => 4003
                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Abb_robot_msgsMsgSystemState",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f",
                    "minimum" => 23,
                    "maximum" => 2327,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/msg/SystemState",
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
                            "name" => "motors_on",
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
                            "name" => "auto_mode",
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
                            "name" => "rapid_running",
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
                            "name" => "rapid_tasks",
                            "type" => "Ros2Abb_robot_msgsMsgRAPIDTaskState",
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
                            "element_minimum" => 7
                        },
                        {
                            "name" => "mechanical_units",
                            "type" => "Ros2Abb_robot_msgsMsgMechanicalUnitState",
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
                            "element_minimum" => 5
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_robot_msgsSrvGetFileContents_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bdcf73a965bd05356e48019b74d633176fdeda62452bc7185d6b6ff30576016b",
                    "minimum" => 4,
                    "maximum" => 516,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetFileContents_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "filename",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvGetFileContents_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f05617145a40043e87cbc251f833274d2a962bd7cdaabc5f9a8e4591bd56e107",
                    "minimum" => 10,
                    "maximum" => 4618,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetFileContents_Response",
                    "constants" => {

                    },
                    "fields" => [
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
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvGetIOSignal_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2406d53c2fce44e72ad7e6f1c9e75ea19c4df694ff9f00917229ec758209b1f5",
                    "minimum" => 4,
                    "maximum" => 516,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetIOSignal_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "signal",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvGetIOSignal_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1f668ef78c353f2ec8defdac619d349cda731576f2429cf07107b9b56ba9030e",
                    "minimum" => 10,
                    "maximum" => 1034,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetIOSignal_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "value",
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
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvGetRAPIDBool_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c381080d235c78216a8e64275819ff3fb97e1b1de96e7da758c4889630b8e0ff",
                    "minimum" => 12,
                    "maximum" => 204,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetRAPIDBool_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "path",
                            "type" => "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
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
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_robot_msgsSrvGetRAPIDBool_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b853e212489fb815866fa29b165eea474a977483158b6203699c4a1293aa6acd",
                    "minimum" => 7,
                    "maximum" => 519,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetRAPIDBool_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "value",
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
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_71057c2fe44bc96505ec6e05d998fcb6323b281fff40808ce990207c48626979",
                    "minimum" => 12,
                    "maximum" => 204,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetRAPIDDnum_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "path",
                            "type" => "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
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
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_af0420c126368a7e45b728c7fef76062b5ef2f0adea7535ad38e4771244edd56",
                    "minimum" => 14,
                    "maximum" => 526,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetRAPIDDnum_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "value",
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
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvGetRAPIDNum_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_03d5da34af8d90ed8a20f8ca38fa75d9e777496828978f0f348e3c1c8f67d0a5",
                    "minimum" => 12,
                    "maximum" => 204,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetRAPIDNum_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "path",
                            "type" => "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
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
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_robot_msgsSrvGetRAPIDNum_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a0da03014dd001e58efc4a5b274cd5c62016e7fa257af1120a8142a79635220d",
                    "minimum" => 10,
                    "maximum" => 522,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetRAPIDNum_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "value",
                            "type" => "float32",
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
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvGetRAPIDString_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c7bc9c788301e619a165c18a1cdb0aca80df8def5be31da5dbf34c0038e73596",
                    "minimum" => 12,
                    "maximum" => 204,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetRAPIDString_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "path",
                            "type" => "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
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
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_robot_msgsSrvGetRAPIDString_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_cf7bfdb2af5b91eb58b19b909f7fa3357dc1dad02716f8fa4465b53f3f4a1458",
                    "minimum" => 10,
                    "maximum" => 1034,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetRAPIDString_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "value",
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
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e216a54cdae70f8147489928ff05a4b172ba4fc47e9ed5df4828b070354ac469",
                    "minimum" => 12,
                    "maximum" => 204,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetRAPIDSymbol_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "path",
                            "type" => "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
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
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b1f6de7ad0640f5645678d327804dc7e732bdad38805e642b13ed7294c21d602",
                    "minimum" => 10,
                    "maximum" => 1034,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetRAPIDSymbol_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "value",
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
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_caf70e11b386a933f62d06a433ca1cedaa3c8ecc75b7e8de8c1d5ae00a29f03e",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetRobotControllerDescription_Request",
                    "constants" => {

                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1af2591f035379597f376ed1e2343f73a89f9fef5c29269aa420243a82e6c368",
                    "minimum" => 10,
                    "maximum" => 4618,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetRobotControllerDescription_Response",
                    "constants" => {

                    },
                    "fields" => [
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
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvGetSpeedRatio_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_54ee2c897e2bf2f39c96cc42246ffe5997c8df280280433e8748b3bcf24c299c",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetSpeedRatio_Request",
                    "constants" => {

                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Abb_robot_msgsSrvGetSpeedRatio_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_baa271a258c7ca274e0145fea1abb7cbc43e98c82b8e40d67c4743237a19910b",
                    "minimum" => 7,
                    "maximum" => 519,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/GetSpeedRatio_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "speed_ratio",
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
                        },
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetFileContents_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3bfa8ad1846fc31acae47a875d3555a78a64b777923eb9b62e87a836f041b26b",
                    "minimum" => 8,
                    "maximum" => 4616,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetFileContents_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "filename",
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
                        }
                    ]
                },
                {
                    "symbol" => "Ros2Abb_robot_msgsSrvSetFileContents_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1586344401d43055460b49f2487567638f66838cfe5cac99a47e0a39c0b06ede",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetFileContents_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetIOSignal_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2d206d0020179263e83e745a428616ed53d809b0c65a79ad495cb882ae9e49b7",
                    "minimum" => 8,
                    "maximum" => 1032,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetIOSignal_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "signal",
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
                            "name" => "value",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetIOSignal_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1fa28cc3160d51f71d0740cbe145663ec360d6fa488c2a6bf14ad6ab92004a75",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetIOSignal_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetRAPIDBool_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4e707e429acc860d032d216bcd2c1eb1a0f731fad7e7c0bef7beed810c6e4a52",
                    "minimum" => 13,
                    "maximum" => 205,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetRAPIDBool_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "path",
                            "type" => "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
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
                            "name" => "value",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetRAPIDBool_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_80d2b31c93771cfa8a19ff82a3d9d63951bf9d28c039d2725017327fa3b0114a",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetRAPIDBool_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_cece086311a908f12c0b0ab3988ca829e891749c74687c717d2a52bfb8ceaf76",
                    "minimum" => 20,
                    "maximum" => 212,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetRAPIDDnum_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "path",
                            "type" => "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
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
                            "name" => "value",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e5f77fe9850f109d873a2784b9690c8aa0632b9e91d158ed4d14daf1aaf90ea6",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetRAPIDDnum_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetRAPIDNum_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a5bee9a64be69dc4246f68837a44362f52795ae3c6420a2df47685606283ea02",
                    "minimum" => 16,
                    "maximum" => 208,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetRAPIDNum_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "path",
                            "type" => "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
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
                            "name" => "value",
                            "type" => "float32",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetRAPIDNum_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_744f3c5fac58ff098c96cedcea94fe6fa87c88ceb89674449f50fbdcd1ca30bb",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetRAPIDNum_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetRAPIDString_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f21c45f3f8cd4c0b50781bdd487fdc6ec0c0b35adbc7e36e9ca5b7cc47c3d461",
                    "minimum" => 16,
                    "maximum" => 720,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetRAPIDString_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "path",
                            "type" => "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
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
                            "name" => "value",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetRAPIDString_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1496ef4f4ffe48fe74b9e25b925c19f10f0e171a9d33fa2e56c15aa5cfbe4774",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetRAPIDString_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_928d427801b79775595fed6e3779f9ba9e7e8e27f2de66cf79610cb51bb72bcf",
                    "minimum" => 16,
                    "maximum" => 720,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetRAPIDSymbol_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "path",
                            "type" => "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
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
                            "name" => "value",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e156616a51bf4691a1c3853d62a8b0c43bb17d1a330cd4e7a58eceb5fe442382",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetRAPIDSymbol_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetSpeedRatio_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_da30970377ba1bc151b544560773f02e17f4eaed56eb4c8d791de72bdef04355",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetSpeedRatio_Request",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "speed_ratio",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvSetSpeedRatio_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_25e6d7edaa0503a4d45d893e886db4215bfd0af8711307c141bc63552609e3a5",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/SetSpeedRatio_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
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
                    "symbol" => "Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fd1d49c3b4e489464c6662f306210137f71d15192f64cd8a8abf93acd5fbff8d",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/TriggerWithResultCode_Request",
                    "constants" => {

                    },
                    "fields" => [

                    ]
                },
                {
                    "symbol" => "Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e38422b2a008f07e108505ac3ce65c24189a1d6657e88a6289e17d7d4ae38d51",
                    "minimum" => 6,
                    "maximum" => 518,
                    "semantics" => "",
                    "ros_version" => 2,
                    "native_type" => "abb_robot_msgs/srv/TriggerWithResultCode_Response",
                    "constants" => {

                    },
                    "fields" => [
                        {
                            "name" => "result_code",
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
                }
            ]
            # @brief Build all complete value classes using the single shared Ruby wire implementation.
            RECORDS = Uwvm::RosWasm::Wire.records(SCHEMAS)
            RECORDS.each { |name, klass| const_set(name, klass) }
            # @brief Complete original interface roles and source identities; nil is never inferred.
            INTERFACES = {
                "abb_egm_msgs/msg/EGMChannelState" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_egm_msgsMsgEGMChannelState"
                    }
                },
                "abb_egm_msgs/msg/EGMState" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_egm_msgsMsgEGMState"
                    }
                },
                "abb_rapid_msgs/msg/ConfData" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_msgsMsgConfData"
                    }
                },
                "abb_rapid_msgs/msg/ExtJoint" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_msgsMsgExtJoint"
                    }
                },
                "abb_rapid_msgs/msg/JointTarget" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_msgsMsgJointTarget"
                    }
                },
                "abb_rapid_msgs/msg/LoadData" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_msgsMsgLoadData"
                    }
                },
                "abb_rapid_msgs/msg/Orient" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_msgsMsgOrient"
                    }
                },
                "abb_rapid_msgs/msg/Pos" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_msgsMsgPos"
                    }
                },
                "abb_rapid_msgs/msg/Pose" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_msgsMsgPose"
                    }
                },
                "abb_rapid_msgs/msg/RobJoint" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_msgsMsgRobJoint"
                    }
                },
                "abb_rapid_msgs/msg/RobTarget" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_msgsMsgRobTarget"
                    }
                },
                "abb_rapid_msgs/msg/ToolData" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_msgsMsgToolData"
                    }
                },
                "abb_rapid_msgs/msg/WObjData" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_msgsMsgWObjData"
                    }
                },
                "abb_rapid_sm_addin_msgs/msg/EGMActivateSettings" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings"
                    }
                },
                "abb_rapid_sm_addin_msgs/msg/EGMRunSettings" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings"
                    }
                },
                "abb_rapid_sm_addin_msgs/msg/EGMSettings" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings"
                    }
                },
                "abb_rapid_sm_addin_msgs/msg/EGMSetupSettings" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings"
                    }
                },
                "abb_rapid_sm_addin_msgs/msg/EGMStopSettings" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings"
                    }
                },
                "abb_rapid_sm_addin_msgs/msg/RuntimeState" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState"
                    }
                },
                "abb_rapid_sm_addin_msgs/msg/StateMachineState" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState"
                    }
                },
                "abb_rapid_sm_addin_msgs/srv/GetEGMSettings" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_629da1466b9fb1d5619c9ed7cb72af63f1abf8edffca98b76253939cd6c85b13",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request",
                        "response" => "Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response"
                    }
                },
                "abb_rapid_sm_addin_msgs/srv/SetEGMSettings" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_63ebd3925a4dcccddc17fd99f01aecd0380241b441391bb15b0b7179b78c907d",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request",
                        "response" => "Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response"
                    }
                },
                "abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fece71adbfbaa38621a9440e9d453164e326cc12ce7b4f62ae8f5208a446a428",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request",
                        "response" => "Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response"
                    }
                },
                "abb_rapid_sm_addin_msgs/srv/SetSGCommand" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_263a3706bdfe6388b6a466be4dcaebe86241a5f0a93d9c874c41252a05fba1fe",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request",
                        "response" => "Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response"
                    }
                },
                "abb_robot_msgs/msg/MechanicalUnitState" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_robot_msgsMsgMechanicalUnitState"
                    }
                },
                "abb_robot_msgs/msg/RAPIDSymbolPath" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_robot_msgsMsgRAPIDSymbolPath"
                    }
                },
                "abb_robot_msgs/msg/RAPIDTaskState" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_robot_msgsMsgRAPIDTaskState"
                    }
                },
                "abb_robot_msgs/msg/ServiceResponses" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros2Abb_robot_msgsMsgServiceResponses"
                    }
                },
                "abb_robot_msgs/msg/SystemState" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f",
                    "registered" => true,
                    "components" => {
                        "message" => "Ros2Abb_robot_msgsMsgSystemState"
                    }
                },
                "abb_robot_msgs/srv/GetFileContents" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c7b97ec9f395c089ef8b57e8ee2516eab9e6ed3f9634e6b0bef7e2c775372254",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvGetFileContents_Request",
                        "response" => "Ros2Abb_robot_msgsSrvGetFileContents_Response"
                    }
                },
                "abb_robot_msgs/srv/GetIOSignal" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_eb316d69fb5a32c8f6420013e9129bfdd22c468233686b3cd59715f1a0d4ea2e",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvGetIOSignal_Request",
                        "response" => "Ros2Abb_robot_msgsSrvGetIOSignal_Response"
                    }
                },
                "abb_robot_msgs/srv/GetRAPIDBool" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_95dd04c7da1d3bacf8966cc5edc81610db309d4d9b742bc60aaeec8e37958496",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvGetRAPIDBool_Request",
                        "response" => "Ros2Abb_robot_msgsSrvGetRAPIDBool_Response"
                    }
                },
                "abb_robot_msgs/srv/GetRAPIDDnum" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_05ef910e3b349c82858b78b07d492c20ea94fe654237ef84aa5381b773e7205c",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request",
                        "response" => "Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response"
                    }
                },
                "abb_robot_msgs/srv/GetRAPIDNum" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_94575e630f48c602029406b42b68dce108ab4f6dfa7b472f1fc5790ac12b4c42",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvGetRAPIDNum_Request",
                        "response" => "Ros2Abb_robot_msgsSrvGetRAPIDNum_Response"
                    }
                },
                "abb_robot_msgs/srv/GetRAPIDString" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d10ac5ec86f441f67de7a2ee840c24111f0a50d5db6978a723499015a60489be",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvGetRAPIDString_Request",
                        "response" => "Ros2Abb_robot_msgsSrvGetRAPIDString_Response"
                    }
                },
                "abb_robot_msgs/srv/GetRAPIDSymbol" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_aa9eafab83cb6ef87e5a066ed003e2ea981e12c08d94247acaab926ef6a0744b",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request",
                        "response" => "Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response"
                    }
                },
                "abb_robot_msgs/srv/GetRobotControllerDescription" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e619dfd61cfa53caaf1f68654265dc55840f22c9e0f0aba4bf13ab113c7e8807",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request",
                        "response" => "Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response"
                    }
                },
                "abb_robot_msgs/srv/GetSpeedRatio" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f60207d7d91d2ec182aca36906b656362af00b0295fd571cb251396c112bad22",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvGetSpeedRatio_Request",
                        "response" => "Ros2Abb_robot_msgsSrvGetSpeedRatio_Response"
                    }
                },
                "abb_robot_msgs/srv/SetFileContents" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_668b5831104ea9a62c8a17bbf472e1ed41bdbdff8eb8198668d7fce3cd0904a4",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvSetFileContents_Request",
                        "response" => "Ros2Abb_robot_msgsSrvSetFileContents_Response"
                    }
                },
                "abb_robot_msgs/srv/SetIOSignal" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_203b99505ba5e8687db76351a993eebfc19cfceb6b020f53a7ea6ed5883b7b77",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvSetIOSignal_Request",
                        "response" => "Ros2Abb_robot_msgsSrvSetIOSignal_Response"
                    }
                },
                "abb_robot_msgs/srv/SetRAPIDBool" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bbbcf522450086ae2504598275b38bb4c693837878adcbef88a8eba146b7cba9",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvSetRAPIDBool_Request",
                        "response" => "Ros2Abb_robot_msgsSrvSetRAPIDBool_Response"
                    }
                },
                "abb_robot_msgs/srv/SetRAPIDDnum" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_921a02212c775748bb0efa41c1a099d01f8a365cbaa2c6b848f308ea8343773c",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request",
                        "response" => "Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response"
                    }
                },
                "abb_robot_msgs/srv/SetRAPIDNum" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f53f6854ac9971f826db237909035a28694c08d99470685504bf7961c9ec718d",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvSetRAPIDNum_Request",
                        "response" => "Ros2Abb_robot_msgsSrvSetRAPIDNum_Response"
                    }
                },
                "abb_robot_msgs/srv/SetRAPIDString" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_869a873b853404f55cf2089141feb4f02b635cfc7d41379119e1cbd27e803024",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvSetRAPIDString_Request",
                        "response" => "Ros2Abb_robot_msgsSrvSetRAPIDString_Response"
                    }
                },
                "abb_robot_msgs/srv/SetRAPIDSymbol" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1e56d1bd5cce820b2de1ab138d1cfa04d86a0d533ecae924af6399e4361b7d8d",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request",
                        "response" => "Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response"
                    }
                },
                "abb_robot_msgs/srv/SetSpeedRatio" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_71c8ed938f11420b01451d43b7487212b1745061cd5016e65f5b33e1cac61c6b",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvSetSpeedRatio_Request",
                        "response" => "Ros2Abb_robot_msgsSrvSetSpeedRatio_Response"
                    }
                },
                "abb_robot_msgs/srv/TriggerWithResultCode" => {
                    "kind" => "service",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4fa47b1ad67153250f276ad1bcd7ab8f30d32e150715d2856caabb40261deb5c",
                    "registered" => true,
                    "components" => {
                        "request" => "Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request",
                        "response" => "Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response"
                    }
                },
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
