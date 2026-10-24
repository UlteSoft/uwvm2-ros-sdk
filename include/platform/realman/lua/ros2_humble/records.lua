--- @file records.lua
--- @brief Preserve the complete original realman/ros2_humble canonical value domain.
--- @details The selected domain contains 80 complete record/components and 339 original fields. Declared
--- scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
--- Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
--- create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
--- does not qualify a frontend, target ABI or native ROS transport.
--- @see The platform's localized language guide and complete API-CATALOG.md.
--- @brief Complete source-derived canonical Lua value classes.
--- @details Synchronous local values only; Lua5.4 with signed64-bit integers.
--- @see roswasm/wire.lua
local wire = require("roswasm.wire")
local schemas = {
    {
        ["symbol"] = "Ros2Geometry_msgsMsgPoint",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Point",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "y",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "z",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Geometry_msgsMsgQuaternion",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Quaternion",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
        ["minimum"] = 32,
        ["maximum"] = 32,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 0.0,
            },
            {
                ["name"] = "y",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 0.0,
            },
            {
                ["name"] = "z",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 0.0,
            },
            {
                ["name"] = "w",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 1.0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Geometry_msgsMsgPose",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Pose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "position",
                ["type"] = "Ros2Geometry_msgsMsgPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "orientation",
                ["type"] = "Ros2Geometry_msgsMsgQuaternion",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 32,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgAlohastate",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Alohastate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "io1_state",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "io2_state",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgArmcurrentstatus",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Armcurrentstatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "arm_current_status",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgArmoriginalstate",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Armoriginalstate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c",
        ["minimum"] = 32,
        ["maximum"] = 96,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "pose",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "err",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "err_len",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "dof",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgSoftwarebuildinfo",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Softwarebuildinfo",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc",
        ["minimum"] = 8,
        ["maximum"] = 520,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "build_time",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "version",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgArmsoftversion",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Armsoftversion",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c",
        ["minimum"] = 69,
        ["maximum"] = 4421,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "product_version",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "controller_version",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "algorithm_info",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ctrl_info",
                ["type"] = "Ros2Rm_ros_interfacesMsgSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "dynamic_info",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "plan_info",
                ["type"] = "Ros2Rm_ros_interfacesMsgSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "com_info",
                ["type"] = "Ros2Rm_ros_interfacesMsgSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "program_info",
                ["type"] = "Ros2Rm_ros_interfacesMsgSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "planversion",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ctrlversion",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kernal1",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kernal2",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "productversion",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgArmsoftversionv3",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Armsoftversionv3",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b",
        ["minimum"] = 32,
        ["maximum"] = 2080,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "product_version",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "controller_version",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "algorithm_info",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ctrl_info",
                ["type"] = "Ros2Rm_ros_interfacesMsgSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "dynamic_info",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "plan_info",
                ["type"] = "Ros2Rm_ros_interfacesMsgSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgArmsoftversionv4",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Armsoftversionv4",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d",
        ["minimum"] = 36,
        ["maximum"] = 2340,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "product_version",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "controller_version",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "algorithm_info",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ctrl_info",
                ["type"] = "Ros2Rm_ros_interfacesMsgSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "com_info",
                ["type"] = "Ros2Rm_ros_interfacesMsgSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "program_info",
                ["type"] = "Ros2Rm_ros_interfacesMsgSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgArmstate",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Armstate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7",
        ["minimum"] = 64,
        ["maximum"] = 128,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "err",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "err_len",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "dof",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgCartepos",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Cartepos",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13",
        ["minimum"] = 57,
        ["maximum"] = 57,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "follow",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgCarteposcustom",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Carteposcustom",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c",
        ["minimum"] = 59,
        ["maximum"] = 59,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "follow",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "trajectory_mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "radio",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgExpandpos",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Expandpos",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c",
        ["minimum"] = 7,
        ["maximum"] = 7,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pos",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "block",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgExpandstate",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Expandstate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4",
        ["minimum"] = 12,
        ["maximum"] = 12,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pos",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "current",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "err_flag",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "mode",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgFlowchartrunstate",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Flowchartrunstate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f",
        ["minimum"] = 13,
        ["maximum"] = 525,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "run_state",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "id",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "plan_speed",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "step_mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "modal_id",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgForce_Position_State",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Force_Position_State",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7",
        ["minimum"] = 30,
        ["maximum"] = 30,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "arm_err",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgForcepositionmove",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Forcepositionmove",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224",
        ["minimum"] = 121,
        ["maximum"] = 185,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "joint",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "flag",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "sensor",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "control_mode",
                ["type"] = "uint8",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "follow",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "desired_force",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "limit_vel",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "trajectory_mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "radio",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgForcepositionmovejoint",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Forcepositionmovejoint",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed",
        ["minimum"] = 14,
        ["maximum"] = 78,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sensor",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "dir",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "force",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "follow",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "dof",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgForcepositionmovepose",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Forcepositionmovepose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3",
        ["minimum"] = 62,
        ["maximum"] = 62,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "sensor",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "dir",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "force",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "follow",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgGetArmState_Command",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/GetArmState_Command",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "command",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgGetallframe",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Getallframe",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef",
        ["minimum"] = 40,
        ["maximum"] = 2600,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "frame_name",
                ["type"] = "string",
                ["array"] = "array",
                ["count"] = 10,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Getmodbustcpmasterlist",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686",
        ["minimum"] = 12,
        ["maximum"] = 268,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "page_num",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "page_size",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "vague_search",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgGettrajectorylist",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Gettrajectorylist",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b",
        ["minimum"] = 12,
        ["maximum"] = 268,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "page_num",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "page_size",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "vague_search",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgGripperpick",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Gripperpick",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2",
        ["minimum"] = 7,
        ["maximum"] = 7,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "speed",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "force",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "block",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "timeout",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgGripperset",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Gripperset",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "position",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "block",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "timeout",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgHandangle",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Handangle",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf",
        ["minimum"] = 13,
        ["maximum"] = 13,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "hand_angle",
                ["type"] = "int16",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "block",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgHandforce",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Handforce",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "hand_force",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgHandposture",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Handposture",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "posture_num",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "block",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "timeout",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgHandseq",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Handseq",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "seq_num",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "block",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "timeout",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgHandspeed",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Handspeed",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "hand_speed",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgHandstatus",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Handstatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3",
        ["minimum"] = 50,
        ["maximum"] = 50,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "hand_angle",
                ["type"] = "uint16",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "hand_pos",
                ["type"] = "uint16",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "hand_state",
                ["type"] = "uint16",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "hand_force",
                ["type"] = "uint16",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "hand_err",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgJointcurrent",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Jointcurrent",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_current",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgJointenflag",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Jointenflag",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187",
        ["minimum"] = 4,
        ["maximum"] = 20,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_en_flag",
                ["type"] = "bool",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgJointerrclear",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Jointerrclear",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_num",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgJointerrorcode",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Jointerrorcode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b",
        ["minimum"] = 5,
        ["maximum"] = 37,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_error",
                ["type"] = "uint16",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "dof",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgJointpos",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Jointpos",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9",
        ["minimum"] = 10,
        ["maximum"] = 74,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "follow",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "expand",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "dof",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgJointposcustom",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Jointposcustom",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128",
        ["minimum"] = 12,
        ["maximum"] = 76,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "follow",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "expand",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "dof",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "trajectory_mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "radio",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgJointposeeuler",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Jointposeeuler",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "euler",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "position",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgJointspeed",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Jointspeed",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_speed",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgJointteach",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Jointteach",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "num",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "direction",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "speed",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgJointtemperature",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Jointtemperature",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_temperature",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgJointversion",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Jointversion",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962",
        ["minimum"] = 5,
        ["maximum"] = 4165,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_version",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgJointvoltage",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Jointvoltage",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_voltage",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgLiftheight",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Liftheight",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "height",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "speed",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "block",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgLiftspeed",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Liftspeed",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "speed",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgLiftstate",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Liftstate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "height",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "current",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "err_flag",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "mode",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgMastername",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Mastername",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "master_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgModbusreaddata",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Modbusreaddata",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4",
        ["minimum"] = 5,
        ["maximum"] = 69,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "read_data",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgModbusrtureadparams",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Modbusrtureadparams",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "address",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "device",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "type",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "num",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgModbusrtuwriteparams",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Modbusrtuwriteparams",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18",
        ["minimum"] = 20,
        ["maximum"] = 84,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "address",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "device",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "type",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "num",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "data",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgModbustcpmasterinfo",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Modbustcpmasterinfo",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa",
        ["minimum"] = 13,
        ["maximum"] = 525,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "master_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ip",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "port",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgModbustcpmasterlist",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Modbustcpmasterlist",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1",
        ["minimum"] = 12,
        ["maximum"] = 8668,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "page_num",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "page_size",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "total_size",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "vague_search",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "master_list",
                ["type"] = "Ros2Rm_ros_interfacesMsgModbustcpmasterinfo",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 13,
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgModbustcpmasterupdata",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Modbustcpmasterupdata",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad",
        ["minimum"] = 16,
        ["maximum"] = 784,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "master_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "new_master_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ip",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "port",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgModbustcpreadparams",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Modbustcpreadparams",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7",
        ["minimum"] = 20,
        ["maximum"] = 532,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "address",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "master_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ip",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "port",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "num",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgModbustcpwriteparams",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Modbustcpwriteparams",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b",
        ["minimum"] = 24,
        ["maximum"] = 600,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "address",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "master_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ip",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "port",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "num",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "data",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgMovec",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Movec",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b",
        ["minimum"] = 116,
        ["maximum"] = 116,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pose_mid",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "pose_end",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "speed",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "trajectory_connect",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "block",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "loop",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgMovej",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Movej",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b",
        ["minimum"] = 8,
        ["maximum"] = 72,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "block",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "trajectory_connect",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "dof",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgMovejp",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Movejp",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72",
        ["minimum"] = 59,
        ["maximum"] = 59,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "speed",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "trajectory_connect",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "block",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgMovel",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Movel",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8",
        ["minimum"] = 59,
        ["maximum"] = 59,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "speed",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "trajectory_connect",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "block",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgMoveloffset",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Moveloffset",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493",
        ["minimum"] = 67,
        ["maximum"] = 67,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "speed",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "r",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "trajectory_connect",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "frame_type",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "block",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgOrtteach",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Ortteach",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "type",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "direction",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "speed",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgPosteach",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Posteach",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "type",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "direction",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "speed",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgProgramrunstate",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Programrunstate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964",
        ["minimum"] = 37,
        ["maximum"] = 165,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "run_state",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "id",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "edit_id",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "plan_num",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "total_loop",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "step_mode",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "plan_speed",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "loop_num",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "loop_cont",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgRS485params",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/RS485params",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7",
        ["minimum"] = 9,
        ["maximum"] = 9,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "mode",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "baudrate",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgRmerr",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Rmerr",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b",
        ["minimum"] = 5,
        ["maximum"] = 69,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "err_len",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "err",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgRmplusbase",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Rmplusbase",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6",
        ["minimum"] = 413,
        ["maximum"] = 1437,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "manu",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "type",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hv",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sv",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "bv",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "id",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "dof",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "check",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "bee",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "force",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "touch",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "touch_num",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "touch_sw",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hand",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "pos_up",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "pos_low",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "angle_up",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "angle_low",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed_up",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed_low",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_up",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_low",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgRmplusstate",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Rmplusstate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1",
        ["minimum"] = 724,
        ["maximum"] = 724,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "sys_state",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "dof_state",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "dof_err",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "pos",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "angle",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "current",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "normal_force",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 18,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tangential_force",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 18,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tangential_force_dir",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 18,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tsa",
                ["type"] = "uint32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tma",
                ["type"] = "uint32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "touch_data",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 18,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgRmversion",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Rmversion",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "version",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgRobotInfo",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/RobotInfo",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "arm_dof",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "arm_model",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "force_type",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "robot_controller_version",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgSendproject",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Sendproject",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330",
        ["minimum"] = 32,
        ["maximum"] = 288,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "project_path",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "project_path_len",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "plan_speed",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "only_save",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "save_id",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "step_flag",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "auto_start",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "project_type",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgSetforceposition",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Setforceposition",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "sensor",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "direction",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "n",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgSetrealtimepush",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Setrealtimepush",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368",
        ["minimum"] = 18,
        ["maximum"] = 274,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "cycle",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "port",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "force_coordinate",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "ip",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "aloha_state_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "arm_current_status_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "expand_state_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hand_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joint_speed_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "lift_state_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "plus_base_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "plus_state_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgSixforce",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Sixforce",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "force_fx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_fy",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_fz",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_mx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_my",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_mz",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgStop",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Stop",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgToolsoftwareversionv4",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Toolsoftwareversionv4",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991",
        ["minimum"] = 5,
        ["maximum"] = 261,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "tool_version",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgTrajectoryinfo",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Trajectoryinfo",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1",
        ["minimum"] = 13,
        ["maximum"] = 525,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "create_time",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "point_num",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgTrajectorylist",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Trajectorylist",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f",
        ["minimum"] = 21,
        ["maximum"] = 8677,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "page_num",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "page_size",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "total_size",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "vague_search",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tra_list",
                ["type"] = "Ros2Rm_ros_interfacesMsgTrajectoryinfo",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 13,
            },
            {
                ["name"] = "state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgUdpexpandstate",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Udpexpandstate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5",
        ["minimum"] = 14,
        ["maximum"] = 14,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pos",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "current",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "err_flag",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "en_flag",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joint_id",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "mode",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rm_ros_interfacesMsgUdpliftstate",
        ["ros_version"] = 2,
        ["native_type"] = "rm_ros_interfaces/msg/Udpliftstate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817",
        ["minimum"] = 13,
        ["maximum"] = 13,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "height",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "pos",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "current",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "en_flag",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "err_flag",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
}
local classes, by_name = wire.records(schemas)

--- @class Ros2Geometry_msgsMsgPoint
--- @brief Complete ROS2 geometry_msgs/msg/Point value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float64.
--- @field y number Finite IEEE float64.
--- @field z number Finite IEEE float64.
--- @brief Ros2Geometry_msgsMsgPoint.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgPoint.NATIVE_TYPE: Exact normalized native type name geometry_msgs/msg/Point.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Point.
--- @brief Ros2Geometry_msgsMsgPoint.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgPoint.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgPoint.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Geometry_msgsMsgPoint.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Geometry_msgsMsgPoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgPoint value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgPoint.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgPoint
--- @brief Encode a complete Ros2Geometry_msgsMsgPoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgPoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Geometry_msgsMsgPoint.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgPoint): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgPoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgPoint value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgPoint.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgPoint
local Ros2Geometry_msgsMsgPoint = classes["Ros2Geometry_msgsMsgPoint"]

