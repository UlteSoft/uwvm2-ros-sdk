# @file records.rb
# @brief All 2 original vendor ROS 1 records and 2 interfaces.
# @details Ordinary namespace values retain complete original fields and identities.
module Uwvm
    module Leju
        module Ros1MasterUnregisteredDtos
            # @brief Complete source-pinned records in original dependency order.
            SCHEMAS = [
                # @brief Complete kuavo_sdk/qv descriptor.
                {
                    "symbol" => "Ros1Kuavo_sdkQv",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32",
                    "minimum" => 4,
                    "maximum" => 132,
                    "semantics" => "",
                    "ros_version" => 1,
                    "native_type" => "kuavo_sdk/qv",
                    "constants" => {},
                    "fields" => [
                        {
                            "name" => "value",
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
                            "raw" => false,
                            "element_minimum" => 8
                        }
                    ]
                },
                # @brief Complete kuavo_sdk/fullBodyTargetTrajectories descriptor.
                {
                    "symbol" => "Ros1Kuavo_sdkFullBodyTargetTrajectories",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32",
                    "minimum" => 16,
                    "maximum" => 2320,
                    "semantics" => "",
                    "ros_version" => 1,
                    "native_type" => "kuavo_sdk/fullBodyTargetTrajectories",
                    "constants" => {},
                    "fields" => [
                        {
                            "name" => "timeTrajectory",
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
                            "raw" => false,
                            "element_minimum" => 8
                        },
                        {
                            "name" => "footIndexTrajectory",
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
                        },
                        {
                            "name" => "fullBodyQTrajectory",
                            "type" => "Ros1Kuavo_sdkQv",
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
                            "element_minimum" => 4
                        },
                        {
                            "name" => "fullBodyVTrajectory",
                            "type" => "Ros1Kuavo_sdkQv",
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
                            "element_minimum" => 4
                        }
                    ]
                },
            ].freeze
            # @brief Build full ordinary Ruby classes with checked canonical codecs.
            RECORDS = Uwvm::RosWasm::Wire.records(SCHEMAS)
            RECORDS.each do |name, klass|
                const_set(name, klass)
            end
            # @brief Every interface, component role and both original identities.
            INTERFACES = {
                "kuavo_sdk/fullBodyTargetTrajectories" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros1Kuavo_sdkFullBodyTargetTrajectories"
                    }
                },
                "kuavo_sdk/qv" => {
                    "kind" => "message",
                    "native_identity" => nil,
                    "codec_identity" => "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32",
                    "registered" => false,
                    "components" => {
                        "message" => "Ros1Kuavo_sdkQv"
                    }
                }
            }
        end
    end
end
