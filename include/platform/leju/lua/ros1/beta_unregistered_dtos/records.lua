--- @file records.lua
--- @brief Preserve every original vendor record, field and complete canonical identity.
--- @details Requires the one shared genuine Lua 5.4 engine and common wire module.
--- Values are caller-owned; no schema creates a resource or grants authority.
local wire = require("roswasm/wire")
local schemas = {
    {
        ["symbol"] = "Ros1Kuavo_sdkQv",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32",
        ["minimum"] = 4,
        ["maximum"] = 132,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "kuavo_sdk/qv",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "value",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            }
        }
    },
    {
        ["symbol"] = "Ros1Kuavo_sdkFullBodyTargetTrajectories",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32",
        ["minimum"] = 16,
        ["maximum"] = 2320,
        ["semantics"] = "",
        ["ros_version"] = 1,
        ["native_type"] = "kuavo_sdk/fullBodyTargetTrajectories",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "timeTrajectory",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8
            },
            {
                ["name"] = "footIndexTrajectory",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "fullBodyQTrajectory",
                ["type"] = "Ros1Kuavo_sdkQv",
                ["array"] = "sequence",
                ["count"] = 8,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            },
            {
                ["name"] = "fullBodyVTrajectory",
                ["type"] = "Ros1Kuavo_sdkQv",
                ["array"] = "sequence",
                ["count"] = 8,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 4
            }
        }
    }
}
local records = wire.records(schemas)
return records