--- @class Ros2Geometry_msgsMsgQuaternion
--- @brief Complete ROS2 geometry_msgs/msg/Quaternion value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float64. Declared native scalar default: 0.0.
--- @field y number Finite IEEE float64. Declared native scalar default: 0.0.
--- @field z number Finite IEEE float64. Declared native scalar default: 0.0.
--- @field w number Finite IEEE float64. Declared native scalar default: 1.0.
--- @brief Ros2Geometry_msgsMsgQuaternion.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgQuaternion.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgQuaternion.NATIVE_TYPE: Exact normalized native type name geometry_msgs/msg/Quaternion.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgQuaternion.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Quaternion.
--- @brief Ros2Geometry_msgsMsgQuaternion.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgQuaternion.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgQuaternion.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgQuaternion.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgQuaternion.MIN_WIRE_BYTES: Inclusive complete minimum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgQuaternion.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 32 bytes.
--- @brief Ros2Geometry_msgsMsgQuaternion.MAX_WIRE_BYTES: Inclusive complete maximum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgQuaternion.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 32 bytes.
--- @brief Construct Ros2Geometry_msgsMsgQuaternion with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgQuaternion value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgQuaternion.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgQuaternion
--- @brief Encode a complete Ros2Geometry_msgsMsgQuaternion value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgQuaternion [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 32..32 bytes.
--- @see Ros2Geometry_msgsMsgQuaternion.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgQuaternion): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgQuaternion canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgQuaternion value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgQuaternion.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgQuaternion
local Ros2Geometry_msgsMsgQuaternion = classes["Ros2Geometry_msgsMsgQuaternion"]

--- @class Ros2Geometry_msgsMsgPose
--- @brief Complete ROS2 geometry_msgs/msg/Pose value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field position table Complete nested geometry_msgs/msg/Point value; no native fields are projected away.
--- @field orientation table Complete nested geometry_msgs/msg/Quaternion value; no native fields are projected away.
--- @brief Ros2Geometry_msgsMsgPose.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPose.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgPose.NATIVE_TYPE: Exact normalized native type name geometry_msgs/msg/Pose.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPose.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Pose.
--- @brief Ros2Geometry_msgsMsgPose.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPose.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgPose.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPose.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgPose.MIN_WIRE_BYTES: Inclusive complete minimum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPose.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 56 bytes.
--- @brief Ros2Geometry_msgsMsgPose.MAX_WIRE_BYTES: Inclusive complete maximum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPose.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 56 bytes.
--- @brief Construct Ros2Geometry_msgsMsgPose with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgPose value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgPose.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgPose
--- @brief Encode a complete Ros2Geometry_msgsMsgPose value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgPose [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 56..56 bytes.
--- @see Ros2Geometry_msgsMsgPose.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgPose): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgPose canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgPose value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgPose.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgPose
local Ros2Geometry_msgsMsgPose = classes["Ros2Geometry_msgsMsgPose"]

--- @class Ros2Rm_ros_interfacesMsgAlohastate
--- @brief Complete ROS2 rm_ros_interfaces/msg/Alohastate value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field io1_state integer Exact int16 range -32768..32767.
--- @field io2_state integer Exact int16 range -32768..32767.
--- @brief Ros2Rm_ros_interfacesMsgAlohastate.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgAlohastate.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgAlohastate.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Alohastate.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgAlohastate.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Alohastate.
--- @brief Ros2Rm_ros_interfacesMsgAlohastate.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgAlohastate.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgAlohastate.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgAlohastate.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgAlohastate.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgAlohastate.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rm_ros_interfacesMsgAlohastate.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgAlohastate.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgAlohastate with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgAlohastate value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgAlohastate.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgAlohastate
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgAlohastate value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgAlohastate [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Rm_ros_interfacesMsgAlohastate.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgAlohastate): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgAlohastate canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgAlohastate value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgAlohastate.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgAlohastate
local Ros2Rm_ros_interfacesMsgAlohastate = classes["Ros2Rm_ros_interfacesMsgAlohastate"]

--- @class Ros2Rm_ros_interfacesMsgArmcurrentstatus
--- @brief Complete ROS2 rm_ros_interfaces/msg/Armcurrentstatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field arm_current_status integer Exact uint16 range 0..65535.
--- @brief Ros2Rm_ros_interfacesMsgArmcurrentstatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmcurrentstatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgArmcurrentstatus.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Armcurrentstatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmcurrentstatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Armcurrentstatus.
--- @brief Ros2Rm_ros_interfacesMsgArmcurrentstatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmcurrentstatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgArmcurrentstatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmcurrentstatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgArmcurrentstatus.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmcurrentstatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Rm_ros_interfacesMsgArmcurrentstatus.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmcurrentstatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgArmcurrentstatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgArmcurrentstatus value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgArmcurrentstatus.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgArmcurrentstatus
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgArmcurrentstatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgArmcurrentstatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Rm_ros_interfacesMsgArmcurrentstatus.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgArmcurrentstatus): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgArmcurrentstatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgArmcurrentstatus value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgArmcurrentstatus.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgArmcurrentstatus
local Ros2Rm_ros_interfacesMsgArmcurrentstatus = classes["Ros2Rm_ros_interfacesMsgArmcurrentstatus"]

--- @class Ros2Rm_ros_interfacesMsgArmoriginalstate
--- @brief Complete ROS2 rm_ros_interfaces/msg/Armoriginalstate value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field pose number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field err integer Exact uint16 range 0..65535.
--- @field err_len integer Exact uint8 range 0..255.
--- @field dof integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgArmoriginalstate.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmoriginalstate.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgArmoriginalstate.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Armoriginalstate.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmoriginalstate.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Armoriginalstate.
--- @brief Ros2Rm_ros_interfacesMsgArmoriginalstate.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmoriginalstate.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgArmoriginalstate.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmoriginalstate.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgArmoriginalstate.MIN_WIRE_BYTES: Inclusive complete minimum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmoriginalstate.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 32 bytes.
--- @brief Ros2Rm_ros_interfacesMsgArmoriginalstate.MAX_WIRE_BYTES: Inclusive complete maximum 96 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmoriginalstate.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 96 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgArmoriginalstate with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgArmoriginalstate value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgArmoriginalstate.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgArmoriginalstate
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgArmoriginalstate value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgArmoriginalstate [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 32..96 bytes.
--- @see Ros2Rm_ros_interfacesMsgArmoriginalstate.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgArmoriginalstate): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgArmoriginalstate canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgArmoriginalstate value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgArmoriginalstate.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgArmoriginalstate
local Ros2Rm_ros_interfacesMsgArmoriginalstate = classes["Ros2Rm_ros_interfacesMsgArmoriginalstate"]

--- @class Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
--- @brief Complete ROS2 rm_ros_interfaces/msg/Softwarebuildinfo value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field build_time string Strict UTF-8 without NUL; length0..256 bytes.
--- @field version string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Softwarebuildinfo.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Softwarebuildinfo.
--- @brief Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.MAX_WIRE_BYTES: Inclusive complete maximum 520 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 520 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgSoftwarebuildinfo with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgSoftwarebuildinfo value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgSoftwarebuildinfo value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgSoftwarebuildinfo [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..520 bytes.
--- @see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgSoftwarebuildinfo): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgSoftwarebuildinfo canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgSoftwarebuildinfo value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
local Ros2Rm_ros_interfacesMsgSoftwarebuildinfo = classes["Ros2Rm_ros_interfacesMsgSoftwarebuildinfo"]

--- @class Ros2Rm_ros_interfacesMsgArmsoftversion
--- @brief Complete ROS2 rm_ros_interfaces/msg/Armsoftversion value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field product_version string Strict UTF-8 without NUL; length0..256 bytes.
--- @field controller_version string Strict UTF-8 without NUL; length0..256 bytes.
--- @field algorithm_info string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ctrl_info table Complete nested rm_ros_interfaces/msg/Softwarebuildinfo value; no native fields are projected away.
--- @field dynamic_info string Strict UTF-8 without NUL; length0..256 bytes.
--- @field plan_info table Complete nested rm_ros_interfaces/msg/Softwarebuildinfo value; no native fields are projected away.
--- @field com_info table Complete nested rm_ros_interfaces/msg/Softwarebuildinfo value; no native fields are projected away.
--- @field program_info table Complete nested rm_ros_interfaces/msg/Softwarebuildinfo value; no native fields are projected away.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @field planversion string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ctrlversion string Strict UTF-8 without NUL; length0..256 bytes.
--- @field kernal1 string Strict UTF-8 without NUL; length0..256 bytes.
--- @field kernal2 string Strict UTF-8 without NUL; length0..256 bytes.
--- @field productversion string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversion.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversion.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversion.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Armsoftversion.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversion.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Armsoftversion.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversion.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversion.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversion.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversion.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversion.MIN_WIRE_BYTES: Inclusive complete minimum 69 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversion.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 69 bytes.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversion.MAX_WIRE_BYTES: Inclusive complete maximum 4421 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversion.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4421 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgArmsoftversion with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgArmsoftversion value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversion.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgArmsoftversion
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgArmsoftversion value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgArmsoftversion [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 69..4421 bytes.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversion.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgArmsoftversion): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgArmsoftversion canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgArmsoftversion value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversion.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgArmsoftversion
local Ros2Rm_ros_interfacesMsgArmsoftversion = classes["Ros2Rm_ros_interfacesMsgArmsoftversion"]

--- @class Ros2Rm_ros_interfacesMsgArmsoftversionv3
--- @brief Complete ROS2 rm_ros_interfaces/msg/Armsoftversionv3 value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field product_version string Strict UTF-8 without NUL; length0..256 bytes.
--- @field controller_version string Strict UTF-8 without NUL; length0..256 bytes.
--- @field algorithm_info string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ctrl_info table Complete nested rm_ros_interfaces/msg/Softwarebuildinfo value; no native fields are projected away.
--- @field dynamic_info string Strict UTF-8 without NUL; length0..256 bytes.
--- @field plan_info table Complete nested rm_ros_interfaces/msg/Softwarebuildinfo value; no native fields are projected away.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversionv3.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv3.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversionv3.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Armsoftversionv3.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv3.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Armsoftversionv3.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversionv3.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv3.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversionv3.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv3.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversionv3.MIN_WIRE_BYTES: Inclusive complete minimum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv3.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 32 bytes.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversionv3.MAX_WIRE_BYTES: Inclusive complete maximum 2080 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv3.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2080 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgArmsoftversionv3 with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgArmsoftversionv3 value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv3.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgArmsoftversionv3
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgArmsoftversionv3 value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgArmsoftversionv3 [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 32..2080 bytes.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv3.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgArmsoftversionv3): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgArmsoftversionv3 canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgArmsoftversionv3 value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv3.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgArmsoftversionv3
local Ros2Rm_ros_interfacesMsgArmsoftversionv3 = classes["Ros2Rm_ros_interfacesMsgArmsoftversionv3"]

--- @class Ros2Rm_ros_interfacesMsgArmsoftversionv4
--- @brief Complete ROS2 rm_ros_interfaces/msg/Armsoftversionv4 value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field product_version string Strict UTF-8 without NUL; length0..256 bytes.
--- @field controller_version string Strict UTF-8 without NUL; length0..256 bytes.
--- @field algorithm_info string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ctrl_info table Complete nested rm_ros_interfaces/msg/Softwarebuildinfo value; no native fields are projected away.
--- @field com_info table Complete nested rm_ros_interfaces/msg/Softwarebuildinfo value; no native fields are projected away.
--- @field program_info table Complete nested rm_ros_interfaces/msg/Softwarebuildinfo value; no native fields are projected away.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversionv4.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv4.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversionv4.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Armsoftversionv4.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv4.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Armsoftversionv4.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversionv4.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv4.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversionv4.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv4.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversionv4.MIN_WIRE_BYTES: Inclusive complete minimum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv4.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 36 bytes.
--- @brief Ros2Rm_ros_interfacesMsgArmsoftversionv4.MAX_WIRE_BYTES: Inclusive complete maximum 2340 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv4.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2340 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgArmsoftversionv4 with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgArmsoftversionv4 value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv4.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgArmsoftversionv4
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgArmsoftversionv4 value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgArmsoftversionv4 [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 36..2340 bytes.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv4.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgArmsoftversionv4): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgArmsoftversionv4 canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgArmsoftversionv4 value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgArmsoftversionv4.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgArmsoftversionv4
local Ros2Rm_ros_interfacesMsgArmsoftversionv4 = classes["Ros2Rm_ros_interfacesMsgArmsoftversionv4"]

--- @class Ros2Rm_ros_interfacesMsgArmstate
--- @brief Complete ROS2 rm_ros_interfaces/msg/Armstate value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field pose table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field err integer Exact uint16 range 0..65535.
--- @field err_len integer Exact uint8 range 0..255.
--- @field dof integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgArmstate.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmstate.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgArmstate.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Armstate.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmstate.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Armstate.
--- @brief Ros2Rm_ros_interfacesMsgArmstate.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmstate.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgArmstate.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmstate.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgArmstate.MIN_WIRE_BYTES: Inclusive complete minimum 64 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmstate.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 64 bytes.
--- @brief Ros2Rm_ros_interfacesMsgArmstate.MAX_WIRE_BYTES: Inclusive complete maximum 128 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgArmstate.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 128 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgArmstate with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgArmstate value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgArmstate.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgArmstate
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgArmstate value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgArmstate [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 64..128 bytes.
--- @see Ros2Rm_ros_interfacesMsgArmstate.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgArmstate): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgArmstate canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgArmstate value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgArmstate.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgArmstate
local Ros2Rm_ros_interfacesMsgArmstate = classes["Ros2Rm_ros_interfacesMsgArmstate"]

