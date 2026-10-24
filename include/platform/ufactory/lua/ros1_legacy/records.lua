--- @file records.lua
--- @brief Preserve the complete original ufactory/ros1_legacy canonical value domain.
--- @details The selected domain contains 29 complete record/components and 67 original fields. Declared
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
        ["symbol"] = "Ros1Geometry_msgsPoint",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Point",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b",
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
        ["symbol"] = "Ros1Geometry_msgsQuaternion",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Quaternion",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934",
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
            {
                ["name"] = "w",
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
        ["symbol"] = "Ros1Geometry_msgsPose",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Pose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "position",
                ["type"] = "Ros1Geometry_msgsPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "orientation",
                ["type"] = "Ros1Geometry_msgsQuaternion",
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
        ["symbol"] = "Ros1Xarm_msgsIOState",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/IOState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "digital_1",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "digital_2",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "analog_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "analog_2",
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
        ["symbol"] = "Ros1Xarm_msgsRobotMsg",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/RobotMsg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7",
        ["minimum"] = 66,
        ["maximum"] = 94,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "state",
                ["type"] = "int16",
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
            {
                ["name"] = "cmdnum",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "mt_brake",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "mt_able",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "err",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "warn",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "angle",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 7,
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
                ["name"] = "offset",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsClearErrRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/ClearErrRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsClearErrResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/ClearErrResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054",
        ["minimum"] = 6,
        ["maximum"] = 262,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "ret",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "message",
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
        ["symbol"] = "Ros1Xarm_msgsGetAnalogIORequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetAnalogIORequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "port_num",
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
        ["symbol"] = "Ros1Xarm_msgsGetAnalogIOResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetAnalogIOResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835",
        ["minimum"] = 10,
        ["maximum"] = 266,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "analog_value",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ret",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "message",
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
        ["symbol"] = "Ros1Xarm_msgsGetDigitalIORequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetDigitalIORequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsGetDigitalIOResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetDigitalIOResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498",
        ["minimum"] = 14,
        ["maximum"] = 270,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "digital_1",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "digital_2",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ret",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "message",
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
        ["symbol"] = "Ros1Xarm_msgsMoveRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/MoveRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced",
        ["minimum"] = 20,
        ["maximum"] = 148,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pose",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "mvvelo",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "mvacc",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "mvtime",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "mvradii",
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
        ["symbol"] = "Ros1Xarm_msgsMoveResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/MoveResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d",
        ["minimum"] = 6,
        ["maximum"] = 262,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "ret",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "message",
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
        ["symbol"] = "Ros1Xarm_msgsSetAxisRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetAxisRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "id",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros1Xarm_msgsSetAxisResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetAxisResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27",
        ["minimum"] = 6,
        ["maximum"] = 262,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "ret",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "message",
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
        ["symbol"] = "Ros1Xarm_msgsSetDigitalIORequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetDigitalIORequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "io_num",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "value",
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
        ["symbol"] = "Ros1Xarm_msgsSetDigitalIOResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetDigitalIOResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a",
        ["minimum"] = 6,
        ["maximum"] = 262,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "ret",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "message",
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
        ["symbol"] = "Ros1Xarm_msgsSetInt16Request",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetInt16Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros1Xarm_msgsSetInt16Response",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetInt16Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656",
        ["minimum"] = 6,
        ["maximum"] = 262,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "ret",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "message",
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
        ["symbol"] = "Ros1Xarm_msgsTCPOffsetRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/TCPOffsetRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd",
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
                ["name"] = "roll",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "pitch",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "yaw",
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
        ["symbol"] = "Ros1Xarm_msgsTCPOffsetResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/TCPOffsetResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d",
        ["minimum"] = 6,
        ["maximum"] = 262,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "ret",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "message",
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
        ["symbol"] = "Ros1Xarm_plannerExec_planRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_planner/exec_planRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "exec",
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
        ["symbol"] = "Ros1Xarm_plannerExec_planResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_planner/exec_planResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "success",
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
        ["symbol"] = "Ros1Xarm_plannerJoint_planRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_planner/joint_planRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "target",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_plannerJoint_planResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_planner/joint_planResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "success",
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
        ["symbol"] = "Ros1Xarm_plannerPose_planRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_planner/pose_planRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "target",
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_plannerPose_planResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_planner/pose_planResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "success",
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
        ["symbol"] = "Ros1Xarm_plannerSingle_straight_planRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_planner/single_straight_planRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "target",
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_plannerSingle_straight_planResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_planner/single_straight_planResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "success",
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

--- @class Ros1Geometry_msgsPoint
--- @brief Complete ROS1 geometry_msgs/Point value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float64.
--- @field y number Finite IEEE float64.
--- @field z number Finite IEEE float64.
--- @brief Ros1Geometry_msgsPoint.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Geometry_msgsPoint.NATIVE_TYPE: Exact normalized native type name geometry_msgs/Point.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/Point.
--- @brief Ros1Geometry_msgsPoint.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Geometry_msgsPoint.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Geometry_msgsPoint.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Geometry_msgsPoint.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Geometry_msgsPoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Geometry_msgsPoint value New mutable complete value; no ROS resource.
--- @see Ros1Geometry_msgsPoint.encode
--- @field new fun(values?: table): Ros1Geometry_msgsPoint
--- @brief Encode a complete Ros1Geometry_msgsPoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Geometry_msgsPoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Geometry_msgsPoint.decode
--- @field encode fun(value: Ros1Geometry_msgsPoint): string
--- @brief Decode exactly one complete Ros1Geometry_msgsPoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Geometry_msgsPoint value New complete value; failures raise Lua errors.
--- @see Ros1Geometry_msgsPoint.encode
--- @field decode fun(bytes: string): Ros1Geometry_msgsPoint
local Ros1Geometry_msgsPoint = classes["Ros1Geometry_msgsPoint"]

--- @class Ros1Geometry_msgsQuaternion
--- @brief Complete ROS1 geometry_msgs/Quaternion value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float64.
--- @field y number Finite IEEE float64.
--- @field z number Finite IEEE float64.
--- @field w number Finite IEEE float64.
--- @brief Ros1Geometry_msgsQuaternion.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Geometry_msgsQuaternion.NATIVE_TYPE: Exact normalized native type name geometry_msgs/Quaternion.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/Quaternion.
--- @brief Ros1Geometry_msgsQuaternion.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Geometry_msgsQuaternion.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Geometry_msgsQuaternion.MIN_WIRE_BYTES: Inclusive complete minimum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 32 bytes.
--- @brief Ros1Geometry_msgsQuaternion.MAX_WIRE_BYTES: Inclusive complete maximum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 32 bytes.
--- @brief Construct Ros1Geometry_msgsQuaternion with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Geometry_msgsQuaternion value New mutable complete value; no ROS resource.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field new fun(values?: table): Ros1Geometry_msgsQuaternion
--- @brief Encode a complete Ros1Geometry_msgsQuaternion value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Geometry_msgsQuaternion [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 32..32 bytes.
--- @see Ros1Geometry_msgsQuaternion.decode
--- @field encode fun(value: Ros1Geometry_msgsQuaternion): string
--- @brief Decode exactly one complete Ros1Geometry_msgsQuaternion canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Geometry_msgsQuaternion value New complete value; failures raise Lua errors.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field decode fun(bytes: string): Ros1Geometry_msgsQuaternion
local Ros1Geometry_msgsQuaternion = classes["Ros1Geometry_msgsQuaternion"]

--- @class Ros1Geometry_msgsPose
--- @brief Complete ROS1 geometry_msgs/Pose value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field position table Complete nested geometry_msgs/Point value; no native fields are projected away.
--- @field orientation table Complete nested geometry_msgs/Quaternion value; no native fields are projected away.
--- @brief Ros1Geometry_msgsPose.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPose.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Geometry_msgsPose.NATIVE_TYPE: Exact normalized native type name geometry_msgs/Pose.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPose.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/Pose.
--- @brief Ros1Geometry_msgsPose.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPose.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Geometry_msgsPose.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPose.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Geometry_msgsPose.MIN_WIRE_BYTES: Inclusive complete minimum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPose.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 56 bytes.
--- @brief Ros1Geometry_msgsPose.MAX_WIRE_BYTES: Inclusive complete maximum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPose.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 56 bytes.
--- @brief Construct Ros1Geometry_msgsPose with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Geometry_msgsPose value New mutable complete value; no ROS resource.
--- @see Ros1Geometry_msgsPose.encode
--- @field new fun(values?: table): Ros1Geometry_msgsPose
--- @brief Encode a complete Ros1Geometry_msgsPose value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Geometry_msgsPose [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 56..56 bytes.
--- @see Ros1Geometry_msgsPose.decode
--- @field encode fun(value: Ros1Geometry_msgsPose): string
--- @brief Decode exactly one complete Ros1Geometry_msgsPose canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Geometry_msgsPose value New complete value; failures raise Lua errors.
--- @see Ros1Geometry_msgsPose.encode
--- @field decode fun(bytes: string): Ros1Geometry_msgsPose
local Ros1Geometry_msgsPose = classes["Ros1Geometry_msgsPose"]

--- @class Ros1Xarm_msgsIOState
--- @brief Complete ROS1 xarm_msgs/IOState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field digital_1 integer Exact int32 range -2147483648..2147483647.
--- @field digital_2 integer Exact int32 range -2147483648..2147483647.
--- @field analog_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field analog_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_msgsIOState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsIOState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsIOState.NATIVE_TYPE: Exact normalized native type name xarm_msgs/IOState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsIOState.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/IOState.
--- @brief Ros1Xarm_msgsIOState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsIOState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsIOState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsIOState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsIOState.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsIOState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Xarm_msgsIOState.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsIOState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Xarm_msgsIOState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsIOState value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsIOState.encode
--- @field new fun(values?: table): Ros1Xarm_msgsIOState
--- @brief Encode a complete Ros1Xarm_msgsIOState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsIOState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Xarm_msgsIOState.decode
--- @field encode fun(value: Ros1Xarm_msgsIOState): string
--- @brief Decode exactly one complete Ros1Xarm_msgsIOState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsIOState value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsIOState.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsIOState
local Ros1Xarm_msgsIOState = classes["Ros1Xarm_msgsIOState"]

--- @class Ros1Xarm_msgsRobotMsg
--- @brief Complete ROS1 xarm_msgs/RobotMsg value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state integer Exact int16 range -32768..32767.
--- @field mode integer Exact int16 range -32768..32767.
--- @field cmdnum integer Exact int16 range -32768..32767.
--- @field mt_brake integer Exact int16 range -32768..32767.
--- @field mt_able integer Exact int16 range -32768..32767.
--- @field err integer Exact int16 range -32768..32767.
--- @field warn integer Exact int16 range -32768..32767.
--- @field angle number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 7 contiguous elements; holes and extra array keys are rejected.
--- @field pose number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field offset number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Xarm_msgsRobotMsg.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsRobotMsg.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsRobotMsg.NATIVE_TYPE: Exact normalized native type name xarm_msgs/RobotMsg.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsRobotMsg.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/RobotMsg.
--- @brief Ros1Xarm_msgsRobotMsg.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsRobotMsg.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsRobotMsg.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsRobotMsg.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsRobotMsg.MIN_WIRE_BYTES: Inclusive complete minimum 66 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsRobotMsg.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 66 bytes.
--- @brief Ros1Xarm_msgsRobotMsg.MAX_WIRE_BYTES: Inclusive complete maximum 94 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsRobotMsg.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 94 bytes.
--- @brief Construct Ros1Xarm_msgsRobotMsg with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsRobotMsg value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsRobotMsg.encode
--- @field new fun(values?: table): Ros1Xarm_msgsRobotMsg
--- @brief Encode a complete Ros1Xarm_msgsRobotMsg value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsRobotMsg [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 66..94 bytes.
--- @see Ros1Xarm_msgsRobotMsg.decode
--- @field encode fun(value: Ros1Xarm_msgsRobotMsg): string
--- @brief Decode exactly one complete Ros1Xarm_msgsRobotMsg canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsRobotMsg value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsRobotMsg.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsRobotMsg
local Ros1Xarm_msgsRobotMsg = classes["Ros1Xarm_msgsRobotMsg"]

--- @class Ros1Xarm_msgsClearErrRequest
--- @brief Complete ROS1 xarm_msgs/ClearErrRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Xarm_msgsClearErrRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsClearErrRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsClearErrRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/ClearErrRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsClearErrRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/ClearErrRequest.
--- @brief Ros1Xarm_msgsClearErrRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsClearErrRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsClearErrRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsClearErrRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsClearErrRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsClearErrRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Xarm_msgsClearErrRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsClearErrRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Xarm_msgsClearErrRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsClearErrRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsClearErrRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsClearErrRequest
--- @brief Encode a complete Ros1Xarm_msgsClearErrRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsClearErrRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Xarm_msgsClearErrRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsClearErrRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsClearErrRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsClearErrRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsClearErrRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsClearErrRequest
local Ros1Xarm_msgsClearErrRequest = classes["Ros1Xarm_msgsClearErrRequest"]

--- @class Ros1Xarm_msgsClearErrResponse
--- @brief Complete ROS1 xarm_msgs/ClearErrResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsClearErrResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsClearErrResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsClearErrResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/ClearErrResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsClearErrResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/ClearErrResponse.
--- @brief Ros1Xarm_msgsClearErrResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsClearErrResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsClearErrResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsClearErrResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsClearErrResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsClearErrResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsClearErrResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsClearErrResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsClearErrResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsClearErrResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsClearErrResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsClearErrResponse
--- @brief Encode a complete Ros1Xarm_msgsClearErrResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsClearErrResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsClearErrResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsClearErrResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsClearErrResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsClearErrResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsClearErrResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsClearErrResponse
local Ros1Xarm_msgsClearErrResponse = classes["Ros1Xarm_msgsClearErrResponse"]

--- @class Ros1Xarm_msgsGetAnalogIORequest
--- @brief Complete ROS1 xarm_msgs/GetAnalogIORequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field port_num integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsGetAnalogIORequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetAnalogIORequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetAnalogIORequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetAnalogIORequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetAnalogIORequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetAnalogIORequest.
--- @brief Ros1Xarm_msgsGetAnalogIORequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetAnalogIORequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetAnalogIORequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetAnalogIORequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetAnalogIORequest.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetAnalogIORequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Xarm_msgsGetAnalogIORequest.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetAnalogIORequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Xarm_msgsGetAnalogIORequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetAnalogIORequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetAnalogIORequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetAnalogIORequest
--- @brief Encode a complete Ros1Xarm_msgsGetAnalogIORequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetAnalogIORequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Xarm_msgsGetAnalogIORequest.decode
--- @field encode fun(value: Ros1Xarm_msgsGetAnalogIORequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetAnalogIORequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetAnalogIORequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetAnalogIORequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetAnalogIORequest
local Ros1Xarm_msgsGetAnalogIORequest = classes["Ros1Xarm_msgsGetAnalogIORequest"]

--- @class Ros1Xarm_msgsGetAnalogIOResponse
--- @brief Complete ROS1 xarm_msgs/GetAnalogIOResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field analog_value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsGetAnalogIOResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetAnalogIOResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetAnalogIOResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetAnalogIOResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetAnalogIOResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetAnalogIOResponse.
--- @brief Ros1Xarm_msgsGetAnalogIOResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetAnalogIOResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetAnalogIOResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetAnalogIOResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetAnalogIOResponse.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetAnalogIOResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Xarm_msgsGetAnalogIOResponse.MAX_WIRE_BYTES: Inclusive complete maximum 266 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetAnalogIOResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 266 bytes.
--- @brief Construct Ros1Xarm_msgsGetAnalogIOResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetAnalogIOResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetAnalogIOResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetAnalogIOResponse
--- @brief Encode a complete Ros1Xarm_msgsGetAnalogIOResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetAnalogIOResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..266 bytes.
--- @see Ros1Xarm_msgsGetAnalogIOResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsGetAnalogIOResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetAnalogIOResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetAnalogIOResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetAnalogIOResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetAnalogIOResponse
local Ros1Xarm_msgsGetAnalogIOResponse = classes["Ros1Xarm_msgsGetAnalogIOResponse"]

--- @class Ros1Xarm_msgsGetDigitalIORequest
--- @brief Complete ROS1 xarm_msgs/GetDigitalIORequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Xarm_msgsGetDigitalIORequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetDigitalIORequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetDigitalIORequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetDigitalIORequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetDigitalIORequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetDigitalIORequest.
--- @brief Ros1Xarm_msgsGetDigitalIORequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetDigitalIORequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetDigitalIORequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetDigitalIORequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetDigitalIORequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetDigitalIORequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Xarm_msgsGetDigitalIORequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetDigitalIORequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Xarm_msgsGetDigitalIORequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetDigitalIORequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetDigitalIORequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetDigitalIORequest
--- @brief Encode a complete Ros1Xarm_msgsGetDigitalIORequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetDigitalIORequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Xarm_msgsGetDigitalIORequest.decode
--- @field encode fun(value: Ros1Xarm_msgsGetDigitalIORequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetDigitalIORequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetDigitalIORequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetDigitalIORequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetDigitalIORequest
local Ros1Xarm_msgsGetDigitalIORequest = classes["Ros1Xarm_msgsGetDigitalIORequest"]

--- @class Ros1Xarm_msgsGetDigitalIOResponse
--- @brief Complete ROS1 xarm_msgs/GetDigitalIOResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field digital_1 integer Exact int32 range -2147483648..2147483647.
--- @field digital_2 integer Exact int32 range -2147483648..2147483647.
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsGetDigitalIOResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetDigitalIOResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetDigitalIOResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetDigitalIOResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetDigitalIOResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetDigitalIOResponse.
--- @brief Ros1Xarm_msgsGetDigitalIOResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetDigitalIOResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetDigitalIOResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetDigitalIOResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetDigitalIOResponse.MIN_WIRE_BYTES: Inclusive complete minimum 14 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetDigitalIOResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 14 bytes.
--- @brief Ros1Xarm_msgsGetDigitalIOResponse.MAX_WIRE_BYTES: Inclusive complete maximum 270 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetDigitalIOResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 270 bytes.
--- @brief Construct Ros1Xarm_msgsGetDigitalIOResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetDigitalIOResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetDigitalIOResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetDigitalIOResponse
--- @brief Encode a complete Ros1Xarm_msgsGetDigitalIOResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetDigitalIOResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 14..270 bytes.
--- @see Ros1Xarm_msgsGetDigitalIOResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsGetDigitalIOResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetDigitalIOResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetDigitalIOResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetDigitalIOResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetDigitalIOResponse
local Ros1Xarm_msgsGetDigitalIOResponse = classes["Ros1Xarm_msgsGetDigitalIOResponse"]

--- @class Ros1Xarm_msgsMoveRequest
--- @brief Complete ROS1 xarm_msgs/MoveRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pose number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field mvvelo number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field mvacc number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field mvtime number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field mvradii number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_msgsMoveRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsMoveRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/MoveRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/MoveRequest.
--- @brief Ros1Xarm_msgsMoveRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsMoveRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsMoveRequest.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros1Xarm_msgsMoveRequest.MAX_WIRE_BYTES: Inclusive complete maximum 148 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 148 bytes.
--- @brief Construct Ros1Xarm_msgsMoveRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsMoveRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsMoveRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsMoveRequest
--- @brief Encode a complete Ros1Xarm_msgsMoveRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsMoveRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..148 bytes.
--- @see Ros1Xarm_msgsMoveRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsMoveRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsMoveRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsMoveRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsMoveRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsMoveRequest
local Ros1Xarm_msgsMoveRequest = classes["Ros1Xarm_msgsMoveRequest"]

--- @class Ros1Xarm_msgsMoveResponse
--- @brief Complete ROS1 xarm_msgs/MoveResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsMoveResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsMoveResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/MoveResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/MoveResponse.
--- @brief Ros1Xarm_msgsMoveResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsMoveResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsMoveResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsMoveResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsMoveResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsMoveResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsMoveResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsMoveResponse
--- @brief Encode a complete Ros1Xarm_msgsMoveResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsMoveResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsMoveResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsMoveResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsMoveResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsMoveResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsMoveResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsMoveResponse
local Ros1Xarm_msgsMoveResponse = classes["Ros1Xarm_msgsMoveResponse"]

--- @class Ros1Xarm_msgsSetAxisRequest
--- @brief Complete ROS1 xarm_msgs/SetAxisRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field id integer Exact int16 range -32768..32767.
--- @field data integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsSetAxisRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetAxisRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetAxisRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetAxisRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetAxisRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetAxisRequest.
--- @brief Ros1Xarm_msgsSetAxisRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetAxisRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetAxisRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetAxisRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetAxisRequest.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetAxisRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Xarm_msgsSetAxisRequest.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetAxisRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Xarm_msgsSetAxisRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetAxisRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetAxisRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetAxisRequest
--- @brief Encode a complete Ros1Xarm_msgsSetAxisRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetAxisRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Xarm_msgsSetAxisRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsSetAxisRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetAxisRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetAxisRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetAxisRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetAxisRequest
local Ros1Xarm_msgsSetAxisRequest = classes["Ros1Xarm_msgsSetAxisRequest"]

--- @class Ros1Xarm_msgsSetAxisResponse
--- @brief Complete ROS1 xarm_msgs/SetAxisResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsSetAxisResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetAxisResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetAxisResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetAxisResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetAxisResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetAxisResponse.
--- @brief Ros1Xarm_msgsSetAxisResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetAxisResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetAxisResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetAxisResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetAxisResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetAxisResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsSetAxisResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetAxisResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsSetAxisResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetAxisResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetAxisResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetAxisResponse
--- @brief Encode a complete Ros1Xarm_msgsSetAxisResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetAxisResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsSetAxisResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsSetAxisResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetAxisResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetAxisResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetAxisResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetAxisResponse
local Ros1Xarm_msgsSetAxisResponse = classes["Ros1Xarm_msgsSetAxisResponse"]

--- @class Ros1Xarm_msgsSetDigitalIORequest
--- @brief Complete ROS1 xarm_msgs/SetDigitalIORequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field io_num integer Exact int16 range -32768..32767.
--- @field value integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsSetDigitalIORequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetDigitalIORequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetDigitalIORequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetDigitalIORequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetDigitalIORequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetDigitalIORequest.
--- @brief Ros1Xarm_msgsSetDigitalIORequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetDigitalIORequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetDigitalIORequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetDigitalIORequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetDigitalIORequest.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetDigitalIORequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Xarm_msgsSetDigitalIORequest.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetDigitalIORequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Xarm_msgsSetDigitalIORequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetDigitalIORequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetDigitalIORequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetDigitalIORequest
--- @brief Encode a complete Ros1Xarm_msgsSetDigitalIORequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetDigitalIORequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Xarm_msgsSetDigitalIORequest.decode
--- @field encode fun(value: Ros1Xarm_msgsSetDigitalIORequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetDigitalIORequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetDigitalIORequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetDigitalIORequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetDigitalIORequest
local Ros1Xarm_msgsSetDigitalIORequest = classes["Ros1Xarm_msgsSetDigitalIORequest"]

--- @class Ros1Xarm_msgsSetDigitalIOResponse
--- @brief Complete ROS1 xarm_msgs/SetDigitalIOResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsSetDigitalIOResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetDigitalIOResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetDigitalIOResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetDigitalIOResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetDigitalIOResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetDigitalIOResponse.
--- @brief Ros1Xarm_msgsSetDigitalIOResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetDigitalIOResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetDigitalIOResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetDigitalIOResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetDigitalIOResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetDigitalIOResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsSetDigitalIOResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetDigitalIOResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsSetDigitalIOResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetDigitalIOResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetDigitalIOResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetDigitalIOResponse
--- @brief Encode a complete Ros1Xarm_msgsSetDigitalIOResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetDigitalIOResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsSetDigitalIOResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsSetDigitalIOResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetDigitalIOResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetDigitalIOResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetDigitalIOResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetDigitalIOResponse
local Ros1Xarm_msgsSetDigitalIOResponse = classes["Ros1Xarm_msgsSetDigitalIOResponse"]

--- @class Ros1Xarm_msgsSetInt16Request
--- @brief Complete ROS1 xarm_msgs/SetInt16Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field data integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsSetInt16Request.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetInt16Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetInt16Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetInt16Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetInt16Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetInt16Request.
--- @brief Ros1Xarm_msgsSetInt16Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetInt16Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetInt16Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetInt16Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetInt16Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetInt16Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Xarm_msgsSetInt16Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetInt16Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Xarm_msgsSetInt16Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetInt16Request value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetInt16Request.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetInt16Request
--- @brief Encode a complete Ros1Xarm_msgsSetInt16Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetInt16Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Xarm_msgsSetInt16Request.decode
--- @field encode fun(value: Ros1Xarm_msgsSetInt16Request): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetInt16Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetInt16Request value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetInt16Request.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetInt16Request
local Ros1Xarm_msgsSetInt16Request = classes["Ros1Xarm_msgsSetInt16Request"]

--- @class Ros1Xarm_msgsSetInt16Response
--- @brief Complete ROS1 xarm_msgs/SetInt16Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsSetInt16Response.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetInt16Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetInt16Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetInt16Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetInt16Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetInt16Response.
--- @brief Ros1Xarm_msgsSetInt16Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetInt16Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetInt16Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetInt16Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetInt16Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetInt16Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsSetInt16Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetInt16Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsSetInt16Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetInt16Response value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetInt16Response.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetInt16Response
--- @brief Encode a complete Ros1Xarm_msgsSetInt16Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetInt16Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsSetInt16Response.decode
--- @field encode fun(value: Ros1Xarm_msgsSetInt16Response): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetInt16Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetInt16Response value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetInt16Response.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetInt16Response
local Ros1Xarm_msgsSetInt16Response = classes["Ros1Xarm_msgsSetInt16Response"]

--- @class Ros1Xarm_msgsTCPOffsetRequest
--- @brief Complete ROS1 xarm_msgs/TCPOffsetRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field roll number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field pitch number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field yaw number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_msgsTCPOffsetRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsTCPOffsetRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsTCPOffsetRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/TCPOffsetRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsTCPOffsetRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/TCPOffsetRequest.
--- @brief Ros1Xarm_msgsTCPOffsetRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsTCPOffsetRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsTCPOffsetRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsTCPOffsetRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsTCPOffsetRequest.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsTCPOffsetRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Xarm_msgsTCPOffsetRequest.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsTCPOffsetRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Xarm_msgsTCPOffsetRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsTCPOffsetRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsTCPOffsetRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsTCPOffsetRequest
--- @brief Encode a complete Ros1Xarm_msgsTCPOffsetRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsTCPOffsetRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Xarm_msgsTCPOffsetRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsTCPOffsetRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsTCPOffsetRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsTCPOffsetRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsTCPOffsetRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsTCPOffsetRequest
local Ros1Xarm_msgsTCPOffsetRequest = classes["Ros1Xarm_msgsTCPOffsetRequest"]

--- @class Ros1Xarm_msgsTCPOffsetResponse
--- @brief Complete ROS1 xarm_msgs/TCPOffsetResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsTCPOffsetResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsTCPOffsetResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsTCPOffsetResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/TCPOffsetResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsTCPOffsetResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/TCPOffsetResponse.
--- @brief Ros1Xarm_msgsTCPOffsetResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsTCPOffsetResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsTCPOffsetResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsTCPOffsetResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsTCPOffsetResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsTCPOffsetResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsTCPOffsetResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsTCPOffsetResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsTCPOffsetResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsTCPOffsetResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsTCPOffsetResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsTCPOffsetResponse
--- @brief Encode a complete Ros1Xarm_msgsTCPOffsetResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsTCPOffsetResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsTCPOffsetResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsTCPOffsetResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsTCPOffsetResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsTCPOffsetResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsTCPOffsetResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsTCPOffsetResponse
local Ros1Xarm_msgsTCPOffsetResponse = classes["Ros1Xarm_msgsTCPOffsetResponse"]

--- @class Ros1Xarm_plannerExec_planRequest
--- @brief Complete ROS1 xarm_planner/exec_planRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field exec boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Xarm_plannerExec_planRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerExec_planRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_plannerExec_planRequest.NATIVE_TYPE: Exact normalized native type name xarm_planner/exec_planRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerExec_planRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_planner/exec_planRequest.
--- @brief Ros1Xarm_plannerExec_planRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerExec_planRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_plannerExec_planRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerExec_planRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_plannerExec_planRequest.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerExec_planRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Xarm_plannerExec_planRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerExec_planRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Xarm_plannerExec_planRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_plannerExec_planRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_plannerExec_planRequest.encode
--- @field new fun(values?: table): Ros1Xarm_plannerExec_planRequest
--- @brief Encode a complete Ros1Xarm_plannerExec_planRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_plannerExec_planRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Xarm_plannerExec_planRequest.decode
--- @field encode fun(value: Ros1Xarm_plannerExec_planRequest): string
--- @brief Decode exactly one complete Ros1Xarm_plannerExec_planRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_plannerExec_planRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_plannerExec_planRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_plannerExec_planRequest
local Ros1Xarm_plannerExec_planRequest = classes["Ros1Xarm_plannerExec_planRequest"]

--- @class Ros1Xarm_plannerExec_planResponse
--- @brief Complete ROS1 xarm_planner/exec_planResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Xarm_plannerExec_planResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerExec_planResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_plannerExec_planResponse.NATIVE_TYPE: Exact normalized native type name xarm_planner/exec_planResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerExec_planResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_planner/exec_planResponse.
--- @brief Ros1Xarm_plannerExec_planResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerExec_planResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_plannerExec_planResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerExec_planResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_plannerExec_planResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerExec_planResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Xarm_plannerExec_planResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerExec_planResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Xarm_plannerExec_planResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_plannerExec_planResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_plannerExec_planResponse.encode
--- @field new fun(values?: table): Ros1Xarm_plannerExec_planResponse
--- @brief Encode a complete Ros1Xarm_plannerExec_planResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_plannerExec_planResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Xarm_plannerExec_planResponse.decode
--- @field encode fun(value: Ros1Xarm_plannerExec_planResponse): string
--- @brief Decode exactly one complete Ros1Xarm_plannerExec_planResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_plannerExec_planResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_plannerExec_planResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_plannerExec_planResponse
local Ros1Xarm_plannerExec_planResponse = classes["Ros1Xarm_plannerExec_planResponse"]

--- @class Ros1Xarm_plannerJoint_planRequest
--- @brief Complete ROS1 xarm_planner/joint_planRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field target number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Xarm_plannerJoint_planRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerJoint_planRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_plannerJoint_planRequest.NATIVE_TYPE: Exact normalized native type name xarm_planner/joint_planRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerJoint_planRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_planner/joint_planRequest.
--- @brief Ros1Xarm_plannerJoint_planRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerJoint_planRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_plannerJoint_planRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerJoint_planRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_plannerJoint_planRequest.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerJoint_planRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Xarm_plannerJoint_planRequest.MAX_WIRE_BYTES: Inclusive complete maximum 260 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerJoint_planRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 260 bytes.
--- @brief Construct Ros1Xarm_plannerJoint_planRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_plannerJoint_planRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_plannerJoint_planRequest.encode
--- @field new fun(values?: table): Ros1Xarm_plannerJoint_planRequest
--- @brief Encode a complete Ros1Xarm_plannerJoint_planRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_plannerJoint_planRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..260 bytes.
--- @see Ros1Xarm_plannerJoint_planRequest.decode
--- @field encode fun(value: Ros1Xarm_plannerJoint_planRequest): string
--- @brief Decode exactly one complete Ros1Xarm_plannerJoint_planRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_plannerJoint_planRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_plannerJoint_planRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_plannerJoint_planRequest
local Ros1Xarm_plannerJoint_planRequest = classes["Ros1Xarm_plannerJoint_planRequest"]

--- @class Ros1Xarm_plannerJoint_planResponse
--- @brief Complete ROS1 xarm_planner/joint_planResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Xarm_plannerJoint_planResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerJoint_planResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_plannerJoint_planResponse.NATIVE_TYPE: Exact normalized native type name xarm_planner/joint_planResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerJoint_planResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_planner/joint_planResponse.
--- @brief Ros1Xarm_plannerJoint_planResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerJoint_planResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_plannerJoint_planResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerJoint_planResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_plannerJoint_planResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerJoint_planResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Xarm_plannerJoint_planResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerJoint_planResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Xarm_plannerJoint_planResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_plannerJoint_planResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_plannerJoint_planResponse.encode
--- @field new fun(values?: table): Ros1Xarm_plannerJoint_planResponse
--- @brief Encode a complete Ros1Xarm_plannerJoint_planResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_plannerJoint_planResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Xarm_plannerJoint_planResponse.decode
--- @field encode fun(value: Ros1Xarm_plannerJoint_planResponse): string
--- @brief Decode exactly one complete Ros1Xarm_plannerJoint_planResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_plannerJoint_planResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_plannerJoint_planResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_plannerJoint_planResponse
local Ros1Xarm_plannerJoint_planResponse = classes["Ros1Xarm_plannerJoint_planResponse"]

--- @class Ros1Xarm_plannerPose_planRequest
--- @brief Complete ROS1 xarm_planner/pose_planRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field target table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @brief Ros1Xarm_plannerPose_planRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerPose_planRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_plannerPose_planRequest.NATIVE_TYPE: Exact normalized native type name xarm_planner/pose_planRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerPose_planRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_planner/pose_planRequest.
--- @brief Ros1Xarm_plannerPose_planRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerPose_planRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_plannerPose_planRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerPose_planRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_plannerPose_planRequest.MIN_WIRE_BYTES: Inclusive complete minimum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerPose_planRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 56 bytes.
--- @brief Ros1Xarm_plannerPose_planRequest.MAX_WIRE_BYTES: Inclusive complete maximum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerPose_planRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 56 bytes.
--- @brief Construct Ros1Xarm_plannerPose_planRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_plannerPose_planRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_plannerPose_planRequest.encode
--- @field new fun(values?: table): Ros1Xarm_plannerPose_planRequest
--- @brief Encode a complete Ros1Xarm_plannerPose_planRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_plannerPose_planRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 56..56 bytes.
--- @see Ros1Xarm_plannerPose_planRequest.decode
--- @field encode fun(value: Ros1Xarm_plannerPose_planRequest): string
--- @brief Decode exactly one complete Ros1Xarm_plannerPose_planRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_plannerPose_planRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_plannerPose_planRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_plannerPose_planRequest
local Ros1Xarm_plannerPose_planRequest = classes["Ros1Xarm_plannerPose_planRequest"]

--- @class Ros1Xarm_plannerPose_planResponse
--- @brief Complete ROS1 xarm_planner/pose_planResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Xarm_plannerPose_planResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerPose_planResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_plannerPose_planResponse.NATIVE_TYPE: Exact normalized native type name xarm_planner/pose_planResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerPose_planResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_planner/pose_planResponse.
--- @brief Ros1Xarm_plannerPose_planResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerPose_planResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_plannerPose_planResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerPose_planResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_plannerPose_planResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerPose_planResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Xarm_plannerPose_planResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerPose_planResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Xarm_plannerPose_planResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_plannerPose_planResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_plannerPose_planResponse.encode
--- @field new fun(values?: table): Ros1Xarm_plannerPose_planResponse
--- @brief Encode a complete Ros1Xarm_plannerPose_planResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_plannerPose_planResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Xarm_plannerPose_planResponse.decode
--- @field encode fun(value: Ros1Xarm_plannerPose_planResponse): string
--- @brief Decode exactly one complete Ros1Xarm_plannerPose_planResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_plannerPose_planResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_plannerPose_planResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_plannerPose_planResponse
local Ros1Xarm_plannerPose_planResponse = classes["Ros1Xarm_plannerPose_planResponse"]

--- @class Ros1Xarm_plannerSingle_straight_planRequest
--- @brief Complete ROS1 xarm_planner/single_straight_planRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field target table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @brief Ros1Xarm_plannerSingle_straight_planRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerSingle_straight_planRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_plannerSingle_straight_planRequest.NATIVE_TYPE: Exact normalized native type name xarm_planner/single_straight_planRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerSingle_straight_planRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_planner/single_straight_planRequest.
--- @brief Ros1Xarm_plannerSingle_straight_planRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerSingle_straight_planRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_plannerSingle_straight_planRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerSingle_straight_planRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_plannerSingle_straight_planRequest.MIN_WIRE_BYTES: Inclusive complete minimum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerSingle_straight_planRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 56 bytes.
--- @brief Ros1Xarm_plannerSingle_straight_planRequest.MAX_WIRE_BYTES: Inclusive complete maximum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerSingle_straight_planRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 56 bytes.
--- @brief Construct Ros1Xarm_plannerSingle_straight_planRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_plannerSingle_straight_planRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_plannerSingle_straight_planRequest.encode
--- @field new fun(values?: table): Ros1Xarm_plannerSingle_straight_planRequest
--- @brief Encode a complete Ros1Xarm_plannerSingle_straight_planRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_plannerSingle_straight_planRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 56..56 bytes.
--- @see Ros1Xarm_plannerSingle_straight_planRequest.decode
--- @field encode fun(value: Ros1Xarm_plannerSingle_straight_planRequest): string
--- @brief Decode exactly one complete Ros1Xarm_plannerSingle_straight_planRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_plannerSingle_straight_planRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_plannerSingle_straight_planRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_plannerSingle_straight_planRequest
local Ros1Xarm_plannerSingle_straight_planRequest = classes["Ros1Xarm_plannerSingle_straight_planRequest"]

--- @class Ros1Xarm_plannerSingle_straight_planResponse
--- @brief Complete ROS1 xarm_planner/single_straight_planResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Xarm_plannerSingle_straight_planResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerSingle_straight_planResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_plannerSingle_straight_planResponse.NATIVE_TYPE: Exact normalized native type name xarm_planner/single_straight_planResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerSingle_straight_planResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_planner/single_straight_planResponse.
--- @brief Ros1Xarm_plannerSingle_straight_planResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerSingle_straight_planResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_plannerSingle_straight_planResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerSingle_straight_planResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_plannerSingle_straight_planResponse.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerSingle_straight_planResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Xarm_plannerSingle_straight_planResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_plannerSingle_straight_planResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Xarm_plannerSingle_straight_planResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_plannerSingle_straight_planResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_plannerSingle_straight_planResponse.encode
--- @field new fun(values?: table): Ros1Xarm_plannerSingle_straight_planResponse
--- @brief Encode a complete Ros1Xarm_plannerSingle_straight_planResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_plannerSingle_straight_planResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Xarm_plannerSingle_straight_planResponse.decode
--- @field encode fun(value: Ros1Xarm_plannerSingle_straight_planResponse): string
--- @brief Decode exactly one complete Ros1Xarm_plannerSingle_straight_planResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_plannerSingle_straight_planResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_plannerSingle_straight_planResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_plannerSingle_straight_planResponse
local Ros1Xarm_plannerSingle_straight_planResponse = classes["Ros1Xarm_plannerSingle_straight_planResponse"]

return classes, by_name
