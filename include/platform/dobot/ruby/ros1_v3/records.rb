# @file records.rb
# @brief Complete original dobot/ros1_v3 values.
# @details Every field, constant and quota delegates to the common Wire registry.
require "roswasm/wire"
module Uwvm
    module Dobot
        module Ros1V3
            SCHEMAS = [
                {
                    "symbol" => "Ros1Dobot_bringupRobotStatus",
                    "type" => "dobot_bringup/RobotStatus",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RobotStatus",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0e0f4d360201791cc42ab0240d4497e5398d4f308db124d56a8fbf718a553d69",
                    "minimum" => 2,
                    "maximum" => 2,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "is_enable",
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
                            "name" => "is_connected",
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
                    "symbol" => "Ros1Dobot_bringupToolVectorActual",
                    "type" => "dobot_bringup/ToolVectorActual",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ToolVectorActual",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0ed32143752c7d1cda739d6ab711f5b08bae8794a4de17f0dee7868a005513d0",
                    "minimum" => 48,
                    "maximum" => 48,
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
                            "name" => "rx",
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
                            "name" => "ry",
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
                            "name" => "rz",
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
                    "symbol" => "Ros1Dobot_bringupAIRequest",
                    "type" => "dobot_bringup/AIRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/AIRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1572d590f41a0d6f05aa68153b045f434e6aef1033150732686784dbe21262c9",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                    "symbol" => "Ros1Dobot_bringupAIResponse",
                    "type" => "dobot_bringup/AIResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/AIResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_486fdd9a49d80f9f4ba0b3db7f95c2bb68937f38f9426abe22c4bffe8db0db46",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupAORequest",
                    "type" => "dobot_bringup/AORequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/AORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6797d5a3adbbe8a6ac7e5152fd73d67219e6615f75e18fd5db7fce9e8358aa22",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "status",
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
                    "symbol" => "Ros1Dobot_bringupAOResponse",
                    "type" => "dobot_bringup/AOResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/AOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3122150c18388d4b289f59639023bb27212e2948f9535118695a25f0b79000f6",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupAOExecuteRequest",
                    "type" => "dobot_bringup/AOExecuteRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/AOExecuteRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f70fe08e6be672788635df44d01ed0077112940783eca2a4a78969713c285e67",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupAOExecuteResponse",
                    "type" => "dobot_bringup/AOExecuteResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/AOExecuteResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8bf60f323e29bc412c07a6ba39cde403b25036ee7d64585ea3d2af45adcad2dc",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupAccJRequest",
                    "type" => "dobot_bringup/AccJRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/AccJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c89fb7653b967e0f03330123af09fd160c66fda96e68a581d1c6a3c53eeac8d7",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "r",
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
                    "symbol" => "Ros1Dobot_bringupAccJResponse",
                    "type" => "dobot_bringup/AccJResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/AccJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a90b5404c41ec9fc34a48af18f892bfc0ad74d63cbc74f4c80c25d53be89d045",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupAccLRequest",
                    "type" => "dobot_bringup/AccLRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/AccLRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e668d205c847dc78c096f98e55cf1be3672561cc801810bc3041a5cedaeb1202",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "r",
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
                    "symbol" => "Ros1Dobot_bringupAccLResponse",
                    "type" => "dobot_bringup/AccLResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/AccLResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_26854da8e7179bab20860844f9a6940853a0086d7585787662be01ab180adeec",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupArcRequest",
                    "type" => "dobot_bringup/ArcRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ArcRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_de7367afbd65fe217782827576fe0c7b4ac23eb23a366c9a91b0274d62edf738",
                    "minimum" => 100,
                    "maximum" => 4260,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "x1",
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
                            "name" => "y1",
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
                            "name" => "z1",
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
                            "name" => "a1",
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
                            "name" => "b1",
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
                            "name" => "c1",
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
                            "name" => "x2",
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
                            "name" => "y2",
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
                            "name" => "z2",
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
                            "name" => "a2",
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
                            "name" => "b2",
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
                            "name" => "c2",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupArcResponse",
                    "type" => "dobot_bringup/ArcResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ArcResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e61e8ccdcf767e9ed9da3a659758d19272b01ba08f41e13cdd02b7f238365f79",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupArchRequest",
                    "type" => "dobot_bringup/ArchRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ArchRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_41a296f5b8470085d39eade8d524d7caa94b030090a7ec2121c6ddff2aa1374e",
                    "minimum" => 8,
                    "maximum" => 4168,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "cpValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupArchResponse",
                    "type" => "dobot_bringup/ArchResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ArchResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_99b4e526921fef5113b08649372a843d360fee84e87f3d8631af5c0d6e837977",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupBrakeControlRequest",
                    "type" => "dobot_bringup/BrakeControlRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/BrakeControlRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f0c49bbfa1f5a1c418222444fce2cdcf0855c2b6f3a17fd71641cd9cec03590b",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "axisID",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupBrakeControlResponse",
                    "type" => "dobot_bringup/BrakeControlResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/BrakeControlResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b6783d6553b1ccfc1581dbe55448dba21d8d0df6f0b91786d28e39d5a15635b0",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupCPRequest",
                    "type" => "dobot_bringup/CPRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/CPRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6e8ebd37a19b8fdd242f684dfa008b80932ec3d760a3df958a108a6467e423e1",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "r",
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
                    "symbol" => "Ros1Dobot_bringupCPResponse",
                    "type" => "dobot_bringup/CPResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/CPResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_05336cddc2a10a292d5950278941ad1642fb43d7689a6eb4ba60e0c2d9a23035",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupCircleRequest",
                    "type" => "dobot_bringup/CircleRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/CircleRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_63de9534c40efc878aa4701ef01d7090ab3fd193b51b4d97fbd36e3c02d2ffea",
                    "minimum" => 104,
                    "maximum" => 4264,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "count",
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
                            "name" => "x1",
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
                            "name" => "y1",
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
                            "name" => "z1",
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
                            "name" => "a1",
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
                            "name" => "b1",
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
                            "name" => "c1",
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
                            "name" => "x2",
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
                            "name" => "y2",
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
                            "name" => "z2",
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
                            "name" => "a2",
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
                            "name" => "b2",
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
                            "name" => "c2",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupCircleResponse",
                    "type" => "dobot_bringup/CircleResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/CircleResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_dcc76a49a34c2355dcda26824e9e524ee8a2bc5ff96c5c13749706396327cddb",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupClearErrorRequest",
                    "type" => "dobot_bringup/ClearErrorRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ClearErrorRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5efd3497aa76e5b6777543f78b89e5b5917fd173819936c6f93fb2ce7de6e5e9",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupClearErrorResponse",
                    "type" => "dobot_bringup/ClearErrorResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ClearErrorResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9d316550be928ba7da159505e55046aba2cb3f7951b88727b0900564f1a3de89",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupContinueScriptRequest",
                    "type" => "dobot_bringup/ContinueScriptRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ContinueScriptRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_94437c065c6198d333700a16b3bdaa1cfa1ad42043e579540ed8b9fb65be7132",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupContinueScriptResponse",
                    "type" => "dobot_bringup/ContinueScriptResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ContinueScriptResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e24a269f34aca468ea7b91d7320f79052928a9c129a64a2603aba21ed8e802b5",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupContinuesRequest",
                    "type" => "dobot_bringup/ContinuesRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ContinuesRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_36b892c0c9d45b816ca840ed228040d79ccc391c28fb99f593643d9b50c3b2b0",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupContinuesResponse",
                    "type" => "dobot_bringup/ContinuesResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ContinuesResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_04e387a52444077a9b0a96653934c64f0ff576cd374928c8246de4add006615a",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupDIRequest",
                    "type" => "dobot_bringup/DIRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DIRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_cf02229580f51ef51f0feb0a773e01691235810dabfc93d07ca52e83a2fbf894",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                    "symbol" => "Ros1Dobot_bringupDIResponse",
                    "type" => "dobot_bringup/DIResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DIResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2015cdb56d2e1cd584ceb18b79925109e77e3483cb07403339805605bac24eca",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupDIGroupRequest",
                    "type" => "dobot_bringup/DIGroupRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DIGroupRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f1eb7407b550066a63a3bb7f53e2b1dffaa20e587e62b926f06648224aa8836e",
                    "minimum" => 4,
                    "maximum" => 68,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "args",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupDIGroupResponse",
                    "type" => "dobot_bringup/DIGroupResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DIGroupResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0a12d3d2a105be4a1fafe9698974f03731d3bc14f77b390e124da5c8cc747b1f",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupDORequest",
                    "type" => "dobot_bringup/DORequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1ef488f375efc4acf7521f80910b3714cfecd30f3c111a12bf2d1e4d2e0aed7c",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "status",
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
                    "symbol" => "Ros1Dobot_bringupDOResponse",
                    "type" => "dobot_bringup/DOResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_05a1b8731cea3139845450022d18a75b530a876b60523005433a8136cc2bef34",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupDOExecuteRequest",
                    "type" => "dobot_bringup/DOExecuteRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DOExecuteRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_57da630cf5f390ee9d68d57c7a8767e3762f5814ab659706063872a1e220d606",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "status",
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
                    "symbol" => "Ros1Dobot_bringupDOExecuteResponse",
                    "type" => "dobot_bringup/DOExecuteResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DOExecuteResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_90acf95e87ddb0797525c1726315fd10447e42b36710497f9f4642f84c166fe6",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupDOGroupRequest",
                    "type" => "dobot_bringup/DOGroupRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DOGroupRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_05604172b0bd8330bee9236bf629815b1a6cc9ac39b1a3374fcd753b6686b8f0",
                    "minimum" => 4,
                    "maximum" => 68,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "args",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupDOGroupResponse",
                    "type" => "dobot_bringup/DOGroupResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DOGroupResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_99217a3263538d28cc5d7335906bdfaec128df8b3cfde6c3dbf1962320bcb00a",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupDigitalOutputsRequest",
                    "type" => "dobot_bringup/DigitalOutputsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DigitalOutputsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_940ad8d824ad890e4f33a9acf1871d26266dc65e5ae0263e761990a55507d97f",
                    "minimum" => 5,
                    "maximum" => 5,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "status",
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
                    "symbol" => "Ros1Dobot_bringupDigitalOutputsResponse",
                    "type" => "dobot_bringup/DigitalOutputsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DigitalOutputsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_99e07211731bb0811c9a9c53fc18593839a0d413180d37ffbf33fd4c25cb1cf8",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupDisableRobotRequest",
                    "type" => "dobot_bringup/DisableRobotRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DisableRobotRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f4ac3135f9e5b6c9a38ffc8fab4a747e4cb77fb47d4a8c35c08fb9dd1622add4",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupDisableRobotResponse",
                    "type" => "dobot_bringup/DisableRobotResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/DisableRobotResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f21d2305cee15f4a09dddbb1224defc53541b14df7a81b8be011b9b8dd581c3d",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupEmergencyStopRequest",
                    "type" => "dobot_bringup/EmergencyStopRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/EmergencyStopRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b0f6de6358491a4d2651d2c3965faea793c2ab4fb09a237b31b22cd0b904ac6b",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupEmergencyStopResponse",
                    "type" => "dobot_bringup/EmergencyStopResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/EmergencyStopResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_734c45ffac6db73610807063dc89a50da8f35b061819e82e77fb51ee079ec929",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupEnableRobotRequest",
                    "type" => "dobot_bringup/EnableRobotRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/EnableRobotRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_25d27ffd5d67239f85e389e4e0af813b25e69508542d83f6cf218f09010050d4",
                    "minimum" => 4,
                    "maximum" => 132,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "args",
                            "type" => "float64",
                            "array" => "sequence",
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
                            "element_minimum" => 8
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupEnableRobotResponse",
                    "type" => "dobot_bringup/EnableRobotResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/EnableRobotResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c8f6c4992040b09f377700199904fabb54072d64f267e0ba3084328aa7e5de27",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupGetAngleRequest",
                    "type" => "dobot_bringup/GetAngleRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetAngleRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2546617abf6527da804ece97d489c1d2b15f3f804076f0978ca035000cb36f85",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupGetAngleResponse",
                    "type" => "dobot_bringup/GetAngleResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetAngleResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_84a2bdf2c23770ca10b62372141a6000b73ae8a2d644b576a06fd7e77293035c",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupGetCoilsRequest",
                    "type" => "dobot_bringup/GetCoilsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetCoilsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_35b261250758e2990bfff2b3a4a3e96c320f77db155b94ea4ea8042b0682ff2e",
                    "minimum" => 12,
                    "maximum" => 12,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "addr",
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
                            "name" => "count",
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
                    "symbol" => "Ros1Dobot_bringupGetCoilsResponse",
                    "type" => "dobot_bringup/GetCoilsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetCoilsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_cc0be6ab7b46ca1fbd08ca5d4fd75ee37a5b388b5aada2c9f6d2f15c8df13b79",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupGetErrorIDRequest",
                    "type" => "dobot_bringup/GetErrorIDRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetErrorIDRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d447f9b359f6546396b350d993222aeea1f928b390f7fcdf2c9d0f627d520976",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupGetErrorIDResponse",
                    "type" => "dobot_bringup/GetErrorIDResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetErrorIDResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7e6069235acae11eadfabed5fd9c9466c5ef27c0f174be883e842493d8c98f15",
                    "minimum" => 8,
                    "maximum" => 72,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                            "name" => "errorID",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupGetHoldRegsRequest",
                    "type" => "dobot_bringup/GetHoldRegsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetHoldRegsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_800fdfa6b1489a629db168b04df13fd96bd3d8168f53b0810e0ef6f8d4e5e364",
                    "minimum" => 16,
                    "maximum" => 4176,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "addr",
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
                            "name" => "count",
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
                            "name" => "valtype",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupGetHoldRegsResponse",
                    "type" => "dobot_bringup/GetHoldRegsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetHoldRegsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_41d34618b03ef7e49ee5519d20050c667cf64e204ec8e4c4116b065f5b388301",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                            "name" => "index",
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
                    "symbol" => "Ros1Dobot_bringupGetInBitsRequest",
                    "type" => "dobot_bringup/GetInBitsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetInBitsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3bb7becca72d44ad566098fc6a76ff5fdef3f3c52ef278b38faf37c3be4d3ed2",
                    "minimum" => 12,
                    "maximum" => 12,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "addr",
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
                            "name" => "count",
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
                    "symbol" => "Ros1Dobot_bringupGetInBitsResponse",
                    "type" => "dobot_bringup/GetInBitsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetInBitsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_acd9a1d0238985a87fac498e3f83535c64d6eff4b6e923896c9105d9d0c37bae",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupGetInRegsRequest",
                    "type" => "dobot_bringup/GetInRegsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetInRegsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9bed4567aa6cdf6d02f1b4ed46378bceaa2ccc0c6699dee552de39ab6a6d924b",
                    "minimum" => 16,
                    "maximum" => 4176,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "addr",
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
                            "name" => "count",
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
                            "name" => "valType",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupGetInRegsResponse",
                    "type" => "dobot_bringup/GetInRegsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetInRegsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f7f69e7d7eef206ab1318296f737a3294aefb82a72078d6b45326171260e4bc2",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupGetPathStartPoseRequest",
                    "type" => "dobot_bringup/GetPathStartPoseRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetPathStartPoseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_eeac1255138e30057687e050b574b0817d70b68d350bfe12b45d77cbff506363",
                    "minimum" => 4,
                    "maximum" => 260,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "traceName",
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
                    "symbol" => "Ros1Dobot_bringupGetPathStartPoseResponse",
                    "type" => "dobot_bringup/GetPathStartPoseResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetPathStartPoseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4b7d7f5af83e211f271d5ba502e38a6d8bd46fad22f8e8f130da274981a1a069",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupGetPoseRequest",
                    "type" => "dobot_bringup/GetPoseRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetPoseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_025bce42be53ba183254bc0dc65439297c87f2a4fdc2fd861f3e2d642d1ec541",
                    "minimum" => 8,
                    "maximum" => 136,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "user",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        },
                        {
                            "name" => "tool",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupGetPoseResponse",
                    "type" => "dobot_bringup/GetPoseResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetPoseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ddb44853f1e3b6f37e90c4d06d78c289c47188e9612f60226878ef38b55e2696",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupGetSixForceDataRequest",
                    "type" => "dobot_bringup/GetSixForceDataRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetSixForceDataRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a1cb669ffeccea55f3d0d2598b166e3ac4317c4268b81c27a1e829b96f244298",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupGetSixForceDataResponse",
                    "type" => "dobot_bringup/GetSixForceDataResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetSixForceDataResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_184411501d79e153e2634bbf7328f3fff02180078203d8b5bd5bd77d0fcb3b1d",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupGetTerminal485Request",
                    "type" => "dobot_bringup/GetTerminal485Request",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetTerminal485Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_298f03b6d54aa27f605bf41a2dc9a7a8229fd0b692688da54eeec227afb712fd",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupGetTerminal485Response",
                    "type" => "dobot_bringup/GetTerminal485Response",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetTerminal485Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4813a10a2f80aa614e4cda21b81002cbb8721804e07109ed209969945b702779",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupGetTraceStartPoseRequest",
                    "type" => "dobot_bringup/GetTraceStartPoseRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetTraceStartPoseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7a3e89eb5ade3cb2e2ea39e9f91b4e4e0ccf07405fdc3e2d59e7d57c2d9e7cb9",
                    "minimum" => 4,
                    "maximum" => 260,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "traceName",
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
                    "symbol" => "Ros1Dobot_bringupGetTraceStartPoseResponse",
                    "type" => "dobot_bringup/GetTraceStartPoseResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/GetTraceStartPoseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ced9e3f9fccc6fc35ee90f70c4a3a40544136feefe21a513a244d8dc0aa04fcf",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupHandleTrajPointsRequest",
                    "type" => "dobot_bringup/HandleTrajPointsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/HandleTrajPointsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2848aee3496e82c75a18c7c9dead4754d9bcfe5beb29311a1a09a3d9d83cf578",
                    "minimum" => 4,
                    "maximum" => 260,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "traceName",
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
                    "symbol" => "Ros1Dobot_bringupHandleTrajPointsResponse",
                    "type" => "dobot_bringup/HandleTrajPointsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/HandleTrajPointsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_45f7bf8391e5b54fce96fc80f93cf3aed773115cc14bb013fa5e3b8d43e7d05c",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupInverseSolutionRequest",
                    "type" => "dobot_bringup/InverseSolutionRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/InverseSolutionRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e8ec17af46a8beb1b8d825ce350560a00a2455ecbc7605917d62edcb51c5ed18",
                    "minimum" => 64,
                    "maximum" => 320,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "offset1",
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
                            "name" => "offset2",
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
                            "name" => "offset3",
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
                            "name" => "offset4",
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
                            "name" => "offset5",
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
                            "name" => "offset6",
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
                            "name" => "user",
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
                            "name" => "tool",
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
                            "name" => "isJointNear",
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
                            "name" => "JointNear",
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
                    "symbol" => "Ros1Dobot_bringupInverseSolutionResponse",
                    "type" => "dobot_bringup/InverseSolutionResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/InverseSolutionResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_10c5f17f9346659de18bbabbadbe455cfa729d74264004f0ebe6edc4dc30658f",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupJointMovJRequest",
                    "type" => "dobot_bringup/JointMovJRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/JointMovJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2aada30efe661e8b57ecc0dedea12e5b30703530ad505b223bf9ab9c0763412c",
                    "minimum" => 52,
                    "maximum" => 4212,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "j1",
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
                            "name" => "j2",
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
                            "name" => "j3",
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
                            "name" => "j4",
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
                            "name" => "j5",
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
                            "name" => "j6",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupJointMovJResponse",
                    "type" => "dobot_bringup/JointMovJResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/JointMovJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_51b50f481a2eb220df2c3e04755fdc6bf5443d31b1225557747ca4f82d70166c",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupJumpRequest",
                    "type" => "dobot_bringup/JumpRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/JumpRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a7c4f0702492f900e97e5aee203e294b9de7750846ecaf7973e1e86d494cec2b",
                    "minimum" => 48,
                    "maximum" => 48,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "offset1",
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
                            "name" => "offset2",
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
                            "name" => "offset3",
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
                            "name" => "offset4",
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
                            "name" => "offset5",
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
                            "name" => "offset6",
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
                    "symbol" => "Ros1Dobot_bringupJumpResponse",
                    "type" => "dobot_bringup/JumpResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/JumpResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0e8b42ba83c27ba738767c6a3aff68636a8508efa21db63f32922bb50023f549",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupLimZRequest",
                    "type" => "dobot_bringup/LimZRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/LimZRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_760f331cb5a4d17e32310035606466e7b04b628152017d57fc9f6dc77b38447f",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupLimZResponse",
                    "type" => "dobot_bringup/LimZResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/LimZResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_14a2dff05f9dca0f0933e9358cf155e71a5c2454d1e60f9ade481f784f9f126b",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupLoadSwitchRequest",
                    "type" => "dobot_bringup/LoadSwitchRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/LoadSwitchRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e28aad033d188565799b9b8cc00b2047d3e040e85d86b9d5bb8cfa44fb7d95ac",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "status",
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
                    "symbol" => "Ros1Dobot_bringupLoadSwitchResponse",
                    "type" => "dobot_bringup/LoadSwitchResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/LoadSwitchResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6ee2761100a9f6763a906aaae51a6343c7f098d1f05c5b2afa32c6237c7e8cbe",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupModbusCloseRequest",
                    "type" => "dobot_bringup/ModbusCloseRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ModbusCloseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e54128af606780d1408abafad70bb37fec4bf75313413b9d35098ecf32ead7fa",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                    "symbol" => "Ros1Dobot_bringupModbusCloseResponse",
                    "type" => "dobot_bringup/ModbusCloseResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ModbusCloseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_37372c64022657c99622a2e15fb8d05dbcf4b5d4d3def0b170842343c728b5c3",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupModbusCreateRequest",
                    "type" => "dobot_bringup/ModbusCreateRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ModbusCreateRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fdbd5da898506935d31be593a4e3549a3c528c3d68ff29875d6f06b589790b2d",
                    "minimum" => 16,
                    "maximum" => 336,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ip",
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
                            "name" => "port",
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
                            "name" => "slave_id",
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
                            "name" => "is_rtu",
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
                            "default" => nil,
                            "raw" => false,
                            "element_minimum" => 4
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupModbusCreateResponse",
                    "type" => "dobot_bringup/ModbusCreateResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ModbusCreateResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_91ce4a52e69ed27977f8edc3d2bab68ded6fae45074906e9232e042481ba417f",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                            "name" => "index",
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
                    "symbol" => "Ros1Dobot_bringupMovJRequest",
                    "type" => "dobot_bringup/MovJRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/MovJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d5eb13b367f355ac8368e61572da8b80eba62e5361f739a99ed62a4cd4a79f4e",
                    "minimum" => 52,
                    "maximum" => 4212,
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
                            "name" => "a",
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
                            "name" => "b",
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
                            "name" => "c",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupMovJResponse",
                    "type" => "dobot_bringup/MovJResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/MovJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_48c51c39fce08dcb92b28b150f546a488bbb228dcc3bced709dffe67155a5bdf",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupMovJExtRequest",
                    "type" => "dobot_bringup/MovJExtRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/MovJExtRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_91fca59f884c1c4db96c4b39260de4b6655c1a506422dd42c6955c2bdf8dcca1",
                    "minimum" => 12,
                    "maximum" => 4172,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "offset",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupMovJExtResponse",
                    "type" => "dobot_bringup/MovJExtResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/MovJExtResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5e7863d2a76b91a515043a4c44d34753a25ed9f14e8d9e49ba223908dccf9f77",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupMovJIORequest",
                    "type" => "dobot_bringup/MovJIORequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/MovJIORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1095eb0d3a8e2e3d8e75c13d00f96114e372ed87449772b1560b50015b6984dc",
                    "minimum" => 52,
                    "maximum" => 4212,
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
                            "name" => "rx",
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
                            "name" => "ry",
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
                            "name" => "rz",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupMovJIOResponse",
                    "type" => "dobot_bringup/MovJIOResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/MovJIOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a004faa73bc67c133087e14e11003d8fdb56f48c025c196986be3939719a5fca",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupMovLRequest",
                    "type" => "dobot_bringup/MovLRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/MovLRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fd3a6a1c387cdde2f2da8eb8cce8bf5ef7ac60b8a45cc4fa3a1e64f01ed52c2d",
                    "minimum" => 52,
                    "maximum" => 4212,
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
                            "name" => "a",
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
                            "name" => "b",
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
                            "name" => "c",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupMovLResponse",
                    "type" => "dobot_bringup/MovLResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/MovLResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_362cd26155c97a3dad48da79b105272e3a54f22b1f50978ee4883f427986aad3",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupMovLIORequest",
                    "type" => "dobot_bringup/MovLIORequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/MovLIORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f9dc72d4456c6c4febd922b41d8ed68b7d402741911abef356ee2de12e43e0bb",
                    "minimum" => 52,
                    "maximum" => 4212,
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
                            "name" => "rx",
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
                            "name" => "ry",
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
                            "name" => "rz",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupMovLIOResponse",
                    "type" => "dobot_bringup/MovLIOResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/MovLIOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_433c70d71f2a6df46140ba0937a8de9d9e382cc86ca2db6a85ebed4d4476fc54",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupMoveJogRequest",
                    "type" => "dobot_bringup/MoveJogRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/MoveJogRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f6b61799b2b1a2925f9b3581c69acea68ab5bf8e7cb34040bbe899249571ecf6",
                    "minimum" => 8,
                    "maximum" => 4424,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "axisID",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupMoveJogResponse",
                    "type" => "dobot_bringup/MoveJogResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/MoveJogResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4b920c29d6e337fdf0c464c76e1d6a65d367f2ed89d20159c54a06b28721652c",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupPauseScriptRequest",
                    "type" => "dobot_bringup/PauseScriptRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/PauseScriptRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0515897101fed91dc0d0be12c7e792478604c83e54e377568542944fa66d23b7",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupPauseScriptResponse",
                    "type" => "dobot_bringup/PauseScriptResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/PauseScriptResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2bee6a114025d88d91f794c68478a44bc2a20a3e65e9456eae75d39640cf32c0",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupPayLoadRequest",
                    "type" => "dobot_bringup/PayLoadRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/PayLoadRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_535f1e2c2c83a98b3572649905c96964c7ebc4ac7458292c4209f974188f29fd",
                    "minimum" => 16,
                    "maximum" => 16,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "weight",
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
                            "name" => "inertia",
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
                    "symbol" => "Ros1Dobot_bringupPayLoadResponse",
                    "type" => "dobot_bringup/PayLoadResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/PayLoadResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e1d1b56d5b9d2191cf344b2b7cf721fff6a4303ad3aa4901f5c091111ad63b71",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupPositiveSolutionRequest",
                    "type" => "dobot_bringup/PositiveSolutionRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/PositiveSolutionRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c7f95fe8314cf60c3b9d9b3066c80a8da6070a7df2f31184d524344e8a9ac466",
                    "minimum" => 56,
                    "maximum" => 56,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "offset1",
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
                            "name" => "offset2",
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
                            "name" => "offset3",
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
                            "name" => "offset4",
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
                            "name" => "offset5",
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
                            "name" => "offset6",
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
                            "name" => "user",
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
                            "name" => "tool",
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
                    "symbol" => "Ros1Dobot_bringupPositiveSolutionResponse",
                    "type" => "dobot_bringup/PositiveSolutionResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/PositiveSolutionResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_eec24219ce537eb24bd619942dd63c5f53a1afcf3aabeb10e508852aaf0ee535",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupPowerOnRequest",
                    "type" => "dobot_bringup/PowerOnRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/PowerOnRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b1b1a3b4bd2a39d5e4ae58a1b4327af7ea8033facbd728fdf967406396b1f0b7",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupPowerOnResponse",
                    "type" => "dobot_bringup/PowerOnResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/PowerOnResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fbb473d54d04cc853b531daa9657018737874bff18de8b13637794fe178a9c88",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupRelJointMovJRequest",
                    "type" => "dobot_bringup/RelJointMovJRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelJointMovJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_99e2b4e1af44dfc16cd689b144ed6a49de27164cc9b00c0da3d73e9908d0e9e6",
                    "minimum" => 52,
                    "maximum" => 4212,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "offset1",
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
                            "name" => "offset2",
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
                            "name" => "offset3",
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
                            "name" => "offset4",
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
                            "name" => "offset5",
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
                            "name" => "offset6",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupRelJointMovJResponse",
                    "type" => "dobot_bringup/RelJointMovJResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelJointMovJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_744c38052c9d8d6027746967dcf8f1924344eeddd3287320237476ad27fd930d",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupRelMovJRequest",
                    "type" => "dobot_bringup/RelMovJRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelMovJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1947325988ffb928f24fa3a714e1becd9f1fbc5f66e7110179bda067b3ca4776",
                    "minimum" => 48,
                    "maximum" => 48,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "offset1",
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
                            "name" => "offset2",
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
                            "name" => "offset3",
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
                            "name" => "offset4",
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
                            "name" => "offset5",
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
                            "name" => "offset6",
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
                    "symbol" => "Ros1Dobot_bringupRelMovJResponse",
                    "type" => "dobot_bringup/RelMovJResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelMovJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_eaa103b9f4c61702145d348c8763329deb4be9d0f010bf5cca0431d1d97ffea2",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupRelMovJToolRequest",
                    "type" => "dobot_bringup/RelMovJToolRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelMovJToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8ea1454d38ebe4cb9d30d018079ce142bbaa1010d2ea321763b37dc47db5d783",
                    "minimum" => 56,
                    "maximum" => 4216,
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
                            "name" => "rx",
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
                            "name" => "ry",
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
                            "name" => "rz",
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
                            "name" => "tool",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupRelMovJToolResponse",
                    "type" => "dobot_bringup/RelMovJToolResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelMovJToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9b9aa05571fab18d37f0fca3adef2497ee315e3a9c146878aaa7746eacf770d0",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupRelMovJUserRequest",
                    "type" => "dobot_bringup/RelMovJUserRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelMovJUserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e6780787473801ef6ae69c160e9df61c9bf10941a47dd9c102e2c7003ca14f63",
                    "minimum" => 56,
                    "maximum" => 4216,
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
                            "name" => "rx",
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
                            "name" => "ry",
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
                            "name" => "rz",
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
                            "name" => "user",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupRelMovJUserResponse",
                    "type" => "dobot_bringup/RelMovJUserResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelMovJUserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_20448df974bf51cd04f80e2ed5c819f4f2f9740b6d919e656fe3a18c2a87efc1",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupRelMovLRequest",
                    "type" => "dobot_bringup/RelMovLRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelMovLRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ebf192c073879d1900d884545f9c91fc54ece1c42220f77493217f02b00cadf6",
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
                    "symbol" => "Ros1Dobot_bringupRelMovLResponse",
                    "type" => "dobot_bringup/RelMovLResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelMovLResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_67d62b01e54f7df98e5209f948d3d45610e3bf3853a4fc04ca458cb30ea42e88",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupRelMovLToolRequest",
                    "type" => "dobot_bringup/RelMovLToolRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelMovLToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9318cd6154f2cc90d20d188cb1aa38ac2f160b75bb3b0d13f1a78326ac40ad9d",
                    "minimum" => 56,
                    "maximum" => 4216,
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
                            "name" => "rx",
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
                            "name" => "ry",
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
                            "name" => "rz",
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
                            "name" => "tool",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupRelMovLToolResponse",
                    "type" => "dobot_bringup/RelMovLToolResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelMovLToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4e5837f832c42d29b74a9a2536ab80b94f1087972685da74e021edd315bf5bec",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupRelMovLUserRequest",
                    "type" => "dobot_bringup/RelMovLUserRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelMovLUserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_03e9b9ec0fb14fcdb1b52404a78d29c4f952d296aa1ccf209ee257abed479b61",
                    "minimum" => 56,
                    "maximum" => 4216,
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
                            "name" => "rx",
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
                            "name" => "ry",
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
                            "name" => "rz",
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
                            "name" => "user",
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
                            "name" => "paramValue",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupRelMovLUserResponse",
                    "type" => "dobot_bringup/RelMovLUserResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RelMovLUserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b0e9fcdd28f7e8fb3f4cd2c6398d9b2cde483028f5c24c43336ae032f9fad24d",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupResetRobotRequest",
                    "type" => "dobot_bringup/ResetRobotRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ResetRobotRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_64b2cfe8bd1c6b646e7bb126f681f6ba917466a1403ed0d04f0c900c1066e46c",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupResetRobotResponse",
                    "type" => "dobot_bringup/ResetRobotResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ResetRobotResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0982186f56a3d0956566915e33ce268845367d7dadeaea8a07acbd737e63181a",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupRobotModeRequest",
                    "type" => "dobot_bringup/RobotModeRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RobotModeRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4a53406f3fb93ae98bd17673cd8215d0112537faff604d49c74bc4f517e16c5d",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupRobotModeResponse",
                    "type" => "dobot_bringup/RobotModeResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RobotModeResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_68b34eb2c4fe7e7cacb6055a4259fcf5776ad4a28013281a3e9cf19521908d5c",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "mode",
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
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupRunScriptRequest",
                    "type" => "dobot_bringup/RunScriptRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RunScriptRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_616fc1d43590d9935733cd8de381585d170a01cf3a9e7972136a31783d49a29f",
                    "minimum" => 4,
                    "maximum" => 260,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "projectName",
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
                    "symbol" => "Ros1Dobot_bringupRunScriptResponse",
                    "type" => "dobot_bringup/RunScriptResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/RunScriptResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3940b9344c72e35651072e75ca4c3839c0bd420fb741938402e95ad627cbf45c",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupServoJRequest",
                    "type" => "dobot_bringup/ServoJRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ServoJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_89edbee19c86acd41f4cac814ac40e09262a17bd96ad1b697c0ffdecc69f20e2",
                    "minimum" => 60,
                    "maximum" => 444,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "offset1",
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
                            "name" => "offset2",
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
                            "name" => "offset3",
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
                            "name" => "offset4",
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
                            "name" => "offset5",
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
                            "name" => "offset6",
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
                            "name" => "t",
                            "type" => "float64",
                            "array" => "sequence",
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
                            "element_minimum" => 8
                        },
                        {
                            "name" => "lookahead_time",
                            "type" => "float64",
                            "array" => "sequence",
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
                            "element_minimum" => 8
                        },
                        {
                            "name" => "gain",
                            "type" => "float64",
                            "array" => "sequence",
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
                            "element_minimum" => 8
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupServoJResponse",
                    "type" => "dobot_bringup/ServoJResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ServoJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8ec56aaaeec2ef71903513b001fd2a11d183cfa6eca330256d3adc5df58da301",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupServoJParamRequest",
                    "type" => "dobot_bringup/ServoJParamRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ServoJParamRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3b2ef76c800c3d483dca43cbe981ed2dd10a7c8a6806051e08b72c83209bc98f",
                    "minimum" => 32,
                    "maximum" => 32,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "trajectory_duration",
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
                            "name" => "t",
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
                            "name" => "lookahead_time",
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
                            "name" => "gain",
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
                    "symbol" => "Ros1Dobot_bringupServoJParamResponse",
                    "type" => "dobot_bringup/ServoJParamResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ServoJParamResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_06226db8595d10cc98203d618d19f9f21a647c198f30c80247f996a17da5c466",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupServoPRequest",
                    "type" => "dobot_bringup/ServoPRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ServoPRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_03eca79138b155d8fbef7d31479f1db91d3044efd354cbb2220f8158453df94e",
                    "minimum" => 48,
                    "maximum" => 48,
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
                            "name" => "a",
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
                            "name" => "b",
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
                            "name" => "c",
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
                    "symbol" => "Ros1Dobot_bringupServoPResponse",
                    "type" => "dobot_bringup/ServoPResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ServoPResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3878a67e350ae73e7c02104a8fc010d8837c1f0b99cb5ca121d5fea37dea0d6b",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSetArmOrientationRequest",
                    "type" => "dobot_bringup/SetArmOrientationRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetArmOrientationRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_411ea8eea1cb7f7bb5693a95b8657a3e60eafb3dcf82838c36232f72ae886e7b",
                    "minimum" => 16,
                    "maximum" => 16,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "LorR",
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
                            "name" => "UorD",
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
                            "name" => "ForN",
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
                            "name" => "Config6",
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
                    "symbol" => "Ros1Dobot_bringupSetArmOrientationResponse",
                    "type" => "dobot_bringup/SetArmOrientationResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetArmOrientationResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8c9af233c61c52e029c51a6d59d53d2d37d8fa6fdfd009b08bee5e51f605a159",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSetCoilsRequest",
                    "type" => "dobot_bringup/SetCoilsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetCoilsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_45771482b61ce634858abc167e63a421d7533ff9650b09d2ba6d58cb01ce8c82",
                    "minimum" => 16,
                    "maximum" => 272,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "addr",
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
                            "name" => "count",
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
                            "name" => "valTab",
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
                    "symbol" => "Ros1Dobot_bringupSetCoilsResponse",
                    "type" => "dobot_bringup/SetCoilsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetCoilsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_65a61c2bcb39a67ae79dc7552f2c383db8561d8e6fbd585c50b048beabd4537d",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSetCollideDragRequest",
                    "type" => "dobot_bringup/SetCollideDragRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetCollideDragRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6bbf174fa78c4e6706fe6ebdcfc77d6d80dfb153c91d3b8a815446bcae0fce31",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "status",
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
                    "symbol" => "Ros1Dobot_bringupSetCollideDragResponse",
                    "type" => "dobot_bringup/SetCollideDragResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetCollideDragResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d78a1536cb221635491e59985011f879de22151bca4a40dcfdfad42e80465904",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSetCollisionLevelRequest",
                    "type" => "dobot_bringup/SetCollisionLevelRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetCollisionLevelRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d356e0e035b01033a24c4ce155acb2e1edf1197f3efcf868defa4ee8eb6a1d85",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "level",
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
                    "symbol" => "Ros1Dobot_bringupSetCollisionLevelResponse",
                    "type" => "dobot_bringup/SetCollisionLevelResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetCollisionLevelResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c1014bc49ba25fa4a922a84009a746d6e5f1462bd91ad457e27c5779f7c711d7",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSetHoldRegsRequest",
                    "type" => "dobot_bringup/SetHoldRegsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetHoldRegsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a62adf80d85c268ded993bcf79fb5e36a4010373b82122b20bfa7dedd7ba9d4a",
                    "minimum" => 20,
                    "maximum" => 4436,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "addr",
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
                            "name" => "count",
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
                            "name" => "valTab",
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
                            "name" => "valtype",
                            "type" => "string",
                            "array" => "sequence",
                            "count" => 16,
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
                    "symbol" => "Ros1Dobot_bringupSetHoldRegsResponse",
                    "type" => "dobot_bringup/SetHoldRegsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetHoldRegsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8c7bc9280585f3f48d94492a977a043154d9f7014d40c75c3423e6920c185006",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSetObstacleAvoidRequest",
                    "type" => "dobot_bringup/SetObstacleAvoidRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetObstacleAvoidRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fdabddcd2e3aedae53795c3f88db4af1e8b088276bacde73d2f743bc85abb2b7",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "status",
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
                    "symbol" => "Ros1Dobot_bringupSetObstacleAvoidResponse",
                    "type" => "dobot_bringup/SetObstacleAvoidResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetObstacleAvoidResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6326eb040ce327709390b27c7cdcdcdc5e4b482078083d8e9211b85a0b516765",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSetPayloadRequest",
                    "type" => "dobot_bringup/SetPayloadRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetPayloadRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b78f4ea1c2dba35204ce4a4c707f47e1203525613c0f8e2b6bde4d4ebe31fd0a",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "load",
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
                    "symbol" => "Ros1Dobot_bringupSetPayloadResponse",
                    "type" => "dobot_bringup/SetPayloadResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetPayloadResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ef8118977e3535e707b28e87413af7b5d87aefe192cb904e76388f26a0e48451",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSetSafeSkinRequest",
                    "type" => "dobot_bringup/SetSafeSkinRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetSafeSkinRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_757fbe6b10abe9fab751c9a26e653dfb88aa9863f8aa02574a4853596dea0b1f",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "status",
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
                    "symbol" => "Ros1Dobot_bringupSetSafeSkinResponse",
                    "type" => "dobot_bringup/SetSafeSkinResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetSafeSkinResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6faa7971380cc42c37cb8e465e04bc61565a0d13afc4e13a3dae14538bdcc7ef",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSetTerminal485Request",
                    "type" => "dobot_bringup/SetTerminal485Request",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetTerminal485Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_68f16c3a44c421922cc0200bb6d08ad44b475feae3d9b35b075749b31c84b7b0",
                    "minimum" => 16,
                    "maximum" => 272,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "baudRate",
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
                            "name" => "dataLen",
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
                            "name" => "parityBit",
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
                            "name" => "stopBit",
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
                    "symbol" => "Ros1Dobot_bringupSetTerminal485Response",
                    "type" => "dobot_bringup/SetTerminal485Response",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetTerminal485Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8d9147b63b5a0a8fe5a55cf1539cdccac2db65f169edd15f7de6961b7c69f987",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSetTerminalKeysRequest",
                    "type" => "dobot_bringup/SetTerminalKeysRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetTerminalKeysRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5ccdea027664fa4de7f7eede24f55c1be9e48bcc69c304f6ed20364bdf2316c8",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "status",
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
                    "symbol" => "Ros1Dobot_bringupSetTerminalKeysResponse",
                    "type" => "dobot_bringup/SetTerminalKeysResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SetTerminalKeysResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_59413ce06c871427dc5bfe441c8486cee8a580c75a4b1b979e90f5002f405ca8",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSpeedFactorRequest",
                    "type" => "dobot_bringup/SpeedFactorRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SpeedFactorRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bc9b2b41a6825b0b62591195bdfe8c496a9330b769077ba68fa6955fee05bac3",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "ratio",
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
                    "symbol" => "Ros1Dobot_bringupSpeedFactorResponse",
                    "type" => "dobot_bringup/SpeedFactorResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SpeedFactorResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f3dccd2d89672165a8a3f322921c526503ceea62853596deff249b8db9561f4d",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSpeedJRequest",
                    "type" => "dobot_bringup/SpeedJRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SpeedJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_530734a5d3c9d4ad506868f4037248b87a3ecb910a9a326bd3bd887b8a55710d",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "r",
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
                    "symbol" => "Ros1Dobot_bringupSpeedJResponse",
                    "type" => "dobot_bringup/SpeedJResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SpeedJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_17695b04e91ceb9ea10c863908d474e587160eac3132a560bc06a15c18a2e447",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSpeedLRequest",
                    "type" => "dobot_bringup/SpeedLRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SpeedLRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_92cfdf1adae35ed62eb8a92f9bcf4ffd01e8db8c57989e008e2073e3e07b9c51",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "r",
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
                    "symbol" => "Ros1Dobot_bringupSpeedLResponse",
                    "type" => "dobot_bringup/SpeedLResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SpeedLResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_413b189f4830e3bff05be7c2f80251242e6c07ca696fd78dd91ae326f703e5b2",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupStartDragRequest",
                    "type" => "dobot_bringup/StartDragRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StartDragRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5edde2ed92d68be374f7a234ae31d5e939747fda13dd2abd093c98b9bbefd0b2",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupStartDragResponse",
                    "type" => "dobot_bringup/StartDragResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StartDragResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3f845cd661102409cc5077d245b89fca9250f265f783478473a86e92528b7cb9",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupStartFCTraceRequest",
                    "type" => "dobot_bringup/StartFCTraceRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StartFCTraceRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1f215de662fd0408919e61128d88b5e36ef8caf22a3d60a00722c9dc7828d01e",
                    "minimum" => 4,
                    "maximum" => 260,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "trace_name",
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
                    "symbol" => "Ros1Dobot_bringupStartFCTraceResponse",
                    "type" => "dobot_bringup/StartFCTraceResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StartFCTraceResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_943645444330cdd8076254071d311237eee917c45c30d6038458a3b3122ab67c",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupStartPathRequest",
                    "type" => "dobot_bringup/StartPathRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StartPathRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c2bda8488e715407a73897eaf8a63da4d77e1371d257ebeebf7d4d855aa6eb89",
                    "minimum" => 12,
                    "maximum" => 268,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "trace_name",
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
                            "name" => "const_val",
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
                            "name" => "cart",
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
                    "symbol" => "Ros1Dobot_bringupStartPathResponse",
                    "type" => "dobot_bringup/StartPathResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StartPathResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7e0c7e7594e78bca3183f6e68170dcf40e3341f9f7a63c3b00f8e0ec51ae46a0",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupStartTraceRequest",
                    "type" => "dobot_bringup/StartTraceRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StartTraceRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2cb708228939aa747aded7cd96aa8a01855a09a27ae9bd855d6d3f0c42a6ff45",
                    "minimum" => 4,
                    "maximum" => 260,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "trace_name",
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
                    "symbol" => "Ros1Dobot_bringupStartTraceResponse",
                    "type" => "dobot_bringup/StartTraceResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StartTraceResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5c7ae42d0c2057dbdf32d5bf0bc6199d3a5b45f452f58cd58aec217ac5161bdd",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupStopDragRequest",
                    "type" => "dobot_bringup/StopDragRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StopDragRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b0cc9836f6159cd14e2fbe1d17946df1195933b6185c58e92a9ccfe2110ab3c9",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupStopDragResponse",
                    "type" => "dobot_bringup/StopDragResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StopDragResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c799d7ef2592c59d6765107cb18ae3a8e811da39fd3c4f53000ed1f0ce73ce64",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupStopScriptRequest",
                    "type" => "dobot_bringup/StopScriptRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StopScriptRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7e9a2e0200b130410e48357bf3bebe80084239ba05f75effbf2b96e6d5fa6230",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupStopScriptResponse",
                    "type" => "dobot_bringup/StopScriptResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StopScriptResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2fdc976b5bb7a6270a362a8ec31184d2034068a1806f501517c472efceda804b",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupStopmoveJogRequest",
                    "type" => "dobot_bringup/StopmoveJogRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StopmoveJogRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0f938c260d9371e39e84a1a01447c7992ad15b5c6c322def739d0919e5af3176",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupStopmoveJogResponse",
                    "type" => "dobot_bringup/StopmoveJogResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/StopmoveJogResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8af5a7425dcbbed499016ce18bf9f721da5ee806e9e4360368267f925e169940",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSyncRequest",
                    "type" => "dobot_bringup/SyncRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SyncRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6335c57c7c8e3d52e8c5bb288f87946d11228777e2277aec29560d5f7bebb327",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupSyncResponse",
                    "type" => "dobot_bringup/SyncResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SyncResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bccb43d699c8000b02cd2f97349bf7d16df2409ba0ab02fcc1889acb8827fb24",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupSyncAllRequest",
                    "type" => "dobot_bringup/SyncAllRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SyncAllRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d4e09d99b799b37456dd01b35b7c5c6f83b34899bd8942c6c324018087bd5a76",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupSyncAllResponse",
                    "type" => "dobot_bringup/SyncAllResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/SyncAllResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1431a93a4eb81a5180888dcbef05bb55aca2ba282e51b07df6a1578ebb38b69b",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupTCPSpeedRequest",
                    "type" => "dobot_bringup/TCPSpeedRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/TCPSpeedRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a49b5d50c6b624f0fa07e22f80248b5199a2158c6211b1e6c0eca4a975ab7463",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "vt",
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
                    "symbol" => "Ros1Dobot_bringupTCPSpeedResponse",
                    "type" => "dobot_bringup/TCPSpeedResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/TCPSpeedResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8fda9d4671efacc4b7831694bd9e2cf16c90efbb3b790f17879896a48fb78d40",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupTCPSpeedEndRequest",
                    "type" => "dobot_bringup/TCPSpeedEndRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/TCPSpeedEndRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_11b32554e05b4dd64f7965fb8909226ee845f6fe236bf44c3cee6e1b58dc56ab",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupTCPSpeedEndResponse",
                    "type" => "dobot_bringup/TCPSpeedEndResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/TCPSpeedEndResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_209df9451cdd6aa01da6297a3dd200a7d48e7775c37e0f29210b6662f6025106",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupTcpDashboardRequest",
                    "type" => "dobot_bringup/TcpDashboardRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/TcpDashboardRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d3db7b6a90c40d75214e005ed14a4556f064853544f887b22b37d475eaaaac4b",
                    "minimum" => 4,
                    "maximum" => 260,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "command",
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
                    "symbol" => "Ros1Dobot_bringupTcpDashboardResponse",
                    "type" => "dobot_bringup/TcpDashboardResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/TcpDashboardResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_eef5e6ea6b43d898ab0af1d6162c3d1738e437313aae7998802ec80e26345ae1",
                    "minimum" => 4,
                    "maximum" => 260,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "result",
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
                    "symbol" => "Ros1Dobot_bringupTcpRealDataRequest",
                    "type" => "dobot_bringup/TcpRealDataRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/TcpRealDataRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0da7b4edbd97640aa057410bfb4d67e0ab554f0a8776421def225798d99b5aba",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "size",
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
                    "symbol" => "Ros1Dobot_bringupTcpRealDataResponse",
                    "type" => "dobot_bringup/TcpRealDataResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/TcpRealDataResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ed7ac4b91bfae3d1c2fdcf3ffe1efcbec473a5138c204115f6ec17adf3bf1d91",
                    "minimum" => 4,
                    "maximum" => 20,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "real_data",
                            "type" => "uint8",
                            "array" => "sequence",
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
                    "symbol" => "Ros1Dobot_bringupToolRequest",
                    "type" => "dobot_bringup/ToolRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0bd7f266c2fad2e0b91d423ed4c7ea0fd1e5af5b600f13406d1d777466a0fd16",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                    "symbol" => "Ros1Dobot_bringupToolResponse",
                    "type" => "dobot_bringup/ToolResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_56b265050ea32f5b7ae269f92cfc71218d5c5ba05646909ea59069e33510466e",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupToolAIRequest",
                    "type" => "dobot_bringup/ToolAIRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ToolAIRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a5268a08cb93da6f4c38764aa0236abde3f8c57e232a1dbc6f53134111ce2fd8",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                    "symbol" => "Ros1Dobot_bringupToolAIResponse",
                    "type" => "dobot_bringup/ToolAIResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ToolAIResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_92c55f5b614847d1f3be252d07dcd9a30598232d3b4e8f522f8ec83994b56397",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupToolDIRequest",
                    "type" => "dobot_bringup/ToolDIRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ToolDIRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1ca6c66e74e3487aa95f47be019816e7186fc78866d0de3d8bf0387cd3df0076",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                    "symbol" => "Ros1Dobot_bringupToolDIResponse",
                    "type" => "dobot_bringup/ToolDIResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ToolDIResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b82c8b78569e743f5ed6820f51a94e4df7a7123263480abe95d98c9d4eaaea6e",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupToolDORequest",
                    "type" => "dobot_bringup/ToolDORequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ToolDORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_dc39c212586e15229136735c829a895bad7fc6a98ffc0bdce7ff979f922d23ab",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "status",
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
                    "symbol" => "Ros1Dobot_bringupToolDOResponse",
                    "type" => "dobot_bringup/ToolDOResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ToolDOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9e7bf45f71e429e87a8b13e65ddef93703613393c6919c1533515c654e6c8bee",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupToolDOExecuteRequest",
                    "type" => "dobot_bringup/ToolDOExecuteRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ToolDOExecuteRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_22cb71605a1372615814017f66f61ce144cbf3c8b7d8494afbed7738eb29903b",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                            "name" => "status",
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
                    "symbol" => "Ros1Dobot_bringupToolDOExecuteResponse",
                    "type" => "dobot_bringup/ToolDOExecuteResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/ToolDOExecuteResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4cb0bead175157db1ca3856044e06fde9cd2cd8775a973a50bba2829d3170cdd",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupUserRequest",
                    "type" => "dobot_bringup/UserRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/UserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_76f5181e8f7f06636dbaf1f1cdac40cf5551f4b3c09894eb7fc0089f71e81e73",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index",
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
                    "symbol" => "Ros1Dobot_bringupUserResponse",
                    "type" => "dobot_bringup/UserResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/UserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7f5730d781123bc19cadcdf6e3777368db7b6ea770a2fa42116af9b247bbec07",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupWaitRequest",
                    "type" => "dobot_bringup/WaitRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/WaitRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2e5591a43882cc95d007f376128e7db03376cae95e637f77fff14ed3c115ff85",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "time",
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
                    "symbol" => "Ros1Dobot_bringupWaitResponse",
                    "type" => "dobot_bringup/WaitResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/WaitResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f745fbd59f29bdca82788cb44ef5848836cd510328fd4dcec6ae2cbe1b57a07f",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                    "symbol" => "Ros1Dobot_bringupPauseRequest",
                    "type" => "dobot_bringup/pauseRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/pauseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_524834ff32e2a939481b311a79efe4e67183379ae04516e87d75e4449d219b89",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_bringupPauseResponse",
                    "type" => "dobot_bringup/pauseResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_bringup/pauseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_791459101db2af7fdc04aa2e3778aeb684bc7f4b4fae16420c9b551383c2f545",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "res",
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
                }
            ].freeze
            CLASSES = Uwvm::RosWasm::Wire.records(SCHEMAS).freeze
            CLASSES.each { |name, klass| const_set(name, klass) }
        end
    end
end
