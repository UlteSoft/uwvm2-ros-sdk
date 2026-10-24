# @file records.rb
# @brief Complete original ufactory/ros1_master values.
# @details Every field, constant and quota delegates to the common Wire registry.
require "roswasm/wire"
module Uwvm
    module Ufactory
        module Ros1Master
            SCHEMAS = [
                {
                    "symbol" => "Ros1Xarm_gripperMoveGoal",
                    "type" => "xarm_gripper/MoveGoal",
                    "ros_version" => 1,
                    "native_type" => "xarm_gripper/MoveGoal",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "target_pulse",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "pulse_speed",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_gripperMoveResult",
                    "type" => "xarm_gripper/MoveResult",
                    "ros_version" => 1,
                    "native_type" => "xarm_gripper/MoveResult",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c",
                    "minimum" => 3,
                    "maximum" => 3,
                    "semantics" => "",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "err_code",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_gripperMoveFeedback",
                    "type" => "xarm_gripper/MoveFeedback",
                    "ros_version" => 1,
                    "native_type" => "xarm_gripper/MoveFeedback",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "current_pulse",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Geometry_msgsPoint",
                    "type" => "geometry_msgs/Point",
                    "ros_version" => 1,
                    "native_type" => "geometry_msgs/Point",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b",
                    "minimum" => 24,
                    "maximum" => 24,
                    "semantics" => "",
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
                            "default" => nil,
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
                            "default" => nil,
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Geometry_msgsQuaternion",
                    "type" => "geometry_msgs/Quaternion",
                    "ros_version" => 1,
                    "native_type" => "geometry_msgs/Quaternion",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934",
                    "minimum" => 32,
                    "maximum" => 32,
                    "semantics" => "",
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
                            "default" => nil,
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
                            "default" => nil,
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "w",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Geometry_msgsPose",
                    "type" => "geometry_msgs/Pose",
                    "ros_version" => 1,
                    "native_type" => "geometry_msgs/Pose",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471",
                    "minimum" => 56,
                    "maximum" => 56,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "position",
                            "type" => "Ros1Geometry_msgsPoint",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 24
                        },
                        {
                            "name" => "orientation",
                            "type" => "Ros1Geometry_msgsQuaternion",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 32
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Time",
                    "type" => "time",
                    "ros_version" => 1,
                    "native_type" => "time",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "normalized-time",
                    "fields" => [
                        {
                            "name" => "sec",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "nsec",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Std_msgsHeader",
                    "type" => "std_msgs/Header",
                    "ros_version" => 1,
                    "native_type" => "std_msgs/Header",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7",
                    "minimum" => 16,
                    "maximum" => 272,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "seq",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "stamp",
                            "type" => "Ros1Time",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "frame_id",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsCIOState",
                    "type" => "xarm_msgs/CIOState",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/CIOState",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057",
                    "minimum" => 76,
                    "maximum" => 332,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "header",
                            "type" => "Ros1Std_msgsHeader",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 16
                        },
                        {
                            "name" => "state",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "code",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "input_digitals",
                            "type" => "uint16",
                            "array" => "array",
                            "count" => 2,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "output_digitals",
                            "type" => "uint16",
                            "array" => "array",
                            "count" => 2,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "input_analogs",
                            "type" => "float32",
                            "array" => "array",
                            "count" => 2,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "output_analogs",
                            "type" => "float32",
                            "array" => "array",
                            "count" => 2,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "input_conf",
                            "type" => "uint8",
                            "array" => "array",
                            "count" => 16,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "output_conf",
                            "type" => "uint8",
                            "array" => "array",
                            "count" => 16,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsIOState",
                    "type" => "xarm_msgs/IOState",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/IOState",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996",
                    "minimum" => 16,
                    "maximum" => 16,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "digital_1",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "digital_2",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "analog_1",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "analog_2",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsRobotMsg",
                    "type" => "xarm_msgs/RobotMsg",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/RobotMsg",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb",
                    "minimum" => 82,
                    "maximum" => 366,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "header",
                            "type" => "Ros1Std_msgsHeader",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 16
                        },
                        {
                            "name" => "state",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "mode",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "cmdnum",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "mt_brake",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "mt_able",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "err",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "warn",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "angle",
                            "type" => "float32",
                            "array" => "sequence",
                            "count" => 7,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "pose",
                            "type" => "float32",
                            "array" => "array",
                            "count" => 6,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "offset",
                            "type" => "float32",
                            "array" => "array",
                            "count" => 6,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsVeloMoveMsg",
                    "type" => "xarm_msgs/VeloMoveMsg",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/VeloMoveMsg",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032",
                    "minimum" => 10,
                    "maximum" => 138,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "speeds",
                            "type" => "float32",
                            "array" => "sequence",
                            "count" => 32,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "is_sync",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "is_tool_coord",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "duration",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsCallRequest",
                    "type" => "xarm_msgs/CallRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/CallRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsCallResponse",
                    "type" => "xarm_msgs/CallResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/CallResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsClearErrRequest",
                    "type" => "xarm_msgs/ClearErrRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/ClearErrRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsClearErrResponse",
                    "type" => "xarm_msgs/ClearErrResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/ClearErrResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsConfigToolModbusRequest",
                    "type" => "xarm_msgs/ConfigToolModbusRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/ConfigToolModbusRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "baud_rate",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "timeout_ms",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsConfigToolModbusResponse",
                    "type" => "xarm_msgs/ConfigToolModbusResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/ConfigToolModbusResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsFtCaliLoadRequest",
                    "type" => "xarm_msgs/FtCaliLoadRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/FtCaliLoadRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167",
                    "minimum" => 5,
                    "maximum" => 133,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "datas",
                            "type" => "float32",
                            "array" => "sequence",
                            "count" => 32,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "association_setting_tcp_load",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsFtCaliLoadResponse",
                    "type" => "xarm_msgs/FtCaliLoadResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/FtCaliLoadResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsFtIdenLoadRequest",
                    "type" => "xarm_msgs/FtIdenLoadRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/FtIdenLoadRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsFtIdenLoadResponse",
                    "type" => "xarm_msgs/FtIdenLoadResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/FtIdenLoadResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8",
                    "minimum" => 10,
                    "maximum" => 394,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "datas",
                            "type" => "float32",
                            "array" => "sequence",
                            "count" => 32,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetAnalogIORequest",
                    "type" => "xarm_msgs/GetAnalogIORequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetAnalogIORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8",
                    "minimum" => 2,
                    "maximum" => 2,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "port_num",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetAnalogIOResponse",
                    "type" => "xarm_msgs/GetAnalogIOResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetAnalogIOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835",
                    "minimum" => 10,
                    "maximum" => 266,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "analog_value",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetControllerDigitalIORequest",
                    "type" => "xarm_msgs/GetControllerDigitalIORequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetControllerDigitalIORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c",
                    "minimum" => 2,
                    "maximum" => 2,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "io_num",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetControllerDigitalIOResponse",
                    "type" => "xarm_msgs/GetControllerDigitalIOResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetControllerDigitalIOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161",
                    "minimum" => 8,
                    "maximum" => 264,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "value",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetDigitalIORequest",
                    "type" => "xarm_msgs/GetDigitalIORequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetDigitalIORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetDigitalIOResponse",
                    "type" => "xarm_msgs/GetDigitalIOResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetDigitalIOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498",
                    "minimum" => 14,
                    "maximum" => 270,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "digital_1",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "digital_2",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetErrRequest",
                    "type" => "xarm_msgs/GetErrRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetErrRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetErrResponse",
                    "type" => "xarm_msgs/GetErrResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetErrResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de",
                    "minimum" => 8,
                    "maximum" => 264,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "err",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetFloat32ListRequest",
                    "type" => "xarm_msgs/GetFloat32ListRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetFloat32ListRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetFloat32ListResponse",
                    "type" => "xarm_msgs/GetFloat32ListResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetFloat32ListResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2",
                    "minimum" => 10,
                    "maximum" => 394,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "datas",
                            "type" => "float32",
                            "array" => "sequence",
                            "count" => 32,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetInt32Request",
                    "type" => "xarm_msgs/GetInt32Request",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetInt32Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetInt32Response",
                    "type" => "xarm_msgs/GetInt32Response",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetInt32Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d",
                    "minimum" => 10,
                    "maximum" => 266,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "data",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetSetModbusDataRequest",
                    "type" => "xarm_msgs/GetSetModbusDataRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetSetModbusDataRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7",
                    "minimum" => 9,
                    "maximum" => 4105,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "send_data",
                            "type" => "uint8",
                            "array" => "sequence",
                            "count" => 4096,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "respond_len",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "host_id",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "is_transparent_transmission",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "use_503_port",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGetSetModbusDataResponse",
                    "type" => "xarm_msgs/GetSetModbusDataResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GetSetModbusDataResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead",
                    "minimum" => 10,
                    "maximum" => 4362,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "respond_data",
                            "type" => "uint8",
                            "array" => "sequence",
                            "count" => 4096,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGripperConfigRequest",
                    "type" => "xarm_msgs/GripperConfigRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GripperConfigRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "pulse_vel",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGripperConfigResponse",
                    "type" => "xarm_msgs/GripperConfigResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GripperConfigResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGripperMoveRequest",
                    "type" => "xarm_msgs/GripperMoveRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GripperMoveRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "pulse_pos",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGripperMoveResponse",
                    "type" => "xarm_msgs/GripperMoveResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GripperMoveResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGripperStateRequest",
                    "type" => "xarm_msgs/GripperStateRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GripperStateRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsGripperStateResponse",
                    "type" => "xarm_msgs/GripperStateResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/GripperStateResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6",
                    "minimum" => 12,
                    "maximum" => 268,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "curr_pos",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "err_code",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsMoveRequest",
                    "type" => "xarm_msgs/MoveRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/MoveRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced",
                    "minimum" => 20,
                    "maximum" => 148,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "pose",
                            "type" => "float32",
                            "array" => "sequence",
                            "count" => 32,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "mvvelo",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "mvacc",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "mvtime",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "mvradii",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsMoveResponse",
                    "type" => "xarm_msgs/MoveResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/MoveResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsMoveAxisAngleRequest",
                    "type" => "xarm_msgs/MoveAxisAngleRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/MoveAxisAngleRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30",
                    "minimum" => 20,
                    "maximum" => 148,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "pose",
                            "type" => "float32",
                            "array" => "sequence",
                            "count" => 32,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "mvvelo",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "mvacc",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "mvtime",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "coord",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "relative",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsMoveAxisAngleResponse",
                    "type" => "xarm_msgs/MoveAxisAngleResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/MoveAxisAngleResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsMoveVeloRequest",
                    "type" => "xarm_msgs/MoveVeloRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/MoveVeloRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204",
                    "minimum" => 8,
                    "maximum" => 136,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "velocities",
                            "type" => "float32",
                            "array" => "sequence",
                            "count" => 32,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "jnt_sync",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "coord",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsMoveVeloResponse",
                    "type" => "xarm_msgs/MoveVeloResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/MoveVeloResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsMoveVelocityRequest",
                    "type" => "xarm_msgs/MoveVelocityRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/MoveVelocityRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef",
                    "minimum" => 10,
                    "maximum" => 138,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "speeds",
                            "type" => "float32",
                            "array" => "sequence",
                            "count" => 32,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "is_sync",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "is_tool_coord",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "duration",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsMoveVelocityResponse",
                    "type" => "xarm_msgs/MoveVelocityResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/MoveVelocityResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsPlayTrajRequest",
                    "type" => "xarm_msgs/PlayTrajRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/PlayTrajRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5",
                    "minimum" => 8,
                    "maximum" => 264,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "traj_file",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "repeat_times",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "speed_factor",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsPlayTrajResponse",
                    "type" => "xarm_msgs/PlayTrajResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/PlayTrajResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetAxisRequest",
                    "type" => "xarm_msgs/SetAxisRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetAxisRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "id",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "data",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetAxisResponse",
                    "type" => "xarm_msgs/SetAxisResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetAxisResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetControllerAnalogIORequest",
                    "type" => "xarm_msgs/SetControllerAnalogIORequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetControllerAnalogIORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66",
                    "minimum" => 6,
                    "maximum" => 6,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "port_num",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "analog_value",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetControllerAnalogIOResponse",
                    "type" => "xarm_msgs/SetControllerAnalogIOResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetControllerAnalogIOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetDigitalIORequest",
                    "type" => "xarm_msgs/SetDigitalIORequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetDigitalIORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "io_num",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "value",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetDigitalIOResponse",
                    "type" => "xarm_msgs/SetDigitalIOResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetDigitalIOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetFloat32Request",
                    "type" => "xarm_msgs/SetFloat32Request",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetFloat32Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "data",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetFloat32Response",
                    "type" => "xarm_msgs/SetFloat32Response",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetFloat32Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetInt16Request",
                    "type" => "xarm_msgs/SetInt16Request",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetInt16Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7",
                    "minimum" => 2,
                    "maximum" => 2,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "data",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetInt16Response",
                    "type" => "xarm_msgs/SetInt16Response",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetInt16Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetLoadRequest",
                    "type" => "xarm_msgs/SetLoadRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetLoadRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077",
                    "minimum" => 16,
                    "maximum" => 16,
                    "semantics" => "",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "xc",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "yc",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "zc",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetLoadResponse",
                    "type" => "xarm_msgs/SetLoadResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetLoadResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetModbusTimeoutRequest",
                    "type" => "xarm_msgs/SetModbusTimeoutRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetModbusTimeoutRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd",
                    "minimum" => 5,
                    "maximum" => 5,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "timeout_ms",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "is_transparent_transmission",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetModbusTimeoutResponse",
                    "type" => "xarm_msgs/SetModbusTimeoutResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetModbusTimeoutResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetMultipleIntsRequest",
                    "type" => "xarm_msgs/SetMultipleIntsRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetMultipleIntsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1",
                    "minimum" => 4,
                    "maximum" => 68,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "data_int",
                            "type" => "int16",
                            "array" => "sequence",
                            "count" => 32,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetMultipleIntsResponse",
                    "type" => "xarm_msgs/SetMultipleIntsResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetMultipleIntsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetStringRequest",
                    "type" => "xarm_msgs/SetStringRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetStringRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f",
                    "minimum" => 8,
                    "maximum" => 264,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "str_data",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "timeout",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetStringResponse",
                    "type" => "xarm_msgs/SetStringResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetStringResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetToolModbusRequest",
                    "type" => "xarm_msgs/SetToolModbusRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetToolModbusRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6",
                    "minimum" => 6,
                    "maximum" => 4102,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "send_data",
                            "type" => "uint8",
                            "array" => "sequence",
                            "count" => 4096,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "respond_len",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsSetToolModbusResponse",
                    "type" => "xarm_msgs/SetToolModbusResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/SetToolModbusResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76",
                    "minimum" => 10,
                    "maximum" => 4362,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "respond_data",
                            "type" => "uint8",
                            "array" => "sequence",
                            "count" => 4096,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsTCPOffsetRequest",
                    "type" => "xarm_msgs/TCPOffsetRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/TCPOffsetRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd",
                    "minimum" => 24,
                    "maximum" => 24,
                    "semantics" => "",
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
                            "default" => nil,
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
                            "default" => nil,
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "roll",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "pitch",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "yaw",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsTCPOffsetResponse",
                    "type" => "xarm_msgs/TCPOffsetResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/TCPOffsetResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsVacuumGripperCtrlRequest",
                    "type" => "xarm_msgs/VacuumGripperCtrlRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/VacuumGripperCtrlRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff",
                    "minimum" => 13,
                    "maximum" => 13,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "on",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "wait",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "timeout",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "delay_sec",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "sync",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        },
                        {
                            "name" => "hardware_version",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_msgsVacuumGripperCtrlResponse",
                    "type" => "xarm_msgs/VacuumGripperCtrlResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_msgs/VacuumGripperCtrlResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540",
                    "minimum" => 6,
                    "maximum" => 262,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ret",
                            "type" => "int16",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 2
                        },
                        {
                            "name" => "message",
                            "type" => "string",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 256,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_plannerExec_planRequest",
                    "type" => "xarm_planner/exec_planRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_planner/exec_planRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "exec",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_plannerExec_planResponse",
                    "type" => "xarm_planner/exec_planResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_planner/exec_planResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_plannerJoint_planRequest",
                    "type" => "xarm_planner/joint_planRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_planner/joint_planRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9",
                    "minimum" => 4,
                    "maximum" => 260,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "target",
                            "type" => "float64",
                            "array" => "sequence",
                            "count" => 32,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_plannerJoint_planResponse",
                    "type" => "xarm_planner/joint_planResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_planner/joint_planResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_plannerPose_planRequest",
                    "type" => "xarm_planner/pose_planRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_planner/pose_planRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22",
                    "minimum" => 56,
                    "maximum" => 56,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "target",
                            "type" => "Ros1Geometry_msgsPose",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 56
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_plannerPose_planResponse",
                    "type" => "xarm_planner/pose_planResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_planner/pose_planResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_plannerSingle_straight_planRequest",
                    "type" => "xarm_planner/single_straight_planRequest",
                    "ros_version" => 1,
                    "native_type" => "xarm_planner/single_straight_planRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f",
                    "minimum" => 56,
                    "maximum" => 56,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "target",
                            "type" => "Ros1Geometry_msgsPose",
                            "array" => "",
                            "count" => 0,
                            "string_bound" => 0,
                            "native_string_bound" => 0,
                            "native_sequence_bound" => 0,
                            "native_default" => nil,
                            "native_scalar" => "",
                            "string_encoding" => "utf8",
                            "float_policy" => "finite",
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 56
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Xarm_plannerSingle_straight_planResponse",
                    "type" => "xarm_planner/single_straight_planResponse",
                    "ros_version" => 1,
                    "native_type" => "xarm_planner/single_straight_planResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd",
                    "minimum" => 1,
                    "maximum" => 1,
                    "semantics" => "",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 1
                        }
                    ],
                    "constants" => {

                    }
                }
            ].freeze
            CLASSES = Uwvm::RosWasm::Wire.records(SCHEMAS).freeze
            CLASSES.each { |name, klass| const_set(name, klass) }
        end
    end
end