--- @class Ros2Rm_ros_interfacesMsgCartepos
--- @brief Complete ROS2 rm_ros_interfaces/msg/Cartepos value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pose table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field follow boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgCartepos.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgCartepos.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgCartepos.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Cartepos.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgCartepos.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Cartepos.
--- @brief Ros2Rm_ros_interfacesMsgCartepos.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgCartepos.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgCartepos.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgCartepos.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgCartepos.MIN_WIRE_BYTES: Inclusive complete minimum 57 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgCartepos.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 57 bytes.
--- @brief Ros2Rm_ros_interfacesMsgCartepos.MAX_WIRE_BYTES: Inclusive complete maximum 57 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgCartepos.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 57 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgCartepos with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgCartepos value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgCartepos.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgCartepos
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgCartepos value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgCartepos [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 57..57 bytes.
--- @see Ros2Rm_ros_interfacesMsgCartepos.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgCartepos): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgCartepos canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgCartepos value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgCartepos.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgCartepos
local Ros2Rm_ros_interfacesMsgCartepos = classes["Ros2Rm_ros_interfacesMsgCartepos"]

--- @class Ros2Rm_ros_interfacesMsgCarteposcustom
--- @brief Complete ROS2 rm_ros_interfaces/msg/Carteposcustom value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pose table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field follow boolean Exact boolean; encoded as one byte0/1.
--- @field trajectory_mode integer Exact uint8 range 0..255.
--- @field radio integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgCarteposcustom.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgCarteposcustom.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgCarteposcustom.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Carteposcustom.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgCarteposcustom.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Carteposcustom.
--- @brief Ros2Rm_ros_interfacesMsgCarteposcustom.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgCarteposcustom.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgCarteposcustom.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgCarteposcustom.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgCarteposcustom.MIN_WIRE_BYTES: Inclusive complete minimum 59 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgCarteposcustom.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 59 bytes.
--- @brief Ros2Rm_ros_interfacesMsgCarteposcustom.MAX_WIRE_BYTES: Inclusive complete maximum 59 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgCarteposcustom.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 59 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgCarteposcustom with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgCarteposcustom value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgCarteposcustom.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgCarteposcustom
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgCarteposcustom value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgCarteposcustom [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 59..59 bytes.
--- @see Ros2Rm_ros_interfacesMsgCarteposcustom.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgCarteposcustom): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgCarteposcustom canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgCarteposcustom value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgCarteposcustom.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgCarteposcustom
local Ros2Rm_ros_interfacesMsgCarteposcustom = classes["Ros2Rm_ros_interfacesMsgCarteposcustom"]

--- @class Ros2Rm_ros_interfacesMsgExpandpos
--- @brief Complete ROS2 rm_ros_interfaces/msg/Expandpos value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pos integer Exact int32 range -2147483648..2147483647.
--- @field speed integer Exact uint16 range 0..65535.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgExpandpos.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgExpandpos.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgExpandpos.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Expandpos.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgExpandpos.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Expandpos.
--- @brief Ros2Rm_ros_interfacesMsgExpandpos.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgExpandpos.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgExpandpos.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgExpandpos.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgExpandpos.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgExpandpos.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros2Rm_ros_interfacesMsgExpandpos.MAX_WIRE_BYTES: Inclusive complete maximum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgExpandpos.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 7 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgExpandpos with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgExpandpos value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgExpandpos.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgExpandpos
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgExpandpos value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgExpandpos [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..7 bytes.
--- @see Ros2Rm_ros_interfacesMsgExpandpos.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgExpandpos): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgExpandpos canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgExpandpos value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgExpandpos.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgExpandpos
local Ros2Rm_ros_interfacesMsgExpandpos = classes["Ros2Rm_ros_interfacesMsgExpandpos"]

--- @class Ros2Rm_ros_interfacesMsgExpandstate
--- @brief Complete ROS2 rm_ros_interfaces/msg/Expandstate value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pos integer Exact int32 range -2147483648..2147483647.
--- @field current integer Exact int32 range -2147483648..2147483647.
--- @field err_flag integer Exact uint16 range 0..65535.
--- @field mode integer Exact int16 range -32768..32767.
--- @brief Ros2Rm_ros_interfacesMsgExpandstate.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgExpandstate.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgExpandstate.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Expandstate.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgExpandstate.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Expandstate.
--- @brief Ros2Rm_ros_interfacesMsgExpandstate.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgExpandstate.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgExpandstate.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgExpandstate.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgExpandstate.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgExpandstate.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Rm_ros_interfacesMsgExpandstate.MAX_WIRE_BYTES: Inclusive complete maximum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgExpandstate.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 12 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgExpandstate with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgExpandstate value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgExpandstate.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgExpandstate
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgExpandstate value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgExpandstate [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..12 bytes.
--- @see Ros2Rm_ros_interfacesMsgExpandstate.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgExpandstate): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgExpandstate canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgExpandstate value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgExpandstate.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgExpandstate
local Ros2Rm_ros_interfacesMsgExpandstate = classes["Ros2Rm_ros_interfacesMsgExpandstate"]

--- @class Ros2Rm_ros_interfacesMsgFlowchartrunstate
--- @brief Complete ROS2 rm_ros_interfaces/msg/Flowchartrunstate value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field run_state integer Exact uint8 range 0..255.
--- @field id integer Exact uint8 range 0..255.
--- @field name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field plan_speed integer Exact uint8 range 0..255.
--- @field step_mode integer Exact uint8 range 0..255.
--- @field modal_id string Strict UTF-8 without NUL; length0..256 bytes.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgFlowchartrunstate.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgFlowchartrunstate.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgFlowchartrunstate.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Flowchartrunstate.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgFlowchartrunstate.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Flowchartrunstate.
--- @brief Ros2Rm_ros_interfacesMsgFlowchartrunstate.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgFlowchartrunstate.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgFlowchartrunstate.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgFlowchartrunstate.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgFlowchartrunstate.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgFlowchartrunstate.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros2Rm_ros_interfacesMsgFlowchartrunstate.MAX_WIRE_BYTES: Inclusive complete maximum 525 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgFlowchartrunstate.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 525 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgFlowchartrunstate with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgFlowchartrunstate value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgFlowchartrunstate.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgFlowchartrunstate
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgFlowchartrunstate value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgFlowchartrunstate [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..525 bytes.
--- @see Ros2Rm_ros_interfacesMsgFlowchartrunstate.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgFlowchartrunstate): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgFlowchartrunstate canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgFlowchartrunstate value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgFlowchartrunstate.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgFlowchartrunstate
local Ros2Rm_ros_interfacesMsgFlowchartrunstate = classes["Ros2Rm_ros_interfacesMsgFlowchartrunstate"]

--- @class Ros2Rm_ros_interfacesMsgForce_Position_State
--- @brief Complete ROS2 rm_ros_interfaces/msg/Force_Position_State value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field force number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field arm_err integer Exact uint16 range 0..65535.
--- @brief Ros2Rm_ros_interfacesMsgForce_Position_State.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForce_Position_State.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgForce_Position_State.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Force_Position_State.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForce_Position_State.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Force_Position_State.
--- @brief Ros2Rm_ros_interfacesMsgForce_Position_State.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForce_Position_State.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgForce_Position_State.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForce_Position_State.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgForce_Position_State.MIN_WIRE_BYTES: Inclusive complete minimum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForce_Position_State.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 30 bytes.
--- @brief Ros2Rm_ros_interfacesMsgForce_Position_State.MAX_WIRE_BYTES: Inclusive complete maximum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForce_Position_State.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 30 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgForce_Position_State with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgForce_Position_State value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgForce_Position_State.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgForce_Position_State
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgForce_Position_State value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgForce_Position_State [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 30..30 bytes.
--- @see Ros2Rm_ros_interfacesMsgForce_Position_State.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgForce_Position_State): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgForce_Position_State canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgForce_Position_State value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgForce_Position_State.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgForce_Position_State
local Ros2Rm_ros_interfacesMsgForce_Position_State = classes["Ros2Rm_ros_interfacesMsgForce_Position_State"]

--- @class Ros2Rm_ros_interfacesMsgForcepositionmove
--- @brief Complete ROS2 rm_ros_interfaces/msg/Forcepositionmove value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pose table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field flag integer Exact uint8 range 0..255.
--- @field sensor integer Exact uint8 range 0..255.
--- @field mode integer Exact uint8 range 0..255.
--- @field control_mode integer[] Exact uint8 range 0..255. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field follow boolean Exact boolean; encoded as one byte0/1.
--- @field desired_force number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field limit_vel number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field trajectory_mode integer Exact uint8 range 0..255.
--- @field radio integer Exact uint16 range 0..65535.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmove.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmove.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmove.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Forcepositionmove.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmove.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Forcepositionmove.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmove.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmove.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmove.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmove.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmove.MIN_WIRE_BYTES: Inclusive complete minimum 121 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmove.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 121 bytes.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmove.MAX_WIRE_BYTES: Inclusive complete maximum 185 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmove.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 185 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgForcepositionmove with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgForcepositionmove value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmove.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgForcepositionmove
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgForcepositionmove value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgForcepositionmove [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 121..185 bytes.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmove.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgForcepositionmove): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgForcepositionmove canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgForcepositionmove value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmove.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgForcepositionmove
local Ros2Rm_ros_interfacesMsgForcepositionmove = classes["Ros2Rm_ros_interfacesMsgForcepositionmove"]

--- @class Ros2Rm_ros_interfacesMsgForcepositionmovejoint
--- @brief Complete ROS2 rm_ros_interfaces/msg/Forcepositionmovejoint value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field sensor integer Exact uint8 range 0..255.
--- @field mode integer Exact uint8 range 0..255.
--- @field dir integer Exact int16 range -32768..32767.
--- @field force number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field follow boolean Exact boolean; encoded as one byte0/1.
--- @field dof integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmovejoint.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovejoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmovejoint.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Forcepositionmovejoint.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovejoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Forcepositionmovejoint.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmovejoint.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovejoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmovejoint.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovejoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmovejoint.MIN_WIRE_BYTES: Inclusive complete minimum 14 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovejoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 14 bytes.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmovejoint.MAX_WIRE_BYTES: Inclusive complete maximum 78 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovejoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 78 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgForcepositionmovejoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgForcepositionmovejoint value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovejoint.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgForcepositionmovejoint
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgForcepositionmovejoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgForcepositionmovejoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 14..78 bytes.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovejoint.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgForcepositionmovejoint): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgForcepositionmovejoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgForcepositionmovejoint value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovejoint.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgForcepositionmovejoint
local Ros2Rm_ros_interfacesMsgForcepositionmovejoint = classes["Ros2Rm_ros_interfacesMsgForcepositionmovejoint"]

--- @class Ros2Rm_ros_interfacesMsgForcepositionmovepose
--- @brief Complete ROS2 rm_ros_interfaces/msg/Forcepositionmovepose value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pose table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field sensor integer Exact uint8 range 0..255.
--- @field mode integer Exact uint8 range 0..255.
--- @field dir integer Exact uint8 range 0..255.
--- @field force integer Exact int16 range -32768..32767.
--- @field follow boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmovepose.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovepose.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmovepose.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Forcepositionmovepose.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovepose.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Forcepositionmovepose.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmovepose.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovepose.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmovepose.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovepose.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmovepose.MIN_WIRE_BYTES: Inclusive complete minimum 62 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovepose.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 62 bytes.
--- @brief Ros2Rm_ros_interfacesMsgForcepositionmovepose.MAX_WIRE_BYTES: Inclusive complete maximum 62 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovepose.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 62 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgForcepositionmovepose with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgForcepositionmovepose value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovepose.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgForcepositionmovepose
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgForcepositionmovepose value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgForcepositionmovepose [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 62..62 bytes.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovepose.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgForcepositionmovepose): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgForcepositionmovepose canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgForcepositionmovepose value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgForcepositionmovepose.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgForcepositionmovepose
local Ros2Rm_ros_interfacesMsgForcepositionmovepose = classes["Ros2Rm_ros_interfacesMsgForcepositionmovepose"]

--- @class Ros2Rm_ros_interfacesMsgGetArmState_Command
--- @brief Complete ROS2 rm_ros_interfaces/msg/GetArmState_Command value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field command string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Rm_ros_interfacesMsgGetArmState_Command.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetArmState_Command.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgGetArmState_Command.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/GetArmState_Command.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetArmState_Command.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/GetArmState_Command.
--- @brief Ros2Rm_ros_interfacesMsgGetArmState_Command.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetArmState_Command.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgGetArmState_Command.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetArmState_Command.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgGetArmState_Command.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetArmState_Command.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rm_ros_interfacesMsgGetArmState_Command.MAX_WIRE_BYTES: Inclusive complete maximum 260 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetArmState_Command.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 260 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgGetArmState_Command with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgGetArmState_Command value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgGetArmState_Command.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgGetArmState_Command
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgGetArmState_Command value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgGetArmState_Command [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..260 bytes.
--- @see Ros2Rm_ros_interfacesMsgGetArmState_Command.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgGetArmState_Command): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgGetArmState_Command canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgGetArmState_Command value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgGetArmState_Command.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgGetArmState_Command
local Ros2Rm_ros_interfacesMsgGetArmState_Command = classes["Ros2Rm_ros_interfacesMsgGetArmState_Command"]

