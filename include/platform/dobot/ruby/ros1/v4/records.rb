# @file records.rb
# @brief Complete original dobot/ros1_v4 values.
# @details Every field, constant and quota delegates to the common Wire registry.
require "roswasm/wire"
module Uwvm
    module Dobot
        module Ros1V4
            SCHEMAS = [
                {
                    "symbol" => "Ros1Dobot_v4_bringupRobotStatus",
                    "type" => "dobot_v4_bringup/RobotStatus",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RobotStatus",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_82bd02d6cae133bcc64f6bc44d1a99cf9d37557aab1c1d8fa3ba8db5ee624c4f",
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
                    "symbol" => "Ros1Dobot_v4_bringupToolVectorActual",
                    "type" => "dobot_v4_bringup/ToolVectorActual",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ToolVectorActual",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_82ced795eaf8a686e3c4ef7b1d4385f2db2119990d10261086993e82049f0eb3",
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
                    "symbol" => "Ros1Dobot_v4_bringupAIRequest",
                    "type" => "dobot_v4_bringup/AIRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/AIRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2214b217765bff4c163b4dc5d97631b8d69ff185f57d94fe05eb9de59aad3916",
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
                    "symbol" => "Ros1Dobot_v4_bringupAIResponse",
                    "type" => "dobot_v4_bringup/AIResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/AIResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_47792956dab8fdbe34409d3fbb171c596c10fa7d51f1794e23139a1d1896a723",
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
                    "symbol" => "Ros1Dobot_v4_bringupAORequest",
                    "type" => "dobot_v4_bringup/AORequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/AORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_67c96ce3587b6f894d311d80b9a25e5b23a25b6b3aa8b2e5ba1bfab0983064e5",
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
                    "symbol" => "Ros1Dobot_v4_bringupAOResponse",
                    "type" => "dobot_v4_bringup/AOResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/AOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_38ebdda40649964474bb27ed9212950b8f43b0eac13b2dd79bf0a605bdb121dd",
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
                    "symbol" => "Ros1Dobot_v4_bringupAOInstantRequest",
                    "type" => "dobot_v4_bringup/AOInstantRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/AOInstantRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_69e03a2eebb2a231b59d673abe15a742fce22ea06c8efd1d684c5e62391adb43",
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
                    "symbol" => "Ros1Dobot_v4_bringupAOInstantResponse",
                    "type" => "dobot_v4_bringup/AOInstantResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/AOInstantResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2ff0bd24267296503bc726f5c56730b44883589410fe761ebb20610b5f69a4ca",
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
                    "symbol" => "Ros1Dobot_v4_bringupAccJRequest",
                    "type" => "dobot_v4_bringup/AccJRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/AccJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a6d27425ba463d6d990c5c62dde45ad47f89ae14fd2832df3387b6a19ab0fc05",
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
                    "symbol" => "Ros1Dobot_v4_bringupAccJResponse",
                    "type" => "dobot_v4_bringup/AccJResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/AccJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ff9508fd4b7dc283d453e43ca8637de582724fe7a5da37f7a7904e319215b5f1",
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
                    "symbol" => "Ros1Dobot_v4_bringupAccLRequest",
                    "type" => "dobot_v4_bringup/AccLRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/AccLRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_be3fa95380632fb2131388acdfabf9f98bed108ddf8290a001309cf8d870d8a8",
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
                    "symbol" => "Ros1Dobot_v4_bringupAccLResponse",
                    "type" => "dobot_v4_bringup/AccLResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/AccLResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8d93105e9d13cca877153ccef2879370ee21f0676ea0979a5829e5580c006ac3",
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
                    "symbol" => "Ros1Dobot_v4_bringupArcRequest",
                    "type" => "dobot_v4_bringup/ArcRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ArcRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0058b89dc12f71d3464fbc58e14c2fbb9aca71bcc927efe3c3d991df5433cde2",
                    "minimum" => 101,
                    "maximum" => 4261,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "mode",
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                            "name" => "d2",
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
                            "name" => "e2",
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
                            "name" => "f2",
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
                    "symbol" => "Ros1Dobot_v4_bringupArcResponse",
                    "type" => "dobot_v4_bringup/ArcResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ArcResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7527828d6f107213576c2c1733b3978916baa255cf282df6ca77ac1d9364d263",
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
                    "symbol" => "Ros1Dobot_v4_bringupBrakeControlRequest",
                    "type" => "dobot_v4_bringup/BrakeControlRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/BrakeControlRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3b295b5b162337e56aa01d87fef42c7bf25568bb6dd3ce63c252831f5f934618",
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
                    "symbol" => "Ros1Dobot_v4_bringupBrakeControlResponse",
                    "type" => "dobot_v4_bringup/BrakeControlResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/BrakeControlResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_984998184713f59986fc50b3d31a4f33211b1fd340cef600e2bb43e8955c38e2",
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
                    "symbol" => "Ros1Dobot_v4_bringupCPRequest",
                    "type" => "dobot_v4_bringup/CPRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/CPRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7bad993bf7a0a34147982828fe416072f9c03ecec034c66c47c0a12a94be7d76",
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
                    "symbol" => "Ros1Dobot_v4_bringupCPResponse",
                    "type" => "dobot_v4_bringup/CPResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/CPResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_68fd2bec24a6b67275838832909dbb0b8dc0e733c2366ad37ebe7a7e71693513",
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
                    "symbol" => "Ros1Dobot_v4_bringupCalcToolRequest",
                    "type" => "dobot_v4_bringup/CalcToolRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/CalcToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0df2645542e9b21986f200bc67313c82873f09b1ddaf09fcf0508d8db54a4424",
                    "minimum" => 12,
                    "maximum" => 268,
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
                            "name" => "matrix",
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
                            "name" => "offset",
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
                    "symbol" => "Ros1Dobot_v4_bringupCalcToolResponse",
                    "type" => "dobot_v4_bringup/CalcToolResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/CalcToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7053f39e313c5cc7d9b7778a01c253dd6557a0909f287c916d1fc95b9495c9b0",
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
                    "symbol" => "Ros1Dobot_v4_bringupCalcUserRequest",
                    "type" => "dobot_v4_bringup/CalcUserRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/CalcUserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_50aba389bc763c0c8e652ea7bb6f1a270708ebc5225f2a1377d1089db4a79a45",
                    "minimum" => 12,
                    "maximum" => 268,
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
                            "name" => "matrix",
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
                            "name" => "offset",
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
                    "symbol" => "Ros1Dobot_v4_bringupCalcUserResponse",
                    "type" => "dobot_v4_bringup/CalcUserResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/CalcUserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_76e431bdd83d3eab9bbd5c729403625c35800cc54969db89f07ed123f6573516",
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
                    "symbol" => "Ros1Dobot_v4_bringupCircleRequest",
                    "type" => "dobot_v4_bringup/CircleRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/CircleRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c4cf7ae596c53bd499bb42c41e255bb11fa8502b8b7b755b4f93a90f935a1315",
                    "minimum" => 105,
                    "maximum" => 4265,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "mode",
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                            "name" => "d2",
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
                            "name" => "e2",
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
                            "name" => "f2",
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
                    "symbol" => "Ros1Dobot_v4_bringupCircleResponse",
                    "type" => "dobot_v4_bringup/CircleResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/CircleResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2862bd2f86cf2bae6ecb3a4ad66028cbec380b50f1ad68e8d8e8eb5edbe07ee2",
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
                    "symbol" => "Ros1Dobot_v4_bringupClearErrorRequest",
                    "type" => "dobot_v4_bringup/ClearErrorRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ClearErrorRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e19d003e7788f8e7fab5248172d7a065af2810a88a170ff180c6b89a665efdbe",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupClearErrorResponse",
                    "type" => "dobot_v4_bringup/ClearErrorResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ClearErrorResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7d9ddcd9d69236ba1f0d8507d11e8c831fae9da929789911b2a861ae1902f8cd",
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
                    "symbol" => "Ros1Dobot_v4_bringupContinueRequest",
                    "type" => "dobot_v4_bringup/ContinueRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ContinueRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a45b75caa5a568ad0a6e5c16860905ab09c2a235422b55c65eadde4bee1527bb",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupContinueResponse",
                    "type" => "dobot_v4_bringup/ContinueResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ContinueResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_cedb844bcaeeb932ba5cb519c2a9c1b53bbfac16187afd91122500199422f200",
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
                    "symbol" => "Ros1Dobot_v4_bringupDIRequest",
                    "type" => "dobot_v4_bringup/DIRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DIRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6a8bb81e4400e5877fa1e45ab7ca52d7489bec2d1e7962f68ae3746ce86f1d00",
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
                    "symbol" => "Ros1Dobot_v4_bringupDIResponse",
                    "type" => "dobot_v4_bringup/DIResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DIResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ce95967f7dd2a0e517da80142d0ccc626dbbeee7e704a5a6fc2acec4a4c80127",
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
                    "symbol" => "Ros1Dobot_v4_bringupDIGroupRequest",
                    "type" => "dobot_v4_bringup/DIGroupRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DIGroupRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8743b807e224b75c331e7b45610542ec1bfbac56a3dce7a233036b81de6d98f3",
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
                    "symbol" => "Ros1Dobot_v4_bringupDIGroupResponse",
                    "type" => "dobot_v4_bringup/DIGroupResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DIGroupResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f2c8281e742dd72d2678aa27c9392fb28b894e171a76c5572f7e761d9943859b",
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
                    "symbol" => "Ros1Dobot_v4_bringupDORequest",
                    "type" => "dobot_v4_bringup/DORequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_217446154f7ccb7edfe8300a81eefa28b74ac62ed827815582d0fc94187fbce4",
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
                        },
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
                    "symbol" => "Ros1Dobot_v4_bringupDOResponse",
                    "type" => "dobot_v4_bringup/DOResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4d6137412e39525097890303751e6c4b961617716513dc9f2b97a8cf63f09f68",
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
                    "symbol" => "Ros1Dobot_v4_bringupDOGroupRequest",
                    "type" => "dobot_v4_bringup/DOGroupRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DOGroupRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6c5ae015279806913f33fa50fa9e9d52d89666db9a54e93b83838cce3bb836c7",
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
                    "symbol" => "Ros1Dobot_v4_bringupDOGroupResponse",
                    "type" => "dobot_v4_bringup/DOGroupResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DOGroupResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3c9906d6a26c050fc8cf0595fab79bb1c8477f17f2a0733bc0751d0c228f37e6",
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
                    "symbol" => "Ros1Dobot_v4_bringupDOInstantRequest",
                    "type" => "dobot_v4_bringup/DOInstantRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DOInstantRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f968dae5e7f68a2a1e1c32404558c63be2e8aec8ff023b0fbb3e026bb673aad4",
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
                    "symbol" => "Ros1Dobot_v4_bringupDOInstantResponse",
                    "type" => "dobot_v4_bringup/DOInstantResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DOInstantResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5a5d9e8621454763bfba5d951fea0fbc812392c05480eb9e3c68467be0205b80",
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
                    "symbol" => "Ros1Dobot_v4_bringupDisableRobotRequest",
                    "type" => "dobot_v4_bringup/DisableRobotRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DisableRobotRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c6e708a921cafac92702f7ac2a4d4d8a99bdca411c6c62c668d86c6b1246af8d",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupDisableRobotResponse",
                    "type" => "dobot_v4_bringup/DisableRobotResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DisableRobotResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_57dcc628039c6319ae3d47d4bee25019b22a516da860f7561231c4a31b198ca9",
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
                    "symbol" => "Ros1Dobot_v4_bringupDragSensivityRequest",
                    "type" => "dobot_v4_bringup/DragSensivityRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DragSensivityRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e34dfb6c394f5fd6d364731a6edd4d7911c27984ae9c60ec20fb2e622bb65441",
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
                    "symbol" => "Ros1Dobot_v4_bringupDragSensivityResponse",
                    "type" => "dobot_v4_bringup/DragSensivityResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/DragSensivityResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_519737a35d454c88bdae4aaeffc61034760b17b845b3b2266f6ad6098601cd76",
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
                    "symbol" => "Ros1Dobot_v4_bringupEmergencyStopRequest",
                    "type" => "dobot_v4_bringup/EmergencyStopRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/EmergencyStopRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_751a963045462cb152b6149d95f78f18be48efd3c34cddd43920b6df82363499",
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
                    "symbol" => "Ros1Dobot_v4_bringupEmergencyStopResponse",
                    "type" => "dobot_v4_bringup/EmergencyStopResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/EmergencyStopResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5d4c00864d6e596dd996a12f3e13433bc25c75a21c7dd59c98aac974b42b5b8e",
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
                    "symbol" => "Ros1Dobot_v4_bringupEnableRobotRequest",
                    "type" => "dobot_v4_bringup/EnableRobotRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/EnableRobotRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9a90b41b0ae5a740685220749838870540605b68d6ed85f5cdf56e218890d53b",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupEnableRobotResponse",
                    "type" => "dobot_v4_bringup/EnableRobotResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/EnableRobotResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1c645bec5758f33cc9dc330ca00591e042088ac27794c76f670e1d0a52a869c9",
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
                    "symbol" => "Ros1Dobot_v4_bringupEnableSafeSkinRequest",
                    "type" => "dobot_v4_bringup/EnableSafeSkinRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/EnableSafeSkinRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_808633a5f3d4d6957be1585bae876d0b40f46c7fdec3a5df0e8161473fe989cf",
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
                    "symbol" => "Ros1Dobot_v4_bringupEnableSafeSkinResponse",
                    "type" => "dobot_v4_bringup/EnableSafeSkinResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/EnableSafeSkinResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fb8254b1bc58adce25fcffb34d9bdcf5a4e07b6ab11ea4a91b449bf2917f3310",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetAORequest",
                    "type" => "dobot_v4_bringup/GetAORequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetAORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6edf6d9edc215d7cdc0d4c2027be30c4c6f4a62b08882e4a80a49bf714fe6766",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetAOResponse",
                    "type" => "dobot_v4_bringup/GetAOResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetAOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a2471d7551b75a07f5f567140cbfd17a9b6f7caf94d318188fc50d5e15dd2746",
                    "minimum" => 8,
                    "maximum" => 264,
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
                            "name" => "robot_return",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetAngleRequest",
                    "type" => "dobot_v4_bringup/GetAngleRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetAngleRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_16c02d9ba6329342c29a8819abe4fd8f48e8267f8ff2dbec35ede12905a611d0",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupGetAngleResponse",
                    "type" => "dobot_v4_bringup/GetAngleResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetAngleResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4fe5219badc2c657bd42c12ea64e9c5dab3365bb3c37246a29ed8bd3ae8e22f5",
                    "minimum" => 8,
                    "maximum" => 264,
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
                            "name" => "robot_return",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetCoilsRequest",
                    "type" => "dobot_v4_bringup/GetCoilsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetCoilsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_db257b1f763246d21165a2bc458ed7a46aa556d9a96d088c730e6372e3d2fb92",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetCoilsResponse",
                    "type" => "dobot_v4_bringup/GetCoilsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetCoilsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4a6d5b73423a5f0f8097d7ca7475d0843182b48110da4aace20a74f95f6dafc5",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetCurrentCommandIdRequest",
                    "type" => "dobot_v4_bringup/GetCurrentCommandIdRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetCurrentCommandIdRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8b2749c6976e425cfc622010d79df2e9528097e1941c454d7f6f4f5f5fc54e8d",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupGetCurrentCommandIdResponse",
                    "type" => "dobot_v4_bringup/GetCurrentCommandIdResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetCurrentCommandIdResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_565405eaf7f5fcac5ae019988c00f2899cea6ff4c4250a67005b06887f1ae5ac",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetDORequest",
                    "type" => "dobot_v4_bringup/GetDORequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetDORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_19195b8cf21c0a7cae4fe54c048b2503c2a9908cdf31e38bdabff62c70d961d2",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetDOResponse",
                    "type" => "dobot_v4_bringup/GetDOResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetDOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a92d0f090fddd9ad8f59c65806847c6398245fa2bbd5b4b39fe37819710bdd11",
                    "minimum" => 8,
                    "maximum" => 264,
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
                            "name" => "robot_return",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetDOGroupRequest",
                    "type" => "dobot_v4_bringup/GetDOGroupRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetDOGroupRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9beafb5ca7d5b030df02f8d5f31a84dd88cc1e517cd4a77452ebfab11f3da2e5",
                    "minimum" => 4,
                    "maximum" => 68,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "index_group",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetDOGroupResponse",
                    "type" => "dobot_v4_bringup/GetDOGroupResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetDOGroupResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1796d32cb1299efd973c1e4dececb02d8de2fc808f51301b9fc879074d5b8ff8",
                    "minimum" => 8,
                    "maximum" => 264,
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
                            "name" => "robot_return",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetErrorIDRequest",
                    "type" => "dobot_v4_bringup/GetErrorIDRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetErrorIDRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f5ddee0cd0b4a7957f7383fba800ed224d777a10f4131f9c8e58f08cfa2725af",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupGetErrorIDResponse",
                    "type" => "dobot_v4_bringup/GetErrorIDResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetErrorIDResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_441486082ce57caa45b1c8bcf59c8e030121ccf2c02a768bad75cf48251912ad",
                    "minimum" => 8,
                    "maximum" => 72,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "error_id",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetHoldRegsRequest",
                    "type" => "dobot_v4_bringup/GetHoldRegsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetHoldRegsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3650c4e191a889cef5e991e5e0addd3ef179e1e2a97701c45ccc52983732665f",
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
                            "name" => "valType",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetHoldRegsResponse",
                    "type" => "dobot_v4_bringup/GetHoldRegsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetHoldRegsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b1cc22537d26e548a8e6af625e1834eb6e2b72583c8fcfd670fbfdc3f02af7c9",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetInBitsRequest",
                    "type" => "dobot_v4_bringup/GetInBitsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetInBitsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_211d7c410772f45147665b8006d620537cb9882f1458b913418b7366ea78b589",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetInBitsResponse",
                    "type" => "dobot_v4_bringup/GetInBitsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetInBitsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_cc0a3d63f3ddd678b5a6e634bd08e2bf2bd4ef3da044e113ef7c6bc26a58c330",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetInRegsRequest",
                    "type" => "dobot_v4_bringup/GetInRegsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetInRegsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bbe0aa5f578101e5b6fb5fbec91d1709dc2300534dbcbd0477703ac031a83906",
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
                            "name" => "valType",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetInRegsResponse",
                    "type" => "dobot_v4_bringup/GetInRegsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetInRegsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bc6b6dddf948716f9aecdcf7c63a76e3ab7af2e9c1a1d89963a2b98f03072bc4",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetInputBoolRequest",
                    "type" => "dobot_v4_bringup/GetInputBoolRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetInputBoolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_af3ba33796db3f3ba7797d8f906d6dc05045046195f269e919476a20291a28cc",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "address",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetInputBoolResponse",
                    "type" => "dobot_v4_bringup/GetInputBoolResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetInputBoolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_dfe96bdd3f71be06416875e14d869467b372eb527a771521819c8c175bc0b97d",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetInputFloatRequest",
                    "type" => "dobot_v4_bringup/GetInputFloatRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetInputFloatRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_49735777bcc4877ea6258cbd7e78b7eff3e4bf755a06aff3349e8209717aa30f",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "address",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetInputFloatResponse",
                    "type" => "dobot_v4_bringup/GetInputFloatResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetInputFloatResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b416d69f80a62975bd44ed6ae96b661e3fefab6a6fa4e7502b95e8b58a34c9dc",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetInputIntRequest",
                    "type" => "dobot_v4_bringup/GetInputIntRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetInputIntRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2c8f2a7af769f2b7deb8424c85cabf8b2d20724123814db147d3e730db5c63be",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "address",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetInputIntResponse",
                    "type" => "dobot_v4_bringup/GetInputIntResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetInputIntResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_dd5128340e3165bbbede1cdda7ed5a9f2bd581cc784d7ae9574cc901ce75fa74",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetOutputBoolRequest",
                    "type" => "dobot_v4_bringup/GetOutputBoolRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetOutputBoolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e97f4a2a8f0ce7e0f0131882f8c8200362c0fe2566da4fcdd6306025acd33e82",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "address",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetOutputBoolResponse",
                    "type" => "dobot_v4_bringup/GetOutputBoolResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetOutputBoolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_af8f6ede73968ba90408f39db9ad6efdfb1191cc09fabd2f9e9a4178ca30e575",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetOutputFloatRequest",
                    "type" => "dobot_v4_bringup/GetOutputFloatRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetOutputFloatRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_990689595afde1ed64940238b7dd332e5f570e0242413c7cfe3ba0c5eebfa064",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "address",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetOutputFloatResponse",
                    "type" => "dobot_v4_bringup/GetOutputFloatResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetOutputFloatResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d63bd12901980b0c11cc5ab5a9b189fb28607a009273cd3ebd24ecc7ec32f41e",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetOutputIntRequest",
                    "type" => "dobot_v4_bringup/GetOutputIntRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetOutputIntRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9ab878fc3c207c7e4a06ca94cfe2bb7884abaf00486178014cc4b0a6eeebb0a8",
                    "minimum" => 4,
                    "maximum" => 4,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "address",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetOutputIntResponse",
                    "type" => "dobot_v4_bringup/GetOutputIntResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetOutputIntResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ea5487388ef99cbfed64ed989030505e48e86b129722e0316f2d31f8311417f9",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetPoseRequest",
                    "type" => "dobot_v4_bringup/GetPoseRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetPoseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b14d36ef472212b0064947960115f9227536b0c759748c9fb6c9fa6458d704bd",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupGetPoseResponse",
                    "type" => "dobot_v4_bringup/GetPoseResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetPoseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f19589706bd734833519083d4c8273fd8c2b570535b7617fea2384364b604f94",
                    "minimum" => 8,
                    "maximum" => 264,
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
                            "name" => "robot_return",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetStartPoseRequest",
                    "type" => "dobot_v4_bringup/GetStartPoseRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetStartPoseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b85c88ac53f37bbcec66d8507f254a034f3b293b79f06c567c0bf56b35cf0982",
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
                    "symbol" => "Ros1Dobot_v4_bringupGetStartPoseResponse",
                    "type" => "dobot_v4_bringup/GetStartPoseResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/GetStartPoseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0c6ab6a86912de5662ac8a4b70b92f2814b6bf0bc60ae4b8a3e6aea7597f4d4e",
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
                    "symbol" => "Ros1Dobot_v4_bringupInverseKinRequest",
                    "type" => "dobot_v4_bringup/InverseKinRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/InverseKinRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1fc643085bcd0497163c216049ede91418cdae716192a40200946df7b78c1593",
                    "minimum" => 64,
                    "maximum" => 1088,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "X",
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
                            "name" => "Y",
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
                            "name" => "Z",
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
                            "name" => "Rx",
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
                            "name" => "Ry",
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
                            "name" => "Rz",
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
                            "name" => "useJointNear",
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
                            "name" => "jointNear",
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
                            "name" => "user",
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
                            "name" => "tool",
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
                    "symbol" => "Ros1Dobot_v4_bringupInverseKinResponse",
                    "type" => "dobot_v4_bringup/InverseKinResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/InverseKinResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5a69917a9c3130c4c46715c919ef1d8ed3de7008d99f1ac5008dd2d6ebc675c7",
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
                    "symbol" => "Ros1Dobot_v4_bringupInverseSolutionRequest",
                    "type" => "dobot_v4_bringup/InverseSolutionRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/InverseSolutionRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4150dfc83a8068093066ac2fe63a2f9b1f2cc3698da4c42fc8972c9a620bf896",
                    "minimum" => 4,
                    "maximum" => 260,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "parameter",
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
                    "symbol" => "Ros1Dobot_v4_bringupInverseSolutionResponse",
                    "type" => "dobot_v4_bringup/InverseSolutionResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/InverseSolutionResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1530a9f8f40c2a470d09f448daffaddbcdef69f38b1465d63fc1bc911eab961c",
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
                    "symbol" => "Ros1Dobot_v4_bringupModbusCloseRequest",
                    "type" => "dobot_v4_bringup/ModbusCloseRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ModbusCloseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c00f96f924c6dd2acada1843246631cfb2c93debb4016a05aac6acdee33635fa",
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
                    "symbol" => "Ros1Dobot_v4_bringupModbusCloseResponse",
                    "type" => "dobot_v4_bringup/ModbusCloseResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ModbusCloseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2f5c36f5e16f70b47d1931b5bbd568d0f315c8b1dc50f69340327f0e30c4909e",
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
                    "symbol" => "Ros1Dobot_v4_bringupModbusCreateRequest",
                    "type" => "dobot_v4_bringup/ModbusCreateRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ModbusCreateRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_64da2676ebcc30b9e29ec04e635f05386a3ff347fa6df3ff493aa25e4d78b26d",
                    "minimum" => 16,
                    "maximum" => 272,
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
                            "name" => "isRTU",
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
                    "symbol" => "Ros1Dobot_v4_bringupModbusCreateResponse",
                    "type" => "dobot_v4_bringup/ModbusCreateResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ModbusCreateResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_32376a5b5a7a278cd7bc728ea0ffda38c64a16c35f595ce6b13b83372cbb083b",
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
                    "symbol" => "Ros1Dobot_v4_bringupModbusRTUCreateRequest",
                    "type" => "dobot_v4_bringup/ModbusRTUCreateRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ModbusRTUCreateRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_684c27217fe081396d625eb0809a3aa3eec48fda11e6ff0eebb315dddac6175d",
                    "minimum" => 20,
                    "maximum" => 276,
                    "semantics" => "",
                    "fields" => [
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
                            "name" => "baud",
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
                            "name" => "parity",
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
                            "name" => "data_bit",
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
                            "name" => "stop_bit",
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
                    "symbol" => "Ros1Dobot_v4_bringupModbusRTUCreateResponse",
                    "type" => "dobot_v4_bringup/ModbusRTUCreateResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ModbusRTUCreateResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_28a693e382f42f9edc460ef956a0b6108aebeaef33b8db6ae2625425963912df",
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
                    "symbol" => "Ros1Dobot_v4_bringupMovJRequest",
                    "type" => "dobot_v4_bringup/MovJRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/MovJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2d2d053541befd5bcd9a058f7f50709ed7a1ddf0caa743cd567187e467f99ae0",
                    "minimum" => 53,
                    "maximum" => 4213,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "mode",
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                    "symbol" => "Ros1Dobot_v4_bringupMovJResponse",
                    "type" => "dobot_v4_bringup/MovJResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/MovJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_921c511aec3f1fbf1fb965317b30be98aaeab757bb24052f27219083fe5012d0",
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
                    "symbol" => "Ros1Dobot_v4_bringupMovJIORequest",
                    "type" => "dobot_v4_bringup/MovJIORequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/MovJIORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6639020680bee5c91a094deba0a308821d7ee51c255cee6952f6773a43484193",
                    "minimum" => 57,
                    "maximum" => 8377,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "mode",
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                            "name" => "MDIS",
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
                    "symbol" => "Ros1Dobot_v4_bringupMovJIOResponse",
                    "type" => "dobot_v4_bringup/MovJIOResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/MovJIOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c410d54a6ab703948c0841151572e618741eb2441af100d68480eddf6cdb2e45",
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
                    "symbol" => "Ros1Dobot_v4_bringupMovLRequest",
                    "type" => "dobot_v4_bringup/MovLRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/MovLRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_72589769e592fb4d1bded8fc453ee435d45b11d94e5179cdf19f7e4bab04173f",
                    "minimum" => 53,
                    "maximum" => 4213,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "mode",
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                    "symbol" => "Ros1Dobot_v4_bringupMovLResponse",
                    "type" => "dobot_v4_bringup/MovLResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/MovLResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_04c674d611a52c37184c4b8991acbb81d9edda1185f5210082e9a77ba9dfcd6d",
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
                    "symbol" => "Ros1Dobot_v4_bringupMovLIORequest",
                    "type" => "dobot_v4_bringup/MovLIORequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/MovLIORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_df87ae10d55cdb0566a7ba522ce4df0f53b1c291e647ab8f073448280fdcd43f",
                    "minimum" => 57,
                    "maximum" => 8377,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "mode",
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                            "name" => "MDIS",
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
                    "symbol" => "Ros1Dobot_v4_bringupMovLIOResponse",
                    "type" => "dobot_v4_bringup/MovLIOResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/MovLIOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c9cb157242bbaa12d30ff4010775c96c4596668e07f1fffa18700f7f0aeeec47",
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
                    "symbol" => "Ros1Dobot_v4_bringupMoveJogRequest",
                    "type" => "dobot_v4_bringup/MoveJogRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/MoveJogRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_450e321ee26aed642b7e5bfb7b7faec3ac86c3cce7d03e61bceea90ec0a195d4",
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
                    "symbol" => "Ros1Dobot_v4_bringupMoveJogResponse",
                    "type" => "dobot_v4_bringup/MoveJogResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/MoveJogResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d7fcf1ce9c2d2ccc437ca0fc9abe4963bdf6ca6ce7f549e130286f14fe5f6781",
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
                    "symbol" => "Ros1Dobot_v4_bringupPauseRequest",
                    "type" => "dobot_v4_bringup/PauseRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/PauseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a3cbf1728596a646540afd89a3de57662a65b53cd973098a97e604ea9e8c5f79",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupPauseResponse",
                    "type" => "dobot_v4_bringup/PauseResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/PauseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_67fc61818824bc4608b94d2af853eee7835331d0d4b64cb62f98f08ec2050030",
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
                    "symbol" => "Ros1Dobot_v4_bringupPositiveKinRequest",
                    "type" => "dobot_v4_bringup/PositiveKinRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/PositiveKinRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_591cc2000db7e9c1bd10f43c28ec13dc902d3f8ab5c37ff7a9f9ca080d26bccc",
                    "minimum" => 56,
                    "maximum" => 568,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "J1",
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
                            "name" => "J2",
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
                            "name" => "J3",
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
                            "name" => "J4",
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
                            "name" => "J5",
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
                            "name" => "J6",
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
                            "name" => "tool",
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
                    "symbol" => "Ros1Dobot_v4_bringupPositiveKinResponse",
                    "type" => "dobot_v4_bringup/PositiveKinResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/PositiveKinResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a06a04b9c67a9891835877ce46bdbc9a6d56cc9880798b4534154c0695b5606a",
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
                    "symbol" => "Ros1Dobot_v4_bringupPowerOnRequest",
                    "type" => "dobot_v4_bringup/PowerOnRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/PowerOnRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_febf93c0dc17185154a3ad45760e9aa3b22642fb5c7c86ac3269befcb9e2a27c",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupPowerOnResponse",
                    "type" => "dobot_v4_bringup/PowerOnResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/PowerOnResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_083b811d381b30810ae8741b69bfc8c18634f4003f0216ce535dc2187c337622",
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
                    "symbol" => "Ros1Dobot_v4_bringupRelJointMovJRequest",
                    "type" => "dobot_v4_bringup/RelJointMovJRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RelJointMovJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_03f3ee9c0715609f67b971e2588df919c7a23ea6bf3a520ba737e4d1e1c08141",
                    "minimum" => 52,
                    "maximum" => 4212,
                    "semantics" => "",
                    "fields" => [
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                    "symbol" => "Ros1Dobot_v4_bringupRelJointMovJResponse",
                    "type" => "dobot_v4_bringup/RelJointMovJResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RelJointMovJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3ba9eb45a9f54a9f705c20ec1cce417003d702415cf0fc1280694e226c54084f",
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
                    "symbol" => "Ros1Dobot_v4_bringupRelMovJToolRequest",
                    "type" => "dobot_v4_bringup/RelMovJToolRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RelMovJToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7f7882c7e426f08ad98387385892480255a9824c5ca72c424f8424ceae14e621",
                    "minimum" => 52,
                    "maximum" => 4212,
                    "semantics" => "",
                    "fields" => [
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                    "symbol" => "Ros1Dobot_v4_bringupRelMovJToolResponse",
                    "type" => "dobot_v4_bringup/RelMovJToolResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RelMovJToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3173c722c2d008f6e7964d46324d691863810f1b98904fb8f56cf4a1f97b6fdc",
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
                    "symbol" => "Ros1Dobot_v4_bringupRelMovJUserRequest",
                    "type" => "dobot_v4_bringup/RelMovJUserRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RelMovJUserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_12612601f4b55c9c84b6822877d95821ac1aec746eac88e24b17dd352f2d63b8",
                    "minimum" => 52,
                    "maximum" => 4212,
                    "semantics" => "",
                    "fields" => [
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                    "symbol" => "Ros1Dobot_v4_bringupRelMovJUserResponse",
                    "type" => "dobot_v4_bringup/RelMovJUserResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RelMovJUserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c29d480624bcb6db26ed0b3e38f7183135f13be6412a93a6bcdd1efd46428489",
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
                    "symbol" => "Ros1Dobot_v4_bringupRelMovLToolRequest",
                    "type" => "dobot_v4_bringup/RelMovLToolRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RelMovLToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_11c9c4d6308ddc948238fce13e554bfba93ef74e6f6cb1086ee02bd2818709ce",
                    "minimum" => 52,
                    "maximum" => 4212,
                    "semantics" => "",
                    "fields" => [
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                    "symbol" => "Ros1Dobot_v4_bringupRelMovLToolResponse",
                    "type" => "dobot_v4_bringup/RelMovLToolResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RelMovLToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bfe57ec92c1f5cc5251706b273b15cae12d35ed49463b47008027272c5d51236",
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
                    "symbol" => "Ros1Dobot_v4_bringupRelMovLUserRequest",
                    "type" => "dobot_v4_bringup/RelMovLUserRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RelMovLUserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7eec6fcd3cac592a1f516e25e58e3b5bd5da693c08fe5df4cadf294147d4e591",
                    "minimum" => 52,
                    "maximum" => 4212,
                    "semantics" => "",
                    "fields" => [
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                    "symbol" => "Ros1Dobot_v4_bringupRelMovLUserResponse",
                    "type" => "dobot_v4_bringup/RelMovLUserResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RelMovLUserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_054f03b4d48cded4e1712243f4d5eb8b989a16124b4202ab42b0e634997b472c",
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
                    "symbol" => "Ros1Dobot_v4_bringupRobotModeRequest",
                    "type" => "dobot_v4_bringup/RobotModeRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RobotModeRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_db094c3c5c75ecc89ac3be728e54b84fb5354509cf7632263f6797df9db109c7",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupRobotModeResponse",
                    "type" => "dobot_v4_bringup/RobotModeResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RobotModeResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f501109846c455fc295cd94a65059561dfee05fc6755573801460fe140bf6e40",
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
                    "symbol" => "Ros1Dobot_v4_bringupRunScriptRequest",
                    "type" => "dobot_v4_bringup/RunScriptRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RunScriptRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_45c7863ab78220099ce9ad559ac406d490317ac47ef35d662cdf9ef64774ec98",
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
                    "symbol" => "Ros1Dobot_v4_bringupRunScriptResponse",
                    "type" => "dobot_v4_bringup/RunScriptResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/RunScriptResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bbe00f0e717c2efe2ff2f2b42985635e9813dbabb584d814a335e447a85d0209",
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
                    "symbol" => "Ros1Dobot_v4_bringupServoJRequest",
                    "type" => "dobot_v4_bringup/ServoJRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ServoJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8c9b347c879ceef3a11dfcfc0fc2ada53897da98b02d9dee443784e25471ed51",
                    "minimum" => 52,
                    "maximum" => 4212,
                    "semantics" => "",
                    "fields" => [
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                    "symbol" => "Ros1Dobot_v4_bringupServoJResponse",
                    "type" => "dobot_v4_bringup/ServoJResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ServoJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a0391d4e27035d998781aedc40c4098c8ff026cc8808a8888dd322ecb91446c1",
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
                    "symbol" => "Ros1Dobot_v4_bringupServoPRequest",
                    "type" => "dobot_v4_bringup/ServoPRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ServoPRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0ec8a39a2ec5e21509b6012a05ac9af8c71f4e268079bc611519fd397bd4ea8e",
                    "minimum" => 52,
                    "maximum" => 4212,
                    "semantics" => "",
                    "fields" => [
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
                            "name" => "d",
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
                            "name" => "e",
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
                            "name" => "f",
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
                    "symbol" => "Ros1Dobot_v4_bringupServoPResponse",
                    "type" => "dobot_v4_bringup/ServoPResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ServoPResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_534495c7b3b9faed99ab16dd7c20ba75a0d603b146a4fdff3285109630915104",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetBackDistanceRequest",
                    "type" => "dobot_v4_bringup/SetBackDistanceRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetBackDistanceRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_adcf7f43e4a0bed230f8a1c884fed6fa9fc905f06f5b2a5d8e7423eba6b43678",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "distance",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetBackDistanceResponse",
                    "type" => "dobot_v4_bringup/SetBackDistanceResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetBackDistanceResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_48b61c9636dd4d31c3913e6bb59786ddc18d32e376ff86b5dd05cd9899933afe",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetCoilsRequest",
                    "type" => "dobot_v4_bringup/SetCoilsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetCoilsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d2c663c0cd38d7aae9af549af9f152da09208ba3ce16fd573241b9f0b99d2073",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetCoilsResponse",
                    "type" => "dobot_v4_bringup/SetCoilsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetCoilsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c3bea118bd8b50d72266258c8cbcaa8db4528cdcc85e4c7234f50c6429f1f4f7",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetCollisionLevelRequest",
                    "type" => "dobot_v4_bringup/SetCollisionLevelRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetCollisionLevelRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_95070390623bee07bf7b44485a93ab842dc625bd7f888fa2a396081d276cccfc",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetCollisionLevelResponse",
                    "type" => "dobot_v4_bringup/SetCollisionLevelResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetCollisionLevelResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_324d9b64e48fa00ed7f6af2340626606c8dd0ba2600cda102795b035a57a5c9f",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetHoldRegsRequest",
                    "type" => "dobot_v4_bringup/SetHoldRegsRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetHoldRegsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ce0be97769833910877870774a7c09712b508d0d5e85f667bb035078cf5930c3",
                    "minimum" => 20,
                    "maximum" => 532,
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
                            "name" => "valType",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetHoldRegsResponse",
                    "type" => "dobot_v4_bringup/SetHoldRegsResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetHoldRegsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a229c428efede3153687496efa244e092b74a6c2005f1423c50a7a90e21f7e7b",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetOutputBoolRequest",
                    "type" => "dobot_v4_bringup/SetOutputBoolRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetOutputBoolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4dc10539aa485449c8f65b7ad655c5c717d0c76c41fa716701e9cf5d6e7d97e9",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "address",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetOutputBoolResponse",
                    "type" => "dobot_v4_bringup/SetOutputBoolResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetOutputBoolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b43783a0f3182850b9202524236865cc1bb5cb20ee6a89591254ca04be13569a",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetOutputFloatRequest",
                    "type" => "dobot_v4_bringup/SetOutputFloatRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetOutputFloatRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e11b4f70006a95e074cf18a7c890bf33e0d2f387e881a953bad162926fe05f50",
                    "minimum" => 12,
                    "maximum" => 12,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "address",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetOutputFloatResponse",
                    "type" => "dobot_v4_bringup/SetOutputFloatResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetOutputFloatResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_653b5afbd26aab760b89953a1c3743bf0fa4b1b2380b9f38b6f3fcb53f0ddfba",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetOutputIntRequest",
                    "type" => "dobot_v4_bringup/SetOutputIntRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetOutputIntRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_54cfb622d13838cc5e615d9defaccac8afeb3f4892af057eccf5a19a64d5f8ff",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "address",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetOutputIntResponse",
                    "type" => "dobot_v4_bringup/SetOutputIntResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetOutputIntResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0d7a10823e931d77cc176cd8546bbb4acbe9f785ff85f7b82c692022d963d9c8",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetPayloadRequest",
                    "type" => "dobot_v4_bringup/SetPayloadRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetPayloadRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f595c502f4b08f1d2cffbd7f5a03e468f544acd0cfb4e3b8c162b9597baa6d00",
                    "minimum" => 32,
                    "maximum" => 32,
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
                        },
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
                    "symbol" => "Ros1Dobot_v4_bringupSetPayloadResponse",
                    "type" => "dobot_v4_bringup/SetPayloadResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetPayloadResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_48b853fc66e97448549a9c89d644dac6be37cd5482ed23eb6a5e966bd9a3fc5a",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetPostCollisionModeRequest",
                    "type" => "dobot_v4_bringup/SetPostCollisionModeRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetPostCollisionModeRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0545d1a4bb62c939cb3a555bb86c8d1451c0a94fb5f58161cce4a00a69317ca1",
                    "minimum" => 4,
                    "maximum" => 4,
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
                        }
                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupSetPostCollisionModeResponse",
                    "type" => "dobot_v4_bringup/SetPostCollisionModeResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetPostCollisionModeResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2c4ded3d9403c49014bb1aaa918df2298e2b1ea0879de86dcdc7afa9c74a13ca",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetSafeSkinRequest",
                    "type" => "dobot_v4_bringup/SetSafeSkinRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetSafeSkinRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_286a323ff9b51342a23b7c9befae1957ee665b168085693211752f07100043a5",
                    "minimum" => 8,
                    "maximum" => 8,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "part",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetSafeSkinResponse",
                    "type" => "dobot_v4_bringup/SetSafeSkinResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetSafeSkinResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_428dd7f45382c6a5ebe42c6ddb9f17fc6b01c7ed776aecf2c9f9570448da3410",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetSafeWallEnableRequest",
                    "type" => "dobot_v4_bringup/SetSafeWallEnableRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetSafeWallEnableRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e6bef1c1d7179067d1462e9e907c460de545291a2667edd848d98d315f3c3752",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetSafeWallEnableResponse",
                    "type" => "dobot_v4_bringup/SetSafeWallEnableResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetSafeWallEnableResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7f0d58947a5f34736a3c5a9636d635bd491687c3f2c893f1518ea5541b762eb9",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetToolRequest",
                    "type" => "dobot_v4_bringup/SetToolRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_234d8c421ca776a041338014ac44f72771adaf6ff651ba106860f046a8c08be6",
                    "minimum" => 8,
                    "maximum" => 264,
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
                    "symbol" => "Ros1Dobot_v4_bringupSetToolResponse",
                    "type" => "dobot_v4_bringup/SetToolResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_61868fe36fc4a8662d3a9f49fb85a4cb634ea4cf75aa605df90483f068f8b58b",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetTool485Request",
                    "type" => "dobot_v4_bringup/SetTool485Request",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetTool485Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7e2ae0a5cf35e88a8a75cea89420a1ff2d98b105ba632b1e8e1f79243cad0f23",
                    "minimum" => 16,
                    "maximum" => 272,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "baudrate",
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
                            "name" => "parity",
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
                            "name" => "stop",
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
                            "name" => "identify",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetTool485Response",
                    "type" => "dobot_v4_bringup/SetTool485Response",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetTool485Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_480290ba112a8b97a9bb095b562a4785163ac5eef16456d7f0d71aecd261b106",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetToolModeRequest",
                    "type" => "dobot_v4_bringup/SetToolModeRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetToolModeRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4d5f4cc539ac40ca9e1a3391a8ecec08bd21a7cf6786e446f0d7a5715e6602c6",
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
                            "name" => "type",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetToolModeResponse",
                    "type" => "dobot_v4_bringup/SetToolModeResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetToolModeResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_649722f4a14ae41877d63a3548e85d84c9a6806fea7d196e95edb36af1ef6e4c",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetToolPowerRequest",
                    "type" => "dobot_v4_bringup/SetToolPowerRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetToolPowerRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_cea4d794f6180bafb35e19e2e71af5a5a42292cb73e766c158a004c6f345d23d",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetToolPowerResponse",
                    "type" => "dobot_v4_bringup/SetToolPowerResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetToolPowerResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_eb775fbc240808c8ea01782321a17dbdeabbcf83fde9c216cd8e6f4cfec090fa",
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
                    "symbol" => "Ros1Dobot_v4_bringupSetUserRequest",
                    "type" => "dobot_v4_bringup/SetUserRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetUserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_eec1aad23f7d3246de4f87119f8290891020284f8bf3e4f8acef1e2bffb97e7f",
                    "minimum" => 8,
                    "maximum" => 264,
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
                    "symbol" => "Ros1Dobot_v4_bringupSetUserResponse",
                    "type" => "dobot_v4_bringup/SetUserResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SetUserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_da1d0c25b01b85a2269be1ec836cb0da150f8832bdd06ffc53d9d4f5deae2d8f",
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
                    "symbol" => "Ros1Dobot_v4_bringupSpeedFactorRequest",
                    "type" => "dobot_v4_bringup/SpeedFactorRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SpeedFactorRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4eab746249dee5320f3bc0d731d85eeb8060c60b65f204e6e833508ff3faef57",
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
                    "symbol" => "Ros1Dobot_v4_bringupSpeedFactorResponse",
                    "type" => "dobot_v4_bringup/SpeedFactorResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/SpeedFactorResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b448225f95253f9ce0a7012e38f01c908eef51a11a320849354ed7fc1f3b1f25",
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
                    "symbol" => "Ros1Dobot_v4_bringupStartDragRequest",
                    "type" => "dobot_v4_bringup/StartDragRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/StartDragRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2ede11b1e30e11d5ed503b7bc204770414f1bb33c9f2119c6b03b82969cafe13",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupStartDragResponse",
                    "type" => "dobot_v4_bringup/StartDragResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/StartDragResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_89cee72ba144cb297405a8fdea43615365becf766786ee720d031650281e19fe",
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
                    "symbol" => "Ros1Dobot_v4_bringupStartPathRequest",
                    "type" => "dobot_v4_bringup/StartPathRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/StartPathRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3b60e3b0507f96d0eb0b57d3505fb8ce1dcca24b7c2c4f085a6a4b112522b287",
                    "minimum" => 8,
                    "maximum" => 4424,
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
                    "symbol" => "Ros1Dobot_v4_bringupStartPathResponse",
                    "type" => "dobot_v4_bringup/StartPathResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/StartPathResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_02f4dd92d34dc45a6af3ccc2b502a191a9a2fbb20cb9e2a06d2c8b01a3584f5b",
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
                    "symbol" => "Ros1Dobot_v4_bringupStopRequest",
                    "type" => "dobot_v4_bringup/StopRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/StopRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_78ab4eea783ce8abe9194f8b2d616c24f964979810b362293fd98e91fc5f6944",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupStopResponse",
                    "type" => "dobot_v4_bringup/StopResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/StopResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1ce859a03909196a0930210187ca68de91d59e4342ab4b14cce539ca47deb658",
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
                    "symbol" => "Ros1Dobot_v4_bringupStopDragRequest",
                    "type" => "dobot_v4_bringup/StopDragRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/StopDragRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6dc356f2c21a015b15bac869f7b5b09546d439cc565ca1e975747da4f10fe1fa",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupStopDragResponse",
                    "type" => "dobot_v4_bringup/StopDragResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/StopDragResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9a31820a0cc661ee6a4a0353861278179d1eddd145559a15b8ae8a5ee0ca7b2b",
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
                    "symbol" => "Ros1Dobot_v4_bringupStopMoveJogRequest",
                    "type" => "dobot_v4_bringup/StopMoveJogRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/StopMoveJogRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_765c4ab2ea63c07eb4e7ce4154299c807fdffe0753ecbf534abf6ea19585ece4",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Dobot_v4_bringupStopMoveJogResponse",
                    "type" => "dobot_v4_bringup/StopMoveJogResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/StopMoveJogResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f462238c13bd0c400ff2b12654522ca62cf977fab46d7fa005b3657569024388",
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
                    "symbol" => "Ros1Dobot_v4_bringupTcpDashboardRequest",
                    "type" => "dobot_v4_bringup/TcpDashboardRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/TcpDashboardRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_988e229bfb04a13951a62933389efbc38eddc8e05ce5fc70cad3b73d308c7563",
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
                    "symbol" => "Ros1Dobot_v4_bringupTcpDashboardResponse",
                    "type" => "dobot_v4_bringup/TcpDashboardResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/TcpDashboardResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f1a6ef1b972cedaae3ebd9715ceb6ee42e954452b041d5049eb884e0fa339706",
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
                    "symbol" => "Ros1Dobot_v4_bringupToolRequest",
                    "type" => "dobot_v4_bringup/ToolRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3669e9fcacdc173c5f21c23ec0e37660297060da2f7729463a3d0c47e970e622",
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
                    "symbol" => "Ros1Dobot_v4_bringupToolResponse",
                    "type" => "dobot_v4_bringup/ToolResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_dc6e1fd014bfa55d4a20dad58f2f4a4c5affb997c20b9ba632fa95bb06bcfac5",
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
                    "symbol" => "Ros1Dobot_v4_bringupToolAIRequest",
                    "type" => "dobot_v4_bringup/ToolAIRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ToolAIRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b06a075924f700c691dd0d1c82ab595a2143fc34c4c894ac04a380f42b00f2cc",
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
                    "symbol" => "Ros1Dobot_v4_bringupToolAIResponse",
                    "type" => "dobot_v4_bringup/ToolAIResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ToolAIResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2daa4fde9a7192cd5443ef47bed4a4ada4f09dd3b061acb978749d6b33998ca9",
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
                    "symbol" => "Ros1Dobot_v4_bringupToolDIRequest",
                    "type" => "dobot_v4_bringup/ToolDIRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ToolDIRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_75272c99d4d77f910dbfd19e61f61a8bb5706076c16668532f4cd7b4cf8bf949",
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
                    "symbol" => "Ros1Dobot_v4_bringupToolDIResponse",
                    "type" => "dobot_v4_bringup/ToolDIResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ToolDIResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_26e9c240222943e006e4c8194ea789db5719d2243183fa6caa86cf00cf5319cc",
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
                    "symbol" => "Ros1Dobot_v4_bringupToolDORequest",
                    "type" => "dobot_v4_bringup/ToolDORequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ToolDORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4b3db5babcb1f5473c73c012caed742d0694602036cd862ff7435c3952ff48c5",
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
                    "symbol" => "Ros1Dobot_v4_bringupToolDOResponse",
                    "type" => "dobot_v4_bringup/ToolDOResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ToolDOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a47635396fe974009f299a094aaf67c9d2bccdffa501698202db1509c8ff7f92",
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
                    "symbol" => "Ros1Dobot_v4_bringupToolDOInstantRequest",
                    "type" => "dobot_v4_bringup/ToolDOInstantRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ToolDOInstantRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_991e0d49865375856a7bdacd55fabfa20def4e87ef5d66f021034115a14a3f60",
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
                    "symbol" => "Ros1Dobot_v4_bringupToolDOInstantResponse",
                    "type" => "dobot_v4_bringup/ToolDOInstantResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/ToolDOInstantResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_adb900e79eb6414a18e06232d805412c1f7855f5fb2092649e8ec9727872bcef",
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
                    "symbol" => "Ros1Dobot_v4_bringupUserRequest",
                    "type" => "dobot_v4_bringup/UserRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/UserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_49eaa2afaa3d556502d532fc34ffe98ee4bf07a13efcaf087ef7cb95f5b1aefe",
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
                    "symbol" => "Ros1Dobot_v4_bringupUserResponse",
                    "type" => "dobot_v4_bringup/UserResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/UserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6b295b759e0ff1df4853172d4aeb76a8fa9725088d4be7c5aefad507fba61212",
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
                    "symbol" => "Ros1Dobot_v4_bringupVelJRequest",
                    "type" => "dobot_v4_bringup/VelJRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/VelJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_65a75a22e3bc63eb0285537c53d961d9914ad7bd726d43bae830b716e47c048b",
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
                    "symbol" => "Ros1Dobot_v4_bringupVelJResponse",
                    "type" => "dobot_v4_bringup/VelJResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/VelJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0026c3603218e7fce5110658e05c662cadb38bd7e1c2eb1d534a460f684dba0a",
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
                    "symbol" => "Ros1Dobot_v4_bringupVelLRequest",
                    "type" => "dobot_v4_bringup/VelLRequest",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/VelLRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_43e94a364628f207a29aacfc0ae9f6d9e19b6ec3c908b82dcbb32213b81b9c7b",
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
                    "symbol" => "Ros1Dobot_v4_bringupVelLResponse",
                    "type" => "dobot_v4_bringup/VelLResponse",
                    "ros_version" => 1,
                    "native_type" => "dobot_v4_bringup/VelLResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_73b2cedcbfb536d3b706547f6f5f52f237e9c955674675dd686d857b3a4b2130",
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
