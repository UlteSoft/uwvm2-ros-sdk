--- @file records.lua
--- @brief Preserve every original vendor record, field and complete canonical identity.
--- @details Requires the one shared genuine Lua 5.4 engine and common wire module.
--- Values are caller-owned; no schema creates a resource or grants authority.
local wire = require("roswasm/wire")
local schemas = {
    {
        ["symbol"] = "Ros2Builtin_interfacesMsgTime",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "normalized-time",
        ["ros_version"] = 2,
        ["native_type"] = "builtin_interfaces/msg/Time",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "sec",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
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
                ["name"] = "nanosec",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
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
    },
    {
        ["symbol"] = "Ros2Geometry_msgsMsgPoint",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Point",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
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
                ["name"] = "y",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
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
                ["name"] = "z",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
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
        ["symbol"] = "Ros2Geometry_msgsMsgQuaternion",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
        ["minimum"] = 32,
        ["maximum"] = 32,
        ["semantics"] = "",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Quaternion",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = "0.0",
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 0.0
            },
            {
                ["name"] = "y",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = "0.0",
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 0.0
            },
            {
                ["name"] = "z",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = "0.0",
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 0.0
            },
            {
                ["name"] = "w",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = "1.0",
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 1.0
            }
        }
    },
    {
        ["symbol"] = "Ros2Geometry_msgsMsgPose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Pose",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "position",
                ["type"] = "Ros2Geometry_msgsMsgPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            },
            {
                ["name"] = "orientation",
                ["type"] = "Ros2Geometry_msgsMsgQuaternion",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 32
            }
        }
    },
    {
        ["symbol"] = "Ros2Std_msgsMsgHeader",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
        ["minimum"] = 12,
        ["maximum"] = 140,
        ["semantics"] = "",
        ["ros_version"] = 2,
        ["native_type"] = "std_msgs/msg/Header",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "stamp",
                ["type"] = "Ros2Builtin_interfacesMsgTime",
                ["array"] = "",
                ["count"] = 0,
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
                ["name"] = "frame_id",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
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
    },
    {
        ["symbol"] = "Ros2Geometry_msgsMsgPoseStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2",
        ["minimum"] = 68,
        ["maximum"] = 196,
        ["semantics"] = "",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/PoseStamped",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 12
            },
            {
                ["name"] = "pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 56
            }
        }
    },
    {
        ["symbol"] = "Ros2Grab_demo_msgsMsgGraspCandidate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5dfe34bfcc75bea067c1c30082a8c462575b2790a7326f85f90e7f913600bf37",
        ["minimum"] = 92,
        ["maximum"] = 604,
        ["semantics"] = "",
        ["ros_version"] = 2,
        ["native_type"] = "grab_demo_msgs/msg/GraspCandidate",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 12
            },
            {
                ["name"] = "pose",
                ["type"] = "Ros2Geometry_msgsMsgPoseStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 68
            },
            {
                ["name"] = "group_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
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
                ["name"] = "confidence",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
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
                ["name"] = "object_class",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
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
    },
    {
        ["symbol"] = "Ros2Grab_demo_msgsMsgIKRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b438f80854b2fee423938302dc415e1ef68a3988675998c427eab62a5ecc39fa",
        ["minimum"] = 64,
        ["maximum"] = 320,
        ["semantics"] = "",
        ["ros_version"] = 2,
        ["native_type"] = "grab_demo_msgs/msg/IKRequest",
        ["constants"] = {

        },
        ["fields"] = {
            {
                ["name"] = "group_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
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
                ["name"] = "frame_id",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
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
                ["name"] = "position",
                ["type"] = "Ros2Geometry_msgsMsgPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 24
            },
            {
                ["name"] = "orientation",
                ["type"] = "Ros2Geometry_msgsMsgQuaternion",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["native_string_bound"] = 0,
                ["native_sequence_bound"] = 0,
                ["native_default"] = nil,
                ["native_scalar"] = "",
                ["string_encoding"] = "utf8",
                ["float_policy"] = "finite",
                ["raw"] = false,
                ["element_minimum"] = 32
            }
        }
    }
}
local records = wire.records(schemas)
return records