--- @class Ros2Rm_ros_interfacesMsgGetallframe
--- @brief Complete ROS2 rm_ros_interfaces/msg/Getallframe value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field frame_name string[] Strict UTF-8 without NUL; length0..256 bytes. Exactly 10 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rm_ros_interfacesMsgGetallframe.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetallframe.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgGetallframe.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Getallframe.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetallframe.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Getallframe.
--- @brief Ros2Rm_ros_interfacesMsgGetallframe.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetallframe.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgGetallframe.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetallframe.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgGetallframe.MIN_WIRE_BYTES: Inclusive complete minimum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetallframe.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 40 bytes.
--- @brief Ros2Rm_ros_interfacesMsgGetallframe.MAX_WIRE_BYTES: Inclusive complete maximum 2600 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetallframe.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2600 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgGetallframe with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgGetallframe value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgGetallframe.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgGetallframe
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgGetallframe value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgGetallframe [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 40..2600 bytes.
--- @see Ros2Rm_ros_interfacesMsgGetallframe.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgGetallframe): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgGetallframe canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgGetallframe value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgGetallframe.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgGetallframe
local Ros2Rm_ros_interfacesMsgGetallframe = classes["Ros2Rm_ros_interfacesMsgGetallframe"]

--- @class Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
--- @brief Complete ROS2 rm_ros_interfaces/msg/Getmodbustcpmasterlist value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field page_num integer Exact int32 range -2147483648..2147483647.
--- @field page_size integer Exact int32 range -2147483648..2147483647.
--- @field vague_search string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Getmodbustcpmasterlist.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Getmodbustcpmasterlist.
--- @brief Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.MAX_WIRE_BYTES: Inclusive complete maximum 268 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 268 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..268 bytes.
--- @see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
local Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist = classes["Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist"]

--- @class Ros2Rm_ros_interfacesMsgGettrajectorylist
--- @brief Complete ROS2 rm_ros_interfaces/msg/Gettrajectorylist value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field page_num integer Exact int32 range -2147483648..2147483647.
--- @field page_size integer Exact int32 range -2147483648..2147483647.
--- @field vague_search string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Rm_ros_interfacesMsgGettrajectorylist.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGettrajectorylist.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgGettrajectorylist.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Gettrajectorylist.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGettrajectorylist.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Gettrajectorylist.
--- @brief Ros2Rm_ros_interfacesMsgGettrajectorylist.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGettrajectorylist.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgGettrajectorylist.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGettrajectorylist.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgGettrajectorylist.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGettrajectorylist.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Rm_ros_interfacesMsgGettrajectorylist.MAX_WIRE_BYTES: Inclusive complete maximum 268 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGettrajectorylist.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 268 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgGettrajectorylist with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgGettrajectorylist value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgGettrajectorylist.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgGettrajectorylist
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgGettrajectorylist value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgGettrajectorylist [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..268 bytes.
--- @see Ros2Rm_ros_interfacesMsgGettrajectorylist.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgGettrajectorylist): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgGettrajectorylist canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgGettrajectorylist value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgGettrajectorylist.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgGettrajectorylist
local Ros2Rm_ros_interfacesMsgGettrajectorylist = classes["Ros2Rm_ros_interfacesMsgGettrajectorylist"]

--- @class Ros2Rm_ros_interfacesMsgGripperpick
--- @brief Complete ROS2 rm_ros_interfaces/msg/Gripperpick value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speed integer Exact uint16 range 0..65535.
--- @field force integer Exact uint16 range 0..65535.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @field timeout integer Exact uint16 range 0..65535.
--- @brief Ros2Rm_ros_interfacesMsgGripperpick.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGripperpick.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgGripperpick.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Gripperpick.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGripperpick.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Gripperpick.
--- @brief Ros2Rm_ros_interfacesMsgGripperpick.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGripperpick.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgGripperpick.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGripperpick.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgGripperpick.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGripperpick.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros2Rm_ros_interfacesMsgGripperpick.MAX_WIRE_BYTES: Inclusive complete maximum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGripperpick.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 7 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgGripperpick with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgGripperpick value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgGripperpick.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgGripperpick
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgGripperpick value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgGripperpick [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..7 bytes.
--- @see Ros2Rm_ros_interfacesMsgGripperpick.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgGripperpick): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgGripperpick canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgGripperpick value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgGripperpick.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgGripperpick
local Ros2Rm_ros_interfacesMsgGripperpick = classes["Ros2Rm_ros_interfacesMsgGripperpick"]

--- @class Ros2Rm_ros_interfacesMsgGripperset
--- @brief Complete ROS2 rm_ros_interfaces/msg/Gripperset value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field position integer Exact uint16 range 0..65535.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @field timeout integer Exact uint16 range 0..65535.
--- @brief Ros2Rm_ros_interfacesMsgGripperset.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGripperset.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgGripperset.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Gripperset.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGripperset.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Gripperset.
--- @brief Ros2Rm_ros_interfacesMsgGripperset.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGripperset.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgGripperset.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGripperset.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgGripperset.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGripperset.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Rm_ros_interfacesMsgGripperset.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgGripperset.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgGripperset with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgGripperset value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgGripperset.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgGripperset
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgGripperset value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgGripperset [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Rm_ros_interfacesMsgGripperset.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgGripperset): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgGripperset canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgGripperset value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgGripperset.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgGripperset
local Ros2Rm_ros_interfacesMsgGripperset = classes["Ros2Rm_ros_interfacesMsgGripperset"]

--- @class Ros2Rm_ros_interfacesMsgHandangle
--- @brief Complete ROS2 rm_ros_interfaces/msg/Handangle value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field hand_angle integer[] Exact int16 range -32768..32767. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgHandangle.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandangle.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgHandangle.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Handangle.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandangle.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Handangle.
--- @brief Ros2Rm_ros_interfacesMsgHandangle.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandangle.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgHandangle.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandangle.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgHandangle.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandangle.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros2Rm_ros_interfacesMsgHandangle.MAX_WIRE_BYTES: Inclusive complete maximum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandangle.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 13 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgHandangle with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgHandangle value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgHandangle.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgHandangle
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgHandangle value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgHandangle [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..13 bytes.
--- @see Ros2Rm_ros_interfacesMsgHandangle.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgHandangle): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgHandangle canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgHandangle value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgHandangle.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgHandangle
local Ros2Rm_ros_interfacesMsgHandangle = classes["Ros2Rm_ros_interfacesMsgHandangle"]

--- @class Ros2Rm_ros_interfacesMsgHandforce
--- @brief Complete ROS2 rm_ros_interfaces/msg/Handforce value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field hand_force integer Exact uint16 range 0..65535.
--- @brief Ros2Rm_ros_interfacesMsgHandforce.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandforce.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgHandforce.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Handforce.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandforce.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Handforce.
--- @brief Ros2Rm_ros_interfacesMsgHandforce.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandforce.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgHandforce.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandforce.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgHandforce.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandforce.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Rm_ros_interfacesMsgHandforce.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandforce.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgHandforce with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgHandforce value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgHandforce.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgHandforce
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgHandforce value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgHandforce [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Rm_ros_interfacesMsgHandforce.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgHandforce): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgHandforce canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgHandforce value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgHandforce.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgHandforce
local Ros2Rm_ros_interfacesMsgHandforce = classes["Ros2Rm_ros_interfacesMsgHandforce"]

--- @class Ros2Rm_ros_interfacesMsgHandposture
--- @brief Complete ROS2 rm_ros_interfaces/msg/Handposture value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field posture_num integer Exact uint16 range 0..65535.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @field timeout integer Exact uint16 range 0..65535.
--- @brief Ros2Rm_ros_interfacesMsgHandposture.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandposture.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgHandposture.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Handposture.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandposture.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Handposture.
--- @brief Ros2Rm_ros_interfacesMsgHandposture.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandposture.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgHandposture.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandposture.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgHandposture.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandposture.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Rm_ros_interfacesMsgHandposture.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandposture.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgHandposture with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgHandposture value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgHandposture.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgHandposture
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgHandposture value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgHandposture [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Rm_ros_interfacesMsgHandposture.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgHandposture): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgHandposture canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgHandposture value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgHandposture.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgHandposture
local Ros2Rm_ros_interfacesMsgHandposture = classes["Ros2Rm_ros_interfacesMsgHandposture"]

--- @class Ros2Rm_ros_interfacesMsgHandseq
--- @brief Complete ROS2 rm_ros_interfaces/msg/Handseq value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field seq_num integer Exact uint16 range 0..65535.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @field timeout integer Exact uint16 range 0..65535.
--- @brief Ros2Rm_ros_interfacesMsgHandseq.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandseq.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgHandseq.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Handseq.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandseq.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Handseq.
--- @brief Ros2Rm_ros_interfacesMsgHandseq.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandseq.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgHandseq.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandseq.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgHandseq.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandseq.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Rm_ros_interfacesMsgHandseq.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandseq.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgHandseq with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgHandseq value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgHandseq.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgHandseq
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgHandseq value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgHandseq [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Rm_ros_interfacesMsgHandseq.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgHandseq): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgHandseq canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgHandseq value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgHandseq.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgHandseq
local Ros2Rm_ros_interfacesMsgHandseq = classes["Ros2Rm_ros_interfacesMsgHandseq"]

--- @class Ros2Rm_ros_interfacesMsgHandspeed
--- @brief Complete ROS2 rm_ros_interfaces/msg/Handspeed value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field hand_speed integer Exact uint16 range 0..65535.
--- @brief Ros2Rm_ros_interfacesMsgHandspeed.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandspeed.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgHandspeed.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Handspeed.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandspeed.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Handspeed.
--- @brief Ros2Rm_ros_interfacesMsgHandspeed.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandspeed.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgHandspeed.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandspeed.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgHandspeed.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandspeed.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Rm_ros_interfacesMsgHandspeed.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandspeed.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgHandspeed with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgHandspeed value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgHandspeed.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgHandspeed
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgHandspeed value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgHandspeed [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Rm_ros_interfacesMsgHandspeed.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgHandspeed): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgHandspeed canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgHandspeed value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgHandspeed.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgHandspeed
local Ros2Rm_ros_interfacesMsgHandspeed = classes["Ros2Rm_ros_interfacesMsgHandspeed"]

--- @class Ros2Rm_ros_interfacesMsgHandstatus
--- @brief Complete ROS2 rm_ros_interfaces/msg/Handstatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field hand_angle integer[] Exact uint16 range 0..65535. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field hand_pos integer[] Exact uint16 range 0..65535. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field hand_state integer[] Exact uint16 range 0..65535. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field hand_force integer[] Exact uint16 range 0..65535. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field hand_err integer Exact uint16 range 0..65535.
--- @brief Ros2Rm_ros_interfacesMsgHandstatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandstatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgHandstatus.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Handstatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandstatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Handstatus.
--- @brief Ros2Rm_ros_interfacesMsgHandstatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandstatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgHandstatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandstatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgHandstatus.MIN_WIRE_BYTES: Inclusive complete minimum 50 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandstatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 50 bytes.
--- @brief Ros2Rm_ros_interfacesMsgHandstatus.MAX_WIRE_BYTES: Inclusive complete maximum 50 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgHandstatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 50 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgHandstatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgHandstatus value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgHandstatus.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgHandstatus
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgHandstatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgHandstatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 50..50 bytes.
--- @see Ros2Rm_ros_interfacesMsgHandstatus.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgHandstatus): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgHandstatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgHandstatus value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgHandstatus.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgHandstatus
local Ros2Rm_ros_interfacesMsgHandstatus = classes["Ros2Rm_ros_interfacesMsgHandstatus"]

--- @class Ros2Rm_ros_interfacesMsgJointcurrent
--- @brief Complete ROS2 rm_ros_interfaces/msg/Jointcurrent value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_current number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rm_ros_interfacesMsgJointcurrent.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointcurrent.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgJointcurrent.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Jointcurrent.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointcurrent.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Jointcurrent.
--- @brief Ros2Rm_ros_interfacesMsgJointcurrent.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointcurrent.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgJointcurrent.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointcurrent.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgJointcurrent.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointcurrent.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rm_ros_interfacesMsgJointcurrent.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointcurrent.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgJointcurrent with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgJointcurrent value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgJointcurrent.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgJointcurrent
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgJointcurrent value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgJointcurrent [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros2Rm_ros_interfacesMsgJointcurrent.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgJointcurrent): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgJointcurrent canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgJointcurrent value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgJointcurrent.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgJointcurrent
local Ros2Rm_ros_interfacesMsgJointcurrent = classes["Ros2Rm_ros_interfacesMsgJointcurrent"]

--- @class Ros2Rm_ros_interfacesMsgJointenflag
--- @brief Complete ROS2 rm_ros_interfaces/msg/Jointenflag value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_en_flag boolean[] Exact boolean; encoded as one byte0/1. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rm_ros_interfacesMsgJointenflag.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointenflag.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgJointenflag.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Jointenflag.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointenflag.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Jointenflag.
--- @brief Ros2Rm_ros_interfacesMsgJointenflag.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointenflag.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgJointenflag.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointenflag.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgJointenflag.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointenflag.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rm_ros_interfacesMsgJointenflag.MAX_WIRE_BYTES: Inclusive complete maximum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointenflag.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 20 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgJointenflag with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgJointenflag value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgJointenflag.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgJointenflag
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgJointenflag value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgJointenflag [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..20 bytes.
--- @see Ros2Rm_ros_interfacesMsgJointenflag.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgJointenflag): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgJointenflag canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgJointenflag value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgJointenflag.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgJointenflag
local Ros2Rm_ros_interfacesMsgJointenflag = classes["Ros2Rm_ros_interfacesMsgJointenflag"]

--- @class Ros2Rm_ros_interfacesMsgJointerrclear
--- @brief Complete ROS2 rm_ros_interfaces/msg/Jointerrclear value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_num integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgJointerrclear.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointerrclear.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgJointerrclear.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Jointerrclear.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointerrclear.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Jointerrclear.
--- @brief Ros2Rm_ros_interfacesMsgJointerrclear.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointerrclear.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgJointerrclear.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointerrclear.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgJointerrclear.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointerrclear.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Rm_ros_interfacesMsgJointerrclear.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointerrclear.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgJointerrclear with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgJointerrclear value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgJointerrclear.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgJointerrclear
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgJointerrclear value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgJointerrclear [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Rm_ros_interfacesMsgJointerrclear.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgJointerrclear): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgJointerrclear canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgJointerrclear value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgJointerrclear.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgJointerrclear
local Ros2Rm_ros_interfacesMsgJointerrclear = classes["Ros2Rm_ros_interfacesMsgJointerrclear"]

