--- @file records.lua
--- @brief Preserve the complete original ufactory/ros2_jazzy canonical value domain.
--- @details The selected domain contains 111 complete record/components and 300 original fields. Declared
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
        ["symbol"] = "Ros2Builtin_interfacesMsgTime",
        ["ros_version"] = 2,
        ["native_type"] = "builtin_interfaces/msg/Time",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "normalized-time",
        ["fields"] = {
            {
                ["name"] = "sec",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "nanosec",
                ["type"] = "uint32",
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
        ["symbol"] = "Ros2Std_msgsMsgHeader",
        ["ros_version"] = 2,
        ["native_type"] = "std_msgs/msg/Header",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b",
        ["minimum"] = 12,
        ["maximum"] = 268,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "stamp",
                ["type"] = "Ros2Builtin_interfacesMsgTime",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "frame_id",
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
        ["symbol"] = "Ros2Xarm_msgsMsgCIOState",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/msg/CIOState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_87e50011fee05d07ce49effe9f8fd2be4e5edf3a09a2b3cd735692fea85c2268",
        ["minimum"] = 72,
        ["maximum"] = 328,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
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
                ["name"] = "code",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "input_digitals",
                ["type"] = "uint16",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "output_digitals",
                ["type"] = "uint16",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "input_analogs",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "output_analogs",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "input_conf",
                ["type"] = "uint8",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "output_conf",
                ["type"] = "uint8",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsMsgIOState",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/msg/IOState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8f3e77d7d4c6ac1e49dadd8f4615cb015c028ecf494050a5a6b794d310863dc3",
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
        ["symbol"] = "Ros2Xarm_msgsMsgMoveVelocity",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/msg/MoveVelocity",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5ba20d989b68823e2b6a83c108f75912c8ab3472caf926903a76078321b5366f",
        ["minimum"] = 10,
        ["maximum"] = 138,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "speeds",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "is_sync",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
            {
                ["name"] = "is_tool_coord",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "duration",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = -1.0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsMsgRobotMsg",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/msg/RobotMsg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_065254beab3e0439a6fb2965a10d270ca0aef1384523118d04cb39e886841c78",
        ["minimum"] = 78,
        ["maximum"] = 362,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Std_msgsMsgHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
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
        ["symbol"] = "Ros2Xarm_msgsSrvBioGripperCtrl_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/BioGripperCtrl_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7eccf0c454f9b64aae93f91d23083b3b5121f540b0d0406142ea7e234a2f634f",
        ["minimum"] = 7,
        ["maximum"] = 7,
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
                ["default"] = 0,
            },
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 5.0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvBioGripperCtrl_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/BioGripperCtrl_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c72e0d7eb90ef20e8f7f521346886fc558547a1357a7915058d0e47c238f316a",
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
        ["symbol"] = "Ros2Xarm_msgsSrvBioGripperEnable_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/BioGripperEnable_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_611333734053d9a2c9d3f776be73081c9ddcaaf435d927e1c87ff9b74f12eb43",
        ["minimum"] = 6,
        ["maximum"] = 6,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 3.0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvBioGripperEnable_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/BioGripperEnable_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_95ffb8f48b2e1bf41855513b3234b6a7b070e0d58d5a07d98fd7de4454034586",
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
        ["symbol"] = "Ros2Xarm_msgsSrvCall_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/Call_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6646b9fc8c0050e5c56cf918988e8cf8d7c633aabece1be11ec515f1ca2f837d",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvCall_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/Call_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c41e249f4ee21ea39233597918f3204e3a276e70c67b120b164c9cd3852c19da",
        ["minimum"] = 8,
        ["maximum"] = 264,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "ret",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
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
        ["symbol"] = "Ros2Xarm_msgsSrvFtAdmittanceParams_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/FtAdmittanceParams_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1840d594fd4b929bc350ebaef47f43840937c445b24f4f22371c953323de8e92",
        ["minimum"] = 18,
        ["maximum"] = 466,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "coord",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "c_axis",
                ["type"] = "int16",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "m",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "k",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "b",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvFtAdmittanceParams_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/FtAdmittanceParams_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a91b64c60079cb6473e500e18d2da474d1fabc27f8c9cc7690f22b74531cbf07",
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
        ["symbol"] = "Ros2Xarm_msgsSrvFtCaliLoad_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/FtCaliLoad_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1132f426ed1335b5d92054df6693f0f5d5e5b5b9b21aa4ef19a65c293fa8394f",
        ["minimum"] = 21,
        ["maximum"] = 149,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "datas",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "association_setting_tcp_load",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "m",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.27000001072883606,
            },
            {
                ["name"] = "x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = -17.0,
            },
            {
                ["name"] = "y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 9.0,
            },
            {
                ["name"] = "z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 11.800000190734863,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvFtCaliLoad_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/FtCaliLoad_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_990034f596c4a8e859c06c438635306e2938e763b5bea45019cdf5223347e4e7",
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
        ["symbol"] = "Ros2Xarm_msgsSrvFtForceConfig_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/FtForceConfig_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0b337f5e2eb604e3057ca3378f3e1cb2b2032bac9d8c60e6b64ac85548b94e63",
        ["minimum"] = 14,
        ["maximum"] = 334,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "coord",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "c_axis",
                ["type"] = "int16",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "ref",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "limits",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvFtForceConfig_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/FtForceConfig_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_43ef4f729fcc96502a26261afb70e25a7cdd02d03097d93099b691dec28d59dc",
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
        ["symbol"] = "Ros2Xarm_msgsSrvFtForceParams_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/FtForceParams_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_66266e56d45f660d2750e881060e5a6655e5e35d497386ea1c7559517c2d6b08",
        ["minimum"] = 30,
        ["maximum"] = 862,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "coord",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "c_axis",
                ["type"] = "int16",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "ref",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "limits",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kp",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ki",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kd",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "xe_limit",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvFtForceParams_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/FtForceParams_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_573d49b3f36f2111b39ecfabf29154f53dc66975edf7db80725256ed6be9318d",
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
        ["symbol"] = "Ros2Xarm_msgsSrvFtForcePid_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/FtForcePid_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b69ed1d3e81b0b83a498bff16aab71a8f26e472c5e5bc1fad4559e781366b367",
        ["minimum"] = 16,
        ["maximum"] = 528,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "kp",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ki",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kd",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "xe_limit",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvFtForcePid_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/FtForcePid_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_308d5da22a4445f2b001974907c5b459e5b01ee06fb5029096ae86220e046c89",
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
        ["symbol"] = "Ros2Xarm_msgsSrvFtImpedance_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/FtImpedance_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_66d926f6b7e15bcfc2023215e434d931a77895df36376bb1dfd2cae852c9078d",
        ["minimum"] = 18,
        ["maximum"] = 466,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "coord",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "c_axis",
                ["type"] = "int16",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "m",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "k",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "b",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvFtImpedance_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/FtImpedance_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_47e50f8950f42a2ee65ea8e760b98a78d4cd57729f528785c8307f072ad64cdb",
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
        ["symbol"] = "Ros2Xarm_msgsSrvGetAnalogIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetAnalogIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_41f0b8344aedb31609753c92a949f995b9b36e36f4bd45080e7c806e4977d3c2",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "ionum",
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
        ["symbol"] = "Ros2Xarm_msgsSrvGetAnalogIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetAnalogIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c60eab1570b682fa2a1de07edbcf04155d63abf98cfc6d0aa3ebfa39445d5bbc",
        ["minimum"] = 10,
        ["maximum"] = 266,
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
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros2Xarm_msgsSrvGetDigitalIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetDigitalIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_46633e09d5231d69307a8dbdbd90c2d81ef6ad279b961da81b2af86fed51f188",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvGetDigitalIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetDigitalIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_325fb8d7a911dfc1746a289380e295d6e153ac2fad2018932ce7cd431511985c",
        ["minimum"] = 10,
        ["maximum"] = 330,
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
            {
                ["name"] = "digitals",
                ["type"] = "int16",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvGetFloat32_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetFloat32_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6a3aa3004f481bde62974b72be6157b1e388e6097733474e3fb11855f3aa5c84",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvGetFloat32_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetFloat32_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e43f1551258cbf7bae19089eade8321e8d565c0783551e016dc73ed410c9e3f2",
        ["minimum"] = 10,
        ["maximum"] = 266,
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
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros2Xarm_msgsSrvGetFloat32List_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetFloat32List_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_36ec63da8ede627478e174c1f1dd75926973d3b1d57a6f03c05ffac8e4b649a3",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvGetFloat32List_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetFloat32List_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f30d581b8aa511578c21a3db64c818693b06268b7916cc16e927fc329f40e8d4",
        ["minimum"] = 10,
        ["maximum"] = 394,
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
            {
                ["name"] = "datas",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvGetInt16_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetInt16_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_85fe1186c4f0887d4ac9cf3f0d690c32ba3ec895bef3d49b2199527b53627865",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvGetInt16_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetInt16_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c29870d9604ae0d220de53bb6768681bfbb120171af61c36e45b9a660fd8f1a9",
        ["minimum"] = 8,
        ["maximum"] = 264,
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
        ["symbol"] = "Ros2Xarm_msgsSrvGetInt16List_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetInt16List_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ca95d35c75e9843b2c9d27bd94e34e336641255ad5dd2b0ff22f8a6efb36db2d",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvGetInt16List_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetInt16List_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d35b6ac9d82960e32fd035554dc021e8f3e592259c1db9a714e9b575cc611139",
        ["minimum"] = 10,
        ["maximum"] = 330,
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
            {
                ["name"] = "datas",
                ["type"] = "int16",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvGetInt32_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetInt32_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e7dbcdb905c89364b288e23c985ba73394529613bdb2f4a74b10d811203f0dfe",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvGetInt32_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetInt32_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9834d69ebc7644d3d2feee8f4bcb20effbc15931709be7264ea04bd88b2686f2",
        ["minimum"] = 10,
        ["maximum"] = 266,
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
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros2Xarm_msgsSrvGetInt32ByType_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetInt32ByType_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5d4ba9b5c23452f3b203c66e3cbc5880b99cac6b9ec9ce3acac96414013f993a",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "type",
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
        ["symbol"] = "Ros2Xarm_msgsSrvGetInt32ByType_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetInt32ByType_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6cabb4a9a840ef62c4f8a2da7da917410a97a8aafcf78e361cc928a7cdbe5c3a",
        ["minimum"] = 10,
        ["maximum"] = 266,
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
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros2Xarm_msgsSrvGetSetModbusData_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetSetModbusData_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f9cc9e1e5635a37023cc50f66930072f3d61bcfd58f0d8ebb0218c4eb3a035cd",
        ["minimum"] = 11,
        ["maximum"] = 4107,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "modbus_data",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 4096,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "modbus_length",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
                ["default"] = 0,
            },
            {
                ["name"] = "ret_length",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "host_id",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 9,
            },
            {
                ["name"] = "is_transparent_transmission",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "use_503_port",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvGetSetModbusData_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GetSetModbusData_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7367e58167bc61c209e7a28ee1a4d5809525cb11cbe48ee972724b5f0536b5b7",
        ["minimum"] = 10,
        ["maximum"] = 4362,
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
            {
                ["name"] = "ret_data",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 4096,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvGripperMove_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GripperMove_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_54c0e0eeb956e5ab0b1bd31aabc67493ee2bdb9b7028f41b73eb9d8b1e568322",
        ["minimum"] = 9,
        ["maximum"] = 9,
        ["semantics"] = "",
        ["fields"] = {
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
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 10.0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvGripperMove_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/GripperMove_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1c64a50983aaf8dd20d3a400be9d69242f52c6ad7f369ea54dd19be931dc80a1",
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
        ["symbol"] = "Ros2Xarm_msgsSrvIdenLoad_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/IdenLoad_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_51918f23cc7db51b63e91cca012e657836528d8557a4479b287cd9631015a79a",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "estimated_mass",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvIdenLoad_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/IdenLoad_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3934143122064209bd30159d9972b5cfd529728f3f95785c9641d20790e4f64e",
        ["minimum"] = 10,
        ["maximum"] = 394,
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
            {
                ["name"] = "datas",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/LinearMotorBackOrigin_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c9d87b79119e9fd9efcf7cd7bdbe40f3e3a2244b1c97149da5c2ff93163a6b45",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
            {
                ["name"] = "auto_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/LinearMotorBackOrigin_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_159fa7c79b6d14e044085bc7969a984af68bfab04cfd092a4982b2de24e9e02d",
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
        ["symbol"] = "Ros2Xarm_msgsSrvLinearMotorSetPos_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/LinearMotorSetPos_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5babc4a61d86991a7be456e48f86c175f0189b96e5506b779adcbe6e4ece97dd",
        ["minimum"] = 10,
        ["maximum"] = 10,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pos",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "speed",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
                ["default"] = 0,
            },
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 100.0,
            },
            {
                ["name"] = "auto_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvLinearMotorSetPos_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/LinearMotorSetPos_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f2bc623880b42ee6f94117ecdf846785cac064a2c5e81df5f2ff8c3e9179106d",
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
        ["symbol"] = "Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/LinearTrackBackOrigin_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_797f71ddda85f463999f437e70aaaf40517fe78dfa0356a640afaffa5154e8d9",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
            {
                ["name"] = "auto_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/LinearTrackBackOrigin_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0881a1e5f823c169ed5d1063e8bd681b8b2f994ebd9bee3e335c47d3bd2db4de",
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
        ["symbol"] = "Ros2Xarm_msgsSrvLinearTrackSetPos_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/LinearTrackSetPos_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b73e173d593e64d898e69d32e659ddff1741eaada6af1ae00d9a4c406d9dad62",
        ["minimum"] = 10,
        ["maximum"] = 10,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pos",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "speed",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
                ["default"] = 0,
            },
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 100.0,
            },
            {
                ["name"] = "auto_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvLinearTrackSetPos_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/LinearTrackSetPos_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_aba9a933b5cde05c0a1d0a44fe404b3c3dadad72aac91b7a7aff04221c6667f7",
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
        ["symbol"] = "Ros2Xarm_msgsSrvMoveCartesian_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/MoveCartesian_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_42c90af2eabc1a42376918d5cb862b4d8f8b2a3f958b7c444c8d8cccb2435512",
        ["minimum"] = 28,
        ["maximum"] = 156,
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
                ["name"] = "speed",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "acc",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "mvtime",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = -1.0,
            },
            {
                ["name"] = "radius",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = -1.0,
            },
            {
                ["name"] = "is_tool_coord",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "relative",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "motion_type",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvMoveCartesian_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/MoveCartesian_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_17659e470cc45dd7fe1bc6240aa09aa6693e90e40d5dcf556cfb2b8d946af7be",
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
        ["symbol"] = "Ros2Xarm_msgsSrvMoveCircle_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/MoveCircle_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1ad9d0ee80dfb636f7cdbccd1b510bd123f13615a16bed966bd5e8829a3b7f1b",
        ["minimum"] = 31,
        ["maximum"] = 287,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pose1",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "pose2",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "percent",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "acc",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "mvtime",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = -1.0,
            },
            {
                ["name"] = "is_tool_coord",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "is_axis_angle",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvMoveCircle_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/MoveCircle_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e884158bfd9d5bed6cb76d276e7d312c5f2d69d0508a1c01566f6773b7e4dbbd",
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
        ["symbol"] = "Ros2Xarm_msgsSrvMoveHome_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/MoveHome_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f9c04cf15dadd5c45cc16017533216bcbf682ac3366764c0546e73deabfab5a3",
        ["minimum"] = 17,
        ["maximum"] = 17,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "speed",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "acc",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "mvtime",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = -1.0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvMoveHome_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/MoveHome_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c5a0764d10a7a2c3285ada1c04594d1cad466f7ec71fe53e42b2ea98b70793aa",
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
        ["symbol"] = "Ros2Xarm_msgsSrvMoveJoint_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/MoveJoint_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a0216b4ff8cf8baff2e2891d6a8d6d1397a42a750f68698d97dfc08d00e7c8d7",
        ["minimum"] = 26,
        ["maximum"] = 154,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "angles",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "acc",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "mvtime",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = -1.0,
            },
            {
                ["name"] = "radius",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = -1.0,
            },
            {
                ["name"] = "relative",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvMoveJoint_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/MoveJoint_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0af0f83fe9efc15c4a2334c229e0d079fad286630c52d703b7e0cfaa037f04a7",
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
        ["symbol"] = "Ros2Xarm_msgsSrvMoveVelocity_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/MoveVelocity_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a5378f3f0f4b89e04279b6d79b8b756d0970f74cd582636d56f1302be2c015c4",
        ["minimum"] = 10,
        ["maximum"] = 138,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "speeds",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "is_sync",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
            {
                ["name"] = "is_tool_coord",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "duration",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = -1.0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvMoveVelocity_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/MoveVelocity_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3ec82a1e864723e95f8fec98073d5e1ed009d2882fa8c20e55b4f8d86ec1d318",
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
        ["symbol"] = "Ros2Xarm_msgsSrvPlanExec_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/PlanExec_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_376aa0461a41377c8e5ba44ec96e9dac39fea01da3db1d31a6a90190b5bf66d5",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "wait",
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
        ["symbol"] = "Ros2Xarm_msgsSrvPlanExec_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/PlanExec_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5adfabe15405e2e15b08760866169c214029fe826a69dd1277808c3ebb16a88e",
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
        ["symbol"] = "Ros2Xarm_msgsSrvPlanJoint_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/PlanJoint_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_997562beca1e50895151970e89f0f253431451c60e274222ae622c49c0455bd5",
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
        ["symbol"] = "Ros2Xarm_msgsSrvPlanJoint_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/PlanJoint_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dfe1e3eaf8913c9e6b5aed6ee60bd7c24eb4e2944036f0de92fcd6846acac782",
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
        ["symbol"] = "Ros2Xarm_msgsSrvPlanPose_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/PlanPose_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_01b292bd33f28682cde3cb35f9d62e8d99cd8a58d2a5c3d5e6411121d3a09859",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "target",
                ["type"] = "Ros2Geometry_msgsMsgPose",
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
        ["symbol"] = "Ros2Xarm_msgsSrvPlanPose_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/PlanPose_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0cdcf4232f673c3034319f90c1d0f56fbfd86a829fa9f6460f87fea391ce766d",
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
        ["symbol"] = "Ros2Xarm_msgsSrvPlanSingleStraight_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/PlanSingleStraight_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4e350b5145aa64c8ff4dc15cd61ba557f0db2b256798e50e4b4e28d47ecdc2b0",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "target",
                ["type"] = "Ros2Geometry_msgsMsgPose",
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
        ["symbol"] = "Ros2Xarm_msgsSrvPlanSingleStraight_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/PlanSingleStraight_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ef2fdd22f223f4c91ccc886bddae43b0d48bc9063b3a199c7d8bb6f1bfb86432",
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
        ["symbol"] = "Ros2Xarm_msgsSrvRobotiqActivate_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/RobotiqActivate_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7c4501be17de61893d5d91b3808769133ac5a444d2f0a8b1b3b13a01f03b75c3",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 3.0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvRobotiqActivate_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/RobotiqActivate_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e6f6d01b439afdbb2461a8ed682ce1332e021a9a8ae3326772f13469a70648d4",
        ["minimum"] = 10,
        ["maximum"] = 4362,
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
            {
                ["name"] = "ret_data",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 4096,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvRobotiqGetStatus_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/RobotiqGetStatus_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_99970019152494d54024cb4c44af400853506d81149e1bba55d40caa9bd44e6b",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "number_of_registers",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 3,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvRobotiqGetStatus_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/RobotiqGetStatus_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b1b7945622a48beab45b569b9c64139eec028b5a61dc75cfb6dc302d8b787e43",
        ["minimum"] = 10,
        ["maximum"] = 4362,
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
            {
                ["name"] = "ret_data",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 4096,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvRobotiqMove_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/RobotiqMove_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f1e5c6c7be4583ecdb91da2401c9adcf727eff9e2b69df21e8a4f1de468775ad",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pos",
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
                ["default"] = 255,
            },
            {
                ["name"] = "force",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 255,
            },
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 5.0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvRobotiqMove_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/RobotiqMove_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7b581f9f45349f688543ea57a3889b351909b43a9d5bff65d916b804b00bacf6",
        ["minimum"] = 10,
        ["maximum"] = 4362,
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
            {
                ["name"] = "ret_data",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 4096,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvRobotiqReset_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/RobotiqReset_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_59168733ec2ce73fc135dfa2c0f1edd10a4ad82062acf477c7ca9258ecb8d755",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvRobotiqReset_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/RobotiqReset_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4c0f6950fe50ffae8b6b30be7265606bddaebeb1099038b1e973f144c8164d2e",
        ["minimum"] = 10,
        ["maximum"] = 4362,
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
            {
                ["name"] = "ret_data",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 4096,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvSetAnalogIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetAnalogIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_77df87cd98b5dd0b384674739c65f045eb32346596b82ceca2ccb9ff6e9dfe96",
        ["minimum"] = 14,
        ["maximum"] = 142,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "ionum",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "value",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "xyz",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tol_r",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetAnalogIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetAnalogIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_480194824f2056f0dd3d3031fda9e27f49b3f7b242f0d0bcb4a783c6649164ec",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetDigitalIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetDigitalIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1bb4c857c4625a17ef5800f821d5aed95124ba24dc472ee61c2193798967aaf2",
        ["minimum"] = 16,
        ["maximum"] = 144,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "ionum",
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
            {
                ["name"] = "delay_sec",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "xyz",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tol_r",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetDigitalIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetDigitalIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cb18f2968dd4014c8fe100a63d4c80ce10e813fc0998a9f76cd8699bc511a17b",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetFloat32_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetFloat32_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6fec5cd9973c8f68bdffad4b582b26547d325167942379830a84c7d8469987c1",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetFloat32_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetFloat32_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d7bb8df8e3e4ab02a30ebfdc4af57cdbcee5ce3b48591524e70e2a07f8843ea1",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetFloat32List_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetFloat32List_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_38bd43fd452ab1f59bd4875deb4dea6d0a17c3409ee9c5446f798e1b8ba93532",
        ["minimum"] = 4,
        ["maximum"] = 132,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "datas",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvSetFloat32List_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetFloat32List_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f2c08d32b1238bb78dc0daccfc97066563a14e8e4b891e37e2effaed91a74396",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetInt16_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetInt16_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_09e0c90763447d7b4ed57ce37650d4a4d918bc96ec8b8df61189f8e636a58adb",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetInt16_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetInt16_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0c02f9a01383e37346637ec7d6a608cca7d025259b67c9ab528f3b13aa842155",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetInt16ById_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetInt16ById_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9472db1bda5f8d557e75c9be0c902c67a76952ba0bc258693cf047c6c10954f0",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetInt16ById_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetInt16ById_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cd16eec98546214169bf4e32eff4190d9276ee41b6bfc5eef919dd44cdeae92a",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetInt16List_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetInt16List_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d1ef15eb18c2f3c377c25c486d945fbf77887ca7a9ef9c291355e9a23541ec96",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "datas",
                ["type"] = "int16",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvSetInt16List_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetInt16List_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_326ef9ea75d627cdc4187908191f230f87efb6f3fb2b0a7f783260c7ffee583f",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetInt32_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetInt32_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f219450be903e96baf55dfb3fcc03851aabc43899d637f869d9adba55b36c1d3",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetInt32_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetInt32_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1510982ab2c740a570f21179997368cd4be93c4086967e9ff98b24606f0b7f65",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetInt32ByType_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetInt32ByType_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8a6e3ab3e34eeff45dbddc698cb249c2acb27d74717be8724fa0f9448ff981d7",
        ["minimum"] = 6,
        ["maximum"] = 6,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "type",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "data",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetInt32ByType_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetInt32ByType_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6fcd5dddde2d38a61ffdeab64ae09514137b364347357c62b81c26c86b44882a",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetModbusTimeout_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetModbusTimeout_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_186f84404c6a11cfd3c7a64fc9ac55b39343d5f8c4a01bd81efdd038d6c7e685",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "timeout",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "is_transparent_transmission",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvSetModbusTimeout_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetModbusTimeout_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_32da6d0583896c59968213be225e17146d619cddb4c520060640e13b886f3397",
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
        ["symbol"] = "Ros2Xarm_msgsSrvSetTcpLoad_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetTcpLoad_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5428d98daa8dd42c8dba0cb78152b1b718afe34eb1da16de65a333a81d293e99",
        ["minimum"] = 8,
        ["maximum"] = 136,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "weight",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "center_of_gravity",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvSetTcpLoad_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/SetTcpLoad_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7438021022e94f66f464a561a54cb8f808da8c2e35830853cbecc98fa76ef46f",
        ["minimum"] = 8,
        ["maximum"] = 264,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "ret",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
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
        ["symbol"] = "Ros2Xarm_msgsSrvTrajCtrl_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/TrajCtrl_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f29343b422932e055d5930c46615f38cc1600d4c4b89506a1050f89728e0ca0d",
        ["minimum"] = 8,
        ["maximum"] = 264,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "filename",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 10.0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvTrajCtrl_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/TrajCtrl_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_00cac1ec8b7d312cae07a3ffe3235bd599086c62b028cb446bf7478306aa1b3c",
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
        ["symbol"] = "Ros2Xarm_msgsSrvTrajPlay_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/TrajPlay_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_edbd9ed5bcbc1cf8882fab3b69b24373542273b74a51bd3cae94e7970a7d3e72",
        ["minimum"] = 9,
        ["maximum"] = 265,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "filename",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "times",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
                ["default"] = 1,
            },
            {
                ["name"] = "double_speed",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
                ["default"] = 1,
            },
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvTrajPlay_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/TrajPlay_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ce86fc20a5a16288b138fe2e37794c1318dc393b811f45d3fe3eccf954837ea0",
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
        ["symbol"] = "Ros2Xarm_msgsSrvVacuumGripperCtrl_Request",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/VacuumGripperCtrl_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d6da957d39ce9cb96d064172db86907b162f95385fdf5e5bfd066eba8c1a4888",
        ["minimum"] = 13,
        ["maximum"] = 13,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "on",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "wait",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 3.0,
            },
            {
                ["name"] = "delay_sec",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
                ["default"] = 0.0,
            },
            {
                ["name"] = "sync",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = true,
            },
            {
                ["name"] = "hardware_version",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
                ["default"] = 0,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Xarm_msgsSrvVacuumGripperCtrl_Response",
        ["ros_version"] = 2,
        ["native_type"] = "xarm_msgs/srv/VacuumGripperCtrl_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fa202ccf3d36ec8ff49c0e32f3af07e18d19a6694566fcbaf8ce9ff4a79f352d",
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
}
local classes, by_name = wire.records(schemas)

--- @class Ros2Builtin_interfacesMsgTime
--- @brief Complete ROS2 builtin_interfaces/msg/Time value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field sec integer Exact int32 range -2147483648..2147483647. Whole seconds; signedness/range follow the native scalar above.
--- @field nanosec integer Exact uint32 range 0..4294967295. Normalized fractional nanoseconds, inclusive0..999999999.
--- @brief Ros2Builtin_interfacesMsgTime.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Builtin_interfacesMsgTime.NATIVE_TYPE: Exact normalized native type name builtin_interfaces/msg/Time.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field NATIVE_TYPE string Exact normalized native type name builtin_interfaces/msg/Time.
--- @brief Ros2Builtin_interfacesMsgTime.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Builtin_interfacesMsgTime.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Builtin_interfacesMsgTime.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Builtin_interfacesMsgTime.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Builtin_interfacesMsgTime with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Builtin_interfacesMsgTime value New mutable complete value; no ROS resource.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field new fun(values?: table): Ros2Builtin_interfacesMsgTime
--- @brief Encode a complete Ros2Builtin_interfacesMsgTime value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Builtin_interfacesMsgTime [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Builtin_interfacesMsgTime.decode
--- @field encode fun(value: Ros2Builtin_interfacesMsgTime): string
--- @brief Decode exactly one complete Ros2Builtin_interfacesMsgTime canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Builtin_interfacesMsgTime value New complete value; failures raise Lua errors.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field decode fun(bytes: string): Ros2Builtin_interfacesMsgTime
local Ros2Builtin_interfacesMsgTime = classes["Ros2Builtin_interfacesMsgTime"]

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

--- @class Ros2Std_msgsMsgHeader
--- @brief Complete ROS2 std_msgs/msg/Header value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field stamp table Complete nested builtin_interfaces/msg/Time value; no native fields are projected away.
--- @field frame_id string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Std_msgsMsgHeader.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Std_msgsMsgHeader.NATIVE_TYPE: Exact normalized native type name std_msgs/msg/Header.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field NATIVE_TYPE string Exact normalized native type name std_msgs/msg/Header.
--- @brief Ros2Std_msgsMsgHeader.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Std_msgsMsgHeader.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Std_msgsMsgHeader.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Std_msgsMsgHeader.MAX_WIRE_BYTES: Inclusive complete maximum 268 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 268 bytes.
--- @brief Construct Ros2Std_msgsMsgHeader with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Std_msgsMsgHeader value New mutable complete value; no ROS resource.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field new fun(values?: table): Ros2Std_msgsMsgHeader
--- @brief Encode a complete Ros2Std_msgsMsgHeader value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Std_msgsMsgHeader [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..268 bytes.
--- @see Ros2Std_msgsMsgHeader.decode
--- @field encode fun(value: Ros2Std_msgsMsgHeader): string
--- @brief Decode exactly one complete Ros2Std_msgsMsgHeader canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Std_msgsMsgHeader value New complete value; failures raise Lua errors.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field decode fun(bytes: string): Ros2Std_msgsMsgHeader
local Ros2Std_msgsMsgHeader = classes["Ros2Std_msgsMsgHeader"]

--- @class Ros2Xarm_msgsMsgCIOState
--- @brief Complete ROS2 xarm_msgs/msg/CIOState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field state integer Exact int16 range -32768..32767.
--- @field code integer Exact int16 range -32768..32767.
--- @field input_digitals integer[] Exact uint16 range 0..65535. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @field output_digitals integer[] Exact uint16 range 0..65535. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @field input_analogs number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @field output_analogs number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @field input_conf integer[] Exact uint8 range 0..255. Exactly 16 contiguous elements; holes and extra array keys are rejected.
--- @field output_conf integer[] Exact uint8 range 0..255. Exactly 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsMsgCIOState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgCIOState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsMsgCIOState.NATIVE_TYPE: Exact normalized native type name xarm_msgs/msg/CIOState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgCIOState.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/msg/CIOState.
--- @brief Ros2Xarm_msgsMsgCIOState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgCIOState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsMsgCIOState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgCIOState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsMsgCIOState.MIN_WIRE_BYTES: Inclusive complete minimum 72 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgCIOState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 72 bytes.
--- @brief Ros2Xarm_msgsMsgCIOState.MAX_WIRE_BYTES: Inclusive complete maximum 328 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgCIOState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 328 bytes.
--- @brief Construct Ros2Xarm_msgsMsgCIOState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsMsgCIOState value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsMsgCIOState.encode
--- @field new fun(values?: table): Ros2Xarm_msgsMsgCIOState
--- @brief Encode a complete Ros2Xarm_msgsMsgCIOState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsMsgCIOState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 72..328 bytes.
--- @see Ros2Xarm_msgsMsgCIOState.decode
--- @field encode fun(value: Ros2Xarm_msgsMsgCIOState): string
--- @brief Decode exactly one complete Ros2Xarm_msgsMsgCIOState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsMsgCIOState value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsMsgCIOState.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsMsgCIOState
local Ros2Xarm_msgsMsgCIOState = classes["Ros2Xarm_msgsMsgCIOState"]

--- @class Ros2Xarm_msgsMsgIOState
--- @brief Complete ROS2 xarm_msgs/msg/IOState value and codec.
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
--- @brief Ros2Xarm_msgsMsgIOState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgIOState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsMsgIOState.NATIVE_TYPE: Exact normalized native type name xarm_msgs/msg/IOState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgIOState.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/msg/IOState.
--- @brief Ros2Xarm_msgsMsgIOState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgIOState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsMsgIOState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgIOState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsMsgIOState.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgIOState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Xarm_msgsMsgIOState.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgIOState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Xarm_msgsMsgIOState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsMsgIOState value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsMsgIOState.encode
--- @field new fun(values?: table): Ros2Xarm_msgsMsgIOState
--- @brief Encode a complete Ros2Xarm_msgsMsgIOState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsMsgIOState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Xarm_msgsMsgIOState.decode
--- @field encode fun(value: Ros2Xarm_msgsMsgIOState): string
--- @brief Decode exactly one complete Ros2Xarm_msgsMsgIOState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsMsgIOState value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsMsgIOState.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsMsgIOState
local Ros2Xarm_msgsMsgIOState = classes["Ros2Xarm_msgsMsgIOState"]

--- @class Ros2Xarm_msgsMsgMoveVelocity
--- @brief Complete ROS2 xarm_msgs/msg/MoveVelocity value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speeds number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field is_sync boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @field is_tool_coord boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field duration number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: -1.0.
--- @brief Ros2Xarm_msgsMsgMoveVelocity.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgMoveVelocity.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsMsgMoveVelocity.NATIVE_TYPE: Exact normalized native type name xarm_msgs/msg/MoveVelocity.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgMoveVelocity.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/msg/MoveVelocity.
--- @brief Ros2Xarm_msgsMsgMoveVelocity.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgMoveVelocity.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsMsgMoveVelocity.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgMoveVelocity.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsMsgMoveVelocity.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgMoveVelocity.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsMsgMoveVelocity.MAX_WIRE_BYTES: Inclusive complete maximum 138 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgMoveVelocity.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 138 bytes.
--- @brief Construct Ros2Xarm_msgsMsgMoveVelocity with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsMsgMoveVelocity value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsMsgMoveVelocity.encode
--- @field new fun(values?: table): Ros2Xarm_msgsMsgMoveVelocity
--- @brief Encode a complete Ros2Xarm_msgsMsgMoveVelocity value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsMsgMoveVelocity [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..138 bytes.
--- @see Ros2Xarm_msgsMsgMoveVelocity.decode
--- @field encode fun(value: Ros2Xarm_msgsMsgMoveVelocity): string
--- @brief Decode exactly one complete Ros2Xarm_msgsMsgMoveVelocity canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsMsgMoveVelocity value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsMsgMoveVelocity.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsMsgMoveVelocity
local Ros2Xarm_msgsMsgMoveVelocity = classes["Ros2Xarm_msgsMsgMoveVelocity"]

--- @class Ros2Xarm_msgsMsgRobotMsg
--- @brief Complete ROS2 xarm_msgs/msg/RobotMsg value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
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
--- @brief Ros2Xarm_msgsMsgRobotMsg.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgRobotMsg.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsMsgRobotMsg.NATIVE_TYPE: Exact normalized native type name xarm_msgs/msg/RobotMsg.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgRobotMsg.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/msg/RobotMsg.
--- @brief Ros2Xarm_msgsMsgRobotMsg.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgRobotMsg.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsMsgRobotMsg.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgRobotMsg.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsMsgRobotMsg.MIN_WIRE_BYTES: Inclusive complete minimum 78 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgRobotMsg.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 78 bytes.
--- @brief Ros2Xarm_msgsMsgRobotMsg.MAX_WIRE_BYTES: Inclusive complete maximum 362 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsMsgRobotMsg.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 362 bytes.
--- @brief Construct Ros2Xarm_msgsMsgRobotMsg with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsMsgRobotMsg value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsMsgRobotMsg.encode
--- @field new fun(values?: table): Ros2Xarm_msgsMsgRobotMsg
--- @brief Encode a complete Ros2Xarm_msgsMsgRobotMsg value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsMsgRobotMsg [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 78..362 bytes.
--- @see Ros2Xarm_msgsMsgRobotMsg.decode
--- @field encode fun(value: Ros2Xarm_msgsMsgRobotMsg): string
--- @brief Decode exactly one complete Ros2Xarm_msgsMsgRobotMsg canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsMsgRobotMsg value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsMsgRobotMsg.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsMsgRobotMsg
local Ros2Xarm_msgsMsgRobotMsg = classes["Ros2Xarm_msgsMsgRobotMsg"]

--- @class Ros2Xarm_msgsSrvBioGripperCtrl_Request
--- @brief Complete ROS2 xarm_msgs/srv/BioGripperCtrl_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speed integer Exact int16 range -32768..32767. Declared native scalar default: 0.
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 5.0.
--- @brief Ros2Xarm_msgsSrvBioGripperCtrl_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvBioGripperCtrl_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/BioGripperCtrl_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/BioGripperCtrl_Request.
--- @brief Ros2Xarm_msgsSrvBioGripperCtrl_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvBioGripperCtrl_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvBioGripperCtrl_Request.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros2Xarm_msgsSrvBioGripperCtrl_Request.MAX_WIRE_BYTES: Inclusive complete maximum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 7 bytes.
--- @brief Construct Ros2Xarm_msgsSrvBioGripperCtrl_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvBioGripperCtrl_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvBioGripperCtrl_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvBioGripperCtrl_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvBioGripperCtrl_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..7 bytes.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvBioGripperCtrl_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvBioGripperCtrl_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvBioGripperCtrl_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvBioGripperCtrl_Request
local Ros2Xarm_msgsSrvBioGripperCtrl_Request = classes["Ros2Xarm_msgsSrvBioGripperCtrl_Request"]

--- @class Ros2Xarm_msgsSrvBioGripperCtrl_Response
--- @brief Complete ROS2 xarm_msgs/srv/BioGripperCtrl_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvBioGripperCtrl_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvBioGripperCtrl_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/BioGripperCtrl_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/BioGripperCtrl_Response.
--- @brief Ros2Xarm_msgsSrvBioGripperCtrl_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvBioGripperCtrl_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvBioGripperCtrl_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvBioGripperCtrl_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvBioGripperCtrl_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvBioGripperCtrl_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvBioGripperCtrl_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvBioGripperCtrl_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvBioGripperCtrl_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvBioGripperCtrl_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvBioGripperCtrl_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvBioGripperCtrl_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvBioGripperCtrl_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvBioGripperCtrl_Response
local Ros2Xarm_msgsSrvBioGripperCtrl_Response = classes["Ros2Xarm_msgsSrvBioGripperCtrl_Response"]

--- @class Ros2Xarm_msgsSrvBioGripperEnable_Request
--- @brief Complete ROS2 xarm_msgs/srv/BioGripperEnable_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field enable boolean Exact boolean; encoded as one byte0/1.
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 3.0.
--- @brief Ros2Xarm_msgsSrvBioGripperEnable_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvBioGripperEnable_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/BioGripperEnable_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/BioGripperEnable_Request.
--- @brief Ros2Xarm_msgsSrvBioGripperEnable_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvBioGripperEnable_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvBioGripperEnable_Request.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvBioGripperEnable_Request.MAX_WIRE_BYTES: Inclusive complete maximum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 6 bytes.
--- @brief Construct Ros2Xarm_msgsSrvBioGripperEnable_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvBioGripperEnable_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvBioGripperEnable_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvBioGripperEnable_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvBioGripperEnable_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..6 bytes.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvBioGripperEnable_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvBioGripperEnable_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvBioGripperEnable_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvBioGripperEnable_Request
local Ros2Xarm_msgsSrvBioGripperEnable_Request = classes["Ros2Xarm_msgsSrvBioGripperEnable_Request"]

--- @class Ros2Xarm_msgsSrvBioGripperEnable_Response
--- @brief Complete ROS2 xarm_msgs/srv/BioGripperEnable_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvBioGripperEnable_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvBioGripperEnable_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/BioGripperEnable_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/BioGripperEnable_Response.
--- @brief Ros2Xarm_msgsSrvBioGripperEnable_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvBioGripperEnable_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvBioGripperEnable_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvBioGripperEnable_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvBioGripperEnable_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvBioGripperEnable_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvBioGripperEnable_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvBioGripperEnable_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvBioGripperEnable_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvBioGripperEnable_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvBioGripperEnable_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvBioGripperEnable_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvBioGripperEnable_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvBioGripperEnable_Response
local Ros2Xarm_msgsSrvBioGripperEnable_Response = classes["Ros2Xarm_msgsSrvBioGripperEnable_Response"]

--- @class Ros2Xarm_msgsSrvCall_Request
--- @brief Complete ROS2 xarm_msgs/srv/Call_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Xarm_msgsSrvCall_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvCall_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvCall_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/Call_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvCall_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/Call_Request.
--- @brief Ros2Xarm_msgsSrvCall_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvCall_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvCall_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvCall_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvCall_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvCall_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Xarm_msgsSrvCall_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvCall_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Xarm_msgsSrvCall_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvCall_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvCall_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvCall_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvCall_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvCall_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Xarm_msgsSrvCall_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvCall_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvCall_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvCall_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvCall_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvCall_Request
local Ros2Xarm_msgsSrvCall_Request = classes["Ros2Xarm_msgsSrvCall_Request"]

--- @class Ros2Xarm_msgsSrvCall_Response
--- @brief Complete ROS2 xarm_msgs/srv/Call_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int32 range -2147483648..2147483647.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvCall_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvCall_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvCall_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/Call_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvCall_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/Call_Response.
--- @brief Ros2Xarm_msgsSrvCall_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvCall_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvCall_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvCall_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvCall_Response.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvCall_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Xarm_msgsSrvCall_Response.MAX_WIRE_BYTES: Inclusive complete maximum 264 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvCall_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 264 bytes.
--- @brief Construct Ros2Xarm_msgsSrvCall_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvCall_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvCall_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvCall_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvCall_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvCall_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..264 bytes.
--- @see Ros2Xarm_msgsSrvCall_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvCall_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvCall_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvCall_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvCall_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvCall_Response
local Ros2Xarm_msgsSrvCall_Response = classes["Ros2Xarm_msgsSrvCall_Response"]

--- @class Ros2Xarm_msgsSrvFtAdmittanceParams_Request
--- @brief Complete ROS2 xarm_msgs/srv/FtAdmittanceParams_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field coord integer Exact int16 range -32768..32767.
--- @field c_axis integer[] Exact int16 range -32768..32767. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field m number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field k number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field b number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvFtAdmittanceParams_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvFtAdmittanceParams_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/FtAdmittanceParams_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/FtAdmittanceParams_Request.
--- @brief Ros2Xarm_msgsSrvFtAdmittanceParams_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvFtAdmittanceParams_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvFtAdmittanceParams_Request.MIN_WIRE_BYTES: Inclusive complete minimum 18 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 18 bytes.
--- @brief Ros2Xarm_msgsSrvFtAdmittanceParams_Request.MAX_WIRE_BYTES: Inclusive complete maximum 466 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 466 bytes.
--- @brief Construct Ros2Xarm_msgsSrvFtAdmittanceParams_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvFtAdmittanceParams_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvFtAdmittanceParams_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvFtAdmittanceParams_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvFtAdmittanceParams_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 18..466 bytes.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvFtAdmittanceParams_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvFtAdmittanceParams_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvFtAdmittanceParams_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvFtAdmittanceParams_Request
local Ros2Xarm_msgsSrvFtAdmittanceParams_Request = classes["Ros2Xarm_msgsSrvFtAdmittanceParams_Request"]

--- @class Ros2Xarm_msgsSrvFtAdmittanceParams_Response
--- @brief Complete ROS2 xarm_msgs/srv/FtAdmittanceParams_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvFtAdmittanceParams_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvFtAdmittanceParams_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/FtAdmittanceParams_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/FtAdmittanceParams_Response.
--- @brief Ros2Xarm_msgsSrvFtAdmittanceParams_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvFtAdmittanceParams_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvFtAdmittanceParams_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvFtAdmittanceParams_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvFtAdmittanceParams_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvFtAdmittanceParams_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvFtAdmittanceParams_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvFtAdmittanceParams_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvFtAdmittanceParams_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvFtAdmittanceParams_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvFtAdmittanceParams_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvFtAdmittanceParams_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvFtAdmittanceParams_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvFtAdmittanceParams_Response
local Ros2Xarm_msgsSrvFtAdmittanceParams_Response = classes["Ros2Xarm_msgsSrvFtAdmittanceParams_Response"]

--- @class Ros2Xarm_msgsSrvFtCaliLoad_Request
--- @brief Complete ROS2 xarm_msgs/srv/FtCaliLoad_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field datas number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field association_setting_tcp_load boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field m number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.27.
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: -17.0.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 9.0.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 11.8.
--- @brief Ros2Xarm_msgsSrvFtCaliLoad_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvFtCaliLoad_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/FtCaliLoad_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/FtCaliLoad_Request.
--- @brief Ros2Xarm_msgsSrvFtCaliLoad_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvFtCaliLoad_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvFtCaliLoad_Request.MIN_WIRE_BYTES: Inclusive complete minimum 21 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 21 bytes.
--- @brief Ros2Xarm_msgsSrvFtCaliLoad_Request.MAX_WIRE_BYTES: Inclusive complete maximum 149 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 149 bytes.
--- @brief Construct Ros2Xarm_msgsSrvFtCaliLoad_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvFtCaliLoad_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvFtCaliLoad_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvFtCaliLoad_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvFtCaliLoad_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 21..149 bytes.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvFtCaliLoad_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvFtCaliLoad_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvFtCaliLoad_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvFtCaliLoad_Request
local Ros2Xarm_msgsSrvFtCaliLoad_Request = classes["Ros2Xarm_msgsSrvFtCaliLoad_Request"]

--- @class Ros2Xarm_msgsSrvFtCaliLoad_Response
--- @brief Complete ROS2 xarm_msgs/srv/FtCaliLoad_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvFtCaliLoad_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvFtCaliLoad_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/FtCaliLoad_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/FtCaliLoad_Response.
--- @brief Ros2Xarm_msgsSrvFtCaliLoad_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvFtCaliLoad_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvFtCaliLoad_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvFtCaliLoad_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvFtCaliLoad_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvFtCaliLoad_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvFtCaliLoad_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvFtCaliLoad_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvFtCaliLoad_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvFtCaliLoad_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvFtCaliLoad_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvFtCaliLoad_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvFtCaliLoad_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvFtCaliLoad_Response
local Ros2Xarm_msgsSrvFtCaliLoad_Response = classes["Ros2Xarm_msgsSrvFtCaliLoad_Response"]

--- @class Ros2Xarm_msgsSrvFtForceConfig_Request
--- @brief Complete ROS2 xarm_msgs/srv/FtForceConfig_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field coord integer Exact int16 range -32768..32767.
--- @field c_axis integer[] Exact int16 range -32768..32767. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field ref number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field limits number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvFtForceConfig_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvFtForceConfig_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/FtForceConfig_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/FtForceConfig_Request.
--- @brief Ros2Xarm_msgsSrvFtForceConfig_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvFtForceConfig_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvFtForceConfig_Request.MIN_WIRE_BYTES: Inclusive complete minimum 14 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 14 bytes.
--- @brief Ros2Xarm_msgsSrvFtForceConfig_Request.MAX_WIRE_BYTES: Inclusive complete maximum 334 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 334 bytes.
--- @brief Construct Ros2Xarm_msgsSrvFtForceConfig_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvFtForceConfig_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvFtForceConfig_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvFtForceConfig_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvFtForceConfig_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 14..334 bytes.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvFtForceConfig_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvFtForceConfig_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvFtForceConfig_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvFtForceConfig_Request
local Ros2Xarm_msgsSrvFtForceConfig_Request = classes["Ros2Xarm_msgsSrvFtForceConfig_Request"]

--- @class Ros2Xarm_msgsSrvFtForceConfig_Response
--- @brief Complete ROS2 xarm_msgs/srv/FtForceConfig_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvFtForceConfig_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvFtForceConfig_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/FtForceConfig_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/FtForceConfig_Response.
--- @brief Ros2Xarm_msgsSrvFtForceConfig_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvFtForceConfig_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvFtForceConfig_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvFtForceConfig_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvFtForceConfig_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvFtForceConfig_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvFtForceConfig_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvFtForceConfig_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvFtForceConfig_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvFtForceConfig_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvFtForceConfig_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvFtForceConfig_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvFtForceConfig_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvFtForceConfig_Response
local Ros2Xarm_msgsSrvFtForceConfig_Response = classes["Ros2Xarm_msgsSrvFtForceConfig_Response"]

--- @class Ros2Xarm_msgsSrvFtForceParams_Request
--- @brief Complete ROS2 xarm_msgs/srv/FtForceParams_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field coord integer Exact int16 range -32768..32767.
--- @field c_axis integer[] Exact int16 range -32768..32767. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field ref number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field limits number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field kp number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field ki number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field kd number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field xe_limit number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvFtForceParams_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceParams_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvFtForceParams_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/FtForceParams_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceParams_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/FtForceParams_Request.
--- @brief Ros2Xarm_msgsSrvFtForceParams_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceParams_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvFtForceParams_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceParams_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvFtForceParams_Request.MIN_WIRE_BYTES: Inclusive complete minimum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceParams_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 30 bytes.
--- @brief Ros2Xarm_msgsSrvFtForceParams_Request.MAX_WIRE_BYTES: Inclusive complete maximum 862 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceParams_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 862 bytes.
--- @brief Construct Ros2Xarm_msgsSrvFtForceParams_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvFtForceParams_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvFtForceParams_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvFtForceParams_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvFtForceParams_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvFtForceParams_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 30..862 bytes.
--- @see Ros2Xarm_msgsSrvFtForceParams_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvFtForceParams_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvFtForceParams_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvFtForceParams_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvFtForceParams_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvFtForceParams_Request
local Ros2Xarm_msgsSrvFtForceParams_Request = classes["Ros2Xarm_msgsSrvFtForceParams_Request"]

--- @class Ros2Xarm_msgsSrvFtForceParams_Response
--- @brief Complete ROS2 xarm_msgs/srv/FtForceParams_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvFtForceParams_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceParams_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvFtForceParams_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/FtForceParams_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceParams_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/FtForceParams_Response.
--- @brief Ros2Xarm_msgsSrvFtForceParams_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceParams_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvFtForceParams_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceParams_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvFtForceParams_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceParams_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvFtForceParams_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForceParams_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvFtForceParams_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvFtForceParams_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvFtForceParams_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvFtForceParams_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvFtForceParams_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvFtForceParams_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvFtForceParams_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvFtForceParams_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvFtForceParams_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvFtForceParams_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvFtForceParams_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvFtForceParams_Response
local Ros2Xarm_msgsSrvFtForceParams_Response = classes["Ros2Xarm_msgsSrvFtForceParams_Response"]

--- @class Ros2Xarm_msgsSrvFtForcePid_Request
--- @brief Complete ROS2 xarm_msgs/srv/FtForcePid_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field kp number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field ki number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field kd number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field xe_limit number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvFtForcePid_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForcePid_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvFtForcePid_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/FtForcePid_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForcePid_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/FtForcePid_Request.
--- @brief Ros2Xarm_msgsSrvFtForcePid_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForcePid_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvFtForcePid_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForcePid_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvFtForcePid_Request.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForcePid_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Xarm_msgsSrvFtForcePid_Request.MAX_WIRE_BYTES: Inclusive complete maximum 528 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForcePid_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 528 bytes.
--- @brief Construct Ros2Xarm_msgsSrvFtForcePid_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvFtForcePid_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvFtForcePid_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvFtForcePid_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvFtForcePid_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvFtForcePid_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..528 bytes.
--- @see Ros2Xarm_msgsSrvFtForcePid_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvFtForcePid_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvFtForcePid_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvFtForcePid_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvFtForcePid_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvFtForcePid_Request
local Ros2Xarm_msgsSrvFtForcePid_Request = classes["Ros2Xarm_msgsSrvFtForcePid_Request"]

--- @class Ros2Xarm_msgsSrvFtForcePid_Response
--- @brief Complete ROS2 xarm_msgs/srv/FtForcePid_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvFtForcePid_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForcePid_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvFtForcePid_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/FtForcePid_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForcePid_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/FtForcePid_Response.
--- @brief Ros2Xarm_msgsSrvFtForcePid_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForcePid_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvFtForcePid_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForcePid_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvFtForcePid_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForcePid_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvFtForcePid_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtForcePid_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvFtForcePid_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvFtForcePid_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvFtForcePid_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvFtForcePid_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvFtForcePid_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvFtForcePid_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvFtForcePid_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvFtForcePid_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvFtForcePid_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvFtForcePid_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvFtForcePid_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvFtForcePid_Response
local Ros2Xarm_msgsSrvFtForcePid_Response = classes["Ros2Xarm_msgsSrvFtForcePid_Response"]

--- @class Ros2Xarm_msgsSrvFtImpedance_Request
--- @brief Complete ROS2 xarm_msgs/srv/FtImpedance_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field coord integer Exact int16 range -32768..32767.
--- @field c_axis integer[] Exact int16 range -32768..32767. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field m number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field k number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field b number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvFtImpedance_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtImpedance_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvFtImpedance_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/FtImpedance_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtImpedance_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/FtImpedance_Request.
--- @brief Ros2Xarm_msgsSrvFtImpedance_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtImpedance_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvFtImpedance_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtImpedance_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvFtImpedance_Request.MIN_WIRE_BYTES: Inclusive complete minimum 18 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtImpedance_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 18 bytes.
--- @brief Ros2Xarm_msgsSrvFtImpedance_Request.MAX_WIRE_BYTES: Inclusive complete maximum 466 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtImpedance_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 466 bytes.
--- @brief Construct Ros2Xarm_msgsSrvFtImpedance_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvFtImpedance_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvFtImpedance_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvFtImpedance_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvFtImpedance_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvFtImpedance_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 18..466 bytes.
--- @see Ros2Xarm_msgsSrvFtImpedance_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvFtImpedance_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvFtImpedance_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvFtImpedance_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvFtImpedance_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvFtImpedance_Request
local Ros2Xarm_msgsSrvFtImpedance_Request = classes["Ros2Xarm_msgsSrvFtImpedance_Request"]

--- @class Ros2Xarm_msgsSrvFtImpedance_Response
--- @brief Complete ROS2 xarm_msgs/srv/FtImpedance_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvFtImpedance_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtImpedance_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvFtImpedance_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/FtImpedance_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtImpedance_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/FtImpedance_Response.
--- @brief Ros2Xarm_msgsSrvFtImpedance_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtImpedance_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvFtImpedance_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtImpedance_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvFtImpedance_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtImpedance_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvFtImpedance_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvFtImpedance_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvFtImpedance_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvFtImpedance_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvFtImpedance_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvFtImpedance_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvFtImpedance_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvFtImpedance_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvFtImpedance_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvFtImpedance_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvFtImpedance_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvFtImpedance_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvFtImpedance_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvFtImpedance_Response
local Ros2Xarm_msgsSrvFtImpedance_Response = classes["Ros2Xarm_msgsSrvFtImpedance_Response"]

--- @class Ros2Xarm_msgsSrvGetAnalogIO_Request
--- @brief Complete ROS2 xarm_msgs/srv/GetAnalogIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ionum integer Exact int16 range -32768..32767.
--- @brief Ros2Xarm_msgsSrvGetAnalogIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetAnalogIO_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetAnalogIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetAnalogIO_Request.
--- @brief Ros2Xarm_msgsSrvGetAnalogIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetAnalogIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetAnalogIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Xarm_msgsSrvGetAnalogIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetAnalogIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetAnalogIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetAnalogIO_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvGetAnalogIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetAnalogIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetAnalogIO_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetAnalogIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetAnalogIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetAnalogIO_Request
local Ros2Xarm_msgsSrvGetAnalogIO_Request = classes["Ros2Xarm_msgsSrvGetAnalogIO_Request"]

--- @class Ros2Xarm_msgsSrvGetAnalogIO_Response
--- @brief Complete ROS2 xarm_msgs/srv/GetAnalogIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field data number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Xarm_msgsSrvGetAnalogIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetAnalogIO_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetAnalogIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetAnalogIO_Response.
--- @brief Ros2Xarm_msgsSrvGetAnalogIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetAnalogIO_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetAnalogIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvGetAnalogIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 266 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 266 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetAnalogIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetAnalogIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetAnalogIO_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvGetAnalogIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetAnalogIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..266 bytes.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetAnalogIO_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetAnalogIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetAnalogIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetAnalogIO_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetAnalogIO_Response
local Ros2Xarm_msgsSrvGetAnalogIO_Response = classes["Ros2Xarm_msgsSrvGetAnalogIO_Response"]

--- @class Ros2Xarm_msgsSrvGetDigitalIO_Request
--- @brief Complete ROS2 xarm_msgs/srv/GetDigitalIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Xarm_msgsSrvGetDigitalIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetDigitalIO_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetDigitalIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetDigitalIO_Request.
--- @brief Ros2Xarm_msgsSrvGetDigitalIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetDigitalIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetDigitalIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Xarm_msgsSrvGetDigitalIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetDigitalIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetDigitalIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetDigitalIO_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvGetDigitalIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetDigitalIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetDigitalIO_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetDigitalIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetDigitalIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetDigitalIO_Request
local Ros2Xarm_msgsSrvGetDigitalIO_Request = classes["Ros2Xarm_msgsSrvGetDigitalIO_Request"]

--- @class Ros2Xarm_msgsSrvGetDigitalIO_Response
--- @brief Complete ROS2 xarm_msgs/srv/GetDigitalIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field digitals integer[] Exact int16 range -32768..32767. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvGetDigitalIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetDigitalIO_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetDigitalIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetDigitalIO_Response.
--- @brief Ros2Xarm_msgsSrvGetDigitalIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetDigitalIO_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetDigitalIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvGetDigitalIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 330 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 330 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetDigitalIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetDigitalIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetDigitalIO_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvGetDigitalIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetDigitalIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..330 bytes.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetDigitalIO_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetDigitalIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetDigitalIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetDigitalIO_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetDigitalIO_Response
local Ros2Xarm_msgsSrvGetDigitalIO_Response = classes["Ros2Xarm_msgsSrvGetDigitalIO_Response"]

--- @class Ros2Xarm_msgsSrvGetFloat32_Request
--- @brief Complete ROS2 xarm_msgs/srv/GetFloat32_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Xarm_msgsSrvGetFloat32_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetFloat32_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetFloat32_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetFloat32_Request.
--- @brief Ros2Xarm_msgsSrvGetFloat32_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetFloat32_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetFloat32_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Xarm_msgsSrvGetFloat32_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetFloat32_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetFloat32_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetFloat32_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetFloat32_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvGetFloat32_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetFloat32_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Xarm_msgsSrvGetFloat32_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetFloat32_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetFloat32_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetFloat32_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetFloat32_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetFloat32_Request
local Ros2Xarm_msgsSrvGetFloat32_Request = classes["Ros2Xarm_msgsSrvGetFloat32_Request"]

--- @class Ros2Xarm_msgsSrvGetFloat32_Response
--- @brief Complete ROS2 xarm_msgs/srv/GetFloat32_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field data number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Xarm_msgsSrvGetFloat32_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetFloat32_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetFloat32_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetFloat32_Response.
--- @brief Ros2Xarm_msgsSrvGetFloat32_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetFloat32_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetFloat32_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvGetFloat32_Response.MAX_WIRE_BYTES: Inclusive complete maximum 266 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 266 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetFloat32_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetFloat32_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetFloat32_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetFloat32_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvGetFloat32_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetFloat32_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..266 bytes.
--- @see Ros2Xarm_msgsSrvGetFloat32_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetFloat32_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetFloat32_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetFloat32_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetFloat32_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetFloat32_Response
local Ros2Xarm_msgsSrvGetFloat32_Response = classes["Ros2Xarm_msgsSrvGetFloat32_Response"]

--- @class Ros2Xarm_msgsSrvGetFloat32List_Request
--- @brief Complete ROS2 xarm_msgs/srv/GetFloat32List_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Xarm_msgsSrvGetFloat32List_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetFloat32List_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetFloat32List_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetFloat32List_Request.
--- @brief Ros2Xarm_msgsSrvGetFloat32List_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetFloat32List_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetFloat32List_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Xarm_msgsSrvGetFloat32List_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetFloat32List_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetFloat32List_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetFloat32List_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvGetFloat32List_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetFloat32List_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetFloat32List_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetFloat32List_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetFloat32List_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetFloat32List_Request
local Ros2Xarm_msgsSrvGetFloat32List_Request = classes["Ros2Xarm_msgsSrvGetFloat32List_Request"]

--- @class Ros2Xarm_msgsSrvGetFloat32List_Response
--- @brief Complete ROS2 xarm_msgs/srv/GetFloat32List_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field datas number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvGetFloat32List_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetFloat32List_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetFloat32List_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetFloat32List_Response.
--- @brief Ros2Xarm_msgsSrvGetFloat32List_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetFloat32List_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetFloat32List_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvGetFloat32List_Response.MAX_WIRE_BYTES: Inclusive complete maximum 394 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 394 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetFloat32List_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetFloat32List_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetFloat32List_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvGetFloat32List_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetFloat32List_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..394 bytes.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetFloat32List_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetFloat32List_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetFloat32List_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetFloat32List_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetFloat32List_Response
local Ros2Xarm_msgsSrvGetFloat32List_Response = classes["Ros2Xarm_msgsSrvGetFloat32List_Response"]

--- @class Ros2Xarm_msgsSrvGetInt16_Request
--- @brief Complete ROS2 xarm_msgs/srv/GetInt16_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Xarm_msgsSrvGetInt16_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetInt16_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetInt16_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetInt16_Request.
--- @brief Ros2Xarm_msgsSrvGetInt16_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetInt16_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetInt16_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Xarm_msgsSrvGetInt16_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetInt16_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetInt16_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetInt16_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetInt16_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvGetInt16_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetInt16_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Xarm_msgsSrvGetInt16_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetInt16_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetInt16_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetInt16_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetInt16_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetInt16_Request
local Ros2Xarm_msgsSrvGetInt16_Request = classes["Ros2Xarm_msgsSrvGetInt16_Request"]

--- @class Ros2Xarm_msgsSrvGetInt16_Response
--- @brief Complete ROS2 xarm_msgs/srv/GetInt16_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field data integer Exact int16 range -32768..32767.
--- @brief Ros2Xarm_msgsSrvGetInt16_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetInt16_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetInt16_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetInt16_Response.
--- @brief Ros2Xarm_msgsSrvGetInt16_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetInt16_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetInt16_Response.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Xarm_msgsSrvGetInt16_Response.MAX_WIRE_BYTES: Inclusive complete maximum 264 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 264 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetInt16_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetInt16_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetInt16_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetInt16_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvGetInt16_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetInt16_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..264 bytes.
--- @see Ros2Xarm_msgsSrvGetInt16_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetInt16_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetInt16_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetInt16_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetInt16_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetInt16_Response
local Ros2Xarm_msgsSrvGetInt16_Response = classes["Ros2Xarm_msgsSrvGetInt16_Response"]

--- @class Ros2Xarm_msgsSrvGetInt16List_Request
--- @brief Complete ROS2 xarm_msgs/srv/GetInt16List_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Xarm_msgsSrvGetInt16List_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16List_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetInt16List_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetInt16List_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16List_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetInt16List_Request.
--- @brief Ros2Xarm_msgsSrvGetInt16List_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16List_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetInt16List_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16List_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetInt16List_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16List_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Xarm_msgsSrvGetInt16List_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16List_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetInt16List_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetInt16List_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetInt16List_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetInt16List_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvGetInt16List_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetInt16List_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Xarm_msgsSrvGetInt16List_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetInt16List_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetInt16List_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetInt16List_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetInt16List_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetInt16List_Request
local Ros2Xarm_msgsSrvGetInt16List_Request = classes["Ros2Xarm_msgsSrvGetInt16List_Request"]

--- @class Ros2Xarm_msgsSrvGetInt16List_Response
--- @brief Complete ROS2 xarm_msgs/srv/GetInt16List_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field datas integer[] Exact int16 range -32768..32767. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvGetInt16List_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16List_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetInt16List_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetInt16List_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16List_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetInt16List_Response.
--- @brief Ros2Xarm_msgsSrvGetInt16List_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16List_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetInt16List_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16List_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetInt16List_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16List_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvGetInt16List_Response.MAX_WIRE_BYTES: Inclusive complete maximum 330 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt16List_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 330 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetInt16List_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetInt16List_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetInt16List_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetInt16List_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvGetInt16List_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetInt16List_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..330 bytes.
--- @see Ros2Xarm_msgsSrvGetInt16List_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetInt16List_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetInt16List_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetInt16List_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetInt16List_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetInt16List_Response
local Ros2Xarm_msgsSrvGetInt16List_Response = classes["Ros2Xarm_msgsSrvGetInt16List_Response"]

--- @class Ros2Xarm_msgsSrvGetInt32_Request
--- @brief Complete ROS2 xarm_msgs/srv/GetInt32_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Xarm_msgsSrvGetInt32_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetInt32_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetInt32_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetInt32_Request.
--- @brief Ros2Xarm_msgsSrvGetInt32_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetInt32_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetInt32_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Xarm_msgsSrvGetInt32_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetInt32_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetInt32_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetInt32_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetInt32_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvGetInt32_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetInt32_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Xarm_msgsSrvGetInt32_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetInt32_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetInt32_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetInt32_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetInt32_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetInt32_Request
local Ros2Xarm_msgsSrvGetInt32_Request = classes["Ros2Xarm_msgsSrvGetInt32_Request"]

--- @class Ros2Xarm_msgsSrvGetInt32_Response
--- @brief Complete ROS2 xarm_msgs/srv/GetInt32_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field data integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Xarm_msgsSrvGetInt32_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetInt32_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetInt32_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetInt32_Response.
--- @brief Ros2Xarm_msgsSrvGetInt32_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetInt32_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetInt32_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvGetInt32_Response.MAX_WIRE_BYTES: Inclusive complete maximum 266 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 266 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetInt32_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetInt32_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetInt32_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetInt32_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvGetInt32_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetInt32_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..266 bytes.
--- @see Ros2Xarm_msgsSrvGetInt32_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetInt32_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetInt32_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetInt32_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetInt32_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetInt32_Response
local Ros2Xarm_msgsSrvGetInt32_Response = classes["Ros2Xarm_msgsSrvGetInt32_Response"]

--- @class Ros2Xarm_msgsSrvGetInt32ByType_Request
--- @brief Complete ROS2 xarm_msgs/srv/GetInt32ByType_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field type integer Exact int16 range -32768..32767.
--- @brief Ros2Xarm_msgsSrvGetInt32ByType_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetInt32ByType_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetInt32ByType_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetInt32ByType_Request.
--- @brief Ros2Xarm_msgsSrvGetInt32ByType_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetInt32ByType_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetInt32ByType_Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Xarm_msgsSrvGetInt32ByType_Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetInt32ByType_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetInt32ByType_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetInt32ByType_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvGetInt32ByType_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetInt32ByType_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetInt32ByType_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetInt32ByType_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetInt32ByType_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetInt32ByType_Request
local Ros2Xarm_msgsSrvGetInt32ByType_Request = classes["Ros2Xarm_msgsSrvGetInt32ByType_Request"]

--- @class Ros2Xarm_msgsSrvGetInt32ByType_Response
--- @brief Complete ROS2 xarm_msgs/srv/GetInt32ByType_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field data integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Xarm_msgsSrvGetInt32ByType_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetInt32ByType_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetInt32ByType_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetInt32ByType_Response.
--- @brief Ros2Xarm_msgsSrvGetInt32ByType_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetInt32ByType_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetInt32ByType_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvGetInt32ByType_Response.MAX_WIRE_BYTES: Inclusive complete maximum 266 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 266 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetInt32ByType_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetInt32ByType_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetInt32ByType_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvGetInt32ByType_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetInt32ByType_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..266 bytes.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetInt32ByType_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetInt32ByType_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetInt32ByType_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetInt32ByType_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetInt32ByType_Response
local Ros2Xarm_msgsSrvGetInt32ByType_Response = classes["Ros2Xarm_msgsSrvGetInt32ByType_Response"]

--- @class Ros2Xarm_msgsSrvGetSetModbusData_Request
--- @brief Complete ROS2 xarm_msgs/srv/GetSetModbusData_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field modbus_data integer[] Exact uint8 range 0..255. At most 4096 contiguous elements; holes and extra array keys are rejected.
--- @field modbus_length integer Exact int16 range -32768..32767. Declared native scalar default: 0.
--- @field ret_length integer Exact int16 range -32768..32767.
--- @field host_id integer Exact uint8 range 0..255. Declared native scalar default: 9.
--- @field is_transparent_transmission boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field use_503_port boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @brief Ros2Xarm_msgsSrvGetSetModbusData_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetSetModbusData_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetSetModbusData_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetSetModbusData_Request.
--- @brief Ros2Xarm_msgsSrvGetSetModbusData_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetSetModbusData_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetSetModbusData_Request.MIN_WIRE_BYTES: Inclusive complete minimum 11 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 11 bytes.
--- @brief Ros2Xarm_msgsSrvGetSetModbusData_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4107 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4107 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetSetModbusData_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetSetModbusData_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetSetModbusData_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvGetSetModbusData_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetSetModbusData_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 11..4107 bytes.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetSetModbusData_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetSetModbusData_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetSetModbusData_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetSetModbusData_Request
local Ros2Xarm_msgsSrvGetSetModbusData_Request = classes["Ros2Xarm_msgsSrvGetSetModbusData_Request"]

--- @class Ros2Xarm_msgsSrvGetSetModbusData_Response
--- @brief Complete ROS2 xarm_msgs/srv/GetSetModbusData_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ret_data integer[] Exact uint8 range 0..255. At most 4096 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvGetSetModbusData_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGetSetModbusData_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GetSetModbusData_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GetSetModbusData_Response.
--- @brief Ros2Xarm_msgsSrvGetSetModbusData_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGetSetModbusData_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGetSetModbusData_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvGetSetModbusData_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4362 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4362 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGetSetModbusData_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGetSetModbusData_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGetSetModbusData_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvGetSetModbusData_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGetSetModbusData_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..4362 bytes.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGetSetModbusData_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGetSetModbusData_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGetSetModbusData_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGetSetModbusData_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGetSetModbusData_Response
local Ros2Xarm_msgsSrvGetSetModbusData_Response = classes["Ros2Xarm_msgsSrvGetSetModbusData_Response"]

--- @class Ros2Xarm_msgsSrvGripperMove_Request
--- @brief Complete ROS2 xarm_msgs/srv/GripperMove_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pos number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 10.0.
--- @brief Ros2Xarm_msgsSrvGripperMove_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGripperMove_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGripperMove_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GripperMove_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGripperMove_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GripperMove_Request.
--- @brief Ros2Xarm_msgsSrvGripperMove_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGripperMove_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGripperMove_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGripperMove_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGripperMove_Request.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGripperMove_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Xarm_msgsSrvGripperMove_Request.MAX_WIRE_BYTES: Inclusive complete maximum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGripperMove_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 9 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGripperMove_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGripperMove_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGripperMove_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGripperMove_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvGripperMove_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGripperMove_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..9 bytes.
--- @see Ros2Xarm_msgsSrvGripperMove_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGripperMove_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGripperMove_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGripperMove_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGripperMove_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGripperMove_Request
local Ros2Xarm_msgsSrvGripperMove_Request = classes["Ros2Xarm_msgsSrvGripperMove_Request"]

--- @class Ros2Xarm_msgsSrvGripperMove_Response
--- @brief Complete ROS2 xarm_msgs/srv/GripperMove_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvGripperMove_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGripperMove_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvGripperMove_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/GripperMove_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGripperMove_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/GripperMove_Response.
--- @brief Ros2Xarm_msgsSrvGripperMove_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGripperMove_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvGripperMove_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGripperMove_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvGripperMove_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGripperMove_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvGripperMove_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvGripperMove_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvGripperMove_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvGripperMove_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvGripperMove_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvGripperMove_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvGripperMove_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvGripperMove_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvGripperMove_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvGripperMove_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvGripperMove_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvGripperMove_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvGripperMove_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvGripperMove_Response
local Ros2Xarm_msgsSrvGripperMove_Response = classes["Ros2Xarm_msgsSrvGripperMove_Response"]

--- @class Ros2Xarm_msgsSrvIdenLoad_Request
--- @brief Complete ROS2 xarm_msgs/srv/IdenLoad_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field estimated_mass number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @brief Ros2Xarm_msgsSrvIdenLoad_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvIdenLoad_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvIdenLoad_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/IdenLoad_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvIdenLoad_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/IdenLoad_Request.
--- @brief Ros2Xarm_msgsSrvIdenLoad_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvIdenLoad_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvIdenLoad_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvIdenLoad_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvIdenLoad_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvIdenLoad_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Xarm_msgsSrvIdenLoad_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvIdenLoad_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Xarm_msgsSrvIdenLoad_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvIdenLoad_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvIdenLoad_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvIdenLoad_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvIdenLoad_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvIdenLoad_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Xarm_msgsSrvIdenLoad_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvIdenLoad_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvIdenLoad_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvIdenLoad_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvIdenLoad_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvIdenLoad_Request
local Ros2Xarm_msgsSrvIdenLoad_Request = classes["Ros2Xarm_msgsSrvIdenLoad_Request"]

--- @class Ros2Xarm_msgsSrvIdenLoad_Response
--- @brief Complete ROS2 xarm_msgs/srv/IdenLoad_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field datas number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvIdenLoad_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvIdenLoad_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvIdenLoad_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/IdenLoad_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvIdenLoad_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/IdenLoad_Response.
--- @brief Ros2Xarm_msgsSrvIdenLoad_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvIdenLoad_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvIdenLoad_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvIdenLoad_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvIdenLoad_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvIdenLoad_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvIdenLoad_Response.MAX_WIRE_BYTES: Inclusive complete maximum 394 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvIdenLoad_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 394 bytes.
--- @brief Construct Ros2Xarm_msgsSrvIdenLoad_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvIdenLoad_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvIdenLoad_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvIdenLoad_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvIdenLoad_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvIdenLoad_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..394 bytes.
--- @see Ros2Xarm_msgsSrvIdenLoad_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvIdenLoad_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvIdenLoad_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvIdenLoad_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvIdenLoad_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvIdenLoad_Response
local Ros2Xarm_msgsSrvIdenLoad_Response = classes["Ros2Xarm_msgsSrvIdenLoad_Response"]

--- @class Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request
--- @brief Complete ROS2 xarm_msgs/srv/LinearMotorBackOrigin_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @field auto_enable boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @brief Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/LinearMotorBackOrigin_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/LinearMotorBackOrigin_Request.
--- @brief Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request
local Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request = classes["Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request"]

--- @class Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response
--- @brief Complete ROS2 xarm_msgs/srv/LinearMotorBackOrigin_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/LinearMotorBackOrigin_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/LinearMotorBackOrigin_Response.
--- @brief Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response
local Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response = classes["Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response"]

--- @class Ros2Xarm_msgsSrvLinearMotorSetPos_Request
--- @brief Complete ROS2 xarm_msgs/srv/LinearMotorSetPos_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pos integer Exact int16 range -32768..32767.
--- @field speed integer Exact int16 range -32768..32767. Declared native scalar default: 0.
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 100.0.
--- @field auto_enable boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @brief Ros2Xarm_msgsSrvLinearMotorSetPos_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvLinearMotorSetPos_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/LinearMotorSetPos_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/LinearMotorSetPos_Request.
--- @brief Ros2Xarm_msgsSrvLinearMotorSetPos_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvLinearMotorSetPos_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvLinearMotorSetPos_Request.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvLinearMotorSetPos_Request.MAX_WIRE_BYTES: Inclusive complete maximum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 10 bytes.
--- @brief Construct Ros2Xarm_msgsSrvLinearMotorSetPos_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvLinearMotorSetPos_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvLinearMotorSetPos_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvLinearMotorSetPos_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvLinearMotorSetPos_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..10 bytes.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvLinearMotorSetPos_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvLinearMotorSetPos_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvLinearMotorSetPos_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvLinearMotorSetPos_Request
local Ros2Xarm_msgsSrvLinearMotorSetPos_Request = classes["Ros2Xarm_msgsSrvLinearMotorSetPos_Request"]

--- @class Ros2Xarm_msgsSrvLinearMotorSetPos_Response
--- @brief Complete ROS2 xarm_msgs/srv/LinearMotorSetPos_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvLinearMotorSetPos_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvLinearMotorSetPos_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/LinearMotorSetPos_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/LinearMotorSetPos_Response.
--- @brief Ros2Xarm_msgsSrvLinearMotorSetPos_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvLinearMotorSetPos_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvLinearMotorSetPos_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvLinearMotorSetPos_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvLinearMotorSetPos_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvLinearMotorSetPos_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvLinearMotorSetPos_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvLinearMotorSetPos_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvLinearMotorSetPos_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvLinearMotorSetPos_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvLinearMotorSetPos_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvLinearMotorSetPos_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvLinearMotorSetPos_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvLinearMotorSetPos_Response
local Ros2Xarm_msgsSrvLinearMotorSetPos_Response = classes["Ros2Xarm_msgsSrvLinearMotorSetPos_Response"]

--- @class Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request
--- @brief Complete ROS2 xarm_msgs/srv/LinearTrackBackOrigin_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @field auto_enable boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @brief Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/LinearTrackBackOrigin_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/LinearTrackBackOrigin_Request.
--- @brief Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request
local Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request = classes["Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request"]

--- @class Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response
--- @brief Complete ROS2 xarm_msgs/srv/LinearTrackBackOrigin_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/LinearTrackBackOrigin_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/LinearTrackBackOrigin_Response.
--- @brief Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response
local Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response = classes["Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response"]

--- @class Ros2Xarm_msgsSrvLinearTrackSetPos_Request
--- @brief Complete ROS2 xarm_msgs/srv/LinearTrackSetPos_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pos integer Exact int16 range -32768..32767.
--- @field speed integer Exact int16 range -32768..32767. Declared native scalar default: 0.
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 100.0.
--- @field auto_enable boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @brief Ros2Xarm_msgsSrvLinearTrackSetPos_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvLinearTrackSetPos_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/LinearTrackSetPos_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/LinearTrackSetPos_Request.
--- @brief Ros2Xarm_msgsSrvLinearTrackSetPos_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvLinearTrackSetPos_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvLinearTrackSetPos_Request.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvLinearTrackSetPos_Request.MAX_WIRE_BYTES: Inclusive complete maximum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 10 bytes.
--- @brief Construct Ros2Xarm_msgsSrvLinearTrackSetPos_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvLinearTrackSetPos_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvLinearTrackSetPos_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvLinearTrackSetPos_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvLinearTrackSetPos_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..10 bytes.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvLinearTrackSetPos_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvLinearTrackSetPos_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvLinearTrackSetPos_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvLinearTrackSetPos_Request
local Ros2Xarm_msgsSrvLinearTrackSetPos_Request = classes["Ros2Xarm_msgsSrvLinearTrackSetPos_Request"]

--- @class Ros2Xarm_msgsSrvLinearTrackSetPos_Response
--- @brief Complete ROS2 xarm_msgs/srv/LinearTrackSetPos_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvLinearTrackSetPos_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvLinearTrackSetPos_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/LinearTrackSetPos_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/LinearTrackSetPos_Response.
--- @brief Ros2Xarm_msgsSrvLinearTrackSetPos_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvLinearTrackSetPos_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvLinearTrackSetPos_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvLinearTrackSetPos_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvLinearTrackSetPos_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvLinearTrackSetPos_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvLinearTrackSetPos_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvLinearTrackSetPos_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvLinearTrackSetPos_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvLinearTrackSetPos_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvLinearTrackSetPos_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvLinearTrackSetPos_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvLinearTrackSetPos_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvLinearTrackSetPos_Response
local Ros2Xarm_msgsSrvLinearTrackSetPos_Response = classes["Ros2Xarm_msgsSrvLinearTrackSetPos_Response"]

--- @class Ros2Xarm_msgsSrvMoveCartesian_Request
--- @brief Complete ROS2 xarm_msgs/srv/MoveCartesian_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pose number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field speed number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field acc number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field mvtime number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: -1.0.
--- @field radius number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: -1.0.
--- @field is_tool_coord boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field relative boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field motion_type integer Exact uint8 range 0..255. Declared native scalar default: 0.
--- @brief Ros2Xarm_msgsSrvMoveCartesian_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvMoveCartesian_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/MoveCartesian_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/MoveCartesian_Request.
--- @brief Ros2Xarm_msgsSrvMoveCartesian_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvMoveCartesian_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvMoveCartesian_Request.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2Xarm_msgsSrvMoveCartesian_Request.MAX_WIRE_BYTES: Inclusive complete maximum 156 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 156 bytes.
--- @brief Construct Ros2Xarm_msgsSrvMoveCartesian_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvMoveCartesian_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvMoveCartesian_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvMoveCartesian_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvMoveCartesian_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..156 bytes.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvMoveCartesian_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvMoveCartesian_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvMoveCartesian_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvMoveCartesian_Request
local Ros2Xarm_msgsSrvMoveCartesian_Request = classes["Ros2Xarm_msgsSrvMoveCartesian_Request"]

--- @class Ros2Xarm_msgsSrvMoveCartesian_Response
--- @brief Complete ROS2 xarm_msgs/srv/MoveCartesian_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvMoveCartesian_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvMoveCartesian_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/MoveCartesian_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/MoveCartesian_Response.
--- @brief Ros2Xarm_msgsSrvMoveCartesian_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvMoveCartesian_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvMoveCartesian_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvMoveCartesian_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvMoveCartesian_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvMoveCartesian_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvMoveCartesian_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvMoveCartesian_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvMoveCartesian_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvMoveCartesian_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvMoveCartesian_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvMoveCartesian_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvMoveCartesian_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvMoveCartesian_Response
local Ros2Xarm_msgsSrvMoveCartesian_Response = classes["Ros2Xarm_msgsSrvMoveCartesian_Response"]

--- @class Ros2Xarm_msgsSrvMoveCircle_Request
--- @brief Complete ROS2 xarm_msgs/srv/MoveCircle_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pose1 number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field pose2 number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field percent number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field acc number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field mvtime number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: -1.0.
--- @field is_tool_coord boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field is_axis_angle boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @brief Ros2Xarm_msgsSrvMoveCircle_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCircle_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvMoveCircle_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/MoveCircle_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCircle_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/MoveCircle_Request.
--- @brief Ros2Xarm_msgsSrvMoveCircle_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCircle_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvMoveCircle_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCircle_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvMoveCircle_Request.MIN_WIRE_BYTES: Inclusive complete minimum 31 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCircle_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 31 bytes.
--- @brief Ros2Xarm_msgsSrvMoveCircle_Request.MAX_WIRE_BYTES: Inclusive complete maximum 287 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCircle_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 287 bytes.
--- @brief Construct Ros2Xarm_msgsSrvMoveCircle_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvMoveCircle_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvMoveCircle_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvMoveCircle_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvMoveCircle_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvMoveCircle_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 31..287 bytes.
--- @see Ros2Xarm_msgsSrvMoveCircle_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvMoveCircle_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvMoveCircle_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvMoveCircle_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvMoveCircle_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvMoveCircle_Request
local Ros2Xarm_msgsSrvMoveCircle_Request = classes["Ros2Xarm_msgsSrvMoveCircle_Request"]

--- @class Ros2Xarm_msgsSrvMoveCircle_Response
--- @brief Complete ROS2 xarm_msgs/srv/MoveCircle_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvMoveCircle_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCircle_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvMoveCircle_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/MoveCircle_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCircle_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/MoveCircle_Response.
--- @brief Ros2Xarm_msgsSrvMoveCircle_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCircle_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvMoveCircle_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCircle_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvMoveCircle_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCircle_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvMoveCircle_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveCircle_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvMoveCircle_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvMoveCircle_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvMoveCircle_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvMoveCircle_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvMoveCircle_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvMoveCircle_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvMoveCircle_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvMoveCircle_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvMoveCircle_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvMoveCircle_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvMoveCircle_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvMoveCircle_Response
local Ros2Xarm_msgsSrvMoveCircle_Response = classes["Ros2Xarm_msgsSrvMoveCircle_Response"]

--- @class Ros2Xarm_msgsSrvMoveHome_Request
--- @brief Complete ROS2 xarm_msgs/srv/MoveHome_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speed number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field acc number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field mvtime number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: -1.0.
--- @brief Ros2Xarm_msgsSrvMoveHome_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveHome_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvMoveHome_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/MoveHome_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveHome_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/MoveHome_Request.
--- @brief Ros2Xarm_msgsSrvMoveHome_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveHome_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvMoveHome_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveHome_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvMoveHome_Request.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveHome_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros2Xarm_msgsSrvMoveHome_Request.MAX_WIRE_BYTES: Inclusive complete maximum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveHome_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17 bytes.
--- @brief Construct Ros2Xarm_msgsSrvMoveHome_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvMoveHome_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvMoveHome_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvMoveHome_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvMoveHome_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvMoveHome_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..17 bytes.
--- @see Ros2Xarm_msgsSrvMoveHome_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvMoveHome_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvMoveHome_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvMoveHome_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvMoveHome_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvMoveHome_Request
local Ros2Xarm_msgsSrvMoveHome_Request = classes["Ros2Xarm_msgsSrvMoveHome_Request"]

--- @class Ros2Xarm_msgsSrvMoveHome_Response
--- @brief Complete ROS2 xarm_msgs/srv/MoveHome_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvMoveHome_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveHome_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvMoveHome_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/MoveHome_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveHome_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/MoveHome_Response.
--- @brief Ros2Xarm_msgsSrvMoveHome_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveHome_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvMoveHome_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveHome_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvMoveHome_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveHome_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvMoveHome_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveHome_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvMoveHome_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvMoveHome_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvMoveHome_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvMoveHome_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvMoveHome_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvMoveHome_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvMoveHome_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvMoveHome_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvMoveHome_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvMoveHome_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvMoveHome_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvMoveHome_Response
local Ros2Xarm_msgsSrvMoveHome_Response = classes["Ros2Xarm_msgsSrvMoveHome_Response"]

--- @class Ros2Xarm_msgsSrvMoveJoint_Request
--- @brief Complete ROS2 xarm_msgs/srv/MoveJoint_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field angles number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field speed number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field acc number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field mvtime number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: -1.0.
--- @field radius number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: -1.0.
--- @field relative boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @brief Ros2Xarm_msgsSrvMoveJoint_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveJoint_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvMoveJoint_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/MoveJoint_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveJoint_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/MoveJoint_Request.
--- @brief Ros2Xarm_msgsSrvMoveJoint_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveJoint_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvMoveJoint_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveJoint_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvMoveJoint_Request.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveJoint_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros2Xarm_msgsSrvMoveJoint_Request.MAX_WIRE_BYTES: Inclusive complete maximum 154 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveJoint_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 154 bytes.
--- @brief Construct Ros2Xarm_msgsSrvMoveJoint_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvMoveJoint_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvMoveJoint_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvMoveJoint_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvMoveJoint_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvMoveJoint_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..154 bytes.
--- @see Ros2Xarm_msgsSrvMoveJoint_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvMoveJoint_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvMoveJoint_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvMoveJoint_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvMoveJoint_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvMoveJoint_Request
local Ros2Xarm_msgsSrvMoveJoint_Request = classes["Ros2Xarm_msgsSrvMoveJoint_Request"]

--- @class Ros2Xarm_msgsSrvMoveJoint_Response
--- @brief Complete ROS2 xarm_msgs/srv/MoveJoint_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvMoveJoint_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveJoint_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvMoveJoint_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/MoveJoint_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveJoint_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/MoveJoint_Response.
--- @brief Ros2Xarm_msgsSrvMoveJoint_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveJoint_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvMoveJoint_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveJoint_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvMoveJoint_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveJoint_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvMoveJoint_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveJoint_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvMoveJoint_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvMoveJoint_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvMoveJoint_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvMoveJoint_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvMoveJoint_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvMoveJoint_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvMoveJoint_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvMoveJoint_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvMoveJoint_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvMoveJoint_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvMoveJoint_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvMoveJoint_Response
local Ros2Xarm_msgsSrvMoveJoint_Response = classes["Ros2Xarm_msgsSrvMoveJoint_Response"]

--- @class Ros2Xarm_msgsSrvMoveVelocity_Request
--- @brief Complete ROS2 xarm_msgs/srv/MoveVelocity_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speeds number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field is_sync boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @field is_tool_coord boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field duration number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: -1.0.
--- @brief Ros2Xarm_msgsSrvMoveVelocity_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvMoveVelocity_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/MoveVelocity_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/MoveVelocity_Request.
--- @brief Ros2Xarm_msgsSrvMoveVelocity_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvMoveVelocity_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvMoveVelocity_Request.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvMoveVelocity_Request.MAX_WIRE_BYTES: Inclusive complete maximum 138 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 138 bytes.
--- @brief Construct Ros2Xarm_msgsSrvMoveVelocity_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvMoveVelocity_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvMoveVelocity_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvMoveVelocity_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvMoveVelocity_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..138 bytes.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvMoveVelocity_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvMoveVelocity_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvMoveVelocity_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvMoveVelocity_Request
local Ros2Xarm_msgsSrvMoveVelocity_Request = classes["Ros2Xarm_msgsSrvMoveVelocity_Request"]

--- @class Ros2Xarm_msgsSrvMoveVelocity_Response
--- @brief Complete ROS2 xarm_msgs/srv/MoveVelocity_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvMoveVelocity_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvMoveVelocity_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/MoveVelocity_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/MoveVelocity_Response.
--- @brief Ros2Xarm_msgsSrvMoveVelocity_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvMoveVelocity_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvMoveVelocity_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvMoveVelocity_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvMoveVelocity_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvMoveVelocity_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvMoveVelocity_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvMoveVelocity_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvMoveVelocity_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvMoveVelocity_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvMoveVelocity_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvMoveVelocity_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvMoveVelocity_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvMoveVelocity_Response
local Ros2Xarm_msgsSrvMoveVelocity_Response = classes["Ros2Xarm_msgsSrvMoveVelocity_Response"]

--- @class Ros2Xarm_msgsSrvPlanExec_Request
--- @brief Complete ROS2 xarm_msgs/srv/PlanExec_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field wait boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Xarm_msgsSrvPlanExec_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanExec_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvPlanExec_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/PlanExec_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanExec_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/PlanExec_Request.
--- @brief Ros2Xarm_msgsSrvPlanExec_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanExec_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvPlanExec_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanExec_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvPlanExec_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanExec_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Xarm_msgsSrvPlanExec_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanExec_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Xarm_msgsSrvPlanExec_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvPlanExec_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvPlanExec_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvPlanExec_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvPlanExec_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvPlanExec_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Xarm_msgsSrvPlanExec_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvPlanExec_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvPlanExec_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvPlanExec_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvPlanExec_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvPlanExec_Request
local Ros2Xarm_msgsSrvPlanExec_Request = classes["Ros2Xarm_msgsSrvPlanExec_Request"]

--- @class Ros2Xarm_msgsSrvPlanExec_Response
--- @brief Complete ROS2 xarm_msgs/srv/PlanExec_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Xarm_msgsSrvPlanExec_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanExec_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvPlanExec_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/PlanExec_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanExec_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/PlanExec_Response.
--- @brief Ros2Xarm_msgsSrvPlanExec_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanExec_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvPlanExec_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanExec_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvPlanExec_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanExec_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Xarm_msgsSrvPlanExec_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanExec_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Xarm_msgsSrvPlanExec_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvPlanExec_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvPlanExec_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvPlanExec_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvPlanExec_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvPlanExec_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Xarm_msgsSrvPlanExec_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvPlanExec_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvPlanExec_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvPlanExec_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvPlanExec_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvPlanExec_Response
local Ros2Xarm_msgsSrvPlanExec_Response = classes["Ros2Xarm_msgsSrvPlanExec_Response"]

--- @class Ros2Xarm_msgsSrvPlanJoint_Request
--- @brief Complete ROS2 xarm_msgs/srv/PlanJoint_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field target number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvPlanJoint_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanJoint_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvPlanJoint_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/PlanJoint_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanJoint_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/PlanJoint_Request.
--- @brief Ros2Xarm_msgsSrvPlanJoint_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanJoint_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvPlanJoint_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanJoint_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvPlanJoint_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanJoint_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Xarm_msgsSrvPlanJoint_Request.MAX_WIRE_BYTES: Inclusive complete maximum 260 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanJoint_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 260 bytes.
--- @brief Construct Ros2Xarm_msgsSrvPlanJoint_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvPlanJoint_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvPlanJoint_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvPlanJoint_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvPlanJoint_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvPlanJoint_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..260 bytes.
--- @see Ros2Xarm_msgsSrvPlanJoint_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvPlanJoint_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvPlanJoint_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvPlanJoint_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvPlanJoint_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvPlanJoint_Request
local Ros2Xarm_msgsSrvPlanJoint_Request = classes["Ros2Xarm_msgsSrvPlanJoint_Request"]

--- @class Ros2Xarm_msgsSrvPlanJoint_Response
--- @brief Complete ROS2 xarm_msgs/srv/PlanJoint_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Xarm_msgsSrvPlanJoint_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanJoint_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvPlanJoint_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/PlanJoint_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanJoint_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/PlanJoint_Response.
--- @brief Ros2Xarm_msgsSrvPlanJoint_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanJoint_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvPlanJoint_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanJoint_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvPlanJoint_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanJoint_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Xarm_msgsSrvPlanJoint_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanJoint_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Xarm_msgsSrvPlanJoint_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvPlanJoint_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvPlanJoint_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvPlanJoint_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvPlanJoint_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvPlanJoint_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Xarm_msgsSrvPlanJoint_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvPlanJoint_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvPlanJoint_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvPlanJoint_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvPlanJoint_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvPlanJoint_Response
local Ros2Xarm_msgsSrvPlanJoint_Response = classes["Ros2Xarm_msgsSrvPlanJoint_Response"]

--- @class Ros2Xarm_msgsSrvPlanPose_Request
--- @brief Complete ROS2 xarm_msgs/srv/PlanPose_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field target table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @brief Ros2Xarm_msgsSrvPlanPose_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanPose_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvPlanPose_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/PlanPose_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanPose_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/PlanPose_Request.
--- @brief Ros2Xarm_msgsSrvPlanPose_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanPose_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvPlanPose_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanPose_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvPlanPose_Request.MIN_WIRE_BYTES: Inclusive complete minimum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanPose_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 56 bytes.
--- @brief Ros2Xarm_msgsSrvPlanPose_Request.MAX_WIRE_BYTES: Inclusive complete maximum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanPose_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 56 bytes.
--- @brief Construct Ros2Xarm_msgsSrvPlanPose_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvPlanPose_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvPlanPose_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvPlanPose_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvPlanPose_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvPlanPose_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 56..56 bytes.
--- @see Ros2Xarm_msgsSrvPlanPose_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvPlanPose_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvPlanPose_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvPlanPose_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvPlanPose_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvPlanPose_Request
local Ros2Xarm_msgsSrvPlanPose_Request = classes["Ros2Xarm_msgsSrvPlanPose_Request"]

--- @class Ros2Xarm_msgsSrvPlanPose_Response
--- @brief Complete ROS2 xarm_msgs/srv/PlanPose_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Xarm_msgsSrvPlanPose_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanPose_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvPlanPose_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/PlanPose_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanPose_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/PlanPose_Response.
--- @brief Ros2Xarm_msgsSrvPlanPose_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanPose_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvPlanPose_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanPose_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvPlanPose_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanPose_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Xarm_msgsSrvPlanPose_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanPose_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Xarm_msgsSrvPlanPose_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvPlanPose_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvPlanPose_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvPlanPose_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvPlanPose_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvPlanPose_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Xarm_msgsSrvPlanPose_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvPlanPose_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvPlanPose_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvPlanPose_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvPlanPose_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvPlanPose_Response
local Ros2Xarm_msgsSrvPlanPose_Response = classes["Ros2Xarm_msgsSrvPlanPose_Response"]

--- @class Ros2Xarm_msgsSrvPlanSingleStraight_Request
--- @brief Complete ROS2 xarm_msgs/srv/PlanSingleStraight_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field target table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @brief Ros2Xarm_msgsSrvPlanSingleStraight_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvPlanSingleStraight_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/PlanSingleStraight_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/PlanSingleStraight_Request.
--- @brief Ros2Xarm_msgsSrvPlanSingleStraight_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvPlanSingleStraight_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvPlanSingleStraight_Request.MIN_WIRE_BYTES: Inclusive complete minimum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 56 bytes.
--- @brief Ros2Xarm_msgsSrvPlanSingleStraight_Request.MAX_WIRE_BYTES: Inclusive complete maximum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 56 bytes.
--- @brief Construct Ros2Xarm_msgsSrvPlanSingleStraight_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvPlanSingleStraight_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvPlanSingleStraight_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvPlanSingleStraight_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvPlanSingleStraight_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 56..56 bytes.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvPlanSingleStraight_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvPlanSingleStraight_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvPlanSingleStraight_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvPlanSingleStraight_Request
local Ros2Xarm_msgsSrvPlanSingleStraight_Request = classes["Ros2Xarm_msgsSrvPlanSingleStraight_Request"]

--- @class Ros2Xarm_msgsSrvPlanSingleStraight_Response
--- @brief Complete ROS2 xarm_msgs/srv/PlanSingleStraight_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Xarm_msgsSrvPlanSingleStraight_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvPlanSingleStraight_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/PlanSingleStraight_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/PlanSingleStraight_Response.
--- @brief Ros2Xarm_msgsSrvPlanSingleStraight_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvPlanSingleStraight_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvPlanSingleStraight_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Xarm_msgsSrvPlanSingleStraight_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Xarm_msgsSrvPlanSingleStraight_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvPlanSingleStraight_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvPlanSingleStraight_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvPlanSingleStraight_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvPlanSingleStraight_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvPlanSingleStraight_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvPlanSingleStraight_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvPlanSingleStraight_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvPlanSingleStraight_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvPlanSingleStraight_Response
local Ros2Xarm_msgsSrvPlanSingleStraight_Response = classes["Ros2Xarm_msgsSrvPlanSingleStraight_Response"]

--- @class Ros2Xarm_msgsSrvRobotiqActivate_Request
--- @brief Complete ROS2 xarm_msgs/srv/RobotiqActivate_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 3.0.
--- @brief Ros2Xarm_msgsSrvRobotiqActivate_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvRobotiqActivate_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/RobotiqActivate_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/RobotiqActivate_Request.
--- @brief Ros2Xarm_msgsSrvRobotiqActivate_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvRobotiqActivate_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvRobotiqActivate_Request.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Xarm_msgsSrvRobotiqActivate_Request.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Xarm_msgsSrvRobotiqActivate_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvRobotiqActivate_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvRobotiqActivate_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvRobotiqActivate_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvRobotiqActivate_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvRobotiqActivate_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvRobotiqActivate_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvRobotiqActivate_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvRobotiqActivate_Request
local Ros2Xarm_msgsSrvRobotiqActivate_Request = classes["Ros2Xarm_msgsSrvRobotiqActivate_Request"]

--- @class Ros2Xarm_msgsSrvRobotiqActivate_Response
--- @brief Complete ROS2 xarm_msgs/srv/RobotiqActivate_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ret_data integer[] Exact uint8 range 0..255. At most 4096 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvRobotiqActivate_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvRobotiqActivate_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/RobotiqActivate_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/RobotiqActivate_Response.
--- @brief Ros2Xarm_msgsSrvRobotiqActivate_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvRobotiqActivate_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvRobotiqActivate_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvRobotiqActivate_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4362 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4362 bytes.
--- @brief Construct Ros2Xarm_msgsSrvRobotiqActivate_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvRobotiqActivate_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvRobotiqActivate_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvRobotiqActivate_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvRobotiqActivate_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..4362 bytes.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvRobotiqActivate_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvRobotiqActivate_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvRobotiqActivate_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvRobotiqActivate_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvRobotiqActivate_Response
local Ros2Xarm_msgsSrvRobotiqActivate_Response = classes["Ros2Xarm_msgsSrvRobotiqActivate_Response"]

--- @class Ros2Xarm_msgsSrvRobotiqGetStatus_Request
--- @brief Complete ROS2 xarm_msgs/srv/RobotiqGetStatus_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field number_of_registers integer Exact uint8 range 0..255. Declared native scalar default: 3.
--- @brief Ros2Xarm_msgsSrvRobotiqGetStatus_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvRobotiqGetStatus_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/RobotiqGetStatus_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/RobotiqGetStatus_Request.
--- @brief Ros2Xarm_msgsSrvRobotiqGetStatus_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvRobotiqGetStatus_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvRobotiqGetStatus_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Xarm_msgsSrvRobotiqGetStatus_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Xarm_msgsSrvRobotiqGetStatus_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvRobotiqGetStatus_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvRobotiqGetStatus_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvRobotiqGetStatus_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvRobotiqGetStatus_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvRobotiqGetStatus_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvRobotiqGetStatus_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvRobotiqGetStatus_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvRobotiqGetStatus_Request
local Ros2Xarm_msgsSrvRobotiqGetStatus_Request = classes["Ros2Xarm_msgsSrvRobotiqGetStatus_Request"]

--- @class Ros2Xarm_msgsSrvRobotiqGetStatus_Response
--- @brief Complete ROS2 xarm_msgs/srv/RobotiqGetStatus_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ret_data integer[] Exact uint8 range 0..255. At most 4096 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvRobotiqGetStatus_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvRobotiqGetStatus_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/RobotiqGetStatus_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/RobotiqGetStatus_Response.
--- @brief Ros2Xarm_msgsSrvRobotiqGetStatus_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvRobotiqGetStatus_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvRobotiqGetStatus_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvRobotiqGetStatus_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4362 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4362 bytes.
--- @brief Construct Ros2Xarm_msgsSrvRobotiqGetStatus_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvRobotiqGetStatus_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvRobotiqGetStatus_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvRobotiqGetStatus_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvRobotiqGetStatus_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..4362 bytes.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvRobotiqGetStatus_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvRobotiqGetStatus_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvRobotiqGetStatus_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvRobotiqGetStatus_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvRobotiqGetStatus_Response
local Ros2Xarm_msgsSrvRobotiqGetStatus_Response = classes["Ros2Xarm_msgsSrvRobotiqGetStatus_Response"]

--- @class Ros2Xarm_msgsSrvRobotiqMove_Request
--- @brief Complete ROS2 xarm_msgs/srv/RobotiqMove_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pos integer Exact uint8 range 0..255.
--- @field speed integer Exact uint8 range 0..255. Declared native scalar default: 255.
--- @field force integer Exact uint8 range 0..255. Declared native scalar default: 255.
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 5.0.
--- @brief Ros2Xarm_msgsSrvRobotiqMove_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvRobotiqMove_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/RobotiqMove_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/RobotiqMove_Request.
--- @brief Ros2Xarm_msgsSrvRobotiqMove_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvRobotiqMove_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvRobotiqMove_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Xarm_msgsSrvRobotiqMove_Request.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Xarm_msgsSrvRobotiqMove_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvRobotiqMove_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvRobotiqMove_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvRobotiqMove_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvRobotiqMove_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvRobotiqMove_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvRobotiqMove_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvRobotiqMove_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvRobotiqMove_Request
local Ros2Xarm_msgsSrvRobotiqMove_Request = classes["Ros2Xarm_msgsSrvRobotiqMove_Request"]

--- @class Ros2Xarm_msgsSrvRobotiqMove_Response
--- @brief Complete ROS2 xarm_msgs/srv/RobotiqMove_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ret_data integer[] Exact uint8 range 0..255. At most 4096 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvRobotiqMove_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvRobotiqMove_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/RobotiqMove_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/RobotiqMove_Response.
--- @brief Ros2Xarm_msgsSrvRobotiqMove_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvRobotiqMove_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvRobotiqMove_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvRobotiqMove_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4362 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4362 bytes.
--- @brief Construct Ros2Xarm_msgsSrvRobotiqMove_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvRobotiqMove_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvRobotiqMove_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvRobotiqMove_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvRobotiqMove_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..4362 bytes.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvRobotiqMove_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvRobotiqMove_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvRobotiqMove_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvRobotiqMove_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvRobotiqMove_Response
local Ros2Xarm_msgsSrvRobotiqMove_Response = classes["Ros2Xarm_msgsSrvRobotiqMove_Response"]

--- @class Ros2Xarm_msgsSrvRobotiqReset_Request
--- @brief Complete ROS2 xarm_msgs/srv/RobotiqReset_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Xarm_msgsSrvRobotiqReset_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvRobotiqReset_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/RobotiqReset_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/RobotiqReset_Request.
--- @brief Ros2Xarm_msgsSrvRobotiqReset_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvRobotiqReset_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvRobotiqReset_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Xarm_msgsSrvRobotiqReset_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Xarm_msgsSrvRobotiqReset_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvRobotiqReset_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvRobotiqReset_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvRobotiqReset_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvRobotiqReset_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvRobotiqReset_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvRobotiqReset_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvRobotiqReset_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvRobotiqReset_Request
local Ros2Xarm_msgsSrvRobotiqReset_Request = classes["Ros2Xarm_msgsSrvRobotiqReset_Request"]

--- @class Ros2Xarm_msgsSrvRobotiqReset_Response
--- @brief Complete ROS2 xarm_msgs/srv/RobotiqReset_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ret_data integer[] Exact uint8 range 0..255. At most 4096 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvRobotiqReset_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvRobotiqReset_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/RobotiqReset_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/RobotiqReset_Response.
--- @brief Ros2Xarm_msgsSrvRobotiqReset_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvRobotiqReset_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvRobotiqReset_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Xarm_msgsSrvRobotiqReset_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4362 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4362 bytes.
--- @brief Construct Ros2Xarm_msgsSrvRobotiqReset_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvRobotiqReset_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvRobotiqReset_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvRobotiqReset_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvRobotiqReset_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..4362 bytes.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvRobotiqReset_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvRobotiqReset_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvRobotiqReset_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvRobotiqReset_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvRobotiqReset_Response
local Ros2Xarm_msgsSrvRobotiqReset_Response = classes["Ros2Xarm_msgsSrvRobotiqReset_Response"]

--- @class Ros2Xarm_msgsSrvSetAnalogIO_Request
--- @brief Complete ROS2 xarm_msgs/srv/SetAnalogIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ionum integer Exact int16 range -32768..32767.
--- @field value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field xyz number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field tol_r number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Xarm_msgsSrvSetAnalogIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetAnalogIO_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetAnalogIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetAnalogIO_Request.
--- @brief Ros2Xarm_msgsSrvSetAnalogIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetAnalogIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetAnalogIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 14 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 14 bytes.
--- @brief Ros2Xarm_msgsSrvSetAnalogIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 142 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 142 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetAnalogIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetAnalogIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetAnalogIO_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvSetAnalogIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetAnalogIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 14..142 bytes.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetAnalogIO_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetAnalogIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetAnalogIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetAnalogIO_Request
local Ros2Xarm_msgsSrvSetAnalogIO_Request = classes["Ros2Xarm_msgsSrvSetAnalogIO_Request"]

--- @class Ros2Xarm_msgsSrvSetAnalogIO_Response
--- @brief Complete ROS2 xarm_msgs/srv/SetAnalogIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvSetAnalogIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetAnalogIO_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetAnalogIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetAnalogIO_Response.
--- @brief Ros2Xarm_msgsSrvSetAnalogIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetAnalogIO_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetAnalogIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvSetAnalogIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetAnalogIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetAnalogIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetAnalogIO_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvSetAnalogIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetAnalogIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetAnalogIO_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetAnalogIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetAnalogIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetAnalogIO_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetAnalogIO_Response
local Ros2Xarm_msgsSrvSetAnalogIO_Response = classes["Ros2Xarm_msgsSrvSetAnalogIO_Response"]

--- @class Ros2Xarm_msgsSrvSetDigitalIO_Request
--- @brief Complete ROS2 xarm_msgs/srv/SetDigitalIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ionum integer Exact int16 range -32768..32767.
--- @field value integer Exact int16 range -32768..32767.
--- @field delay_sec number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field xyz number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field tol_r number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Xarm_msgsSrvSetDigitalIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetDigitalIO_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetDigitalIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetDigitalIO_Request.
--- @brief Ros2Xarm_msgsSrvSetDigitalIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetDigitalIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetDigitalIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Xarm_msgsSrvSetDigitalIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 144 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 144 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetDigitalIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetDigitalIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetDigitalIO_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvSetDigitalIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetDigitalIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..144 bytes.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetDigitalIO_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetDigitalIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetDigitalIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetDigitalIO_Request
local Ros2Xarm_msgsSrvSetDigitalIO_Request = classes["Ros2Xarm_msgsSrvSetDigitalIO_Request"]

--- @class Ros2Xarm_msgsSrvSetDigitalIO_Response
--- @brief Complete ROS2 xarm_msgs/srv/SetDigitalIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvSetDigitalIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetDigitalIO_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetDigitalIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetDigitalIO_Response.
--- @brief Ros2Xarm_msgsSrvSetDigitalIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetDigitalIO_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetDigitalIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvSetDigitalIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetDigitalIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetDigitalIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetDigitalIO_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvSetDigitalIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetDigitalIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetDigitalIO_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetDigitalIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetDigitalIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetDigitalIO_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetDigitalIO_Response
local Ros2Xarm_msgsSrvSetDigitalIO_Response = classes["Ros2Xarm_msgsSrvSetDigitalIO_Response"]

--- @class Ros2Xarm_msgsSrvSetFloat32_Request
--- @brief Complete ROS2 xarm_msgs/srv/SetFloat32_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field data number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Xarm_msgsSrvSetFloat32_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetFloat32_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetFloat32_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetFloat32_Request.
--- @brief Ros2Xarm_msgsSrvSetFloat32_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetFloat32_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetFloat32_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Xarm_msgsSrvSetFloat32_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetFloat32_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetFloat32_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetFloat32_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetFloat32_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvSetFloat32_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetFloat32_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Xarm_msgsSrvSetFloat32_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetFloat32_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetFloat32_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetFloat32_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetFloat32_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetFloat32_Request
local Ros2Xarm_msgsSrvSetFloat32_Request = classes["Ros2Xarm_msgsSrvSetFloat32_Request"]

--- @class Ros2Xarm_msgsSrvSetFloat32_Response
--- @brief Complete ROS2 xarm_msgs/srv/SetFloat32_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvSetFloat32_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetFloat32_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetFloat32_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetFloat32_Response.
--- @brief Ros2Xarm_msgsSrvSetFloat32_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetFloat32_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetFloat32_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvSetFloat32_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetFloat32_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetFloat32_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetFloat32_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetFloat32_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvSetFloat32_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetFloat32_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvSetFloat32_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetFloat32_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetFloat32_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetFloat32_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetFloat32_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetFloat32_Response
local Ros2Xarm_msgsSrvSetFloat32_Response = classes["Ros2Xarm_msgsSrvSetFloat32_Response"]

--- @class Ros2Xarm_msgsSrvSetFloat32List_Request
--- @brief Complete ROS2 xarm_msgs/srv/SetFloat32List_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field datas number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvSetFloat32List_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetFloat32List_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetFloat32List_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetFloat32List_Request.
--- @brief Ros2Xarm_msgsSrvSetFloat32List_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetFloat32List_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetFloat32List_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Xarm_msgsSrvSetFloat32List_Request.MAX_WIRE_BYTES: Inclusive complete maximum 132 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 132 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetFloat32List_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetFloat32List_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetFloat32List_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvSetFloat32List_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetFloat32List_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..132 bytes.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetFloat32List_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetFloat32List_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetFloat32List_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetFloat32List_Request
local Ros2Xarm_msgsSrvSetFloat32List_Request = classes["Ros2Xarm_msgsSrvSetFloat32List_Request"]

--- @class Ros2Xarm_msgsSrvSetFloat32List_Response
--- @brief Complete ROS2 xarm_msgs/srv/SetFloat32List_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvSetFloat32List_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetFloat32List_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetFloat32List_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetFloat32List_Response.
--- @brief Ros2Xarm_msgsSrvSetFloat32List_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetFloat32List_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetFloat32List_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvSetFloat32List_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetFloat32List_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetFloat32List_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetFloat32List_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvSetFloat32List_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetFloat32List_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetFloat32List_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetFloat32List_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetFloat32List_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetFloat32List_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetFloat32List_Response
local Ros2Xarm_msgsSrvSetFloat32List_Response = classes["Ros2Xarm_msgsSrvSetFloat32List_Response"]

--- @class Ros2Xarm_msgsSrvSetInt16_Request
--- @brief Complete ROS2 xarm_msgs/srv/SetInt16_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field data integer Exact int16 range -32768..32767.
--- @brief Ros2Xarm_msgsSrvSetInt16_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetInt16_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetInt16_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetInt16_Request.
--- @brief Ros2Xarm_msgsSrvSetInt16_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetInt16_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetInt16_Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt16_Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetInt16_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetInt16_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetInt16_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetInt16_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvSetInt16_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetInt16_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Xarm_msgsSrvSetInt16_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetInt16_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetInt16_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetInt16_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetInt16_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetInt16_Request
local Ros2Xarm_msgsSrvSetInt16_Request = classes["Ros2Xarm_msgsSrvSetInt16_Request"]

--- @class Ros2Xarm_msgsSrvSetInt16_Response
--- @brief Complete ROS2 xarm_msgs/srv/SetInt16_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt16_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetInt16_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetInt16_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetInt16_Response.
--- @brief Ros2Xarm_msgsSrvSetInt16_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetInt16_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetInt16_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt16_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetInt16_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetInt16_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetInt16_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetInt16_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvSetInt16_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetInt16_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvSetInt16_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetInt16_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetInt16_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetInt16_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetInt16_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetInt16_Response
local Ros2Xarm_msgsSrvSetInt16_Response = classes["Ros2Xarm_msgsSrvSetInt16_Response"]

--- @class Ros2Xarm_msgsSrvSetInt16ById_Request
--- @brief Complete ROS2 xarm_msgs/srv/SetInt16ById_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field id integer Exact int16 range -32768..32767.
--- @field data integer Exact int16 range -32768..32767.
--- @brief Ros2Xarm_msgsSrvSetInt16ById_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetInt16ById_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetInt16ById_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetInt16ById_Request.
--- @brief Ros2Xarm_msgsSrvSetInt16ById_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetInt16ById_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetInt16ById_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt16ById_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetInt16ById_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetInt16ById_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetInt16ById_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvSetInt16ById_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetInt16ById_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetInt16ById_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetInt16ById_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetInt16ById_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetInt16ById_Request
local Ros2Xarm_msgsSrvSetInt16ById_Request = classes["Ros2Xarm_msgsSrvSetInt16ById_Request"]

--- @class Ros2Xarm_msgsSrvSetInt16ById_Response
--- @brief Complete ROS2 xarm_msgs/srv/SetInt16ById_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt16ById_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetInt16ById_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetInt16ById_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetInt16ById_Response.
--- @brief Ros2Xarm_msgsSrvSetInt16ById_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetInt16ById_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetInt16ById_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt16ById_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetInt16ById_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetInt16ById_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetInt16ById_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvSetInt16ById_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetInt16ById_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetInt16ById_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetInt16ById_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetInt16ById_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetInt16ById_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetInt16ById_Response
local Ros2Xarm_msgsSrvSetInt16ById_Response = classes["Ros2Xarm_msgsSrvSetInt16ById_Response"]

--- @class Ros2Xarm_msgsSrvSetInt16List_Request
--- @brief Complete ROS2 xarm_msgs/srv/SetInt16List_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field datas integer[] Exact int16 range -32768..32767. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvSetInt16List_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16List_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetInt16List_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetInt16List_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16List_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetInt16List_Request.
--- @brief Ros2Xarm_msgsSrvSetInt16List_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16List_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetInt16List_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16List_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetInt16List_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16List_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt16List_Request.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16List_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetInt16List_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetInt16List_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetInt16List_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetInt16List_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvSetInt16List_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetInt16List_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros2Xarm_msgsSrvSetInt16List_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetInt16List_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetInt16List_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetInt16List_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetInt16List_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetInt16List_Request
local Ros2Xarm_msgsSrvSetInt16List_Request = classes["Ros2Xarm_msgsSrvSetInt16List_Request"]

--- @class Ros2Xarm_msgsSrvSetInt16List_Response
--- @brief Complete ROS2 xarm_msgs/srv/SetInt16List_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt16List_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16List_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetInt16List_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetInt16List_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16List_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetInt16List_Response.
--- @brief Ros2Xarm_msgsSrvSetInt16List_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16List_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetInt16List_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16List_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetInt16List_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16List_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt16List_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt16List_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetInt16List_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetInt16List_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetInt16List_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetInt16List_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvSetInt16List_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetInt16List_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvSetInt16List_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetInt16List_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetInt16List_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetInt16List_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetInt16List_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetInt16List_Response
local Ros2Xarm_msgsSrvSetInt16List_Response = classes["Ros2Xarm_msgsSrvSetInt16List_Response"]

--- @class Ros2Xarm_msgsSrvSetInt32_Request
--- @brief Complete ROS2 xarm_msgs/srv/SetInt32_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field data integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Xarm_msgsSrvSetInt32_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetInt32_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetInt32_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetInt32_Request.
--- @brief Ros2Xarm_msgsSrvSetInt32_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetInt32_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetInt32_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt32_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetInt32_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetInt32_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetInt32_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetInt32_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvSetInt32_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetInt32_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Xarm_msgsSrvSetInt32_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetInt32_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetInt32_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetInt32_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetInt32_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetInt32_Request
local Ros2Xarm_msgsSrvSetInt32_Request = classes["Ros2Xarm_msgsSrvSetInt32_Request"]

--- @class Ros2Xarm_msgsSrvSetInt32_Response
--- @brief Complete ROS2 xarm_msgs/srv/SetInt32_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt32_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetInt32_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetInt32_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetInt32_Response.
--- @brief Ros2Xarm_msgsSrvSetInt32_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetInt32_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetInt32_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt32_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetInt32_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetInt32_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetInt32_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetInt32_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvSetInt32_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetInt32_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvSetInt32_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetInt32_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetInt32_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetInt32_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetInt32_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetInt32_Response
local Ros2Xarm_msgsSrvSetInt32_Response = classes["Ros2Xarm_msgsSrvSetInt32_Response"]

--- @class Ros2Xarm_msgsSrvSetInt32ByType_Request
--- @brief Complete ROS2 xarm_msgs/srv/SetInt32ByType_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field type integer Exact int16 range -32768..32767.
--- @field data integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Xarm_msgsSrvSetInt32ByType_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetInt32ByType_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetInt32ByType_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetInt32ByType_Request.
--- @brief Ros2Xarm_msgsSrvSetInt32ByType_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetInt32ByType_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetInt32ByType_Request.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt32ByType_Request.MAX_WIRE_BYTES: Inclusive complete maximum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 6 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetInt32ByType_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetInt32ByType_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetInt32ByType_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvSetInt32ByType_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetInt32ByType_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..6 bytes.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetInt32ByType_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetInt32ByType_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetInt32ByType_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetInt32ByType_Request
local Ros2Xarm_msgsSrvSetInt32ByType_Request = classes["Ros2Xarm_msgsSrvSetInt32ByType_Request"]

--- @class Ros2Xarm_msgsSrvSetInt32ByType_Response
--- @brief Complete ROS2 xarm_msgs/srv/SetInt32ByType_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt32ByType_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetInt32ByType_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetInt32ByType_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetInt32ByType_Response.
--- @brief Ros2Xarm_msgsSrvSetInt32ByType_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetInt32ByType_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetInt32ByType_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvSetInt32ByType_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetInt32ByType_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetInt32ByType_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetInt32ByType_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvSetInt32ByType_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetInt32ByType_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetInt32ByType_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetInt32ByType_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetInt32ByType_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetInt32ByType_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetInt32ByType_Response
local Ros2Xarm_msgsSrvSetInt32ByType_Response = classes["Ros2Xarm_msgsSrvSetInt32ByType_Response"]

--- @class Ros2Xarm_msgsSrvSetModbusTimeout_Request
--- @brief Complete ROS2 xarm_msgs/srv/SetModbusTimeout_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field timeout integer Exact int32 range -2147483648..2147483647.
--- @field is_transparent_transmission boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @brief Ros2Xarm_msgsSrvSetModbusTimeout_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetModbusTimeout_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetModbusTimeout_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetModbusTimeout_Request.
--- @brief Ros2Xarm_msgsSrvSetModbusTimeout_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetModbusTimeout_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetModbusTimeout_Request.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Xarm_msgsSrvSetModbusTimeout_Request.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetModbusTimeout_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetModbusTimeout_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetModbusTimeout_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvSetModbusTimeout_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetModbusTimeout_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetModbusTimeout_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetModbusTimeout_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetModbusTimeout_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetModbusTimeout_Request
local Ros2Xarm_msgsSrvSetModbusTimeout_Request = classes["Ros2Xarm_msgsSrvSetModbusTimeout_Request"]

--- @class Ros2Xarm_msgsSrvSetModbusTimeout_Response
--- @brief Complete ROS2 xarm_msgs/srv/SetModbusTimeout_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvSetModbusTimeout_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetModbusTimeout_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetModbusTimeout_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetModbusTimeout_Response.
--- @brief Ros2Xarm_msgsSrvSetModbusTimeout_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetModbusTimeout_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetModbusTimeout_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvSetModbusTimeout_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetModbusTimeout_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetModbusTimeout_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetModbusTimeout_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvSetModbusTimeout_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetModbusTimeout_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetModbusTimeout_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetModbusTimeout_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetModbusTimeout_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetModbusTimeout_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetModbusTimeout_Response
local Ros2Xarm_msgsSrvSetModbusTimeout_Response = classes["Ros2Xarm_msgsSrvSetModbusTimeout_Response"]

--- @class Ros2Xarm_msgsSrvSetTcpLoad_Request
--- @brief Complete ROS2 xarm_msgs/srv/SetTcpLoad_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field weight number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field center_of_gravity number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Xarm_msgsSrvSetTcpLoad_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetTcpLoad_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetTcpLoad_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetTcpLoad_Request.
--- @brief Ros2Xarm_msgsSrvSetTcpLoad_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetTcpLoad_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetTcpLoad_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Xarm_msgsSrvSetTcpLoad_Request.MAX_WIRE_BYTES: Inclusive complete maximum 136 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 136 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetTcpLoad_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetTcpLoad_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetTcpLoad_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvSetTcpLoad_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetTcpLoad_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..136 bytes.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetTcpLoad_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetTcpLoad_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetTcpLoad_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetTcpLoad_Request
local Ros2Xarm_msgsSrvSetTcpLoad_Request = classes["Ros2Xarm_msgsSrvSetTcpLoad_Request"]

--- @class Ros2Xarm_msgsSrvSetTcpLoad_Response
--- @brief Complete ROS2 xarm_msgs/srv/SetTcpLoad_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int32 range -2147483648..2147483647.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvSetTcpLoad_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvSetTcpLoad_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/SetTcpLoad_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/SetTcpLoad_Response.
--- @brief Ros2Xarm_msgsSrvSetTcpLoad_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvSetTcpLoad_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvSetTcpLoad_Response.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Xarm_msgsSrvSetTcpLoad_Response.MAX_WIRE_BYTES: Inclusive complete maximum 264 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 264 bytes.
--- @brief Construct Ros2Xarm_msgsSrvSetTcpLoad_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvSetTcpLoad_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvSetTcpLoad_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvSetTcpLoad_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvSetTcpLoad_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..264 bytes.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvSetTcpLoad_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvSetTcpLoad_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvSetTcpLoad_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvSetTcpLoad_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvSetTcpLoad_Response
local Ros2Xarm_msgsSrvSetTcpLoad_Response = classes["Ros2Xarm_msgsSrvSetTcpLoad_Response"]

--- @class Ros2Xarm_msgsSrvTrajCtrl_Request
--- @brief Complete ROS2 xarm_msgs/srv/TrajCtrl_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field filename string Strict UTF-8 without NUL; length0..256 bytes.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 10.0.
--- @brief Ros2Xarm_msgsSrvTrajCtrl_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvTrajCtrl_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/TrajCtrl_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/TrajCtrl_Request.
--- @brief Ros2Xarm_msgsSrvTrajCtrl_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvTrajCtrl_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvTrajCtrl_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Xarm_msgsSrvTrajCtrl_Request.MAX_WIRE_BYTES: Inclusive complete maximum 264 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 264 bytes.
--- @brief Construct Ros2Xarm_msgsSrvTrajCtrl_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvTrajCtrl_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvTrajCtrl_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvTrajCtrl_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvTrajCtrl_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..264 bytes.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvTrajCtrl_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvTrajCtrl_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvTrajCtrl_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvTrajCtrl_Request
local Ros2Xarm_msgsSrvTrajCtrl_Request = classes["Ros2Xarm_msgsSrvTrajCtrl_Request"]

--- @class Ros2Xarm_msgsSrvTrajCtrl_Response
--- @brief Complete ROS2 xarm_msgs/srv/TrajCtrl_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvTrajCtrl_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvTrajCtrl_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/TrajCtrl_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/TrajCtrl_Response.
--- @brief Ros2Xarm_msgsSrvTrajCtrl_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvTrajCtrl_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvTrajCtrl_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvTrajCtrl_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvTrajCtrl_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvTrajCtrl_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvTrajCtrl_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvTrajCtrl_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvTrajCtrl_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvTrajCtrl_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvTrajCtrl_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvTrajCtrl_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvTrajCtrl_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvTrajCtrl_Response
local Ros2Xarm_msgsSrvTrajCtrl_Response = classes["Ros2Xarm_msgsSrvTrajCtrl_Response"]

--- @class Ros2Xarm_msgsSrvTrajPlay_Request
--- @brief Complete ROS2 xarm_msgs/srv/TrajPlay_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field filename string Strict UTF-8 without NUL; length0..256 bytes.
--- @field times integer Exact int16 range -32768..32767. Declared native scalar default: 1.
--- @field double_speed integer Exact int16 range -32768..32767. Declared native scalar default: 1.
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @brief Ros2Xarm_msgsSrvTrajPlay_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajPlay_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvTrajPlay_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/TrajPlay_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajPlay_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/TrajPlay_Request.
--- @brief Ros2Xarm_msgsSrvTrajPlay_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajPlay_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvTrajPlay_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajPlay_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvTrajPlay_Request.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajPlay_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Xarm_msgsSrvTrajPlay_Request.MAX_WIRE_BYTES: Inclusive complete maximum 265 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajPlay_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 265 bytes.
--- @brief Construct Ros2Xarm_msgsSrvTrajPlay_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvTrajPlay_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvTrajPlay_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvTrajPlay_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvTrajPlay_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvTrajPlay_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..265 bytes.
--- @see Ros2Xarm_msgsSrvTrajPlay_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvTrajPlay_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvTrajPlay_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvTrajPlay_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvTrajPlay_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvTrajPlay_Request
local Ros2Xarm_msgsSrvTrajPlay_Request = classes["Ros2Xarm_msgsSrvTrajPlay_Request"]

--- @class Ros2Xarm_msgsSrvTrajPlay_Response
--- @brief Complete ROS2 xarm_msgs/srv/TrajPlay_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvTrajPlay_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajPlay_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvTrajPlay_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/TrajPlay_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajPlay_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/TrajPlay_Response.
--- @brief Ros2Xarm_msgsSrvTrajPlay_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajPlay_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvTrajPlay_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajPlay_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvTrajPlay_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajPlay_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvTrajPlay_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvTrajPlay_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvTrajPlay_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvTrajPlay_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvTrajPlay_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvTrajPlay_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvTrajPlay_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvTrajPlay_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvTrajPlay_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvTrajPlay_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvTrajPlay_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvTrajPlay_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvTrajPlay_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvTrajPlay_Response
local Ros2Xarm_msgsSrvTrajPlay_Response = classes["Ros2Xarm_msgsSrvTrajPlay_Response"]

--- @class Ros2Xarm_msgsSrvVacuumGripperCtrl_Request
--- @brief Complete ROS2 xarm_msgs/srv/VacuumGripperCtrl_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field on boolean Exact boolean; encoded as one byte0/1.
--- @field wait boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 3.0.
--- @field delay_sec number Finite IEEE float32. Rounds to binary32 and rejects overflow. Declared native scalar default: 0.0.
--- @field sync boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: True.
--- @field hardware_version integer Exact int16 range -32768..32767. Declared native scalar default: 0.
--- @brief Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/VacuumGripperCtrl_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/VacuumGripperCtrl_Request.
--- @brief Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.MAX_WIRE_BYTES: Inclusive complete maximum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 13 bytes.
--- @brief Construct Ros2Xarm_msgsSrvVacuumGripperCtrl_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvVacuumGripperCtrl_Request value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvVacuumGripperCtrl_Request
--- @brief Encode a complete Ros2Xarm_msgsSrvVacuumGripperCtrl_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvVacuumGripperCtrl_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..13 bytes.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvVacuumGripperCtrl_Request): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvVacuumGripperCtrl_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvVacuumGripperCtrl_Request value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Request.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvVacuumGripperCtrl_Request
local Ros2Xarm_msgsSrvVacuumGripperCtrl_Request = classes["Ros2Xarm_msgsSrvVacuumGripperCtrl_Request"]

--- @class Ros2Xarm_msgsSrvVacuumGripperCtrl_Response
--- @brief Complete ROS2 xarm_msgs/srv/VacuumGripperCtrl_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/srv/VacuumGripperCtrl_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/srv/VacuumGripperCtrl_Response.
--- @brief Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros2Xarm_msgsSrvVacuumGripperCtrl_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Xarm_msgsSrvVacuumGripperCtrl_Response value New mutable complete value; no ROS resource.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.encode
--- @field new fun(values?: table): Ros2Xarm_msgsSrvVacuumGripperCtrl_Response
--- @brief Encode a complete Ros2Xarm_msgsSrvVacuumGripperCtrl_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Xarm_msgsSrvVacuumGripperCtrl_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.decode
--- @field encode fun(value: Ros2Xarm_msgsSrvVacuumGripperCtrl_Response): string
--- @brief Decode exactly one complete Ros2Xarm_msgsSrvVacuumGripperCtrl_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Xarm_msgsSrvVacuumGripperCtrl_Response value New complete value; failures raise Lua errors.
--- @see Ros2Xarm_msgsSrvVacuumGripperCtrl_Response.encode
--- @field decode fun(bytes: string): Ros2Xarm_msgsSrvVacuumGripperCtrl_Response
local Ros2Xarm_msgsSrvVacuumGripperCtrl_Response = classes["Ros2Xarm_msgsSrvVacuumGripperCtrl_Response"]

return classes, by_name
