# @file records.rb
# @brief Complete original ufactory/ros1_legacy values.
# @details Every field, constant and quota delegates to the common Wire registry.
require "roswasm/wire"
module Uwvm
    module Ufactory
        module Ros1Legacy
            SCHEMAS = [
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
                    "codec_identity" => "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7",
                    "minimum" => 66,
                    "maximum" => 94,
                    "semantics" => "",
                    "fields" => [
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