--- @class Ros2Rm_ros_interfacesMsgJointerrorcode
--- @brief Complete ROS2 rm_ros_interfaces/msg/Jointerrorcode value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_error integer[] Exact uint16 range 0..65535. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field dof integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgJointerrorcode.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointerrorcode.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgJointerrorcode.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Jointerrorcode.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointerrorcode.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Jointerrorcode.
--- @brief Ros2Rm_ros_interfacesMsgJointerrorcode.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointerrorcode.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgJointerrorcode.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointerrorcode.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgJointerrorcode.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointerrorcode.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Rm_ros_interfacesMsgJointerrorcode.MAX_WIRE_BYTES: Inclusive complete maximum 37 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointerrorcode.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 37 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgJointerrorcode with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgJointerrorcode value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgJointerrorcode.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgJointerrorcode
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgJointerrorcode value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgJointerrorcode [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..37 bytes.
--- @see Ros2Rm_ros_interfacesMsgJointerrorcode.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgJointerrorcode): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgJointerrorcode canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgJointerrorcode value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgJointerrorcode.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgJointerrorcode
local Ros2Rm_ros_interfacesMsgJointerrorcode = classes["Ros2Rm_ros_interfacesMsgJointerrorcode"]

--- @class Ros2Rm_ros_interfacesMsgJointpos
--- @brief Complete ROS2 rm_ros_interfaces/msg/Jointpos value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field follow boolean Exact boolean; encoded as one byte0/1.
--- @field expand number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field dof integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgJointpos.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointpos.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgJointpos.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Jointpos.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointpos.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Jointpos.
--- @brief Ros2Rm_ros_interfacesMsgJointpos.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointpos.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgJointpos.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointpos.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgJointpos.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointpos.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Rm_ros_interfacesMsgJointpos.MAX_WIRE_BYTES: Inclusive complete maximum 74 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointpos.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 74 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgJointpos with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgJointpos value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgJointpos.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgJointpos
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgJointpos value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgJointpos [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..74 bytes.
--- @see Ros2Rm_ros_interfacesMsgJointpos.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgJointpos): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgJointpos canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgJointpos value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgJointpos.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgJointpos
local Ros2Rm_ros_interfacesMsgJointpos = classes["Ros2Rm_ros_interfacesMsgJointpos"]

--- @class Ros2Rm_ros_interfacesMsgJointposcustom
--- @brief Complete ROS2 rm_ros_interfaces/msg/Jointposcustom value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field follow boolean Exact boolean; encoded as one byte0/1.
--- @field expand number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field dof integer Exact uint8 range 0..255.
--- @field trajectory_mode integer Exact uint8 range 0..255.
--- @field radio integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgJointposcustom.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointposcustom.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgJointposcustom.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Jointposcustom.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointposcustom.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Jointposcustom.
--- @brief Ros2Rm_ros_interfacesMsgJointposcustom.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointposcustom.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgJointposcustom.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointposcustom.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgJointposcustom.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointposcustom.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Rm_ros_interfacesMsgJointposcustom.MAX_WIRE_BYTES: Inclusive complete maximum 76 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointposcustom.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 76 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgJointposcustom with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgJointposcustom value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgJointposcustom.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgJointposcustom
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgJointposcustom value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgJointposcustom [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..76 bytes.
--- @see Ros2Rm_ros_interfacesMsgJointposcustom.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgJointposcustom): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgJointposcustom canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgJointposcustom value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgJointposcustom.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgJointposcustom
local Ros2Rm_ros_interfacesMsgJointposcustom = classes["Ros2Rm_ros_interfacesMsgJointposcustom"]

--- @class Ros2Rm_ros_interfacesMsgJointposeeuler
--- @brief Complete ROS2 rm_ros_interfaces/msg/Jointposeeuler value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field euler number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 3 contiguous elements; holes and extra array keys are rejected.
--- @field position number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 3 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rm_ros_interfacesMsgJointposeeuler.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointposeeuler.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgJointposeeuler.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Jointposeeuler.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointposeeuler.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Jointposeeuler.
--- @brief Ros2Rm_ros_interfacesMsgJointposeeuler.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointposeeuler.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgJointposeeuler.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointposeeuler.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgJointposeeuler.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointposeeuler.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Rm_ros_interfacesMsgJointposeeuler.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointposeeuler.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgJointposeeuler with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgJointposeeuler value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgJointposeeuler.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgJointposeeuler
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgJointposeeuler value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgJointposeeuler [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Rm_ros_interfacesMsgJointposeeuler.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgJointposeeuler): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgJointposeeuler canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgJointposeeuler value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgJointposeeuler.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgJointposeeuler
local Ros2Rm_ros_interfacesMsgJointposeeuler = classes["Ros2Rm_ros_interfacesMsgJointposeeuler"]

--- @class Ros2Rm_ros_interfacesMsgJointspeed
--- @brief Complete ROS2 rm_ros_interfaces/msg/Jointspeed value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_speed number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rm_ros_interfacesMsgJointspeed.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointspeed.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgJointspeed.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Jointspeed.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointspeed.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Jointspeed.
--- @brief Ros2Rm_ros_interfacesMsgJointspeed.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointspeed.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgJointspeed.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointspeed.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgJointspeed.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointspeed.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rm_ros_interfacesMsgJointspeed.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointspeed.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgJointspeed with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgJointspeed value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgJointspeed.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgJointspeed
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgJointspeed value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgJointspeed [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros2Rm_ros_interfacesMsgJointspeed.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgJointspeed): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgJointspeed canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgJointspeed value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgJointspeed.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgJointspeed
local Ros2Rm_ros_interfacesMsgJointspeed = classes["Ros2Rm_ros_interfacesMsgJointspeed"]

--- @class Ros2Rm_ros_interfacesMsgJointteach
--- @brief Complete ROS2 rm_ros_interfaces/msg/Jointteach value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field num integer Exact uint8 range 0..255.
--- @field direction integer Exact uint8 range 0..255.
--- @field speed integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgJointteach.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointteach.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgJointteach.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Jointteach.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointteach.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Jointteach.
--- @brief Ros2Rm_ros_interfacesMsgJointteach.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointteach.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgJointteach.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointteach.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgJointteach.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointteach.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros2Rm_ros_interfacesMsgJointteach.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointteach.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgJointteach with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgJointteach value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgJointteach.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgJointteach
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgJointteach value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgJointteach [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros2Rm_ros_interfacesMsgJointteach.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgJointteach): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgJointteach canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgJointteach value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgJointteach.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgJointteach
local Ros2Rm_ros_interfacesMsgJointteach = classes["Ros2Rm_ros_interfacesMsgJointteach"]

--- @class Ros2Rm_ros_interfacesMsgJointtemperature
--- @brief Complete ROS2 rm_ros_interfaces/msg/Jointtemperature value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_temperature number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rm_ros_interfacesMsgJointtemperature.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointtemperature.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgJointtemperature.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Jointtemperature.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointtemperature.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Jointtemperature.
--- @brief Ros2Rm_ros_interfacesMsgJointtemperature.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointtemperature.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgJointtemperature.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointtemperature.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgJointtemperature.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointtemperature.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rm_ros_interfacesMsgJointtemperature.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointtemperature.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgJointtemperature with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgJointtemperature value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgJointtemperature.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgJointtemperature
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgJointtemperature value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgJointtemperature [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros2Rm_ros_interfacesMsgJointtemperature.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgJointtemperature): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgJointtemperature canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgJointtemperature value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgJointtemperature.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgJointtemperature
local Ros2Rm_ros_interfacesMsgJointtemperature = classes["Ros2Rm_ros_interfacesMsgJointtemperature"]

--- @class Ros2Rm_ros_interfacesMsgJointversion
--- @brief Complete ROS2 rm_ros_interfaces/msg/Jointversion value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_version string[] Strict UTF-8 without NUL; length0..256 bytes. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgJointversion.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointversion.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgJointversion.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Jointversion.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointversion.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Jointversion.
--- @brief Ros2Rm_ros_interfacesMsgJointversion.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointversion.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgJointversion.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointversion.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgJointversion.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointversion.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Rm_ros_interfacesMsgJointversion.MAX_WIRE_BYTES: Inclusive complete maximum 4165 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointversion.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4165 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgJointversion with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgJointversion value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgJointversion.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgJointversion
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgJointversion value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgJointversion [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..4165 bytes.
--- @see Ros2Rm_ros_interfacesMsgJointversion.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgJointversion): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgJointversion canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgJointversion value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgJointversion.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgJointversion
local Ros2Rm_ros_interfacesMsgJointversion = classes["Ros2Rm_ros_interfacesMsgJointversion"]

--- @class Ros2Rm_ros_interfacesMsgJointvoltage
--- @brief Complete ROS2 rm_ros_interfaces/msg/Jointvoltage value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_voltage number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rm_ros_interfacesMsgJointvoltage.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointvoltage.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgJointvoltage.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Jointvoltage.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointvoltage.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Jointvoltage.
--- @brief Ros2Rm_ros_interfacesMsgJointvoltage.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointvoltage.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgJointvoltage.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointvoltage.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgJointvoltage.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointvoltage.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rm_ros_interfacesMsgJointvoltage.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgJointvoltage.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgJointvoltage with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgJointvoltage value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgJointvoltage.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgJointvoltage
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgJointvoltage value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgJointvoltage [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros2Rm_ros_interfacesMsgJointvoltage.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgJointvoltage): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgJointvoltage canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgJointvoltage value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgJointvoltage.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgJointvoltage
local Ros2Rm_ros_interfacesMsgJointvoltage = classes["Ros2Rm_ros_interfacesMsgJointvoltage"]

--- @class Ros2Rm_ros_interfacesMsgLiftheight
--- @brief Complete ROS2 rm_ros_interfaces/msg/Liftheight value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field height integer Exact uint16 range 0..65535.
--- @field speed integer Exact uint16 range 0..65535.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgLiftheight.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftheight.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgLiftheight.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Liftheight.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftheight.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Liftheight.
--- @brief Ros2Rm_ros_interfacesMsgLiftheight.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftheight.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgLiftheight.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftheight.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgLiftheight.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftheight.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Rm_ros_interfacesMsgLiftheight.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftheight.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgLiftheight with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgLiftheight value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgLiftheight.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgLiftheight
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgLiftheight value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgLiftheight [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Rm_ros_interfacesMsgLiftheight.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgLiftheight): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgLiftheight canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgLiftheight value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgLiftheight.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgLiftheight
local Ros2Rm_ros_interfacesMsgLiftheight = classes["Ros2Rm_ros_interfacesMsgLiftheight"]

--- @class Ros2Rm_ros_interfacesMsgLiftspeed
--- @brief Complete ROS2 rm_ros_interfaces/msg/Liftspeed value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speed integer Exact int16 range -32768..32767.
--- @brief Ros2Rm_ros_interfacesMsgLiftspeed.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftspeed.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgLiftspeed.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Liftspeed.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftspeed.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Liftspeed.
--- @brief Ros2Rm_ros_interfacesMsgLiftspeed.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftspeed.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgLiftspeed.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftspeed.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgLiftspeed.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftspeed.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Rm_ros_interfacesMsgLiftspeed.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftspeed.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgLiftspeed with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgLiftspeed value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgLiftspeed.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgLiftspeed
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgLiftspeed value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgLiftspeed [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Rm_ros_interfacesMsgLiftspeed.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgLiftspeed): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgLiftspeed canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgLiftspeed value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgLiftspeed.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgLiftspeed
local Ros2Rm_ros_interfacesMsgLiftspeed = classes["Ros2Rm_ros_interfacesMsgLiftspeed"]

--- @class Ros2Rm_ros_interfacesMsgLiftstate
--- @brief Complete ROS2 rm_ros_interfaces/msg/Liftstate value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field height integer Exact int16 range -32768..32767.
--- @field current integer Exact int16 range -32768..32767.
--- @field err_flag integer Exact uint16 range 0..65535.
--- @field mode integer Exact int16 range -32768..32767.
--- @brief Ros2Rm_ros_interfacesMsgLiftstate.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftstate.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgLiftstate.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Liftstate.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftstate.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Liftstate.
--- @brief Ros2Rm_ros_interfacesMsgLiftstate.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftstate.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgLiftstate.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftstate.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgLiftstate.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftstate.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Rm_ros_interfacesMsgLiftstate.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgLiftstate.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgLiftstate with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgLiftstate value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgLiftstate.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgLiftstate
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgLiftstate value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgLiftstate [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Rm_ros_interfacesMsgLiftstate.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgLiftstate): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgLiftstate canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgLiftstate value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgLiftstate.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgLiftstate
local Ros2Rm_ros_interfacesMsgLiftstate = classes["Ros2Rm_ros_interfacesMsgLiftstate"]

--- @class Ros2Rm_ros_interfacesMsgMastername
--- @brief Complete ROS2 rm_ros_interfaces/msg/Mastername value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field master_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Rm_ros_interfacesMsgMastername.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMastername.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgMastername.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Mastername.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMastername.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Mastername.
--- @brief Ros2Rm_ros_interfacesMsgMastername.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMastername.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgMastername.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMastername.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgMastername.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMastername.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rm_ros_interfacesMsgMastername.MAX_WIRE_BYTES: Inclusive complete maximum 260 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMastername.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 260 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgMastername with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgMastername value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgMastername.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgMastername
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgMastername value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgMastername [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..260 bytes.
--- @see Ros2Rm_ros_interfacesMsgMastername.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgMastername): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgMastername canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgMastername value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgMastername.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgMastername
local Ros2Rm_ros_interfacesMsgMastername = classes["Ros2Rm_ros_interfacesMsgMastername"]

