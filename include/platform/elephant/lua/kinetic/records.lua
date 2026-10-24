--- @file records.lua
--- @brief Preserve the complete original elephant/kinetic canonical value domain.
--- @details The selected domain contains 36 complete record/components and 116 original fields. Declared
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
        ["symbol"] = "Ros1Mycobot_communicationMycobotAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/MycobotAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
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
        ["symbol"] = "Ros1Mycobot_communicationMycobotCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/MycobotCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ry",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rz",
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
        ["symbol"] = "Ros1Mycobot_communicationMycobotGripperStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/MycobotGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mycobot_communicationMycobotPumpStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/MycobotPumpStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
                ["type"] = "int8",
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
        ["symbol"] = "Ros1Mycobot_communicationMycobotSetAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/MycobotSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334",
        ["minimum"] = 25,
        ["maximum"] = 25,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros1Mycobot_communicationMycobotSetCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/MycobotSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9",
        ["minimum"] = 26,
        ["maximum"] = 26,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ry",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rz",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "model",
                ["type"] = "int8",
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
        ["symbol"] = "Ros1Mycobot_communicationGetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/GetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mycobot_communicationGetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/GetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
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
        ["symbol"] = "Ros1Mycobot_communicationGetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/GetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mycobot_communicationGetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/GetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ry",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rz",
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
        ["symbol"] = "Ros1Mycobot_communicationGripperStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/GripperStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mycobot_communicationGripperStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/GripperStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mycobot_communicationPumpStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/PumpStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
                ["type"] = "int8",
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
        ["symbol"] = "Ros1Mycobot_communicationPumpStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/PumpStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mycobot_communicationSetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/SetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd",
        ["minimum"] = 25,
        ["maximum"] = 25,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_6",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros1Mycobot_communicationSetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/SetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mycobot_communicationSetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/SetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a",
        ["minimum"] = 26,
        ["maximum"] = 26,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ry",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rz",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "model",
                ["type"] = "int8",
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
        ["symbol"] = "Ros1Mycobot_communicationSetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mycobot_communication/SetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mypalletizer_communicationMypalAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/MypalAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
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
        ["symbol"] = "Ros1Mypalletizer_communicationMypalCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/MypalCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rx",
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
        ["symbol"] = "Ros1Mypalletizer_communicationMypalGripperStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/MypalGripperStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mypalletizer_communicationMypalPumpStatus",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/MypalPumpStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
                ["type"] = "int8",
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
        ["symbol"] = "Ros1Mypalletizer_communicationMypalSetAngles",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/MypalSetAngles",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98",
        ["minimum"] = 17,
        ["maximum"] = 17,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros1Mypalletizer_communicationMypalSetCoords",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/MypalSetCoords",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448",
        ["minimum"] = 18,
        ["maximum"] = 18,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "model",
                ["type"] = "int8",
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
        ["symbol"] = "Ros1Mypalletizer_communicationGetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/GetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mypalletizer_communicationGetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/GetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
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
        ["symbol"] = "Ros1Mypalletizer_communicationGetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/GetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Mypalletizer_communicationGetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/GetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rx",
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
        ["symbol"] = "Ros1Mypalletizer_communicationGripperStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/GripperStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
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
        ["symbol"] = "Ros1Mypalletizer_communicationGripperStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/GripperStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mypalletizer_communicationPumpStatusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/PumpStatusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Status",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin1",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Pin2",
                ["type"] = "int8",
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
        ["symbol"] = "Ros1Mypalletizer_communicationPumpStatusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/PumpStatusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mypalletizer_communicationSetAnglesRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/SetAnglesRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d",
        ["minimum"] = 17,
        ["maximum"] = 17,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
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
        ["symbol"] = "Ros1Mypalletizer_communicationSetAnglesResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/SetAnglesResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
        ["symbol"] = "Ros1Mypalletizer_communicationSetCoordsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/SetCoordsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1",
        ["minimum"] = 18,
        ["maximum"] = 18,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "model",
                ["type"] = "int8",
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
        ["symbol"] = "Ros1Mypalletizer_communicationSetCoordsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "mypalletizer_communication/SetCoordsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Flag",
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
}
local classes, by_name = wire.records(schemas)

--- @class Ros1Mycobot_communicationMycobotAngles
--- @brief Complete ROS1 mycobot_communication/MycobotAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Mycobot_communicationMycobotAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationMycobotAngles.NATIVE_TYPE: Exact normalized native type name mycobot_communication/MycobotAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/MycobotAngles.
--- @brief Ros1Mycobot_communicationMycobotAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationMycobotAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationMycobotAngles.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mycobot_communicationMycobotAngles.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mycobot_communicationMycobotAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationMycobotAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationMycobotAngles
--- @brief Encode a complete Ros1Mycobot_communicationMycobotAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationMycobotAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mycobot_communicationMycobotAngles.decode
--- @field encode fun(value: Ros1Mycobot_communicationMycobotAngles): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationMycobotAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationMycobotAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationMycobotAngles.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationMycobotAngles
local Ros1Mycobot_communicationMycobotAngles = classes["Ros1Mycobot_communicationMycobotAngles"]

