# @file records.rb
# @brief Complete original dobot/ros1_demo_v4 values.
# @details Every field, constant and quota delegates to the common Wire registry.
require "roswasm/wire"
module Uwvm
    module Dobot
        module Ros1DemoV4
            SCHEMAS = [
                {
                    "symbol" => "Ros1Rosdemo_v4AIRequest",
                    "type" => "rosdemo_v4/AIRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/AIRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9a9e9cb237b8b84e16ed75126eb9cc9bbefa432d79761b6354b4793bef909e75",
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
                    "symbol" => "Ros1Rosdemo_v4AIResponse",
                    "type" => "rosdemo_v4/AIResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/AIResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_272bd99c0de2e8a6a7147c6d23b4f87bb73a06f0d1cfc7e34ad746dceb14f24b",
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
                    "symbol" => "Ros1Rosdemo_v4AORequest",
                    "type" => "rosdemo_v4/AORequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/AORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_319c8b9779bf77eebe820eede387578c3ceec1ae877847f3060d2b4e35b0f184",
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
                    "symbol" => "Ros1Rosdemo_v4AOResponse",
                    "type" => "rosdemo_v4/AOResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/AOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ed70f14a69e472eacb757bc92edd7cf77a5f33b247f053e93aef41bc0c453e7c",
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
                    "symbol" => "Ros1Rosdemo_v4AOInstantRequest",
                    "type" => "rosdemo_v4/AOInstantRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/AOInstantRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b1f33ddccebb7e459bbc61fc121b541fbf400713bec097869885f12fc6ec19f6",
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
                    "symbol" => "Ros1Rosdemo_v4AOInstantResponse",
                    "type" => "rosdemo_v4/AOInstantResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/AOInstantResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7f025819db1b8e50ef5efd72ce5eb0ae17f37e6f886b447dfa9be45597a35447",
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
                    "symbol" => "Ros1Rosdemo_v4AccJRequest",
                    "type" => "rosdemo_v4/AccJRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/AccJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_03980d6dad09b302198eed3e268f89cbdccb6262088e15d7aece03e55be7b149",
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
                    "symbol" => "Ros1Rosdemo_v4AccJResponse",
                    "type" => "rosdemo_v4/AccJResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/AccJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6beeb4d555efe01650e515850d237a0975bd5e857212f6f96f06fede9ac0af1a",
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
                    "symbol" => "Ros1Rosdemo_v4AccLRequest",
                    "type" => "rosdemo_v4/AccLRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/AccLRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_05217bf256897d7a7ce48b7118f778aa017365618ee91fccd4d6c7df688fc85b",
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
                    "symbol" => "Ros1Rosdemo_v4AccLResponse",
                    "type" => "rosdemo_v4/AccLResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/AccLResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_58bbf77d78566356a9daf130bd2e06845f78cd6760925d3304b79047e617eba1",
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
                    "symbol" => "Ros1Rosdemo_v4ArcRequest",
                    "type" => "rosdemo_v4/ArcRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ArcRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_951088f16f6ef708a44ed7b36f032af570830dae415d4c95a1657f2c0fe92d30",
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
                    "symbol" => "Ros1Rosdemo_v4ArcResponse",
                    "type" => "rosdemo_v4/ArcResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ArcResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0559f4edf675e06a604831aafc73e0642730205670614c44ac043491db9621c9",
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
                    "symbol" => "Ros1Rosdemo_v4BrakeControlRequest",
                    "type" => "rosdemo_v4/BrakeControlRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/BrakeControlRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8a85af65d2b24e7c5ec3dc061dea6c36e984cc4583888d02df9047d209c572ca",
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
                    "symbol" => "Ros1Rosdemo_v4BrakeControlResponse",
                    "type" => "rosdemo_v4/BrakeControlResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/BrakeControlResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_cbb732b4d3b3abad69d3884f91e0044d4f3320eea779269871a262dcd2b66843",
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
                    "symbol" => "Ros1Rosdemo_v4CPRequest",
                    "type" => "rosdemo_v4/CPRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/CPRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_9cdde37097235a464151f45e43c20af287ffd607a1192601ddad6e30ba9c652e",
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
                    "symbol" => "Ros1Rosdemo_v4CPResponse",
                    "type" => "rosdemo_v4/CPResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/CPResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d16642a1f436105969397d24b57278e2e7f75af08af9ef7ec08dbc26abb631a9",
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
                    "symbol" => "Ros1Rosdemo_v4CalcToolRequest",
                    "type" => "rosdemo_v4/CalcToolRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/CalcToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_cee057e98be4aad3812ca9dbd2bfc346f00d8c2ae2c58bf5ca6ecc80563ee2eb",
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
                    "symbol" => "Ros1Rosdemo_v4CalcToolResponse",
                    "type" => "rosdemo_v4/CalcToolResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/CalcToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fbe531e715f88a71f704013292ea6a48475b94634d28b04a9bbf65a023f76d0e",
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
                    "symbol" => "Ros1Rosdemo_v4CalcUserRequest",
                    "type" => "rosdemo_v4/CalcUserRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/CalcUserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_496ac7695efe9f049e8a2ddbed51f547cc1e2ccc268f630fcf52fd0081049392",
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
                    "symbol" => "Ros1Rosdemo_v4CalcUserResponse",
                    "type" => "rosdemo_v4/CalcUserResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/CalcUserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_47513b8698e1a9ef2b026200673cda50bc300c4946ddae7a6988a6c5faee78a9",
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
                    "symbol" => "Ros1Rosdemo_v4CircleRequest",
                    "type" => "rosdemo_v4/CircleRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/CircleRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fdcfb4d2426629c4719a7362ac4fd4c54c025e06f44fdade1925791937ddb417",
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
                    "symbol" => "Ros1Rosdemo_v4CircleResponse",
                    "type" => "rosdemo_v4/CircleResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/CircleResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_04e542491c8d2698099aa505719d90c46c4fb413aacf3fb34aa78d4c73548789",
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
                    "symbol" => "Ros1Rosdemo_v4ClearErrorRequest",
                    "type" => "rosdemo_v4/ClearErrorRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ClearErrorRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5e7a728e3f4e78c12984902bd10fe1be54c380a6e7fb8c5f75afb27e36ac6120",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4ClearErrorResponse",
                    "type" => "rosdemo_v4/ClearErrorResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ClearErrorResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_da3ce8d9a3ae2aa8ecf923831bef5424518e4c32c0fa38b38782806af2596d62",
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
                    "symbol" => "Ros1Rosdemo_v4ContinueRequest",
                    "type" => "rosdemo_v4/ContinueRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ContinueRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_397f44d553c5c2fd64cc769a6c6143d3c13922f44fe84c4be809a91e65c47f72",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4ContinueResponse",
                    "type" => "rosdemo_v4/ContinueResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ContinueResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0851e7d86a155b8a92c08c033bf0f3c99427aaaeec807012259587624fb1b804",
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
                    "symbol" => "Ros1Rosdemo_v4DIRequest",
                    "type" => "rosdemo_v4/DIRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DIRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c87cdf10373272a55ac886bf1b0e21d3e7f9c54f0b3a4100d4562ea4c853e4b0",
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
                    "symbol" => "Ros1Rosdemo_v4DIResponse",
                    "type" => "rosdemo_v4/DIResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DIResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b9d1df9f63e84d8f121925e064f96b42d573927b0002f41ca87607cf2f3db99f",
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
                    "symbol" => "Ros1Rosdemo_v4DIGroupRequest",
                    "type" => "rosdemo_v4/DIGroupRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DIGroupRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f5ff525bb19137564db6b5266d5b3465008dd4e3f823e0d8c7b03cce7741f0f9",
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
                    "symbol" => "Ros1Rosdemo_v4DIGroupResponse",
                    "type" => "rosdemo_v4/DIGroupResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DIGroupResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1877d17f23719422e09490e6d1e42cbe19bd736296c42e56be43e4c095886dc0",
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
                    "symbol" => "Ros1Rosdemo_v4DORequest",
                    "type" => "rosdemo_v4/DORequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_38f733bcf75506efdf78db21a9e021542b122315c16f6046cd1aca359a6270cd",
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
                    "symbol" => "Ros1Rosdemo_v4DOResponse",
                    "type" => "rosdemo_v4/DOResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2f59e1fc82fb86b1fce1ba23107e26f88d04e040f846b0bcac7c2a3b4861c9c8",
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
                    "symbol" => "Ros1Rosdemo_v4DOGroupRequest",
                    "type" => "rosdemo_v4/DOGroupRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DOGroupRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c291ef8a18c357312306bec37932f42de195523bfa594e2978a69db021074cd2",
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
                    "symbol" => "Ros1Rosdemo_v4DOGroupResponse",
                    "type" => "rosdemo_v4/DOGroupResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DOGroupResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_dbca29796476fc2dacc1a8641bdc12643ff6202193cc5be6e1793ef18fb2394b",
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
                    "symbol" => "Ros1Rosdemo_v4DOInstantRequest",
                    "type" => "rosdemo_v4/DOInstantRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DOInstantRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e7bb078201c77bdd326c2e1c92199dddefab78d4f3253b2a910ff2875bd2b878",
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
                    "symbol" => "Ros1Rosdemo_v4DOInstantResponse",
                    "type" => "rosdemo_v4/DOInstantResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DOInstantResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_83ace895a553d20bd1b6e6e5731dc68fc7089543b0ebe103eb16f55554fa0dc5",
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
                    "symbol" => "Ros1Rosdemo_v4DisableRobotRequest",
                    "type" => "rosdemo_v4/DisableRobotRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DisableRobotRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ef74ada028c3cc15b11da2ac3f3d583f3667f953bfe75d3cbeda2790a4c15bcc",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4DisableRobotResponse",
                    "type" => "rosdemo_v4/DisableRobotResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DisableRobotResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_311d984435af0017644139b36f80deb046000d1bb6270bda9c746f05600a5521",
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
                    "symbol" => "Ros1Rosdemo_v4DragSensivityRequest",
                    "type" => "rosdemo_v4/DragSensivityRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DragSensivityRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6fea90c5de6e58f95d2b2a173c0ff4d06dcd68fc564a9b9e4c2fc57576e5ef38",
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
                    "symbol" => "Ros1Rosdemo_v4DragSensivityResponse",
                    "type" => "rosdemo_v4/DragSensivityResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/DragSensivityResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f3e5b64cd5dd322783d86fcc4c7520a9817a6931b8b789139695cbc72be88003",
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
                    "symbol" => "Ros1Rosdemo_v4EmergencyStopRequest",
                    "type" => "rosdemo_v4/EmergencyStopRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/EmergencyStopRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_29e3801ce5fd22b8b46d56855146fb277fd7a70d0bd839a976bd2b1cc8e6ef0c",
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
                    "symbol" => "Ros1Rosdemo_v4EmergencyStopResponse",
                    "type" => "rosdemo_v4/EmergencyStopResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/EmergencyStopResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6ad7f402c9044401904b708335f56fc566965a1eba1e438257fdedf2a0ef79d0",
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
                    "symbol" => "Ros1Rosdemo_v4EnableRobotRequest",
                    "type" => "rosdemo_v4/EnableRobotRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/EnableRobotRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_50fa5b29527f53d986f0fdfe5ac40cccccea2723aa28a1bda183ea85437ab1d9",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4EnableRobotResponse",
                    "type" => "rosdemo_v4/EnableRobotResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/EnableRobotResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_58f12f2a31c801ccf5e3b292645b72e979524c26a70d71c628ad73802a1369d5",
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
                    "symbol" => "Ros1Rosdemo_v4EnableSafeSkinRequest",
                    "type" => "rosdemo_v4/EnableSafeSkinRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/EnableSafeSkinRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_cd375695f4654cbd46d759a017a5f298f1e168e5f3d0df6df8ab5c3c7afb5a7c",
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
                    "symbol" => "Ros1Rosdemo_v4EnableSafeSkinResponse",
                    "type" => "rosdemo_v4/EnableSafeSkinResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/EnableSafeSkinResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2d45e73631c4070c003de548b4e333eef29e64011d9ab6d92089f2dec8ca0ae9",
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
                    "symbol" => "Ros1Rosdemo_v4GetAORequest",
                    "type" => "rosdemo_v4/GetAORequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetAORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_926de338371ec01a402be7c060b5847a12f29a986f7d79547214709be7a8b60b",
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
                    "symbol" => "Ros1Rosdemo_v4GetAOResponse",
                    "type" => "rosdemo_v4/GetAOResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetAOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e00e5c6759d8f828d17a7ed4adbaec5196bf1176460267a555bc877946220ae3",
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
                    "symbol" => "Ros1Rosdemo_v4GetAngleRequest",
                    "type" => "rosdemo_v4/GetAngleRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetAngleRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0e6595e26df9c6a6c1b11d1b0d0be17eb12ce5811ea3b58415618703e63e4bf1",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4GetAngleResponse",
                    "type" => "rosdemo_v4/GetAngleResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetAngleResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_510fe33c83f2eb89bc3d181661431b5da8a99a9b51760596e2858fd1542327a5",
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
                    "symbol" => "Ros1Rosdemo_v4GetCoilsRequest",
                    "type" => "rosdemo_v4/GetCoilsRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetCoilsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_97eeaeae27ad4a42c2fd3286e6a7d87fe31409d8ca1f4e893221be3494c809ba",
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
                    "symbol" => "Ros1Rosdemo_v4GetCoilsResponse",
                    "type" => "rosdemo_v4/GetCoilsResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetCoilsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c10ce78d0c2c94a78ba606699c5adc2177b8207249f80c9c793955aae21184fd",
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
                    "symbol" => "Ros1Rosdemo_v4GetCurrentCommandIdRequest",
                    "type" => "rosdemo_v4/GetCurrentCommandIdRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetCurrentCommandIdRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c54881bb35c2390e1927166762f690a2c89938216a61f27a69cc710e5b10a6fc",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4GetCurrentCommandIdResponse",
                    "type" => "rosdemo_v4/GetCurrentCommandIdResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetCurrentCommandIdResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8bc582ffa6eb0003de3b76adbc9f08e538214d6b216b19b7ac817ca946f3cee9",
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
                    "symbol" => "Ros1Rosdemo_v4GetDORequest",
                    "type" => "rosdemo_v4/GetDORequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetDORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_529aab0c8d5268a6e4ac526eee3156061db0dfc197d79750f0937477c235ef13",
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
                    "symbol" => "Ros1Rosdemo_v4GetDOResponse",
                    "type" => "rosdemo_v4/GetDOResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetDOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_40d66623d9a4ee294c3be28fc27fdec008f35f2d74dd96ee08b37fd7f7f0f53c",
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
                    "symbol" => "Ros1Rosdemo_v4GetDOGroupRequest",
                    "type" => "rosdemo_v4/GetDOGroupRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetDOGroupRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4a04a61c965ec8d64f74772c2572b1e80314ce484955e0cf2f874d33fa8d0fab",
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
                    "symbol" => "Ros1Rosdemo_v4GetDOGroupResponse",
                    "type" => "rosdemo_v4/GetDOGroupResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetDOGroupResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_025adf89234f29f92487e3383ac840a91ce7365af469eca51ffb4a02757ad08c",
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
                    "symbol" => "Ros1Rosdemo_v4GetErrorIDRequest",
                    "type" => "rosdemo_v4/GetErrorIDRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetErrorIDRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7384e3f38489c046e1da3bd095fb0f9f1d7ab3ecff0c9f0a6f902afeb42a6afa",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4GetErrorIDResponse",
                    "type" => "rosdemo_v4/GetErrorIDResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetErrorIDResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_04905126039b83561b99944a9f8fa997df0d33dc34a5c7fe5b5c9904bd801f8c",
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
                    "symbol" => "Ros1Rosdemo_v4GetHoldRegsRequest",
                    "type" => "rosdemo_v4/GetHoldRegsRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetHoldRegsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_25c39e4774f962695d516aa5f727c1fc75c1999b05dad0e466d0e8f559768f4b",
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
                    "symbol" => "Ros1Rosdemo_v4GetHoldRegsResponse",
                    "type" => "rosdemo_v4/GetHoldRegsResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetHoldRegsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_dd4564730e4960e4cd81b0315db69c80d188937af6ac664788568e4e94613086",
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
                    "symbol" => "Ros1Rosdemo_v4GetInBitsRequest",
                    "type" => "rosdemo_v4/GetInBitsRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetInBitsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_87a10aba986f262775300a8bccf1e08bf6aa04391ce43e434f354e01600a5f41",
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
                    "symbol" => "Ros1Rosdemo_v4GetInBitsResponse",
                    "type" => "rosdemo_v4/GetInBitsResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetInBitsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f8c3dece574e815b8d1ec567c75e426419af10629b7b46df120df6f330688acd",
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
                    "symbol" => "Ros1Rosdemo_v4GetInRegsRequest",
                    "type" => "rosdemo_v4/GetInRegsRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetInRegsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b889d32021c7662e1c334b4985ee1892846e7ec9c22af12e10f8451954a1ebce",
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
                    "symbol" => "Ros1Rosdemo_v4GetInRegsResponse",
                    "type" => "rosdemo_v4/GetInRegsResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetInRegsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8122e0be478fb07f064a8ad263bf2498f586d772ec94c1dae540e84c651a55da",
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
                    "symbol" => "Ros1Rosdemo_v4GetInputBoolRequest",
                    "type" => "rosdemo_v4/GetInputBoolRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetInputBoolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8c7ed79ac1c9d6eb3b8288ccf2ecf833cb01d9e28a1aad4c3298a301d37fc6e3",
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
                    "symbol" => "Ros1Rosdemo_v4GetInputBoolResponse",
                    "type" => "rosdemo_v4/GetInputBoolResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetInputBoolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4dd8f83b77312a6b67a0b7846a8a065ce38f1e44f86aafabda8178a3d215969c",
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
                    "symbol" => "Ros1Rosdemo_v4GetInputFloatRequest",
                    "type" => "rosdemo_v4/GetInputFloatRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetInputFloatRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_eb66f87e172e9a42fd3afafa4b33615c31d29ad800c1ffd40381e3b5e783e923",
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
                    "symbol" => "Ros1Rosdemo_v4GetInputFloatResponse",
                    "type" => "rosdemo_v4/GetInputFloatResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetInputFloatResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4a6e9db2cb925b1d929a798b4a5c36fdf8557edee7eb585e0e38c95f23172d42",
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
                    "symbol" => "Ros1Rosdemo_v4GetInputIntRequest",
                    "type" => "rosdemo_v4/GetInputIntRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetInputIntRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_297a110a4a935e442f5b00c1fa84645e97ff954a529b7f4ed7db09be797e6d37",
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
                    "symbol" => "Ros1Rosdemo_v4GetInputIntResponse",
                    "type" => "rosdemo_v4/GetInputIntResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetInputIntResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f1d7ccef84e5ce8eaf3d8daf2dd23afce098a845edaa3b23925e9d46c4c40abd",
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
                    "symbol" => "Ros1Rosdemo_v4GetOutputBoolRequest",
                    "type" => "rosdemo_v4/GetOutputBoolRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetOutputBoolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8434f5aea4bbdf565d050a3d09c845318982e2d2977339a58009be26b9154f5e",
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
                    "symbol" => "Ros1Rosdemo_v4GetOutputBoolResponse",
                    "type" => "rosdemo_v4/GetOutputBoolResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetOutputBoolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ceb74ba9fd10ad74dc9e04ec87687bc13246b4af9d376ea5a6de8c16fa1e54e4",
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
                    "symbol" => "Ros1Rosdemo_v4GetOutputFloatRequest",
                    "type" => "rosdemo_v4/GetOutputFloatRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetOutputFloatRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_19f4a8c41b2e49b3c9da25da2de011c84257b420b89f6e15741de2589585f259",
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
                    "symbol" => "Ros1Rosdemo_v4GetOutputFloatResponse",
                    "type" => "rosdemo_v4/GetOutputFloatResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetOutputFloatResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d52fb64b6fc6a6cef5c396912b6d22184845cfc32e51990dde429eb3f86f59ca",
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
                    "symbol" => "Ros1Rosdemo_v4GetOutputIntRequest",
                    "type" => "rosdemo_v4/GetOutputIntRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetOutputIntRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_26a2d8df9463e82cb4752a0465c46fafaff8edef76e9545d7c21c1a2d81a62a4",
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
                    "symbol" => "Ros1Rosdemo_v4GetOutputIntResponse",
                    "type" => "rosdemo_v4/GetOutputIntResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetOutputIntResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_db07169d30b15991b02c8552ab0823241442ae1dd15d60d8f7d66173ae88ec56",
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
                    "symbol" => "Ros1Rosdemo_v4GetPoseRequest",
                    "type" => "rosdemo_v4/GetPoseRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetPoseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_614f133e44f952b81c348c0d81268009734f12661ee60a3762f445c1f9763eeb",
                    "minimum" => 8,
                    "maximum" => 520,
                    "semantics" => "",
                    "fields" => [
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
                    "symbol" => "Ros1Rosdemo_v4GetPoseResponse",
                    "type" => "rosdemo_v4/GetPoseResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetPoseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bb2309ea57bccca61b67960dabc71bb80f4d5e0bb9dbad2034912bcc33aa47db",
                    "minimum" => 8,
                    "maximum" => 264,
                    "semantics" => "",
                    "fields" => [
                        {
                            "name" => "pose",
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
                    "symbol" => "Ros1Rosdemo_v4GetStartPoseRequest",
                    "type" => "rosdemo_v4/GetStartPoseRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetStartPoseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8a7bb705fc5fad2f0919ea2be9eeef2056765b6fab4ab6e1dd5e4bf335af0e90",
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
                    "symbol" => "Ros1Rosdemo_v4GetStartPoseResponse",
                    "type" => "rosdemo_v4/GetStartPoseResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/GetStartPoseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_58928db4de4917d89cc26f1caeb08d8c63f275e430923ddd69822a7b0969d062",
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
                    "symbol" => "Ros1Rosdemo_v4InverseKinRequest",
                    "type" => "rosdemo_v4/InverseKinRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/InverseKinRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a36b2d397660e001f97f40e937f057cb0c9cbbf3019f119c48a217846e258b36",
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
                    "symbol" => "Ros1Rosdemo_v4InverseKinResponse",
                    "type" => "rosdemo_v4/InverseKinResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/InverseKinResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3e1f483d7c0e1fab5574dbdedbde27321f0961b00f5a7d8ec60facaa660dce5d",
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
                    "symbol" => "Ros1Rosdemo_v4InverseSolutionRequest",
                    "type" => "rosdemo_v4/InverseSolutionRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/InverseSolutionRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_386aeead1b103c31d0803e46e5cf40444203576a01929a58655a9dbdad97e337",
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
                    "symbol" => "Ros1Rosdemo_v4InverseSolutionResponse",
                    "type" => "rosdemo_v4/InverseSolutionResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/InverseSolutionResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_af164102f43d7ec09b29194756e137521be58cf7557e2e6cc1aa8984ad60edeb",
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
                    "symbol" => "Ros1Rosdemo_v4ModbusCloseRequest",
                    "type" => "rosdemo_v4/ModbusCloseRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ModbusCloseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_312c47a996b26c9cceb2cd2cacd8f224d6503c095f8b05cb47d61cd0a86044a2",
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
                    "symbol" => "Ros1Rosdemo_v4ModbusCloseResponse",
                    "type" => "rosdemo_v4/ModbusCloseResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ModbusCloseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_023195c6b839ef052e27c0208dd80a3a65d519c75ae01a97fcc6ed0ba42792c7",
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
                    "symbol" => "Ros1Rosdemo_v4ModbusCreateRequest",
                    "type" => "rosdemo_v4/ModbusCreateRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ModbusCreateRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_89723aed3faa9b167f6c7140983191a0c8cc3e5ae65983199fac27f2cbd4fe3a",
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
                    "symbol" => "Ros1Rosdemo_v4ModbusCreateResponse",
                    "type" => "rosdemo_v4/ModbusCreateResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ModbusCreateResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fd842047956f95a53be2a1d12ceba2f7874276768ee972cc73e0857005f752eb",
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
                    "symbol" => "Ros1Rosdemo_v4ModbusRTUCreateRequest",
                    "type" => "rosdemo_v4/ModbusRTUCreateRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ModbusRTUCreateRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2c24e7f5a9e996c62094b5f286daf6d70e5ea488084458e76387cc87bbf54829",
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
                    "symbol" => "Ros1Rosdemo_v4ModbusRTUCreateResponse",
                    "type" => "rosdemo_v4/ModbusRTUCreateResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ModbusRTUCreateResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7789f6d13a84128d683d1e0298da922c019d2ad730776602baea355d3bb7af9b",
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
                    "symbol" => "Ros1Rosdemo_v4MovJRequest",
                    "type" => "rosdemo_v4/MovJRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/MovJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_09e87fec00b64906ce52c1fd8fc258c5defcc95f0ff4f5c867fbb210677eb342",
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
                    "symbol" => "Ros1Rosdemo_v4MovJResponse",
                    "type" => "rosdemo_v4/MovJResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/MovJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3a9b252271d5b325f608151171315767648c8d8edce2fac57446b40883e08b8c",
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
                    "symbol" => "Ros1Rosdemo_v4MovJIORequest",
                    "type" => "rosdemo_v4/MovJIORequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/MovJIORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_09f78d0f6d9a87a17934a977fd150a42dd5ff2038b31ac99446753b82cf15766",
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
                    "symbol" => "Ros1Rosdemo_v4MovJIOResponse",
                    "type" => "rosdemo_v4/MovJIOResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/MovJIOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6bdb6a02634e5eeca7efddd37d27f3eb4624f4f05abdf6bd96b107781d9fb077",
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
                    "symbol" => "Ros1Rosdemo_v4MovLRequest",
                    "type" => "rosdemo_v4/MovLRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/MovLRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_20cae327861ce263914777f3d78df62724214b7bdbc3e21d7164b7679e55a6dc",
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
                    "symbol" => "Ros1Rosdemo_v4MovLResponse",
                    "type" => "rosdemo_v4/MovLResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/MovLResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b638be013e579798f8394727df2a7f2520f458e8c9feb1be56518dc038dd7d04",
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
                    "symbol" => "Ros1Rosdemo_v4MovLIORequest",
                    "type" => "rosdemo_v4/MovLIORequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/MovLIORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ad460406816839da9bac13749cec3da5ec06cd4d814e9c13b61ade5a57959ddd",
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
                    "symbol" => "Ros1Rosdemo_v4MovLIOResponse",
                    "type" => "rosdemo_v4/MovLIOResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/MovLIOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_65153e2d930140d23fff126a8dedcb91eae040b36bd22ff54116067c75dec54c",
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
                    "symbol" => "Ros1Rosdemo_v4MoveJogRequest",
                    "type" => "rosdemo_v4/MoveJogRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/MoveJogRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4405c2a5d68345e826adfa1517fde93d180c9526adfaa15c1eab72817bd400d4",
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
                    "symbol" => "Ros1Rosdemo_v4MoveJogResponse",
                    "type" => "rosdemo_v4/MoveJogResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/MoveJogResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bfb8a659db448d7a32e409dccf3cf5678b093e7679a9463519951b8b572c5dad",
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
                    "symbol" => "Ros1Rosdemo_v4PauseRequest",
                    "type" => "rosdemo_v4/PauseRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/PauseRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_0724bc4dd3f14cc33b595fd5eddcc4169ae428f577cf17274d37031861491458",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4PauseResponse",
                    "type" => "rosdemo_v4/PauseResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/PauseResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_74ce1cb9c50a42453f3217187291957c2c27d23dfc0f03117b5c1f3f24924179",
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
                    "symbol" => "Ros1Rosdemo_v4PositiveKinRequest",
                    "type" => "rosdemo_v4/PositiveKinRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/PositiveKinRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8e5050dce84fba33aa575ce20b32bab4591c35f40736136cae5b3c6e1faef21c",
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
                    "symbol" => "Ros1Rosdemo_v4PositiveKinResponse",
                    "type" => "rosdemo_v4/PositiveKinResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/PositiveKinResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a9ce6bea86295b52e94b959dd08e6b6d22d9673e3e07bbc34311d16757230d59",
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
                    "symbol" => "Ros1Rosdemo_v4PowerOnRequest",
                    "type" => "rosdemo_v4/PowerOnRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/PowerOnRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_37a79bfbb6f1ce4b67d1f9d9a29102e62a63d94c7812c3f43432ede1eaa9e59f",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4PowerOnResponse",
                    "type" => "rosdemo_v4/PowerOnResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/PowerOnResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_dfc6bbc39e3c8e01192aa19ba8329286f314095381e8b6dedf0041b3d7336b88",
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
                    "symbol" => "Ros1Rosdemo_v4RelJointMovJRequest",
                    "type" => "rosdemo_v4/RelJointMovJRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RelJointMovJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_cd720cd9f632d655b6c3c8e7258d45ca8b533ab646296e741d849955ddb7df5d",
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
                    "symbol" => "Ros1Rosdemo_v4RelJointMovJResponse",
                    "type" => "rosdemo_v4/RelJointMovJResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RelJointMovJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ef932bafd6a1fc19ae65cc284cf8073e11198a6295ea1b76b8fca30ae553c095",
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
                    "symbol" => "Ros1Rosdemo_v4RelMovJToolRequest",
                    "type" => "rosdemo_v4/RelMovJToolRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RelMovJToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_447c2017041960c5a7908f9ed79b4031107299dc19a0706a58b63665f27722f2",
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
                    "symbol" => "Ros1Rosdemo_v4RelMovJToolResponse",
                    "type" => "rosdemo_v4/RelMovJToolResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RelMovJToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e257550023b466fd6a2b0f039548c73ab379feccb57f55a2cb7a56da5f89221e",
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
                    "symbol" => "Ros1Rosdemo_v4RelMovJUserRequest",
                    "type" => "rosdemo_v4/RelMovJUserRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RelMovJUserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f575ab3530f4cdc9853504e65f3bcd190ad473513b334778eeae53f121550b42",
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
                    "symbol" => "Ros1Rosdemo_v4RelMovJUserResponse",
                    "type" => "rosdemo_v4/RelMovJUserResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RelMovJUserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7ec2020d09d1497e44bd1e5dc4c7d3f94fc9b40b525ad0abe0646c4c49830069",
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
                    "symbol" => "Ros1Rosdemo_v4RelMovLToolRequest",
                    "type" => "rosdemo_v4/RelMovLToolRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RelMovLToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4a38969222fc6b0dd15123e0752060b7d3818af030098e0f93f24702cb663bf6",
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
                    "symbol" => "Ros1Rosdemo_v4RelMovLToolResponse",
                    "type" => "rosdemo_v4/RelMovLToolResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RelMovLToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ba7d0e0a7f27aedcdb0ba1f8cf6d89eb0ac5bcd86da29e8683e3e19c290b01c8",
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
                    "symbol" => "Ros1Rosdemo_v4RelMovLUserRequest",
                    "type" => "rosdemo_v4/RelMovLUserRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RelMovLUserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1c505d53cbfea745ed7f941c4658252d52f50c91e3a8d4d548ab1f90d3f63567",
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
                    "symbol" => "Ros1Rosdemo_v4RelMovLUserResponse",
                    "type" => "rosdemo_v4/RelMovLUserResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RelMovLUserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_dae3d0f42de8bbed4988150bc1d838ba033e0f675cf3089419fc548070e06846",
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
                    "symbol" => "Ros1Rosdemo_v4RobotModeRequest",
                    "type" => "rosdemo_v4/RobotModeRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RobotModeRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_29ad7f5a2d2e1cdfc34e84f7c86d644d24892bb82fa4e764eb4889b3c2989630",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4RobotModeResponse",
                    "type" => "rosdemo_v4/RobotModeResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RobotModeResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bda53abb273c252b346eefb4b4fec7b511e643e480326cc4c27c83a2898ee199",
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
                    "symbol" => "Ros1Rosdemo_v4RunScriptRequest",
                    "type" => "rosdemo_v4/RunScriptRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RunScriptRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_91716b4cf7cb8978c45ade479780d8d59e6358589320945dfc12491f4db08a40",
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
                    "symbol" => "Ros1Rosdemo_v4RunScriptResponse",
                    "type" => "rosdemo_v4/RunScriptResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/RunScriptResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4dfe238cfd2fa4a1c858cab4101964ad855109e680ffbe00fc0d0739a3e581e8",
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
                    "symbol" => "Ros1Rosdemo_v4ServoJRequest",
                    "type" => "rosdemo_v4/ServoJRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ServoJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4291d3eaf7d1ef4fce2df5fef5d2ca1ef845dacb91f5321d11f5823140709071",
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
                    "symbol" => "Ros1Rosdemo_v4ServoJResponse",
                    "type" => "rosdemo_v4/ServoJResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ServoJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_abafb6be9c5fb35f94d3e5731fe939dfbab4ef602609f041f7b415a5e26b4ad8",
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
                    "symbol" => "Ros1Rosdemo_v4ServoPRequest",
                    "type" => "rosdemo_v4/ServoPRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ServoPRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_6650fcc171dd0b172c19629e60f086f9b67e5930238aab6d16862f8549859bbe",
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
                    "symbol" => "Ros1Rosdemo_v4ServoPResponse",
                    "type" => "rosdemo_v4/ServoPResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ServoPResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_606204f4bcaaefd1a1b6cc7d7d0cbe60efcf8ddc9e0a7df29eceb7d2d353622f",
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
                    "symbol" => "Ros1Rosdemo_v4SetBackDistanceRequest",
                    "type" => "rosdemo_v4/SetBackDistanceRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetBackDistanceRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8b826d716076ee8d336ca859433bb7a8eae3970d3958f239494cc61c91603877",
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
                    "symbol" => "Ros1Rosdemo_v4SetBackDistanceResponse",
                    "type" => "rosdemo_v4/SetBackDistanceResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetBackDistanceResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d6276f328a689115bd05011b9ed443d9cb6587f3b92fa77e6b808cc625adbffa",
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
                    "symbol" => "Ros1Rosdemo_v4SetCoilsRequest",
                    "type" => "rosdemo_v4/SetCoilsRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetCoilsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_668510a449bcf69f157ce9f973598434585e0effca009b4a2d105335546ef699",
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
                    "symbol" => "Ros1Rosdemo_v4SetCoilsResponse",
                    "type" => "rosdemo_v4/SetCoilsResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetCoilsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e3dc557bd4b773d6b1c95fd2c77d38995e9fd0d5b8cf1f9da3786012b31ab3c4",
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
                    "symbol" => "Ros1Rosdemo_v4SetCollisionLevelRequest",
                    "type" => "rosdemo_v4/SetCollisionLevelRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetCollisionLevelRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_41ccc645b15211a05f0e385cf94ce8943f52f0db8d11b3ca6e96b2fd6eed6ede",
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
                    "symbol" => "Ros1Rosdemo_v4SetCollisionLevelResponse",
                    "type" => "rosdemo_v4/SetCollisionLevelResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetCollisionLevelResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fe8beab960e6d28dd27ba1fec6fc3228692f1c3b09b7bd27460a218aba36e166",
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
                    "symbol" => "Ros1Rosdemo_v4SetHoldRegsRequest",
                    "type" => "rosdemo_v4/SetHoldRegsRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetHoldRegsRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1a30f714acb56987827196d8522a5411c2b94948a59427c7cfe3a3aacd31dd71",
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
                    "symbol" => "Ros1Rosdemo_v4SetHoldRegsResponse",
                    "type" => "rosdemo_v4/SetHoldRegsResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetHoldRegsResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_15808e5f2cf1f577a6b0c60284b9a506ac006cf5e9dce48c77a85fb921c9c934",
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
                    "symbol" => "Ros1Rosdemo_v4SetOutputBoolRequest",
                    "type" => "rosdemo_v4/SetOutputBoolRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetOutputBoolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c4524f5cb7e1cf9a16ab3444663cb7097dd16036b074602c0f94d6a729dfffd3",
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
                    "symbol" => "Ros1Rosdemo_v4SetOutputBoolResponse",
                    "type" => "rosdemo_v4/SetOutputBoolResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetOutputBoolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_49734ad4fb75dac84b329889d76b274fb95cd0116b22ff95b91d45bbf3901445",
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
                    "symbol" => "Ros1Rosdemo_v4SetOutputFloatRequest",
                    "type" => "rosdemo_v4/SetOutputFloatRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetOutputFloatRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ca0404916a941f92cddc866b575652a4ed4550d30bd1b0e92140a81ff3e16de0",
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
                    "symbol" => "Ros1Rosdemo_v4SetOutputFloatResponse",
                    "type" => "rosdemo_v4/SetOutputFloatResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetOutputFloatResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_533fdaf7fb6fcdf7a7d9fb0e764b5efe4f2f82957a63b1f85131de3687957173",
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
                    "symbol" => "Ros1Rosdemo_v4SetOutputIntRequest",
                    "type" => "rosdemo_v4/SetOutputIntRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetOutputIntRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3abab70756725846970f1065edd99f39b5cb1be00f13588aad95b567d14aa0de",
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
                    "symbol" => "Ros1Rosdemo_v4SetOutputIntResponse",
                    "type" => "rosdemo_v4/SetOutputIntResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetOutputIntResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a7c706a60b351b6596c352dbf955a88a2c2d532abe24f2ec208b755afe975525",
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
                    "symbol" => "Ros1Rosdemo_v4SetPayloadRequest",
                    "type" => "rosdemo_v4/SetPayloadRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetPayloadRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_99feda7d525eb9836bd9bb5123915816639d25657b7dcbc3353676234dd83087",
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
                    "symbol" => "Ros1Rosdemo_v4SetPayloadResponse",
                    "type" => "rosdemo_v4/SetPayloadResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetPayloadResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7decd187d884825cb1ebcfd6a30e8d52956fdf3635f77f573df005737dde1814",
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
                    "symbol" => "Ros1Rosdemo_v4SetPostCollisionModeRequest",
                    "type" => "rosdemo_v4/SetPostCollisionModeRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetPostCollisionModeRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5c3f53e0d872083bb0fe033564505113dd4cf447653d78e31ed07cec3f327557",
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
                    "symbol" => "Ros1Rosdemo_v4SetPostCollisionModeResponse",
                    "type" => "rosdemo_v4/SetPostCollisionModeResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetPostCollisionModeResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3515493683a99cc17beed55155f8a539dc46963961c469e564123cdb0718e896",
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
                    "symbol" => "Ros1Rosdemo_v4SetSafeSkinRequest",
                    "type" => "rosdemo_v4/SetSafeSkinRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetSafeSkinRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_546964bab46e715348a7a9198b62fb8854045e65dec5abe9c4f17f65037278e6",
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
                    "symbol" => "Ros1Rosdemo_v4SetSafeSkinResponse",
                    "type" => "rosdemo_v4/SetSafeSkinResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetSafeSkinResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_4554a225a629cc97b596f5c498906d1f3bfc840cb3c243285a9dddbe6abee576",
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
                    "symbol" => "Ros1Rosdemo_v4SetSafeWallEnableRequest",
                    "type" => "rosdemo_v4/SetSafeWallEnableRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetSafeWallEnableRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_16b0daf7af42d7f14752f854a996aabb61c328999ccd13b0cb59c9f48fc645b4",
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
                    "symbol" => "Ros1Rosdemo_v4SetSafeWallEnableResponse",
                    "type" => "rosdemo_v4/SetSafeWallEnableResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetSafeWallEnableResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_28c807143ad6f567c7c7f1c16a37b5a9c65bf72b094994ea5ae23a72bfc13c38",
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
                    "symbol" => "Ros1Rosdemo_v4SetToolRequest",
                    "type" => "rosdemo_v4/SetToolRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_95979e2c7d69ea6d4e60db52f1a6b2c83ff96c8913fa7149b9006c72377933da",
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
                    "symbol" => "Ros1Rosdemo_v4SetToolResponse",
                    "type" => "rosdemo_v4/SetToolResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_43022c007cc4c8345eac14b991870e5d7d451c0346ee6f870e6398fadf15333f",
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
                    "symbol" => "Ros1Rosdemo_v4SetTool485Request",
                    "type" => "rosdemo_v4/SetTool485Request",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetTool485Request",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_297e32de0960af99e4aff4a33b616c51b4087a6223665ce4993ab5f9c3dcced2",
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
                    "symbol" => "Ros1Rosdemo_v4SetTool485Response",
                    "type" => "rosdemo_v4/SetTool485Response",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetTool485Response",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f558d54d6caec7abf82558798a1254ce4ad782a6b3236c28786288674fdee6d7",
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
                    "symbol" => "Ros1Rosdemo_v4SetToolModeRequest",
                    "type" => "rosdemo_v4/SetToolModeRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetToolModeRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2d9e8ef921cc8e1eb10048869bc6b2cdbd3b43bde60329c4c5936ae78dae1e9b",
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
                    "symbol" => "Ros1Rosdemo_v4SetToolModeResponse",
                    "type" => "rosdemo_v4/SetToolModeResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetToolModeResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1f4d3423a7057457bc7eeb44565ecb2c3c4da2ea67b9f8f5833f893320ec4f13",
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
                    "symbol" => "Ros1Rosdemo_v4SetToolPowerRequest",
                    "type" => "rosdemo_v4/SetToolPowerRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetToolPowerRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_b50da7a7513c57b7d7068835275af7245e904a21a7416bdea83c83b07dc2b985",
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
                    "symbol" => "Ros1Rosdemo_v4SetToolPowerResponse",
                    "type" => "rosdemo_v4/SetToolPowerResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetToolPowerResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_da8afa2a4b60234acd7b36aab53e15be6567b8aca3c45a1fa2af64a07f5a2227",
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
                    "symbol" => "Ros1Rosdemo_v4SetUserRequest",
                    "type" => "rosdemo_v4/SetUserRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetUserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ace2739af37656402842a9825cb98dcb0eeb80a9899330f5aa457305d74669aa",
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
                    "symbol" => "Ros1Rosdemo_v4SetUserResponse",
                    "type" => "rosdemo_v4/SetUserResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SetUserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_878da3404c6d0a82f1a567bb69a1280a0fea90aa54c12460fdd24810e9dfe919",
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
                    "symbol" => "Ros1Rosdemo_v4SpeedFactorRequest",
                    "type" => "rosdemo_v4/SpeedFactorRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SpeedFactorRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_3d627fa6ccc17b96d3d957c17e96f9e5338538159dfa85959610a9f901803a9a",
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
                    "symbol" => "Ros1Rosdemo_v4SpeedFactorResponse",
                    "type" => "rosdemo_v4/SpeedFactorResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/SpeedFactorResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_5f425013611e572961c782e71d24c4d3b37a26445b145896fab7c49d83e899d3",
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
                    "symbol" => "Ros1Rosdemo_v4StartDragRequest",
                    "type" => "rosdemo_v4/StartDragRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/StartDragRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_77b94a2182924aca83a63839ea536bb260a82938e4777d131965d6df4e296f3f",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4StartDragResponse",
                    "type" => "rosdemo_v4/StartDragResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/StartDragResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f46b30ea4abf0eab654b8643dd8ec07ab1069615aa17cd77fba9a9e9b55be042",
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
                    "symbol" => "Ros1Rosdemo_v4StartPathRequest",
                    "type" => "rosdemo_v4/StartPathRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/StartPathRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_bb496e5aa8efd5167f627af32c004204daefcc490e9402077cff3a5bde850bd8",
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
                    "symbol" => "Ros1Rosdemo_v4StartPathResponse",
                    "type" => "rosdemo_v4/StartPathResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/StartPathResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2748c135187deaf6c46c8b764be8cd8b526aeb5f2725c9e39df6fbdc37db2296",
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
                    "symbol" => "Ros1Rosdemo_v4StopRequest",
                    "type" => "rosdemo_v4/StopRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/StopRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e290dd226267a51ec721800de05786d5e8855a5aa66f445d71bc66cdaefcac3a",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4StopResponse",
                    "type" => "rosdemo_v4/StopResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/StopResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_433970515842257c1a95945bf5cb81459028497c081bb506168940124e01a4a6",
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
                    "symbol" => "Ros1Rosdemo_v4StopDragRequest",
                    "type" => "rosdemo_v4/StopDragRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/StopDragRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_d6b0bd3ad7c38923dddb34e9dacb10957f8039ea8de975ed244e6f055f4382c7",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4StopDragResponse",
                    "type" => "rosdemo_v4/StopDragResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/StopDragResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_983e05b8edb970adbca14ff844e9bb547fd1bbf5d73149672f0e3c64d62c3c49",
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
                    "symbol" => "Ros1Rosdemo_v4StopMoveJogRequest",
                    "type" => "rosdemo_v4/StopMoveJogRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/StopMoveJogRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ae0e9ee98e7383bbc1d4cfdd8f52c66f466533c9eeef583c6b3d815f5098e45c",
                    "minimum" => 0,
                    "maximum" => 0,
                    "semantics" => "",
                    "fields" => [

                    ],
                    "constants" => {

                    }
                },
                {
                    "symbol" => "Ros1Rosdemo_v4StopMoveJogResponse",
                    "type" => "rosdemo_v4/StopMoveJogResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/StopMoveJogResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_f1fc654fc70290eaa16187d80ad84b69ae2ba9adb1bb1e3ea6e7565247721955",
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
                    "symbol" => "Ros1Rosdemo_v4TcpDashboardRequest",
                    "type" => "rosdemo_v4/TcpDashboardRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/TcpDashboardRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_47cf7cf3c864691b6c60c2657b1491c56013ccffc389a850f72bacd89e101669",
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
                    "symbol" => "Ros1Rosdemo_v4TcpDashboardResponse",
                    "type" => "rosdemo_v4/TcpDashboardResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/TcpDashboardResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_7caec2f6f4bcb9e6bbb4a3adb1e20ad6935cfb77d72bc6d8772ccddfa9d57725",
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
                    "symbol" => "Ros1Rosdemo_v4ToolRequest",
                    "type" => "rosdemo_v4/ToolRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ToolRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a8ab3c5f3ba17c1da69c9b96c6c5b3351a9b814c4c564203fce628e1b06ca633",
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
                    "symbol" => "Ros1Rosdemo_v4ToolResponse",
                    "type" => "rosdemo_v4/ToolResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ToolResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_a9027450905cbd15ab300924c74e2990df138d19bac12b7d1f5033fded01ea8e",
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
                    "symbol" => "Ros1Rosdemo_v4ToolAIRequest",
                    "type" => "rosdemo_v4/ToolAIRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ToolAIRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c141fb5f247d29ef1f6af584320382779cfc3febf3f8e57722d4c49cad478c94",
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
                    "symbol" => "Ros1Rosdemo_v4ToolAIResponse",
                    "type" => "rosdemo_v4/ToolAIResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ToolAIResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_2b36d315526555b9c2890193d72da3bc11f28d96bd0666d1138e8d52ca2e96bd",
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
                    "symbol" => "Ros1Rosdemo_v4ToolDIRequest",
                    "type" => "rosdemo_v4/ToolDIRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ToolDIRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_8180502a73118db535342bee15363e88e24249bfbffb486e986f9b8481267a0f",
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
                    "symbol" => "Ros1Rosdemo_v4ToolDIResponse",
                    "type" => "rosdemo_v4/ToolDIResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ToolDIResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_e062173a11ff92dbdf6608de99da922ec66fdc55252a53f059b4fe7b4e73aedd",
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
                    "symbol" => "Ros1Rosdemo_v4ToolDORequest",
                    "type" => "rosdemo_v4/ToolDORequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ToolDORequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_fcd7e9d3287bcc24acb0dd5300d4804dbb716275e6d582b50ec6ff7c6670baa0",
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
                    "symbol" => "Ros1Rosdemo_v4ToolDOResponse",
                    "type" => "rosdemo_v4/ToolDOResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ToolDOResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_06f053e9ad52998b7947587d9982a20f9e72bc0be403f419ea4a096b0d539852",
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
                    "symbol" => "Ros1Rosdemo_v4ToolDOInstantRequest",
                    "type" => "rosdemo_v4/ToolDOInstantRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ToolDOInstantRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c68c24ef0ec153f71f5c6805aa8e9ae3ff12b5dfe64415da75af18df97b4784b",
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
                    "symbol" => "Ros1Rosdemo_v4ToolDOInstantResponse",
                    "type" => "rosdemo_v4/ToolDOInstantResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/ToolDOInstantResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_c880a6b3852d4dad8365a6334075096ed221040fb9e86b8e9a545c11f9a48981",
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
                    "symbol" => "Ros1Rosdemo_v4UserRequest",
                    "type" => "rosdemo_v4/UserRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/UserRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_1d043f84db26368dd7207cf5585380d24f89c9d990922652dd76720c7f6ff3dd",
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
                    "symbol" => "Ros1Rosdemo_v4UserResponse",
                    "type" => "rosdemo_v4/UserResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/UserResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_84129d499ec84200cb970b87870fa4aaa2398bf8e55b3db49260da40b6521abb",
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
                    "symbol" => "Ros1Rosdemo_v4VelJRequest",
                    "type" => "rosdemo_v4/VelJRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/VelJRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_979d0b0dc39a507d47ce758757b6abc933e2887ea56e713ef60c27a72b1ff864",
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
                    "symbol" => "Ros1Rosdemo_v4VelJResponse",
                    "type" => "rosdemo_v4/VelJResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/VelJResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_37148bdc9a4c8d9dfb0249ffa5e87fe917ea88c4b212a793fafdcb92ec3a1749",
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
                    "symbol" => "Ros1Rosdemo_v4VelLRequest",
                    "type" => "rosdemo_v4/VelLRequest",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/VelLRequest",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_ed647102e30f45418ff04cb3717694ba1c2256497773ccd24f6336e45877d05e",
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
                    "symbol" => "Ros1Rosdemo_v4VelLResponse",
                    "type" => "rosdemo_v4/VelLResponse",
                    "ros_version" => 1,
                    "native_type" => "rosdemo_v4/VelLResponse",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_013b1c007d34ccc7d9f12c272ac0720eeb347727d6861995dd1a7290c8eace85",
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