--- @class Ros2Rm_ros_interfacesMsgModbusreaddata
--- @brief Complete ROS2 rm_ros_interfaces/msg/Modbusreaddata value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field read_data integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgModbusreaddata.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusreaddata.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgModbusreaddata.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Modbusreaddata.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusreaddata.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Modbusreaddata.
--- @brief Ros2Rm_ros_interfacesMsgModbusreaddata.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusreaddata.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgModbusreaddata.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusreaddata.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgModbusreaddata.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusreaddata.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Rm_ros_interfacesMsgModbusreaddata.MAX_WIRE_BYTES: Inclusive complete maximum 69 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusreaddata.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 69 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgModbusreaddata with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgModbusreaddata value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgModbusreaddata.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgModbusreaddata
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgModbusreaddata value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgModbusreaddata [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..69 bytes.
--- @see Ros2Rm_ros_interfacesMsgModbusreaddata.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgModbusreaddata): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgModbusreaddata canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgModbusreaddata value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgModbusreaddata.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgModbusreaddata
local Ros2Rm_ros_interfacesMsgModbusreaddata = classes["Ros2Rm_ros_interfacesMsgModbusreaddata"]

--- @class Ros2Rm_ros_interfacesMsgModbusrtureadparams
--- @brief Complete ROS2 rm_ros_interfaces/msg/Modbusrtureadparams value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact int32 range -2147483648..2147483647.
--- @field device integer Exact int32 range -2147483648..2147483647.
--- @field type integer Exact int32 range -2147483648..2147483647.
--- @field num integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Rm_ros_interfacesMsgModbusrtureadparams.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusrtureadparams.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgModbusrtureadparams.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Modbusrtureadparams.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusrtureadparams.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Modbusrtureadparams.
--- @brief Ros2Rm_ros_interfacesMsgModbusrtureadparams.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusrtureadparams.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgModbusrtureadparams.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusrtureadparams.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgModbusrtureadparams.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusrtureadparams.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Rm_ros_interfacesMsgModbusrtureadparams.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusrtureadparams.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgModbusrtureadparams with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgModbusrtureadparams value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgModbusrtureadparams.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgModbusrtureadparams
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgModbusrtureadparams value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgModbusrtureadparams [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Rm_ros_interfacesMsgModbusrtureadparams.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgModbusrtureadparams): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgModbusrtureadparams canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgModbusrtureadparams value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgModbusrtureadparams.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgModbusrtureadparams
local Ros2Rm_ros_interfacesMsgModbusrtureadparams = classes["Ros2Rm_ros_interfacesMsgModbusrtureadparams"]

--- @class Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
--- @brief Complete ROS2 rm_ros_interfaces/msg/Modbusrtuwriteparams value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact int32 range -2147483648..2147483647.
--- @field device integer Exact int32 range -2147483648..2147483647.
--- @field type integer Exact int32 range -2147483648..2147483647.
--- @field num integer Exact int32 range -2147483648..2147483647.
--- @field data integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Modbusrtuwriteparams.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Modbusrtuwriteparams.
--- @brief Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.MAX_WIRE_BYTES: Inclusive complete maximum 84 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 84 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgModbusrtuwriteparams with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgModbusrtuwriteparams value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgModbusrtuwriteparams value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgModbusrtuwriteparams [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..84 bytes.
--- @see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgModbusrtuwriteparams): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgModbusrtuwriteparams canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgModbusrtuwriteparams value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
local Ros2Rm_ros_interfacesMsgModbusrtuwriteparams = classes["Ros2Rm_ros_interfacesMsgModbusrtuwriteparams"]

--- @class Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
--- @brief Complete ROS2 rm_ros_interfaces/msg/Modbustcpmasterinfo value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field master_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ip string Strict UTF-8 without NUL; length0..256 bytes.
--- @field port integer Exact int32 range -2147483648..2147483647.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Modbustcpmasterinfo.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Modbustcpmasterinfo.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.MAX_WIRE_BYTES: Inclusive complete maximum 525 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 525 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgModbustcpmasterinfo with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgModbustcpmasterinfo value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgModbustcpmasterinfo value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgModbustcpmasterinfo [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..525 bytes.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgModbustcpmasterinfo): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgModbustcpmasterinfo canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgModbustcpmasterinfo value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
local Ros2Rm_ros_interfacesMsgModbustcpmasterinfo = classes["Ros2Rm_ros_interfacesMsgModbustcpmasterinfo"]

--- @class Ros2Rm_ros_interfacesMsgModbustcpmasterlist
--- @brief Complete ROS2 rm_ros_interfaces/msg/Modbustcpmasterlist value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field page_num integer Exact uint8 range 0..255.
--- @field page_size integer Exact uint8 range 0..255.
--- @field total_size integer Exact uint8 range 0..255.
--- @field vague_search string Strict UTF-8 without NUL; length0..256 bytes.
--- @field master_list table[] Complete nested rm_ros_interfaces/msg/Modbustcpmasterinfo value; no native fields are projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterlist.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterlist.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterlist.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Modbustcpmasterlist.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterlist.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Modbustcpmasterlist.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterlist.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterlist.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterlist.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterlist.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterlist.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterlist.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterlist.MAX_WIRE_BYTES: Inclusive complete maximum 8668 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterlist.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8668 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgModbustcpmasterlist with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgModbustcpmasterlist value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterlist.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgModbustcpmasterlist
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgModbustcpmasterlist value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgModbustcpmasterlist [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..8668 bytes.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterlist.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgModbustcpmasterlist): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgModbustcpmasterlist canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgModbustcpmasterlist value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterlist.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgModbustcpmasterlist
local Ros2Rm_ros_interfacesMsgModbustcpmasterlist = classes["Ros2Rm_ros_interfacesMsgModbustcpmasterlist"]

--- @class Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
--- @brief Complete ROS2 rm_ros_interfaces/msg/Modbustcpmasterupdata value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field master_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field new_master_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ip string Strict UTF-8 without NUL; length0..256 bytes.
--- @field port integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Modbustcpmasterupdata.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Modbustcpmasterupdata.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.MAX_WIRE_BYTES: Inclusive complete maximum 784 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 784 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgModbustcpmasterupdata with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgModbustcpmasterupdata value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgModbustcpmasterupdata value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgModbustcpmasterupdata [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..784 bytes.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgModbustcpmasterupdata): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgModbustcpmasterupdata canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgModbustcpmasterupdata value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
local Ros2Rm_ros_interfacesMsgModbustcpmasterupdata = classes["Ros2Rm_ros_interfacesMsgModbustcpmasterupdata"]

--- @class Ros2Rm_ros_interfacesMsgModbustcpreadparams
--- @brief Complete ROS2 rm_ros_interfaces/msg/Modbustcpreadparams value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact int32 range -2147483648..2147483647.
--- @field master_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ip string Strict UTF-8 without NUL; length0..256 bytes.
--- @field port integer Exact int32 range -2147483648..2147483647.
--- @field num integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpreadparams.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpreadparams.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpreadparams.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Modbustcpreadparams.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpreadparams.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Modbustcpreadparams.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpreadparams.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpreadparams.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpreadparams.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpreadparams.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpreadparams.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpreadparams.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpreadparams.MAX_WIRE_BYTES: Inclusive complete maximum 532 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpreadparams.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 532 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgModbustcpreadparams with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgModbustcpreadparams value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgModbustcpreadparams.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgModbustcpreadparams
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgModbustcpreadparams value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgModbustcpreadparams [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..532 bytes.
--- @see Ros2Rm_ros_interfacesMsgModbustcpreadparams.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgModbustcpreadparams): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgModbustcpreadparams canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgModbustcpreadparams value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgModbustcpreadparams.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgModbustcpreadparams
local Ros2Rm_ros_interfacesMsgModbustcpreadparams = classes["Ros2Rm_ros_interfacesMsgModbustcpreadparams"]

--- @class Ros2Rm_ros_interfacesMsgModbustcpwriteparams
--- @brief Complete ROS2 rm_ros_interfaces/msg/Modbustcpwriteparams value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact int32 range -2147483648..2147483647.
--- @field master_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ip string Strict UTF-8 without NUL; length0..256 bytes.
--- @field port integer Exact int32 range -2147483648..2147483647.
--- @field num integer Exact int32 range -2147483648..2147483647.
--- @field data integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpwriteparams.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpwriteparams.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpwriteparams.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Modbustcpwriteparams.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpwriteparams.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Modbustcpwriteparams.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpwriteparams.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpwriteparams.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpwriteparams.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpwriteparams.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpwriteparams.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpwriteparams.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Rm_ros_interfacesMsgModbustcpwriteparams.MAX_WIRE_BYTES: Inclusive complete maximum 600 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgModbustcpwriteparams.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 600 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgModbustcpwriteparams with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgModbustcpwriteparams value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgModbustcpwriteparams.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgModbustcpwriteparams
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgModbustcpwriteparams value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgModbustcpwriteparams [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..600 bytes.
--- @see Ros2Rm_ros_interfacesMsgModbustcpwriteparams.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgModbustcpwriteparams): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgModbustcpwriteparams canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgModbustcpwriteparams value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgModbustcpwriteparams.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgModbustcpwriteparams
local Ros2Rm_ros_interfacesMsgModbustcpwriteparams = classes["Ros2Rm_ros_interfacesMsgModbustcpwriteparams"]

--- @class Ros2Rm_ros_interfacesMsgMovec
--- @brief Complete ROS2 rm_ros_interfaces/msg/Movec value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pose_mid table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field pose_end table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field speed integer Exact uint8 range 0..255.
--- @field trajectory_connect integer Exact uint8 range 0..255.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @field loop integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgMovec.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovec.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgMovec.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Movec.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovec.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Movec.
--- @brief Ros2Rm_ros_interfacesMsgMovec.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovec.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgMovec.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovec.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgMovec.MIN_WIRE_BYTES: Inclusive complete minimum 116 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovec.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 116 bytes.
--- @brief Ros2Rm_ros_interfacesMsgMovec.MAX_WIRE_BYTES: Inclusive complete maximum 116 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovec.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 116 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgMovec with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgMovec value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgMovec.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgMovec
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgMovec value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgMovec [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 116..116 bytes.
--- @see Ros2Rm_ros_interfacesMsgMovec.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgMovec): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgMovec canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgMovec value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgMovec.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgMovec
local Ros2Rm_ros_interfacesMsgMovec = classes["Ros2Rm_ros_interfacesMsgMovec"]

--- @class Ros2Rm_ros_interfacesMsgMovej
--- @brief Complete ROS2 rm_ros_interfaces/msg/Movej value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field speed integer Exact uint8 range 0..255.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @field trajectory_connect integer Exact uint8 range 0..255.
--- @field dof integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgMovej.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovej.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgMovej.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Movej.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovej.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Movej.
--- @brief Ros2Rm_ros_interfacesMsgMovej.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovej.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgMovej.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovej.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgMovej.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovej.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Rm_ros_interfacesMsgMovej.MAX_WIRE_BYTES: Inclusive complete maximum 72 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovej.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 72 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgMovej with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgMovej value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgMovej.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgMovej
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgMovej value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgMovej [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..72 bytes.
--- @see Ros2Rm_ros_interfacesMsgMovej.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgMovej): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgMovej canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgMovej value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgMovej.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgMovej
local Ros2Rm_ros_interfacesMsgMovej = classes["Ros2Rm_ros_interfacesMsgMovej"]

--- @class Ros2Rm_ros_interfacesMsgMovejp
--- @brief Complete ROS2 rm_ros_interfaces/msg/Movejp value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pose table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field speed integer Exact uint8 range 0..255.
--- @field trajectory_connect integer Exact uint8 range 0..255.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgMovejp.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovejp.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgMovejp.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Movejp.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovejp.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Movejp.
--- @brief Ros2Rm_ros_interfacesMsgMovejp.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovejp.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgMovejp.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovejp.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgMovejp.MIN_WIRE_BYTES: Inclusive complete minimum 59 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovejp.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 59 bytes.
--- @brief Ros2Rm_ros_interfacesMsgMovejp.MAX_WIRE_BYTES: Inclusive complete maximum 59 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovejp.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 59 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgMovejp with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgMovejp value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgMovejp.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgMovejp
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgMovejp value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgMovejp [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 59..59 bytes.
--- @see Ros2Rm_ros_interfacesMsgMovejp.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgMovejp): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgMovejp canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgMovejp value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgMovejp.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgMovejp
local Ros2Rm_ros_interfacesMsgMovejp = classes["Ros2Rm_ros_interfacesMsgMovejp"]

--- @class Ros2Rm_ros_interfacesMsgMovel
--- @brief Complete ROS2 rm_ros_interfaces/msg/Movel value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pose table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field speed integer Exact uint8 range 0..255.
--- @field trajectory_connect integer Exact uint8 range 0..255.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgMovel.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovel.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgMovel.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Movel.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovel.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Movel.
--- @brief Ros2Rm_ros_interfacesMsgMovel.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovel.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgMovel.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovel.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgMovel.MIN_WIRE_BYTES: Inclusive complete minimum 59 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovel.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 59 bytes.
--- @brief Ros2Rm_ros_interfacesMsgMovel.MAX_WIRE_BYTES: Inclusive complete maximum 59 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMovel.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 59 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgMovel with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgMovel value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgMovel.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgMovel
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgMovel value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgMovel [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 59..59 bytes.
--- @see Ros2Rm_ros_interfacesMsgMovel.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgMovel): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgMovel canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgMovel value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgMovel.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgMovel
local Ros2Rm_ros_interfacesMsgMovel = classes["Ros2Rm_ros_interfacesMsgMovel"]