--- @class Ros1Mycobot_communicationMycobotCoords
--- @brief Complete ROS1 mycobot_communication/MycobotCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Mycobot_communicationMycobotCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationMycobotCoords.NATIVE_TYPE: Exact normalized native type name mycobot_communication/MycobotCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/MycobotCoords.
--- @brief Ros1Mycobot_communicationMycobotCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationMycobotCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationMycobotCoords.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mycobot_communicationMycobotCoords.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mycobot_communicationMycobotCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationMycobotCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationMycobotCoords
--- @brief Encode a complete Ros1Mycobot_communicationMycobotCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationMycobotCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mycobot_communicationMycobotCoords.decode
--- @field encode fun(value: Ros1Mycobot_communicationMycobotCoords): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationMycobotCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationMycobotCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationMycobotCoords.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationMycobotCoords
local Ros1Mycobot_communicationMycobotCoords = classes["Ros1Mycobot_communicationMycobotCoords"]

--- @class Ros1Mycobot_communicationMycobotGripperStatus
--- @brief Complete ROS1 mycobot_communication/MycobotGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_communicationMycobotGripperStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationMycobotGripperStatus.NATIVE_TYPE: Exact normalized native type name mycobot_communication/MycobotGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/MycobotGripperStatus.
--- @brief Ros1Mycobot_communicationMycobotGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationMycobotGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationMycobotGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_communicationMycobotGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_communicationMycobotGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationMycobotGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationMycobotGripperStatus
--- @brief Encode a complete Ros1Mycobot_communicationMycobotGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationMycobotGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.decode
--- @field encode fun(value: Ros1Mycobot_communicationMycobotGripperStatus): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationMycobotGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationMycobotGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationMycobotGripperStatus.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationMycobotGripperStatus
local Ros1Mycobot_communicationMycobotGripperStatus = classes["Ros1Mycobot_communicationMycobotGripperStatus"]

--- @class Ros1Mycobot_communicationMycobotPumpStatus
--- @brief Complete ROS1 mycobot_communication/MycobotPumpStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mycobot_communicationMycobotPumpStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationMycobotPumpStatus.NATIVE_TYPE: Exact normalized native type name mycobot_communication/MycobotPumpStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/MycobotPumpStatus.
--- @brief Ros1Mycobot_communicationMycobotPumpStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationMycobotPumpStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationMycobotPumpStatus.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mycobot_communicationMycobotPumpStatus.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mycobot_communicationMycobotPumpStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationMycobotPumpStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationMycobotPumpStatus
--- @brief Encode a complete Ros1Mycobot_communicationMycobotPumpStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationMycobotPumpStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.decode
--- @field encode fun(value: Ros1Mycobot_communicationMycobotPumpStatus): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationMycobotPumpStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationMycobotPumpStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationMycobotPumpStatus.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationMycobotPumpStatus
local Ros1Mycobot_communicationMycobotPumpStatus = classes["Ros1Mycobot_communicationMycobotPumpStatus"]

--- @class Ros1Mycobot_communicationMycobotSetAngles
--- @brief Complete ROS1 mycobot_communication/MycobotSetAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros1Mycobot_communicationMycobotSetAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationMycobotSetAngles.NATIVE_TYPE: Exact normalized native type name mycobot_communication/MycobotSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/MycobotSetAngles.
--- @brief Ros1Mycobot_communicationMycobotSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationMycobotSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationMycobotSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros1Mycobot_communicationMycobotSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros1Mycobot_communicationMycobotSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationMycobotSetAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationMycobotSetAngles
--- @brief Encode a complete Ros1Mycobot_communicationMycobotSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationMycobotSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros1Mycobot_communicationMycobotSetAngles.decode
--- @field encode fun(value: Ros1Mycobot_communicationMycobotSetAngles): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationMycobotSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationMycobotSetAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationMycobotSetAngles.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationMycobotSetAngles
local Ros1Mycobot_communicationMycobotSetAngles = classes["Ros1Mycobot_communicationMycobotSetAngles"]