--- @class Ros2Rm_ros_interfacesMsgMoveloffset
--- @brief Complete ROS2 rm_ros_interfaces/msg/Moveloffset value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pose table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field speed integer Exact int32 range -2147483648..2147483647.
--- @field r integer Exact int32 range -2147483648..2147483647.
--- @field trajectory_connect boolean Exact boolean; encoded as one byte0/1.
--- @field frame_type boolean Exact boolean; encoded as one byte0/1.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgMoveloffset.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMoveloffset.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgMoveloffset.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Moveloffset.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMoveloffset.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Moveloffset.
--- @brief Ros2Rm_ros_interfacesMsgMoveloffset.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMoveloffset.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgMoveloffset.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMoveloffset.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgMoveloffset.MIN_WIRE_BYTES: Inclusive complete minimum 67 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMoveloffset.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 67 bytes.
--- @brief Ros2Rm_ros_interfacesMsgMoveloffset.MAX_WIRE_BYTES: Inclusive complete maximum 67 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgMoveloffset.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 67 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgMoveloffset with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgMoveloffset value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgMoveloffset.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgMoveloffset
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgMoveloffset value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgMoveloffset [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 67..67 bytes.
--- @see Ros2Rm_ros_interfacesMsgMoveloffset.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgMoveloffset): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgMoveloffset canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgMoveloffset value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgMoveloffset.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgMoveloffset
local Ros2Rm_ros_interfacesMsgMoveloffset = classes["Ros2Rm_ros_interfacesMsgMoveloffset"]

--- @class Ros2Rm_ros_interfacesMsgOrtteach
--- @brief Complete ROS2 rm_ros_interfaces/msg/Ortteach value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field type integer Exact uint8 range 0..255.
--- @field direction integer Exact uint8 range 0..255.
--- @field speed integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgOrtteach.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgOrtteach.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgOrtteach.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Ortteach.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgOrtteach.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Ortteach.
--- @brief Ros2Rm_ros_interfacesMsgOrtteach.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgOrtteach.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgOrtteach.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgOrtteach.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgOrtteach.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgOrtteach.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros2Rm_ros_interfacesMsgOrtteach.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgOrtteach.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgOrtteach with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgOrtteach value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgOrtteach.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgOrtteach
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgOrtteach value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgOrtteach [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros2Rm_ros_interfacesMsgOrtteach.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgOrtteach): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgOrtteach canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgOrtteach value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgOrtteach.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgOrtteach
local Ros2Rm_ros_interfacesMsgOrtteach = classes["Ros2Rm_ros_interfacesMsgOrtteach"]

--- @class Ros2Rm_ros_interfacesMsgPosteach
--- @brief Complete ROS2 rm_ros_interfaces/msg/Posteach value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field type integer Exact uint8 range 0..255.
--- @field direction integer Exact uint8 range 0..255.
--- @field speed integer Exact uint8 range 0..255.
--- @brief Ros2Rm_ros_interfacesMsgPosteach.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgPosteach.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgPosteach.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Posteach.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgPosteach.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Posteach.
--- @brief Ros2Rm_ros_interfacesMsgPosteach.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgPosteach.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgPosteach.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgPosteach.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgPosteach.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgPosteach.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros2Rm_ros_interfacesMsgPosteach.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgPosteach.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgPosteach with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgPosteach value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgPosteach.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgPosteach
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgPosteach value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgPosteach [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros2Rm_ros_interfacesMsgPosteach.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgPosteach): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgPosteach canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgPosteach value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgPosteach.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgPosteach
local Ros2Rm_ros_interfacesMsgPosteach = classes["Ros2Rm_ros_interfacesMsgPosteach"]

--- @class Ros2Rm_ros_interfacesMsgProgramrunstate
--- @brief Complete ROS2 rm_ros_interfaces/msg/Programrunstate value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field run_state integer Exact int32 range -2147483648..2147483647.
--- @field id integer Exact int32 range -2147483648..2147483647.
--- @field edit_id integer Exact int32 range -2147483648..2147483647.
--- @field plan_num integer Exact int32 range -2147483648..2147483647.
--- @field total_loop integer Exact int32 range -2147483648..2147483647.
--- @field step_mode integer Exact int32 range -2147483648..2147483647.
--- @field plan_speed integer Exact int32 range -2147483648..2147483647.
--- @field loop_num integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field loop_cont integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgProgramrunstate.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgProgramrunstate.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgProgramrunstate.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Programrunstate.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgProgramrunstate.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Programrunstate.
--- @brief Ros2Rm_ros_interfacesMsgProgramrunstate.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgProgramrunstate.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgProgramrunstate.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgProgramrunstate.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgProgramrunstate.MIN_WIRE_BYTES: Inclusive complete minimum 37 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgProgramrunstate.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 37 bytes.
--- @brief Ros2Rm_ros_interfacesMsgProgramrunstate.MAX_WIRE_BYTES: Inclusive complete maximum 165 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgProgramrunstate.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 165 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgProgramrunstate with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgProgramrunstate value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgProgramrunstate.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgProgramrunstate
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgProgramrunstate value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgProgramrunstate [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 37..165 bytes.
--- @see Ros2Rm_ros_interfacesMsgProgramrunstate.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgProgramrunstate): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgProgramrunstate canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgProgramrunstate value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgProgramrunstate.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgProgramrunstate
local Ros2Rm_ros_interfacesMsgProgramrunstate = classes["Ros2Rm_ros_interfacesMsgProgramrunstate"]

--- @class Ros2Rm_ros_interfacesMsgRS485params
--- @brief Complete ROS2 rm_ros_interfaces/msg/RS485params value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mode integer Exact int32 range -2147483648..2147483647.
--- @field baudrate integer Exact int32 range -2147483648..2147483647.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgRS485params.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRS485params.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgRS485params.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/RS485params.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRS485params.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/RS485params.
--- @brief Ros2Rm_ros_interfacesMsgRS485params.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRS485params.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgRS485params.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRS485params.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgRS485params.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRS485params.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Rm_ros_interfacesMsgRS485params.MAX_WIRE_BYTES: Inclusive complete maximum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRS485params.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 9 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgRS485params with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgRS485params value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgRS485params.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgRS485params
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgRS485params value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgRS485params [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..9 bytes.
--- @see Ros2Rm_ros_interfacesMsgRS485params.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgRS485params): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgRS485params canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgRS485params value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgRS485params.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgRS485params
local Ros2Rm_ros_interfacesMsgRS485params = classes["Ros2Rm_ros_interfacesMsgRS485params"]

--- @class Ros2Rm_ros_interfacesMsgRmerr
--- @brief Complete ROS2 rm_ros_interfaces/msg/Rmerr value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field err_len integer Exact uint8 range 0..255.
--- @field err integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rm_ros_interfacesMsgRmerr.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmerr.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgRmerr.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Rmerr.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmerr.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Rmerr.
--- @brief Ros2Rm_ros_interfacesMsgRmerr.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmerr.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgRmerr.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmerr.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgRmerr.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmerr.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Rm_ros_interfacesMsgRmerr.MAX_WIRE_BYTES: Inclusive complete maximum 69 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmerr.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 69 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgRmerr with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgRmerr value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgRmerr.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgRmerr
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgRmerr value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgRmerr [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..69 bytes.
--- @see Ros2Rm_ros_interfacesMsgRmerr.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgRmerr): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgRmerr canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgRmerr value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgRmerr.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgRmerr
local Ros2Rm_ros_interfacesMsgRmerr = classes["Ros2Rm_ros_interfacesMsgRmerr"]

--- @class Ros2Rm_ros_interfacesMsgRmplusbase
--- @brief Complete ROS2 rm_ros_interfaces/msg/Rmplusbase value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field manu string Strict UTF-8 without NUL; length0..256 bytes.
--- @field type integer Exact int8 range -128..127.
--- @field hv string Strict UTF-8 without NUL; length0..256 bytes.
--- @field sv string Strict UTF-8 without NUL; length0..256 bytes.
--- @field bv string Strict UTF-8 without NUL; length0..256 bytes.
--- @field id integer Exact int32 range -2147483648..2147483647.
--- @field dof integer Exact int8 range -128..127.
--- @field check integer Exact int8 range -128..127.
--- @field bee integer Exact int8 range -128..127.
--- @field force boolean Exact boolean; encoded as one byte0/1.
--- @field touch boolean Exact boolean; encoded as one byte0/1.
--- @field touch_num integer Exact int8 range -128..127.
--- @field touch_sw integer Exact int8 range -128..127.
--- @field hand integer Exact int8 range -128..127.
--- @field pos_up integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field pos_low integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field angle_up integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field angle_low integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field speed_up integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field speed_low integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field force_up integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field force_low integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rm_ros_interfacesMsgRmplusbase.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmplusbase.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgRmplusbase.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Rmplusbase.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmplusbase.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Rmplusbase.
--- @brief Ros2Rm_ros_interfacesMsgRmplusbase.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmplusbase.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgRmplusbase.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmplusbase.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgRmplusbase.MIN_WIRE_BYTES: Inclusive complete minimum 413 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmplusbase.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 413 bytes.
--- @brief Ros2Rm_ros_interfacesMsgRmplusbase.MAX_WIRE_BYTES: Inclusive complete maximum 1437 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmplusbase.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1437 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgRmplusbase with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgRmplusbase value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgRmplusbase.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgRmplusbase
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgRmplusbase value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgRmplusbase [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 413..1437 bytes.
--- @see Ros2Rm_ros_interfacesMsgRmplusbase.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgRmplusbase): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgRmplusbase canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgRmplusbase value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgRmplusbase.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgRmplusbase
local Ros2Rm_ros_interfacesMsgRmplusbase = classes["Ros2Rm_ros_interfacesMsgRmplusbase"]

--- @class Ros2Rm_ros_interfacesMsgRmplusstate
--- @brief Complete ROS2 rm_ros_interfaces/msg/Rmplusstate value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field sys_state integer Exact int32 range -2147483648..2147483647.
--- @field dof_state integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field dof_err integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field pos integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field speed integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field angle integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field current integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field normal_force integer[] Exact int32 range -2147483648..2147483647. Exactly 18 contiguous elements; holes and extra array keys are rejected.
--- @field tangential_force integer[] Exact int32 range -2147483648..2147483647. Exactly 18 contiguous elements; holes and extra array keys are rejected.
--- @field tangential_force_dir integer[] Exact int32 range -2147483648..2147483647. Exactly 18 contiguous elements; holes and extra array keys are rejected.
--- @field tsa integer[] Exact uint32 range 0..4294967295. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field tma integer[] Exact uint32 range 0..4294967295. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @field touch_data integer[] Exact int32 range -2147483648..2147483647. Exactly 18 contiguous elements; holes and extra array keys are rejected.
--- @field force integer[] Exact int32 range -2147483648..2147483647. Exactly 12 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rm_ros_interfacesMsgRmplusstate.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmplusstate.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgRmplusstate.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Rmplusstate.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmplusstate.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Rmplusstate.
--- @brief Ros2Rm_ros_interfacesMsgRmplusstate.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmplusstate.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgRmplusstate.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmplusstate.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgRmplusstate.MIN_WIRE_BYTES: Inclusive complete minimum 724 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmplusstate.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 724 bytes.
--- @brief Ros2Rm_ros_interfacesMsgRmplusstate.MAX_WIRE_BYTES: Inclusive complete maximum 724 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmplusstate.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 724 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgRmplusstate with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgRmplusstate value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgRmplusstate.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgRmplusstate
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgRmplusstate value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgRmplusstate [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 724..724 bytes.
--- @see Ros2Rm_ros_interfacesMsgRmplusstate.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgRmplusstate): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgRmplusstate canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgRmplusstate value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgRmplusstate.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgRmplusstate
local Ros2Rm_ros_interfacesMsgRmplusstate = classes["Ros2Rm_ros_interfacesMsgRmplusstate"]

--- @class Ros2Rm_ros_interfacesMsgRmversion
--- @brief Complete ROS2 rm_ros_interfaces/msg/Rmversion value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field version string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Rm_ros_interfacesMsgRmversion.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmversion.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgRmversion.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Rmversion.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmversion.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Rmversion.
--- @brief Ros2Rm_ros_interfacesMsgRmversion.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmversion.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgRmversion.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmversion.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgRmversion.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmversion.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rm_ros_interfacesMsgRmversion.MAX_WIRE_BYTES: Inclusive complete maximum 260 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRmversion.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 260 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgRmversion with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgRmversion value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgRmversion.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgRmversion
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgRmversion value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgRmversion [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..260 bytes.
--- @see Ros2Rm_ros_interfacesMsgRmversion.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgRmversion): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgRmversion canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgRmversion value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgRmversion.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgRmversion
local Ros2Rm_ros_interfacesMsgRmversion = classes["Ros2Rm_ros_interfacesMsgRmversion"]

--- @class Ros2Rm_ros_interfacesMsgRobotInfo
--- @brief Complete ROS2 rm_ros_interfaces/msg/RobotInfo value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field arm_dof integer Exact uint8 range 0..255.
--- @field arm_model integer Exact uint8 range 0..255.
--- @field force_type integer Exact uint8 range 0..255.
--- @field robot_controller_version integer Exact uint8 range 0..255.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgRobotInfo.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRobotInfo.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgRobotInfo.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/RobotInfo.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRobotInfo.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/RobotInfo.
--- @brief Ros2Rm_ros_interfacesMsgRobotInfo.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRobotInfo.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgRobotInfo.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRobotInfo.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgRobotInfo.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRobotInfo.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Rm_ros_interfacesMsgRobotInfo.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgRobotInfo.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgRobotInfo with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgRobotInfo value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgRobotInfo.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgRobotInfo
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgRobotInfo value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgRobotInfo [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Rm_ros_interfacesMsgRobotInfo.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgRobotInfo): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgRobotInfo canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgRobotInfo value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgRobotInfo.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgRobotInfo
local Ros2Rm_ros_interfacesMsgRobotInfo = classes["Ros2Rm_ros_interfacesMsgRobotInfo"]