--- @class Ros1Mycobot_communicationMycobotSetCoords
--- @brief Complete ROS1 mycobot_communication/MycobotSetCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @field model integer Exact int8 range -128..127.
--- @brief Ros1Mycobot_communicationMycobotSetCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationMycobotSetCoords.NATIVE_TYPE: Exact normalized native type name mycobot_communication/MycobotSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/MycobotSetCoords.
--- @brief Ros1Mycobot_communicationMycobotSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationMycobotSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationMycobotSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros1Mycobot_communicationMycobotSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros1Mycobot_communicationMycobotSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationMycobotSetCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationMycobotSetCoords
--- @brief Encode a complete Ros1Mycobot_communicationMycobotSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationMycobotSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros1Mycobot_communicationMycobotSetCoords.decode
--- @field encode fun(value: Ros1Mycobot_communicationMycobotSetCoords): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationMycobotSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationMycobotSetCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationMycobotSetCoords.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationMycobotSetCoords
local Ros1Mycobot_communicationMycobotSetCoords = classes["Ros1Mycobot_communicationMycobotSetCoords"]

--- @class Ros1Mycobot_communicationGetAnglesRequest
--- @brief Complete ROS1 mycobot_communication/GetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mycobot_communicationGetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationGetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mycobot_communication/GetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/GetAnglesRequest.
--- @brief Ros1Mycobot_communicationGetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationGetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationGetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mycobot_communicationGetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mycobot_communicationGetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationGetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationGetAnglesRequest
--- @brief Encode a complete Ros1Mycobot_communicationGetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationGetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mycobot_communicationGetAnglesRequest.decode
--- @field encode fun(value: Ros1Mycobot_communicationGetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationGetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationGetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationGetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationGetAnglesRequest
local Ros1Mycobot_communicationGetAnglesRequest = classes["Ros1Mycobot_communicationGetAnglesRequest"]

--- @class Ros1Mycobot_communicationGetAnglesResponse
--- @brief Complete ROS1 mycobot_communication/GetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Mycobot_communicationGetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationGetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mycobot_communication/GetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/GetAnglesResponse.
--- @brief Ros1Mycobot_communicationGetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationGetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationGetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mycobot_communicationGetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mycobot_communicationGetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationGetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationGetAnglesResponse
--- @brief Encode a complete Ros1Mycobot_communicationGetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationGetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mycobot_communicationGetAnglesResponse.decode
--- @field encode fun(value: Ros1Mycobot_communicationGetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationGetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationGetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationGetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationGetAnglesResponse
local Ros1Mycobot_communicationGetAnglesResponse = classes["Ros1Mycobot_communicationGetAnglesResponse"]

--- @class Ros1Mycobot_communicationGetCoordsRequest
--- @brief Complete ROS1 mycobot_communication/GetCoordsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mycobot_communicationGetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationGetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mycobot_communication/GetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/GetCoordsRequest.
--- @brief Ros1Mycobot_communicationGetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationGetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationGetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mycobot_communicationGetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mycobot_communicationGetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationGetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationGetCoordsRequest
--- @brief Encode a complete Ros1Mycobot_communicationGetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationGetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mycobot_communicationGetCoordsRequest.decode
--- @field encode fun(value: Ros1Mycobot_communicationGetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationGetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationGetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationGetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationGetCoordsRequest
local Ros1Mycobot_communicationGetCoordsRequest = classes["Ros1Mycobot_communicationGetCoordsRequest"]

--- @class Ros1Mycobot_communicationGetCoordsResponse
--- @brief Complete ROS1 mycobot_communication/GetCoordsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Mycobot_communicationGetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationGetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mycobot_communication/GetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/GetCoordsResponse.
--- @brief Ros1Mycobot_communicationGetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationGetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationGetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Mycobot_communicationGetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Mycobot_communicationGetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationGetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationGetCoordsResponse
--- @brief Encode a complete Ros1Mycobot_communicationGetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationGetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Mycobot_communicationGetCoordsResponse.decode
--- @field encode fun(value: Ros1Mycobot_communicationGetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationGetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationGetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationGetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationGetCoordsResponse
local Ros1Mycobot_communicationGetCoordsResponse = classes["Ros1Mycobot_communicationGetCoordsResponse"]

--- @class Ros1Mycobot_communicationGripperStatusRequest
--- @brief Complete ROS1 mycobot_communication/GripperStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_communicationGripperStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationGripperStatusRequest.NATIVE_TYPE: Exact normalized native type name mycobot_communication/GripperStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/GripperStatusRequest.
--- @brief Ros1Mycobot_communicationGripperStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationGripperStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationGripperStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_communicationGripperStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_communicationGripperStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationGripperStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationGripperStatusRequest
--- @brief Encode a complete Ros1Mycobot_communicationGripperStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationGripperStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_communicationGripperStatusRequest.decode
--- @field encode fun(value: Ros1Mycobot_communicationGripperStatusRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationGripperStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationGripperStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationGripperStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationGripperStatusRequest
local Ros1Mycobot_communicationGripperStatusRequest = classes["Ros1Mycobot_communicationGripperStatusRequest"]

--- @class Ros1Mycobot_communicationGripperStatusResponse
--- @brief Complete ROS1 mycobot_communication/GripperStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_communicationGripperStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationGripperStatusResponse.NATIVE_TYPE: Exact normalized native type name mycobot_communication/GripperStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/GripperStatusResponse.
--- @brief Ros1Mycobot_communicationGripperStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationGripperStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationGripperStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_communicationGripperStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_communicationGripperStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationGripperStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationGripperStatusResponse
--- @brief Encode a complete Ros1Mycobot_communicationGripperStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationGripperStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_communicationGripperStatusResponse.decode
--- @field encode fun(value: Ros1Mycobot_communicationGripperStatusResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationGripperStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationGripperStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationGripperStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationGripperStatusResponse
local Ros1Mycobot_communicationGripperStatusResponse = classes["Ros1Mycobot_communicationGripperStatusResponse"]

--- @class Ros1Mycobot_communicationPumpStatusRequest
--- @brief Complete ROS1 mycobot_communication/PumpStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mycobot_communicationPumpStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationPumpStatusRequest.NATIVE_TYPE: Exact normalized native type name mycobot_communication/PumpStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/PumpStatusRequest.
--- @brief Ros1Mycobot_communicationPumpStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationPumpStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationPumpStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mycobot_communicationPumpStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mycobot_communicationPumpStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationPumpStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationPumpStatusRequest
--- @brief Encode a complete Ros1Mycobot_communicationPumpStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationPumpStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mycobot_communicationPumpStatusRequest.decode
--- @field encode fun(value: Ros1Mycobot_communicationPumpStatusRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationPumpStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationPumpStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationPumpStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationPumpStatusRequest
local Ros1Mycobot_communicationPumpStatusRequest = classes["Ros1Mycobot_communicationPumpStatusRequest"]

--- @class Ros1Mycobot_communicationPumpStatusResponse
--- @brief Complete ROS1 mycobot_communication/PumpStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_communicationPumpStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationPumpStatusResponse.NATIVE_TYPE: Exact normalized native type name mycobot_communication/PumpStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/PumpStatusResponse.
--- @brief Ros1Mycobot_communicationPumpStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationPumpStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationPumpStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_communicationPumpStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_communicationPumpStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationPumpStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationPumpStatusResponse
--- @brief Encode a complete Ros1Mycobot_communicationPumpStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationPumpStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_communicationPumpStatusResponse.decode
--- @field encode fun(value: Ros1Mycobot_communicationPumpStatusResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationPumpStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationPumpStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationPumpStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationPumpStatusResponse
local Ros1Mycobot_communicationPumpStatusResponse = classes["Ros1Mycobot_communicationPumpStatusResponse"]

--- @class Ros1Mycobot_communicationSetAnglesRequest
--- @brief Complete ROS1 mycobot_communication/SetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros1Mycobot_communicationSetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationSetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mycobot_communication/SetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/SetAnglesRequest.
--- @brief Ros1Mycobot_communicationSetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationSetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationSetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros1Mycobot_communicationSetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25 bytes.
--- @brief Construct Ros1Mycobot_communicationSetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationSetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationSetAnglesRequest
--- @brief Encode a complete Ros1Mycobot_communicationSetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationSetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..25 bytes.
--- @see Ros1Mycobot_communicationSetAnglesRequest.decode
--- @field encode fun(value: Ros1Mycobot_communicationSetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationSetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationSetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationSetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationSetAnglesRequest
local Ros1Mycobot_communicationSetAnglesRequest = classes["Ros1Mycobot_communicationSetAnglesRequest"]

--- @class Ros1Mycobot_communicationSetAnglesResponse
--- @brief Complete ROS1 mycobot_communication/SetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_communicationSetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationSetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mycobot_communication/SetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/SetAnglesResponse.
--- @brief Ros1Mycobot_communicationSetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationSetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationSetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_communicationSetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_communicationSetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationSetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationSetAnglesResponse
--- @brief Encode a complete Ros1Mycobot_communicationSetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationSetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_communicationSetAnglesResponse.decode
--- @field encode fun(value: Ros1Mycobot_communicationSetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationSetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationSetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationSetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationSetAnglesResponse
local Ros1Mycobot_communicationSetAnglesResponse = classes["Ros1Mycobot_communicationSetAnglesResponse"]

--- @class Ros1Mycobot_communicationSetCoordsRequest
--- @brief Complete ROS1 mycobot_communication/SetCoordsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ry number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @field model integer Exact int8 range -128..127.
--- @brief Ros1Mycobot_communicationSetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationSetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mycobot_communication/SetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/SetCoordsRequest.
--- @brief Ros1Mycobot_communicationSetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationSetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationSetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros1Mycobot_communicationSetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros1Mycobot_communicationSetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationSetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationSetCoordsRequest
--- @brief Encode a complete Ros1Mycobot_communicationSetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationSetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros1Mycobot_communicationSetCoordsRequest.decode
--- @field encode fun(value: Ros1Mycobot_communicationSetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationSetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationSetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationSetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationSetCoordsRequest
local Ros1Mycobot_communicationSetCoordsRequest = classes["Ros1Mycobot_communicationSetCoordsRequest"]

--- @class Ros1Mycobot_communicationSetCoordsResponse
--- @brief Complete ROS1 mycobot_communication/SetCoordsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mycobot_communicationSetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mycobot_communicationSetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mycobot_communication/SetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mycobot_communication/SetCoordsResponse.
--- @brief Ros1Mycobot_communicationSetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mycobot_communicationSetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mycobot_communicationSetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mycobot_communicationSetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mycobot_communicationSetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mycobot_communicationSetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mycobot_communicationSetCoordsResponse
--- @brief Encode a complete Ros1Mycobot_communicationSetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mycobot_communicationSetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mycobot_communicationSetCoordsResponse.decode
--- @field encode fun(value: Ros1Mycobot_communicationSetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mycobot_communicationSetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mycobot_communicationSetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mycobot_communicationSetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mycobot_communicationSetCoordsResponse
local Ros1Mycobot_communicationSetCoordsResponse = classes["Ros1Mycobot_communicationSetCoordsResponse"]

--- @class Ros1Mypalletizer_communicationMypalAngles
--- @brief Complete ROS1 mypalletizer_communication/MypalAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Mypalletizer_communicationMypalAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationMypalAngles.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/MypalAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/MypalAngles.
--- @brief Ros1Mypalletizer_communicationMypalAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationMypalAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationMypalAngles.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Mypalletizer_communicationMypalAngles.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Mypalletizer_communicationMypalAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationMypalAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationMypalAngles
--- @brief Encode a complete Ros1Mypalletizer_communicationMypalAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationMypalAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Mypalletizer_communicationMypalAngles.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationMypalAngles): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationMypalAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationMypalAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationMypalAngles.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationMypalAngles
local Ros1Mypalletizer_communicationMypalAngles = classes["Ros1Mypalletizer_communicationMypalAngles"]

--- @class Ros1Mypalletizer_communicationMypalCoords
--- @brief Complete ROS1 mypalletizer_communication/MypalCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Mypalletizer_communicationMypalCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationMypalCoords.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/MypalCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/MypalCoords.
--- @brief Ros1Mypalletizer_communicationMypalCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationMypalCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationMypalCoords.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Mypalletizer_communicationMypalCoords.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Mypalletizer_communicationMypalCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationMypalCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationMypalCoords
--- @brief Encode a complete Ros1Mypalletizer_communicationMypalCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationMypalCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Mypalletizer_communicationMypalCoords.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationMypalCoords): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationMypalCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationMypalCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationMypalCoords.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationMypalCoords
local Ros1Mypalletizer_communicationMypalCoords = classes["Ros1Mypalletizer_communicationMypalCoords"]

--- @class Ros1Mypalletizer_communicationMypalGripperStatus
--- @brief Complete ROS1 mypalletizer_communication/MypalGripperStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mypalletizer_communicationMypalGripperStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationMypalGripperStatus.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/MypalGripperStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/MypalGripperStatus.
--- @brief Ros1Mypalletizer_communicationMypalGripperStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationMypalGripperStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationMypalGripperStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mypalletizer_communicationMypalGripperStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mypalletizer_communicationMypalGripperStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationMypalGripperStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationMypalGripperStatus
--- @brief Encode a complete Ros1Mypalletizer_communicationMypalGripperStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationMypalGripperStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationMypalGripperStatus): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationMypalGripperStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationMypalGripperStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationMypalGripperStatus.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationMypalGripperStatus
local Ros1Mypalletizer_communicationMypalGripperStatus = classes["Ros1Mypalletizer_communicationMypalGripperStatus"]

--- @class Ros1Mypalletizer_communicationMypalPumpStatus
--- @brief Complete ROS1 mypalletizer_communication/MypalPumpStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mypalletizer_communicationMypalPumpStatus.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationMypalPumpStatus.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/MypalPumpStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/MypalPumpStatus.
--- @brief Ros1Mypalletizer_communicationMypalPumpStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationMypalPumpStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationMypalPumpStatus.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mypalletizer_communicationMypalPumpStatus.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mypalletizer_communicationMypalPumpStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationMypalPumpStatus value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationMypalPumpStatus
--- @brief Encode a complete Ros1Mypalletizer_communicationMypalPumpStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationMypalPumpStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationMypalPumpStatus): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationMypalPumpStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationMypalPumpStatus value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationMypalPumpStatus.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationMypalPumpStatus
local Ros1Mypalletizer_communicationMypalPumpStatus = classes["Ros1Mypalletizer_communicationMypalPumpStatus"]

--- @class Ros1Mypalletizer_communicationMypalSetAngles
--- @brief Complete ROS1 mypalletizer_communication/MypalSetAngles value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros1Mypalletizer_communicationMypalSetAngles.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationMypalSetAngles.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/MypalSetAngles.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/MypalSetAngles.
--- @brief Ros1Mypalletizer_communicationMypalSetAngles.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationMypalSetAngles.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationMypalSetAngles.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros1Mypalletizer_communicationMypalSetAngles.MAX_WIRE_BYTES: Inclusive complete maximum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17 bytes.
--- @brief Construct Ros1Mypalletizer_communicationMypalSetAngles with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationMypalSetAngles value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationMypalSetAngles
--- @brief Encode a complete Ros1Mypalletizer_communicationMypalSetAngles value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationMypalSetAngles [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..17 bytes.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationMypalSetAngles): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationMypalSetAngles canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationMypalSetAngles value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationMypalSetAngles.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationMypalSetAngles
local Ros1Mypalletizer_communicationMypalSetAngles = classes["Ros1Mypalletizer_communicationMypalSetAngles"]

--- @class Ros1Mypalletizer_communicationMypalSetCoords
--- @brief Complete ROS1 mypalletizer_communication/MypalSetCoords value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @field model integer Exact int8 range -128..127.
--- @brief Ros1Mypalletizer_communicationMypalSetCoords.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationMypalSetCoords.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/MypalSetCoords.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/MypalSetCoords.
--- @brief Ros1Mypalletizer_communicationMypalSetCoords.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationMypalSetCoords.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationMypalSetCoords.MIN_WIRE_BYTES: Inclusive complete minimum 18 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 18 bytes.
--- @brief Ros1Mypalletizer_communicationMypalSetCoords.MAX_WIRE_BYTES: Inclusive complete maximum 18 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 18 bytes.
--- @brief Construct Ros1Mypalletizer_communicationMypalSetCoords with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationMypalSetCoords value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationMypalSetCoords
--- @brief Encode a complete Ros1Mypalletizer_communicationMypalSetCoords value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationMypalSetCoords [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 18..18 bytes.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationMypalSetCoords): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationMypalSetCoords canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationMypalSetCoords value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationMypalSetCoords.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationMypalSetCoords
local Ros1Mypalletizer_communicationMypalSetCoords = classes["Ros1Mypalletizer_communicationMypalSetCoords"]

--- @class Ros1Mypalletizer_communicationGetAnglesRequest
--- @brief Complete ROS1 mypalletizer_communication/GetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mypalletizer_communicationGetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationGetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/GetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/GetAnglesRequest.
--- @brief Ros1Mypalletizer_communicationGetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationGetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationGetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mypalletizer_communicationGetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mypalletizer_communicationGetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationGetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationGetAnglesRequest
--- @brief Encode a complete Ros1Mypalletizer_communicationGetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationGetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationGetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationGetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationGetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationGetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationGetAnglesRequest
local Ros1Mypalletizer_communicationGetAnglesRequest = classes["Ros1Mypalletizer_communicationGetAnglesRequest"]

--- @class Ros1Mypalletizer_communicationGetAnglesResponse
--- @brief Complete ROS1 mypalletizer_communication/GetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Mypalletizer_communicationGetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationGetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/GetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/GetAnglesResponse.
--- @brief Ros1Mypalletizer_communicationGetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationGetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationGetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Mypalletizer_communicationGetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Mypalletizer_communicationGetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationGetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationGetAnglesResponse
--- @brief Encode a complete Ros1Mypalletizer_communicationGetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationGetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationGetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationGetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationGetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationGetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationGetAnglesResponse
local Ros1Mypalletizer_communicationGetAnglesResponse = classes["Ros1Mypalletizer_communicationGetAnglesResponse"]

--- @class Ros1Mypalletizer_communicationGetCoordsRequest
--- @brief Complete ROS1 mypalletizer_communication/GetCoordsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Mypalletizer_communicationGetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationGetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/GetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/GetCoordsRequest.
--- @brief Ros1Mypalletizer_communicationGetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationGetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationGetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Mypalletizer_communicationGetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Mypalletizer_communicationGetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationGetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationGetCoordsRequest
--- @brief Encode a complete Ros1Mypalletizer_communicationGetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationGetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationGetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationGetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationGetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationGetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationGetCoordsRequest
local Ros1Mypalletizer_communicationGetCoordsRequest = classes["Ros1Mypalletizer_communicationGetCoordsRequest"]

--- @class Ros1Mypalletizer_communicationGetCoordsResponse
--- @brief Complete ROS1 mypalletizer_communication/GetCoordsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Mypalletizer_communicationGetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationGetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/GetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/GetCoordsResponse.
--- @brief Ros1Mypalletizer_communicationGetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationGetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationGetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Mypalletizer_communicationGetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Mypalletizer_communicationGetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationGetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationGetCoordsResponse
--- @brief Encode a complete Ros1Mypalletizer_communicationGetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationGetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationGetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationGetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationGetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationGetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationGetCoordsResponse
local Ros1Mypalletizer_communicationGetCoordsResponse = classes["Ros1Mypalletizer_communicationGetCoordsResponse"]

--- @class Ros1Mypalletizer_communicationGripperStatusRequest
--- @brief Complete ROS1 mypalletizer_communication/GripperStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mypalletizer_communicationGripperStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationGripperStatusRequest.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/GripperStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/GripperStatusRequest.
--- @brief Ros1Mypalletizer_communicationGripperStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationGripperStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationGripperStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mypalletizer_communicationGripperStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mypalletizer_communicationGripperStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationGripperStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationGripperStatusRequest
--- @brief Encode a complete Ros1Mypalletizer_communicationGripperStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationGripperStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationGripperStatusRequest): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationGripperStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationGripperStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationGripperStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationGripperStatusRequest
local Ros1Mypalletizer_communicationGripperStatusRequest = classes["Ros1Mypalletizer_communicationGripperStatusRequest"]

--- @class Ros1Mypalletizer_communicationGripperStatusResponse
--- @brief Complete ROS1 mypalletizer_communication/GripperStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mypalletizer_communicationGripperStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationGripperStatusResponse.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/GripperStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/GripperStatusResponse.
--- @brief Ros1Mypalletizer_communicationGripperStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationGripperStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationGripperStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mypalletizer_communicationGripperStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mypalletizer_communicationGripperStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationGripperStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationGripperStatusResponse
--- @brief Encode a complete Ros1Mypalletizer_communicationGripperStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationGripperStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationGripperStatusResponse): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationGripperStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationGripperStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationGripperStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationGripperStatusResponse
local Ros1Mypalletizer_communicationGripperStatusResponse = classes["Ros1Mypalletizer_communicationGripperStatusResponse"]

--- @class Ros1Mypalletizer_communicationPumpStatusRequest
--- @brief Complete ROS1 mypalletizer_communication/PumpStatusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Status boolean Exact boolean; encoded as one byte0/1.
--- @field Pin1 integer Exact int8 range -128..127.
--- @field Pin2 integer Exact int8 range -128..127.
--- @brief Ros1Mypalletizer_communicationPumpStatusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationPumpStatusRequest.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/PumpStatusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/PumpStatusRequest.
--- @brief Ros1Mypalletizer_communicationPumpStatusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationPumpStatusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationPumpStatusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Mypalletizer_communicationPumpStatusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Mypalletizer_communicationPumpStatusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationPumpStatusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationPumpStatusRequest
--- @brief Encode a complete Ros1Mypalletizer_communicationPumpStatusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationPumpStatusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationPumpStatusRequest): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationPumpStatusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationPumpStatusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationPumpStatusRequest.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationPumpStatusRequest
local Ros1Mypalletizer_communicationPumpStatusRequest = classes["Ros1Mypalletizer_communicationPumpStatusRequest"]

--- @class Ros1Mypalletizer_communicationPumpStatusResponse
--- @brief Complete ROS1 mypalletizer_communication/PumpStatusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mypalletizer_communicationPumpStatusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationPumpStatusResponse.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/PumpStatusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/PumpStatusResponse.
--- @brief Ros1Mypalletizer_communicationPumpStatusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationPumpStatusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationPumpStatusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mypalletizer_communicationPumpStatusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mypalletizer_communicationPumpStatusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationPumpStatusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationPumpStatusResponse
--- @brief Encode a complete Ros1Mypalletizer_communicationPumpStatusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationPumpStatusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationPumpStatusResponse): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationPumpStatusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationPumpStatusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationPumpStatusResponse.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationPumpStatusResponse
local Ros1Mypalletizer_communicationPumpStatusResponse = classes["Ros1Mypalletizer_communicationPumpStatusResponse"]

--- @class Ros1Mypalletizer_communicationSetAnglesRequest
--- @brief Complete ROS1 mypalletizer_communication/SetAnglesRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field joint_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @brief Ros1Mypalletizer_communicationSetAnglesRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationSetAnglesRequest.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/SetAnglesRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/SetAnglesRequest.
--- @brief Ros1Mypalletizer_communicationSetAnglesRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationSetAnglesRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationSetAnglesRequest.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros1Mypalletizer_communicationSetAnglesRequest.MAX_WIRE_BYTES: Inclusive complete maximum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17 bytes.
--- @brief Construct Ros1Mypalletizer_communicationSetAnglesRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationSetAnglesRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationSetAnglesRequest
--- @brief Encode a complete Ros1Mypalletizer_communicationSetAnglesRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationSetAnglesRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..17 bytes.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationSetAnglesRequest): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationSetAnglesRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationSetAnglesRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationSetAnglesRequest.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationSetAnglesRequest
local Ros1Mypalletizer_communicationSetAnglesRequest = classes["Ros1Mypalletizer_communicationSetAnglesRequest"]

--- @class Ros1Mypalletizer_communicationSetAnglesResponse
--- @brief Complete ROS1 mypalletizer_communication/SetAnglesResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mypalletizer_communicationSetAnglesResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationSetAnglesResponse.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/SetAnglesResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/SetAnglesResponse.
--- @brief Ros1Mypalletizer_communicationSetAnglesResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationSetAnglesResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationSetAnglesResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mypalletizer_communicationSetAnglesResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mypalletizer_communicationSetAnglesResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationSetAnglesResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationSetAnglesResponse
--- @brief Encode a complete Ros1Mypalletizer_communicationSetAnglesResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationSetAnglesResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationSetAnglesResponse): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationSetAnglesResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationSetAnglesResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationSetAnglesResponse.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationSetAnglesResponse
local Ros1Mypalletizer_communicationSetAnglesResponse = classes["Ros1Mypalletizer_communicationSetAnglesResponse"]

--- @class Ros1Mypalletizer_communicationSetCoordsRequest
--- @brief Complete ROS1 mypalletizer_communication/SetCoordsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed integer Exact int8 range -128..127.
--- @field model integer Exact int8 range -128..127.
--- @brief Ros1Mypalletizer_communicationSetCoordsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationSetCoordsRequest.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/SetCoordsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/SetCoordsRequest.
--- @brief Ros1Mypalletizer_communicationSetCoordsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationSetCoordsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationSetCoordsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 18 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 18 bytes.
--- @brief Ros1Mypalletizer_communicationSetCoordsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 18 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 18 bytes.
--- @brief Construct Ros1Mypalletizer_communicationSetCoordsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationSetCoordsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationSetCoordsRequest
--- @brief Encode a complete Ros1Mypalletizer_communicationSetCoordsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationSetCoordsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 18..18 bytes.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationSetCoordsRequest): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationSetCoordsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationSetCoordsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationSetCoordsRequest.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationSetCoordsRequest
local Ros1Mypalletizer_communicationSetCoordsRequest = classes["Ros1Mypalletizer_communicationSetCoordsRequest"]

--- @class Ros1Mypalletizer_communicationSetCoordsResponse
--- @brief Complete ROS1 mypalletizer_communication/SetCoordsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Flag boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Mypalletizer_communicationSetCoordsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Mypalletizer_communicationSetCoordsResponse.NATIVE_TYPE: Exact normalized native type name mypalletizer_communication/SetCoordsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name mypalletizer_communication/SetCoordsResponse.
--- @brief Ros1Mypalletizer_communicationSetCoordsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Mypalletizer_communicationSetCoordsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Mypalletizer_communicationSetCoordsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Mypalletizer_communicationSetCoordsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Mypalletizer_communicationSetCoordsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Mypalletizer_communicationSetCoordsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field new fun(values?: table): Ros1Mypalletizer_communicationSetCoordsResponse
--- @brief Encode a complete Ros1Mypalletizer_communicationSetCoordsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Mypalletizer_communicationSetCoordsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.decode
--- @field encode fun(value: Ros1Mypalletizer_communicationSetCoordsResponse): string
--- @brief Decode exactly one complete Ros1Mypalletizer_communicationSetCoordsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Mypalletizer_communicationSetCoordsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Mypalletizer_communicationSetCoordsResponse.encode
--- @field decode fun(bytes: string): Ros1Mypalletizer_communicationSetCoordsResponse
local Ros1Mypalletizer_communicationSetCoordsResponse = classes["Ros1Mypalletizer_communicationSetCoordsResponse"]

return classes, by_name