--- @class Ros2Rm_ros_interfacesMsgSendproject
--- @brief Complete ROS2 rm_ros_interfaces/msg/Sendproject value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field project_path string Strict UTF-8 without NUL; length0..256 bytes.
--- @field project_path_len integer Exact int32 range -2147483648..2147483647.
--- @field plan_speed integer Exact int32 range -2147483648..2147483647.
--- @field only_save integer Exact int32 range -2147483648..2147483647.
--- @field save_id integer Exact int32 range -2147483648..2147483647.
--- @field step_flag integer Exact int32 range -2147483648..2147483647.
--- @field auto_start integer Exact int32 range -2147483648..2147483647.
--- @field project_type integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Rm_ros_interfacesMsgSendproject.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSendproject.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgSendproject.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Sendproject.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSendproject.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Sendproject.
--- @brief Ros2Rm_ros_interfacesMsgSendproject.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSendproject.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgSendproject.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSendproject.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgSendproject.MIN_WIRE_BYTES: Inclusive complete minimum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSendproject.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 32 bytes.
--- @brief Ros2Rm_ros_interfacesMsgSendproject.MAX_WIRE_BYTES: Inclusive complete maximum 288 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSendproject.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 288 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgSendproject with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgSendproject value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgSendproject.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgSendproject
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgSendproject value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgSendproject [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 32..288 bytes.
--- @see Ros2Rm_ros_interfacesMsgSendproject.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgSendproject): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgSendproject canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgSendproject value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgSendproject.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgSendproject
local Ros2Rm_ros_interfacesMsgSendproject = classes["Ros2Rm_ros_interfacesMsgSendproject"]

--- @class Ros2Rm_ros_interfacesMsgSetforceposition
--- @brief Complete ROS2 rm_ros_interfaces/msg/Setforceposition value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field sensor integer Exact uint8 range 0..255.
--- @field mode integer Exact uint8 range 0..255.
--- @field direction integer Exact uint8 range 0..255.
--- @field n integer Exact int16 range -32768..32767.
--- @brief Ros2Rm_ros_interfacesMsgSetforceposition.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSetforceposition.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgSetforceposition.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Setforceposition.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSetforceposition.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Setforceposition.
--- @brief Ros2Rm_ros_interfacesMsgSetforceposition.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSetforceposition.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgSetforceposition.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSetforceposition.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgSetforceposition.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSetforceposition.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Rm_ros_interfacesMsgSetforceposition.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSetforceposition.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgSetforceposition with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgSetforceposition value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgSetforceposition.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgSetforceposition
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgSetforceposition value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgSetforceposition [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Rm_ros_interfacesMsgSetforceposition.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgSetforceposition): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgSetforceposition canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgSetforceposition value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgSetforceposition.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgSetforceposition
local Ros2Rm_ros_interfacesMsgSetforceposition = classes["Ros2Rm_ros_interfacesMsgSetforceposition"]

--- @class Ros2Rm_ros_interfacesMsgSetrealtimepush
--- @brief Complete ROS2 rm_ros_interfaces/msg/Setrealtimepush value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field cycle integer Exact uint16 range 0..65535.
--- @field port integer Exact uint16 range 0..65535.
--- @field force_coordinate integer Exact uint16 range 0..65535.
--- @field ip string Strict UTF-8 without NUL; length0..256 bytes.
--- @field aloha_state_enable boolean Exact boolean; encoded as one byte0/1.
--- @field arm_current_status_enable boolean Exact boolean; encoded as one byte0/1.
--- @field expand_state_enable boolean Exact boolean; encoded as one byte0/1.
--- @field hand_enable boolean Exact boolean; encoded as one byte0/1.
--- @field joint_speed_enable boolean Exact boolean; encoded as one byte0/1.
--- @field lift_state_enable boolean Exact boolean; encoded as one byte0/1.
--- @field plus_base_enable boolean Exact boolean; encoded as one byte0/1.
--- @field plus_state_enable boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgSetrealtimepush.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSetrealtimepush.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgSetrealtimepush.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Setrealtimepush.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSetrealtimepush.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Setrealtimepush.
--- @brief Ros2Rm_ros_interfacesMsgSetrealtimepush.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSetrealtimepush.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgSetrealtimepush.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSetrealtimepush.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgSetrealtimepush.MIN_WIRE_BYTES: Inclusive complete minimum 18 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSetrealtimepush.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 18 bytes.
--- @brief Ros2Rm_ros_interfacesMsgSetrealtimepush.MAX_WIRE_BYTES: Inclusive complete maximum 274 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSetrealtimepush.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 274 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgSetrealtimepush with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgSetrealtimepush value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgSetrealtimepush.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgSetrealtimepush
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgSetrealtimepush value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgSetrealtimepush [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 18..274 bytes.
--- @see Ros2Rm_ros_interfacesMsgSetrealtimepush.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgSetrealtimepush): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgSetrealtimepush canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgSetrealtimepush value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgSetrealtimepush.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgSetrealtimepush
local Ros2Rm_ros_interfacesMsgSetrealtimepush = classes["Ros2Rm_ros_interfacesMsgSetrealtimepush"]

--- @class Ros2Rm_ros_interfacesMsgSixforce
--- @brief Complete ROS2 rm_ros_interfaces/msg/Sixforce value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field force_fx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field force_fy number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field force_fz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field force_mx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field force_my number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field force_mz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Rm_ros_interfacesMsgSixforce.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSixforce.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgSixforce.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Sixforce.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSixforce.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Sixforce.
--- @brief Ros2Rm_ros_interfacesMsgSixforce.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSixforce.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgSixforce.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSixforce.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgSixforce.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSixforce.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Rm_ros_interfacesMsgSixforce.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgSixforce.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgSixforce with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgSixforce value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgSixforce.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgSixforce
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgSixforce value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgSixforce [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Rm_ros_interfacesMsgSixforce.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgSixforce): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgSixforce canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgSixforce value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgSixforce.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgSixforce
local Ros2Rm_ros_interfacesMsgSixforce = classes["Ros2Rm_ros_interfacesMsgSixforce"]

--- @class Ros2Rm_ros_interfacesMsgStop
--- @brief Complete ROS2 rm_ros_interfaces/msg/Stop value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgStop.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgStop.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgStop.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Stop.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgStop.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Stop.
--- @brief Ros2Rm_ros_interfacesMsgStop.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgStop.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgStop.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgStop.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgStop.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgStop.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Rm_ros_interfacesMsgStop.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgStop.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgStop with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgStop value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgStop.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgStop
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgStop value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgStop [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Rm_ros_interfacesMsgStop.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgStop): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgStop canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgStop value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgStop.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgStop
local Ros2Rm_ros_interfacesMsgStop = classes["Ros2Rm_ros_interfacesMsgStop"]

--- @class Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
--- @brief Complete ROS2 rm_ros_interfaces/msg/Toolsoftwareversionv4 value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field tool_version string Strict UTF-8 without NUL; length0..256 bytes.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Toolsoftwareversionv4.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Toolsoftwareversionv4.
--- @brief Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgToolsoftwareversionv4): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
local Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 = classes["Ros2Rm_ros_interfacesMsgToolsoftwareversionv4"]

--- @class Ros2Rm_ros_interfacesMsgTrajectoryinfo
--- @brief Complete ROS2 rm_ros_interfaces/msg/Trajectoryinfo value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field create_time string Strict UTF-8 without NUL; length0..256 bytes.
--- @field point_num integer Exact int32 range -2147483648..2147483647.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgTrajectoryinfo.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgTrajectoryinfo.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgTrajectoryinfo.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Trajectoryinfo.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgTrajectoryinfo.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Trajectoryinfo.
--- @brief Ros2Rm_ros_interfacesMsgTrajectoryinfo.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgTrajectoryinfo.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgTrajectoryinfo.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgTrajectoryinfo.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgTrajectoryinfo.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgTrajectoryinfo.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros2Rm_ros_interfacesMsgTrajectoryinfo.MAX_WIRE_BYTES: Inclusive complete maximum 525 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgTrajectoryinfo.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 525 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgTrajectoryinfo with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgTrajectoryinfo value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgTrajectoryinfo.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgTrajectoryinfo
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgTrajectoryinfo value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgTrajectoryinfo [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..525 bytes.
--- @see Ros2Rm_ros_interfacesMsgTrajectoryinfo.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgTrajectoryinfo): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgTrajectoryinfo canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgTrajectoryinfo value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgTrajectoryinfo.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgTrajectoryinfo
local Ros2Rm_ros_interfacesMsgTrajectoryinfo = classes["Ros2Rm_ros_interfacesMsgTrajectoryinfo"]

--- @class Ros2Rm_ros_interfacesMsgTrajectorylist
--- @brief Complete ROS2 rm_ros_interfaces/msg/Trajectorylist value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field page_num integer Exact int32 range -2147483648..2147483647.
--- @field page_size integer Exact int32 range -2147483648..2147483647.
--- @field total_size integer Exact int32 range -2147483648..2147483647.
--- @field vague_search string Strict UTF-8 without NUL; length0..256 bytes.
--- @field tra_list table[] Complete nested rm_ros_interfaces/msg/Trajectoryinfo value; no native fields are projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Rm_ros_interfacesMsgTrajectorylist.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgTrajectorylist.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgTrajectorylist.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Trajectorylist.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgTrajectorylist.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Trajectorylist.
--- @brief Ros2Rm_ros_interfacesMsgTrajectorylist.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgTrajectorylist.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgTrajectorylist.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgTrajectorylist.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgTrajectorylist.MIN_WIRE_BYTES: Inclusive complete minimum 21 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgTrajectorylist.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 21 bytes.
--- @brief Ros2Rm_ros_interfacesMsgTrajectorylist.MAX_WIRE_BYTES: Inclusive complete maximum 8677 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgTrajectorylist.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8677 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgTrajectorylist with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgTrajectorylist value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgTrajectorylist.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgTrajectorylist
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgTrajectorylist value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgTrajectorylist [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 21..8677 bytes.
--- @see Ros2Rm_ros_interfacesMsgTrajectorylist.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgTrajectorylist): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgTrajectorylist canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgTrajectorylist value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgTrajectorylist.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgTrajectorylist
local Ros2Rm_ros_interfacesMsgTrajectorylist = classes["Ros2Rm_ros_interfacesMsgTrajectorylist"]

--- @class Ros2Rm_ros_interfacesMsgUdpexpandstate
--- @brief Complete ROS2 rm_ros_interfaces/msg/Udpexpandstate value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pos integer Exact int32 range -2147483648..2147483647.
--- @field current integer Exact int32 range -2147483648..2147483647.
--- @field err_flag integer Exact uint16 range 0..65535.
--- @field en_flag boolean Exact boolean; encoded as one byte0/1.
--- @field joint_id integer Exact uint8 range 0..255.
--- @field mode integer Exact int16 range -32768..32767.
--- @brief Ros2Rm_ros_interfacesMsgUdpexpandstate.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgUdpexpandstate.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgUdpexpandstate.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Udpexpandstate.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgUdpexpandstate.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Udpexpandstate.
--- @brief Ros2Rm_ros_interfacesMsgUdpexpandstate.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgUdpexpandstate.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgUdpexpandstate.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgUdpexpandstate.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgUdpexpandstate.MIN_WIRE_BYTES: Inclusive complete minimum 14 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgUdpexpandstate.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 14 bytes.
--- @brief Ros2Rm_ros_interfacesMsgUdpexpandstate.MAX_WIRE_BYTES: Inclusive complete maximum 14 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgUdpexpandstate.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 14 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgUdpexpandstate with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgUdpexpandstate value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgUdpexpandstate.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgUdpexpandstate
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgUdpexpandstate value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgUdpexpandstate [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 14..14 bytes.
--- @see Ros2Rm_ros_interfacesMsgUdpexpandstate.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgUdpexpandstate): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgUdpexpandstate canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgUdpexpandstate value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgUdpexpandstate.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgUdpexpandstate
local Ros2Rm_ros_interfacesMsgUdpexpandstate = classes["Ros2Rm_ros_interfacesMsgUdpexpandstate"]

--- @class Ros2Rm_ros_interfacesMsgUdpliftstate
--- @brief Complete ROS2 rm_ros_interfaces/msg/Udpliftstate value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field height integer Exact int32 range -2147483648..2147483647.
--- @field pos number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field current integer Exact int16 range -32768..32767.
--- @field en_flag boolean Exact boolean; encoded as one byte0/1.
--- @field err_flag integer Exact uint16 range 0..65535.
--- @brief Ros2Rm_ros_interfacesMsgUdpliftstate.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgUdpliftstate.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rm_ros_interfacesMsgUdpliftstate.NATIVE_TYPE: Exact normalized native type name rm_ros_interfaces/msg/Udpliftstate.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgUdpliftstate.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_ros_interfaces/msg/Udpliftstate.
--- @brief Ros2Rm_ros_interfacesMsgUdpliftstate.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgUdpliftstate.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Rm_ros_interfacesMsgUdpliftstate.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgUdpliftstate.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rm_ros_interfacesMsgUdpliftstate.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgUdpliftstate.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros2Rm_ros_interfacesMsgUdpliftstate.MAX_WIRE_BYTES: Inclusive complete maximum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rm_ros_interfacesMsgUdpliftstate.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 13 bytes.
--- @brief Construct Ros2Rm_ros_interfacesMsgUdpliftstate with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rm_ros_interfacesMsgUdpliftstate value New mutable complete value; no ROS resource.
--- @see Ros2Rm_ros_interfacesMsgUdpliftstate.encode
--- @field new fun(values?: table): Ros2Rm_ros_interfacesMsgUdpliftstate
--- @brief Encode a complete Ros2Rm_ros_interfacesMsgUdpliftstate value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rm_ros_interfacesMsgUdpliftstate [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..13 bytes.
--- @see Ros2Rm_ros_interfacesMsgUdpliftstate.decode
--- @field encode fun(value: Ros2Rm_ros_interfacesMsgUdpliftstate): string
--- @brief Decode exactly one complete Ros2Rm_ros_interfacesMsgUdpliftstate canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rm_ros_interfacesMsgUdpliftstate value New complete value; failures raise Lua errors.
--- @see Ros2Rm_ros_interfacesMsgUdpliftstate.encode
--- @field decode fun(bytes: string): Ros2Rm_ros_interfacesMsgUdpliftstate
local Ros2Rm_ros_interfacesMsgUdpliftstate = classes["Ros2Rm_ros_interfacesMsgUdpliftstate"]

return classes, by_name
