--- @file records.lua
--- @brief Preserve the complete original ufactory/ros1_master canonical value domain.
--- @details The selected domain contains 84 complete record/components and 196 original fields. Declared
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
        ["symbol"] = "Ros1Xarm_gripperMoveGoal",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_gripper/MoveGoal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "target_pulse",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "pulse_speed",
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
        ["symbol"] = "Ros1Xarm_gripperMoveResult",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_gripper/MoveResult",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c",
        ["minimum"] = 3,
        ["maximum"] = 3,
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
            {
                ["name"] = "err_code",
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
        ["symbol"] = "Ros1Xarm_gripperMoveFeedback",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_gripper/MoveFeedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "current_pulse",
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
        ["symbol"] = "Ros1Time",
        ["ros_version"] = 1,
        ["native_type"] = "time",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "normalized-time",
        ["fields"] = {
            {
                ["name"] = "sec",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "nsec",
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
        ["symbol"] = "Ros1Std_msgsHeader",
        ["ros_version"] = 1,
        ["native_type"] = "std_msgs/Header",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7",
        ["minimum"] = 16,
        ["maximum"] = 272,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "seq",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "stamp",
                ["type"] = "Ros1Time",
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
        ["symbol"] = "Ros1Xarm_msgsCIOState",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/CIOState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057",
        ["minimum"] = 76,
        ["maximum"] = 332,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros1Std_msgsHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
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
        ["codec_identity"] = "UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb",
        ["minimum"] = 82,
        ["maximum"] = 366,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros1Std_msgsHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
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
        ["symbol"] = "Ros1Xarm_msgsVeloMoveMsg",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/VeloMoveMsg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032",
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
            },
            {
                ["name"] = "is_tool_coord",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "duration",
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
        ["symbol"] = "Ros1Xarm_msgsCallRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/CallRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsCallResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/CallResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0",
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
        ["symbol"] = "Ros1Xarm_msgsConfigToolModbusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/ConfigToolModbusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "baud_rate",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "timeout_ms",
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
        ["symbol"] = "Ros1Xarm_msgsConfigToolModbusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/ConfigToolModbusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9",
        ["minimum"] = 6,
        ["maximum"] = 262,
        ["semantics"] = "",
        ["fields"] = {
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
                ["name"] = "ret",
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
        ["symbol"] = "Ros1Xarm_msgsFtCaliLoadRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/FtCaliLoadRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167",
        ["minimum"] = 5,
        ["maximum"] = 133,
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
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsFtCaliLoadResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/FtCaliLoadResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7",
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
        ["symbol"] = "Ros1Xarm_msgsFtIdenLoadRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/FtIdenLoadRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsFtIdenLoadResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/FtIdenLoadResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8",
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
        ["symbol"] = "Ros1Xarm_msgsGetControllerDigitalIORequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetControllerDigitalIORequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c",
        ["minimum"] = 2,
        ["maximum"] = 2,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsGetControllerDigitalIOResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetControllerDigitalIOResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161",
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
                ["name"] = "value",
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
        ["symbol"] = "Ros1Xarm_msgsGetErrRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetErrRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsGetErrResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetErrResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de",
        ["minimum"] = 8,
        ["maximum"] = 264,
        ["semantics"] = "",
        ["fields"] = {
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
        ["symbol"] = "Ros1Xarm_msgsGetFloat32ListRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetFloat32ListRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsGetFloat32ListResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetFloat32ListResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2",
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
        ["symbol"] = "Ros1Xarm_msgsGetInt32Request",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetInt32Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsGetInt32Response",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetInt32Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d",
        ["minimum"] = 10,
        ["maximum"] = 266,
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
        ["symbol"] = "Ros1Xarm_msgsGetSetModbusDataRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetSetModbusDataRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7",
        ["minimum"] = 9,
        ["maximum"] = 4105,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "send_data",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 4096,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "respond_len",
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
            },
            {
                ["name"] = "is_transparent_transmission",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "use_503_port",
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
        ["symbol"] = "Ros1Xarm_msgsGetSetModbusDataResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GetSetModbusDataResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead",
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
                ["name"] = "respond_data",
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
        ["symbol"] = "Ros1Xarm_msgsGripperConfigRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GripperConfigRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pulse_vel",
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
        ["symbol"] = "Ros1Xarm_msgsGripperConfigResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GripperConfigResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59",
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
        ["symbol"] = "Ros1Xarm_msgsGripperMoveRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GripperMoveRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pulse_pos",
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
        ["symbol"] = "Ros1Xarm_msgsGripperMoveResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GripperMoveResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad",
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
        ["symbol"] = "Ros1Xarm_msgsGripperStateRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GripperStateRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsGripperStateResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/GripperStateResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6",
        ["minimum"] = 12,
        ["maximum"] = 268,
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
                ["name"] = "curr_pos",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "err_code",
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
        ["symbol"] = "Ros1Xarm_msgsMoveAxisAngleRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/MoveAxisAngleRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30",
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
                ["name"] = "coord",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "relative",
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
        ["symbol"] = "Ros1Xarm_msgsMoveAxisAngleResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/MoveAxisAngleResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300",
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
        ["symbol"] = "Ros1Xarm_msgsMoveVeloRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/MoveVeloRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204",
        ["minimum"] = 8,
        ["maximum"] = 136,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "velocities",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "jnt_sync",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "coord",
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
        ["symbol"] = "Ros1Xarm_msgsMoveVeloResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/MoveVeloResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce",
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
        ["symbol"] = "Ros1Xarm_msgsMoveVelocityRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/MoveVelocityRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef",
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
            },
            {
                ["name"] = "is_tool_coord",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "duration",
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
        ["symbol"] = "Ros1Xarm_msgsMoveVelocityResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/MoveVelocityResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc",
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
        ["symbol"] = "Ros1Xarm_msgsPlayTrajRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/PlayTrajRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5",
        ["minimum"] = 8,
        ["maximum"] = 264,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "traj_file",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "repeat_times",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "speed_factor",
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
        ["symbol"] = "Ros1Xarm_msgsPlayTrajResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/PlayTrajResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a",
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
        ["symbol"] = "Ros1Xarm_msgsSetControllerAnalogIORequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetControllerAnalogIORequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66",
        ["minimum"] = 6,
        ["maximum"] = 6,
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
            {
                ["name"] = "analog_value",
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
        ["symbol"] = "Ros1Xarm_msgsSetControllerAnalogIOResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetControllerAnalogIOResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec",
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
        ["symbol"] = "Ros1Xarm_msgsSetFloat32Request",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetFloat32Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033",
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
        ["symbol"] = "Ros1Xarm_msgsSetFloat32Response",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetFloat32Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712",
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
        ["symbol"] = "Ros1Xarm_msgsSetLoadRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetLoadRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "mass",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "xc",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "yc",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "zc",
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
        ["symbol"] = "Ros1Xarm_msgsSetLoadResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetLoadResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e",
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
        ["symbol"] = "Ros1Xarm_msgsSetModbusTimeoutRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetModbusTimeoutRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "timeout_ms",
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
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsSetModbusTimeoutResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetModbusTimeoutResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8",
        ["minimum"] = 6,
        ["maximum"] = 262,
        ["semantics"] = "",
        ["fields"] = {
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
                ["name"] = "ret",
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
        ["symbol"] = "Ros1Xarm_msgsSetMultipleIntsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetMultipleIntsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "data_int",
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
        ["symbol"] = "Ros1Xarm_msgsSetMultipleIntsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetMultipleIntsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32",
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
        ["symbol"] = "Ros1Xarm_msgsSetStringRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetStringRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f",
        ["minimum"] = 8,
        ["maximum"] = 264,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "str_data",
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
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Xarm_msgsSetStringResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetStringResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade",
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
        ["symbol"] = "Ros1Xarm_msgsSetToolModbusRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetToolModbusRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6",
        ["minimum"] = 6,
        ["maximum"] = 4102,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "send_data",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 4096,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "respond_len",
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
        ["symbol"] = "Ros1Xarm_msgsSetToolModbusResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/SetToolModbusResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76",
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
                ["name"] = "respond_data",
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
        ["symbol"] = "Ros1Xarm_msgsVacuumGripperCtrlRequest",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/VacuumGripperCtrlRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff",
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
            },
            {
                ["name"] = "timeout",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "delay_sec",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sync",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "hardware_version",
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
        ["symbol"] = "Ros1Xarm_msgsVacuumGripperCtrlResponse",
        ["ros_version"] = 1,
        ["native_type"] = "xarm_msgs/VacuumGripperCtrlResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540",
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

--- @class Ros1Xarm_gripperMoveGoal
--- @brief Complete ROS1 xarm_gripper/MoveGoal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field target_pulse number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field pulse_speed number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_gripperMoveGoal.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveGoal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_gripperMoveGoal.NATIVE_TYPE: Exact normalized native type name xarm_gripper/MoveGoal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveGoal.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_gripper/MoveGoal.
--- @brief Ros1Xarm_gripperMoveGoal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveGoal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_gripperMoveGoal.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveGoal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_gripperMoveGoal.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveGoal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Xarm_gripperMoveGoal.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveGoal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros1Xarm_gripperMoveGoal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_gripperMoveGoal value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_gripperMoveGoal.encode
--- @field new fun(values?: table): Ros1Xarm_gripperMoveGoal
--- @brief Encode a complete Ros1Xarm_gripperMoveGoal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_gripperMoveGoal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros1Xarm_gripperMoveGoal.decode
--- @field encode fun(value: Ros1Xarm_gripperMoveGoal): string
--- @brief Decode exactly one complete Ros1Xarm_gripperMoveGoal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_gripperMoveGoal value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_gripperMoveGoal.encode
--- @field decode fun(bytes: string): Ros1Xarm_gripperMoveGoal
local Ros1Xarm_gripperMoveGoal = classes["Ros1Xarm_gripperMoveGoal"]

--- @class Ros1Xarm_gripperMoveResult
--- @brief Complete ROS1 xarm_gripper/MoveResult value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field err_code integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_gripperMoveResult.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveResult.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_gripperMoveResult.NATIVE_TYPE: Exact normalized native type name xarm_gripper/MoveResult.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveResult.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_gripper/MoveResult.
--- @brief Ros1Xarm_gripperMoveResult.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveResult.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_gripperMoveResult.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveResult.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_gripperMoveResult.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveResult.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Xarm_gripperMoveResult.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveResult.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Xarm_gripperMoveResult with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_gripperMoveResult value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_gripperMoveResult.encode
--- @field new fun(values?: table): Ros1Xarm_gripperMoveResult
--- @brief Encode a complete Ros1Xarm_gripperMoveResult value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_gripperMoveResult [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Xarm_gripperMoveResult.decode
--- @field encode fun(value: Ros1Xarm_gripperMoveResult): string
--- @brief Decode exactly one complete Ros1Xarm_gripperMoveResult canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_gripperMoveResult value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_gripperMoveResult.encode
--- @field decode fun(bytes: string): Ros1Xarm_gripperMoveResult
local Ros1Xarm_gripperMoveResult = classes["Ros1Xarm_gripperMoveResult"]

--- @class Ros1Xarm_gripperMoveFeedback
--- @brief Complete ROS1 xarm_gripper/MoveFeedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field current_pulse number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_gripperMoveFeedback.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveFeedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_gripperMoveFeedback.NATIVE_TYPE: Exact normalized native type name xarm_gripper/MoveFeedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveFeedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_gripper/MoveFeedback.
--- @brief Ros1Xarm_gripperMoveFeedback.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveFeedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_gripperMoveFeedback.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveFeedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_gripperMoveFeedback.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveFeedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Xarm_gripperMoveFeedback.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_gripperMoveFeedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Xarm_gripperMoveFeedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_gripperMoveFeedback value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_gripperMoveFeedback.encode
--- @field new fun(values?: table): Ros1Xarm_gripperMoveFeedback
--- @brief Encode a complete Ros1Xarm_gripperMoveFeedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_gripperMoveFeedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Xarm_gripperMoveFeedback.decode
--- @field encode fun(value: Ros1Xarm_gripperMoveFeedback): string
--- @brief Decode exactly one complete Ros1Xarm_gripperMoveFeedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_gripperMoveFeedback value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_gripperMoveFeedback.encode
--- @field decode fun(bytes: string): Ros1Xarm_gripperMoveFeedback
local Ros1Xarm_gripperMoveFeedback = classes["Ros1Xarm_gripperMoveFeedback"]

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

--- @class Ros1Time
--- @brief Complete ROS1 time value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field sec integer Exact uint32 range 0..4294967295. Whole seconds; signedness/range follow the native scalar above.
--- @field nsec integer Exact uint32 range 0..4294967295. Normalized fractional nanoseconds, inclusive0..999999999.
--- @brief Ros1Time.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Time.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Time.NATIVE_TYPE: Exact normalized native type name time.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Time.encode
--- @field NATIVE_TYPE string Exact normalized native type name time.
--- @brief Ros1Time.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Time.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Time.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Time.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Time.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Time.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Time.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Time.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros1Time with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Time value New mutable complete value; no ROS resource.
--- @see Ros1Time.encode
--- @field new fun(values?: table): Ros1Time
--- @brief Encode a complete Ros1Time value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Time [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros1Time.decode
--- @field encode fun(value: Ros1Time): string
--- @brief Decode exactly one complete Ros1Time canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Time value New complete value; failures raise Lua errors.
--- @see Ros1Time.encode
--- @field decode fun(bytes: string): Ros1Time
local Ros1Time = classes["Ros1Time"]

--- @class Ros1Std_msgsHeader
--- @brief Complete ROS1 std_msgs/Header value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field seq integer Exact uint32 range 0..4294967295.
--- @field stamp table Complete nested time value; no native fields are projected away.
--- @field frame_id string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Std_msgsHeader.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Std_msgsHeader.NATIVE_TYPE: Exact normalized native type name std_msgs/Header.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field NATIVE_TYPE string Exact normalized native type name std_msgs/Header.
--- @brief Ros1Std_msgsHeader.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Std_msgsHeader.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Std_msgsHeader.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Std_msgsHeader.MAX_WIRE_BYTES: Inclusive complete maximum 272 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 272 bytes.
--- @brief Construct Ros1Std_msgsHeader with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Std_msgsHeader value New mutable complete value; no ROS resource.
--- @see Ros1Std_msgsHeader.encode
--- @field new fun(values?: table): Ros1Std_msgsHeader
--- @brief Encode a complete Ros1Std_msgsHeader value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Std_msgsHeader [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..272 bytes.
--- @see Ros1Std_msgsHeader.decode
--- @field encode fun(value: Ros1Std_msgsHeader): string
--- @brief Decode exactly one complete Ros1Std_msgsHeader canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Std_msgsHeader value New complete value; failures raise Lua errors.
--- @see Ros1Std_msgsHeader.encode
--- @field decode fun(bytes: string): Ros1Std_msgsHeader
local Ros1Std_msgsHeader = classes["Ros1Std_msgsHeader"]

--- @class Ros1Xarm_msgsCIOState
--- @brief Complete ROS1 xarm_msgs/CIOState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/Header value; no native fields are projected away.
--- @field state integer Exact int16 range -32768..32767.
--- @field code integer Exact int16 range -32768..32767.
--- @field input_digitals integer[] Exact uint16 range 0..65535. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @field output_digitals integer[] Exact uint16 range 0..65535. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @field input_analogs number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @field output_analogs number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @field input_conf integer[] Exact uint8 range 0..255. Exactly 16 contiguous elements; holes and extra array keys are rejected.
--- @field output_conf integer[] Exact uint8 range 0..255. Exactly 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Xarm_msgsCIOState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCIOState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsCIOState.NATIVE_TYPE: Exact normalized native type name xarm_msgs/CIOState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCIOState.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/CIOState.
--- @brief Ros1Xarm_msgsCIOState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCIOState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsCIOState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCIOState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsCIOState.MIN_WIRE_BYTES: Inclusive complete minimum 76 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCIOState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 76 bytes.
--- @brief Ros1Xarm_msgsCIOState.MAX_WIRE_BYTES: Inclusive complete maximum 332 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCIOState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 332 bytes.
--- @brief Construct Ros1Xarm_msgsCIOState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsCIOState value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsCIOState.encode
--- @field new fun(values?: table): Ros1Xarm_msgsCIOState
--- @brief Encode a complete Ros1Xarm_msgsCIOState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsCIOState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 76..332 bytes.
--- @see Ros1Xarm_msgsCIOState.decode
--- @field encode fun(value: Ros1Xarm_msgsCIOState): string
--- @brief Decode exactly one complete Ros1Xarm_msgsCIOState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsCIOState value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsCIOState.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsCIOState
local Ros1Xarm_msgsCIOState = classes["Ros1Xarm_msgsCIOState"]

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
--- @field header table Complete nested std_msgs/Header value; no native fields are projected away.
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
--- @brief Ros1Xarm_msgsRobotMsg.MIN_WIRE_BYTES: Inclusive complete minimum 82 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsRobotMsg.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 82 bytes.
--- @brief Ros1Xarm_msgsRobotMsg.MAX_WIRE_BYTES: Inclusive complete maximum 366 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsRobotMsg.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 366 bytes.
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
--- @return string bytes New immutable string, 82..366 bytes.
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

--- @class Ros1Xarm_msgsVeloMoveMsg
--- @brief Complete ROS1 xarm_msgs/VeloMoveMsg value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speeds number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field is_sync boolean Exact boolean; encoded as one byte0/1.
--- @field is_tool_coord boolean Exact boolean; encoded as one byte0/1.
--- @field duration number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_msgsVeloMoveMsg.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVeloMoveMsg.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsVeloMoveMsg.NATIVE_TYPE: Exact normalized native type name xarm_msgs/VeloMoveMsg.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVeloMoveMsg.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/VeloMoveMsg.
--- @brief Ros1Xarm_msgsVeloMoveMsg.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVeloMoveMsg.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsVeloMoveMsg.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVeloMoveMsg.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsVeloMoveMsg.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVeloMoveMsg.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Xarm_msgsVeloMoveMsg.MAX_WIRE_BYTES: Inclusive complete maximum 138 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVeloMoveMsg.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 138 bytes.
--- @brief Construct Ros1Xarm_msgsVeloMoveMsg with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsVeloMoveMsg value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsVeloMoveMsg.encode
--- @field new fun(values?: table): Ros1Xarm_msgsVeloMoveMsg
--- @brief Encode a complete Ros1Xarm_msgsVeloMoveMsg value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsVeloMoveMsg [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..138 bytes.
--- @see Ros1Xarm_msgsVeloMoveMsg.decode
--- @field encode fun(value: Ros1Xarm_msgsVeloMoveMsg): string
--- @brief Decode exactly one complete Ros1Xarm_msgsVeloMoveMsg canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsVeloMoveMsg value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsVeloMoveMsg.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsVeloMoveMsg
local Ros1Xarm_msgsVeloMoveMsg = classes["Ros1Xarm_msgsVeloMoveMsg"]

--- @class Ros1Xarm_msgsCallRequest
--- @brief Complete ROS1 xarm_msgs/CallRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Xarm_msgsCallRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCallRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsCallRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/CallRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCallRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/CallRequest.
--- @brief Ros1Xarm_msgsCallRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCallRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsCallRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCallRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsCallRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCallRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Xarm_msgsCallRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCallRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Xarm_msgsCallRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsCallRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsCallRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsCallRequest
--- @brief Encode a complete Ros1Xarm_msgsCallRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsCallRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Xarm_msgsCallRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsCallRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsCallRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsCallRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsCallRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsCallRequest
local Ros1Xarm_msgsCallRequest = classes["Ros1Xarm_msgsCallRequest"]

--- @class Ros1Xarm_msgsCallResponse
--- @brief Complete ROS1 xarm_msgs/CallResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsCallResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCallResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsCallResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/CallResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCallResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/CallResponse.
--- @brief Ros1Xarm_msgsCallResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCallResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsCallResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCallResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsCallResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCallResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsCallResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsCallResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsCallResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsCallResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsCallResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsCallResponse
--- @brief Encode a complete Ros1Xarm_msgsCallResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsCallResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsCallResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsCallResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsCallResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsCallResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsCallResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsCallResponse
local Ros1Xarm_msgsCallResponse = classes["Ros1Xarm_msgsCallResponse"]

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

--- @class Ros1Xarm_msgsConfigToolModbusRequest
--- @brief Complete ROS1 xarm_msgs/ConfigToolModbusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field baud_rate integer Exact int32 range -2147483648..2147483647.
--- @field timeout_ms integer Exact int32 range -2147483648..2147483647.
--- @brief Ros1Xarm_msgsConfigToolModbusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsConfigToolModbusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsConfigToolModbusRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/ConfigToolModbusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsConfigToolModbusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/ConfigToolModbusRequest.
--- @brief Ros1Xarm_msgsConfigToolModbusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsConfigToolModbusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsConfigToolModbusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsConfigToolModbusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsConfigToolModbusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsConfigToolModbusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Xarm_msgsConfigToolModbusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsConfigToolModbusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros1Xarm_msgsConfigToolModbusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsConfigToolModbusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsConfigToolModbusRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsConfigToolModbusRequest
--- @brief Encode a complete Ros1Xarm_msgsConfigToolModbusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsConfigToolModbusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros1Xarm_msgsConfigToolModbusRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsConfigToolModbusRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsConfigToolModbusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsConfigToolModbusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsConfigToolModbusRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsConfigToolModbusRequest
local Ros1Xarm_msgsConfigToolModbusRequest = classes["Ros1Xarm_msgsConfigToolModbusRequest"]

--- @class Ros1Xarm_msgsConfigToolModbusResponse
--- @brief Complete ROS1 xarm_msgs/ConfigToolModbusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ret integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsConfigToolModbusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsConfigToolModbusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsConfigToolModbusResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/ConfigToolModbusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsConfigToolModbusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/ConfigToolModbusResponse.
--- @brief Ros1Xarm_msgsConfigToolModbusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsConfigToolModbusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsConfigToolModbusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsConfigToolModbusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsConfigToolModbusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsConfigToolModbusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsConfigToolModbusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsConfigToolModbusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsConfigToolModbusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsConfigToolModbusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsConfigToolModbusResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsConfigToolModbusResponse
--- @brief Encode a complete Ros1Xarm_msgsConfigToolModbusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsConfigToolModbusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsConfigToolModbusResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsConfigToolModbusResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsConfigToolModbusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsConfigToolModbusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsConfigToolModbusResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsConfigToolModbusResponse
local Ros1Xarm_msgsConfigToolModbusResponse = classes["Ros1Xarm_msgsConfigToolModbusResponse"]

--- @class Ros1Xarm_msgsFtCaliLoadRequest
--- @brief Complete ROS1 xarm_msgs/FtCaliLoadRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field datas number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field association_setting_tcp_load boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Xarm_msgsFtCaliLoadRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtCaliLoadRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsFtCaliLoadRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/FtCaliLoadRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtCaliLoadRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/FtCaliLoadRequest.
--- @brief Ros1Xarm_msgsFtCaliLoadRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtCaliLoadRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsFtCaliLoadRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtCaliLoadRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsFtCaliLoadRequest.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtCaliLoadRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Xarm_msgsFtCaliLoadRequest.MAX_WIRE_BYTES: Inclusive complete maximum 133 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtCaliLoadRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 133 bytes.
--- @brief Construct Ros1Xarm_msgsFtCaliLoadRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsFtCaliLoadRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsFtCaliLoadRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsFtCaliLoadRequest
--- @brief Encode a complete Ros1Xarm_msgsFtCaliLoadRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsFtCaliLoadRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..133 bytes.
--- @see Ros1Xarm_msgsFtCaliLoadRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsFtCaliLoadRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsFtCaliLoadRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsFtCaliLoadRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsFtCaliLoadRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsFtCaliLoadRequest
local Ros1Xarm_msgsFtCaliLoadRequest = classes["Ros1Xarm_msgsFtCaliLoadRequest"]

--- @class Ros1Xarm_msgsFtCaliLoadResponse
--- @brief Complete ROS1 xarm_msgs/FtCaliLoadResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsFtCaliLoadResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtCaliLoadResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsFtCaliLoadResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/FtCaliLoadResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtCaliLoadResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/FtCaliLoadResponse.
--- @brief Ros1Xarm_msgsFtCaliLoadResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtCaliLoadResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsFtCaliLoadResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtCaliLoadResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsFtCaliLoadResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtCaliLoadResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsFtCaliLoadResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtCaliLoadResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsFtCaliLoadResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsFtCaliLoadResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsFtCaliLoadResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsFtCaliLoadResponse
--- @brief Encode a complete Ros1Xarm_msgsFtCaliLoadResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsFtCaliLoadResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsFtCaliLoadResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsFtCaliLoadResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsFtCaliLoadResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsFtCaliLoadResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsFtCaliLoadResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsFtCaliLoadResponse
local Ros1Xarm_msgsFtCaliLoadResponse = classes["Ros1Xarm_msgsFtCaliLoadResponse"]

--- @class Ros1Xarm_msgsFtIdenLoadRequest
--- @brief Complete ROS1 xarm_msgs/FtIdenLoadRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Xarm_msgsFtIdenLoadRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtIdenLoadRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsFtIdenLoadRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/FtIdenLoadRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtIdenLoadRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/FtIdenLoadRequest.
--- @brief Ros1Xarm_msgsFtIdenLoadRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtIdenLoadRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsFtIdenLoadRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtIdenLoadRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsFtIdenLoadRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtIdenLoadRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Xarm_msgsFtIdenLoadRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtIdenLoadRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Xarm_msgsFtIdenLoadRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsFtIdenLoadRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsFtIdenLoadRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsFtIdenLoadRequest
--- @brief Encode a complete Ros1Xarm_msgsFtIdenLoadRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsFtIdenLoadRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Xarm_msgsFtIdenLoadRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsFtIdenLoadRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsFtIdenLoadRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsFtIdenLoadRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsFtIdenLoadRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsFtIdenLoadRequest
local Ros1Xarm_msgsFtIdenLoadRequest = classes["Ros1Xarm_msgsFtIdenLoadRequest"]

--- @class Ros1Xarm_msgsFtIdenLoadResponse
--- @brief Complete ROS1 xarm_msgs/FtIdenLoadResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field datas number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Xarm_msgsFtIdenLoadResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtIdenLoadResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsFtIdenLoadResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/FtIdenLoadResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtIdenLoadResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/FtIdenLoadResponse.
--- @brief Ros1Xarm_msgsFtIdenLoadResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtIdenLoadResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsFtIdenLoadResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtIdenLoadResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsFtIdenLoadResponse.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtIdenLoadResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Xarm_msgsFtIdenLoadResponse.MAX_WIRE_BYTES: Inclusive complete maximum 394 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsFtIdenLoadResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 394 bytes.
--- @brief Construct Ros1Xarm_msgsFtIdenLoadResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsFtIdenLoadResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsFtIdenLoadResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsFtIdenLoadResponse
--- @brief Encode a complete Ros1Xarm_msgsFtIdenLoadResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsFtIdenLoadResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..394 bytes.
--- @see Ros1Xarm_msgsFtIdenLoadResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsFtIdenLoadResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsFtIdenLoadResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsFtIdenLoadResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsFtIdenLoadResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsFtIdenLoadResponse
local Ros1Xarm_msgsFtIdenLoadResponse = classes["Ros1Xarm_msgsFtIdenLoadResponse"]

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

--- @class Ros1Xarm_msgsGetControllerDigitalIORequest
--- @brief Complete ROS1 xarm_msgs/GetControllerDigitalIORequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field io_num integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsGetControllerDigitalIORequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetControllerDigitalIORequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetControllerDigitalIORequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetControllerDigitalIORequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetControllerDigitalIORequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetControllerDigitalIORequest.
--- @brief Ros1Xarm_msgsGetControllerDigitalIORequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetControllerDigitalIORequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetControllerDigitalIORequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetControllerDigitalIORequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetControllerDigitalIORequest.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetControllerDigitalIORequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Xarm_msgsGetControllerDigitalIORequest.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetControllerDigitalIORequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Xarm_msgsGetControllerDigitalIORequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetControllerDigitalIORequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetControllerDigitalIORequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetControllerDigitalIORequest
--- @brief Encode a complete Ros1Xarm_msgsGetControllerDigitalIORequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetControllerDigitalIORequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Xarm_msgsGetControllerDigitalIORequest.decode
--- @field encode fun(value: Ros1Xarm_msgsGetControllerDigitalIORequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetControllerDigitalIORequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetControllerDigitalIORequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetControllerDigitalIORequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetControllerDigitalIORequest
local Ros1Xarm_msgsGetControllerDigitalIORequest = classes["Ros1Xarm_msgsGetControllerDigitalIORequest"]

--- @class Ros1Xarm_msgsGetControllerDigitalIOResponse
--- @brief Complete ROS1 xarm_msgs/GetControllerDigitalIOResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field value integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsGetControllerDigitalIOResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetControllerDigitalIOResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetControllerDigitalIOResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetControllerDigitalIOResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetControllerDigitalIOResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetControllerDigitalIOResponse.
--- @brief Ros1Xarm_msgsGetControllerDigitalIOResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetControllerDigitalIOResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetControllerDigitalIOResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetControllerDigitalIOResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetControllerDigitalIOResponse.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetControllerDigitalIOResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Xarm_msgsGetControllerDigitalIOResponse.MAX_WIRE_BYTES: Inclusive complete maximum 264 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetControllerDigitalIOResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 264 bytes.
--- @brief Construct Ros1Xarm_msgsGetControllerDigitalIOResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetControllerDigitalIOResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetControllerDigitalIOResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetControllerDigitalIOResponse
--- @brief Encode a complete Ros1Xarm_msgsGetControllerDigitalIOResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetControllerDigitalIOResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..264 bytes.
--- @see Ros1Xarm_msgsGetControllerDigitalIOResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsGetControllerDigitalIOResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetControllerDigitalIOResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetControllerDigitalIOResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetControllerDigitalIOResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetControllerDigitalIOResponse
local Ros1Xarm_msgsGetControllerDigitalIOResponse = classes["Ros1Xarm_msgsGetControllerDigitalIOResponse"]

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

--- @class Ros1Xarm_msgsGetErrRequest
--- @brief Complete ROS1 xarm_msgs/GetErrRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Xarm_msgsGetErrRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetErrRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetErrRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetErrRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetErrRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetErrRequest.
--- @brief Ros1Xarm_msgsGetErrRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetErrRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetErrRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetErrRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetErrRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetErrRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Xarm_msgsGetErrRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetErrRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Xarm_msgsGetErrRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetErrRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetErrRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetErrRequest
--- @brief Encode a complete Ros1Xarm_msgsGetErrRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetErrRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Xarm_msgsGetErrRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsGetErrRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetErrRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetErrRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetErrRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetErrRequest
local Ros1Xarm_msgsGetErrRequest = classes["Ros1Xarm_msgsGetErrRequest"]

--- @class Ros1Xarm_msgsGetErrResponse
--- @brief Complete ROS1 xarm_msgs/GetErrResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field err integer Exact int16 range -32768..32767.
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsGetErrResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetErrResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetErrResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetErrResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetErrResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetErrResponse.
--- @brief Ros1Xarm_msgsGetErrResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetErrResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetErrResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetErrResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetErrResponse.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetErrResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Xarm_msgsGetErrResponse.MAX_WIRE_BYTES: Inclusive complete maximum 264 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetErrResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 264 bytes.
--- @brief Construct Ros1Xarm_msgsGetErrResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetErrResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetErrResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetErrResponse
--- @brief Encode a complete Ros1Xarm_msgsGetErrResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetErrResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..264 bytes.
--- @see Ros1Xarm_msgsGetErrResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsGetErrResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetErrResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetErrResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetErrResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetErrResponse
local Ros1Xarm_msgsGetErrResponse = classes["Ros1Xarm_msgsGetErrResponse"]

--- @class Ros1Xarm_msgsGetFloat32ListRequest
--- @brief Complete ROS1 xarm_msgs/GetFloat32ListRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Xarm_msgsGetFloat32ListRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetFloat32ListRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetFloat32ListRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetFloat32ListRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetFloat32ListRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetFloat32ListRequest.
--- @brief Ros1Xarm_msgsGetFloat32ListRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetFloat32ListRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetFloat32ListRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetFloat32ListRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetFloat32ListRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetFloat32ListRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Xarm_msgsGetFloat32ListRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetFloat32ListRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Xarm_msgsGetFloat32ListRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetFloat32ListRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetFloat32ListRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetFloat32ListRequest
--- @brief Encode a complete Ros1Xarm_msgsGetFloat32ListRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetFloat32ListRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Xarm_msgsGetFloat32ListRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsGetFloat32ListRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetFloat32ListRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetFloat32ListRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetFloat32ListRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetFloat32ListRequest
local Ros1Xarm_msgsGetFloat32ListRequest = classes["Ros1Xarm_msgsGetFloat32ListRequest"]

--- @class Ros1Xarm_msgsGetFloat32ListResponse
--- @brief Complete ROS1 xarm_msgs/GetFloat32ListResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field datas number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Xarm_msgsGetFloat32ListResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetFloat32ListResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetFloat32ListResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetFloat32ListResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetFloat32ListResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetFloat32ListResponse.
--- @brief Ros1Xarm_msgsGetFloat32ListResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetFloat32ListResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetFloat32ListResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetFloat32ListResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetFloat32ListResponse.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetFloat32ListResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Xarm_msgsGetFloat32ListResponse.MAX_WIRE_BYTES: Inclusive complete maximum 394 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetFloat32ListResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 394 bytes.
--- @brief Construct Ros1Xarm_msgsGetFloat32ListResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetFloat32ListResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetFloat32ListResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetFloat32ListResponse
--- @brief Encode a complete Ros1Xarm_msgsGetFloat32ListResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetFloat32ListResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..394 bytes.
--- @see Ros1Xarm_msgsGetFloat32ListResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsGetFloat32ListResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetFloat32ListResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetFloat32ListResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetFloat32ListResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetFloat32ListResponse
local Ros1Xarm_msgsGetFloat32ListResponse = classes["Ros1Xarm_msgsGetFloat32ListResponse"]

--- @class Ros1Xarm_msgsGetInt32Request
--- @brief Complete ROS1 xarm_msgs/GetInt32Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Xarm_msgsGetInt32Request.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetInt32Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetInt32Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetInt32Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetInt32Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetInt32Request.
--- @brief Ros1Xarm_msgsGetInt32Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetInt32Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetInt32Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetInt32Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetInt32Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetInt32Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Xarm_msgsGetInt32Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetInt32Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Xarm_msgsGetInt32Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetInt32Request value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetInt32Request.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetInt32Request
--- @brief Encode a complete Ros1Xarm_msgsGetInt32Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetInt32Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Xarm_msgsGetInt32Request.decode
--- @field encode fun(value: Ros1Xarm_msgsGetInt32Request): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetInt32Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetInt32Request value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetInt32Request.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetInt32Request
local Ros1Xarm_msgsGetInt32Request = classes["Ros1Xarm_msgsGetInt32Request"]

--- @class Ros1Xarm_msgsGetInt32Response
--- @brief Complete ROS1 xarm_msgs/GetInt32Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field data integer Exact int32 range -2147483648..2147483647.
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsGetInt32Response.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetInt32Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetInt32Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetInt32Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetInt32Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetInt32Response.
--- @brief Ros1Xarm_msgsGetInt32Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetInt32Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetInt32Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetInt32Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetInt32Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetInt32Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Xarm_msgsGetInt32Response.MAX_WIRE_BYTES: Inclusive complete maximum 266 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetInt32Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 266 bytes.
--- @brief Construct Ros1Xarm_msgsGetInt32Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetInt32Response value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetInt32Response.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetInt32Response
--- @brief Encode a complete Ros1Xarm_msgsGetInt32Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetInt32Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..266 bytes.
--- @see Ros1Xarm_msgsGetInt32Response.decode
--- @field encode fun(value: Ros1Xarm_msgsGetInt32Response): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetInt32Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetInt32Response value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetInt32Response.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetInt32Response
local Ros1Xarm_msgsGetInt32Response = classes["Ros1Xarm_msgsGetInt32Response"]

--- @class Ros1Xarm_msgsGetSetModbusDataRequest
--- @brief Complete ROS1 xarm_msgs/GetSetModbusDataRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field send_data integer[] Exact uint8 range 0..255. At most 4096 contiguous elements; holes and extra array keys are rejected.
--- @field respond_len integer Exact int16 range -32768..32767.
--- @field host_id integer Exact uint8 range 0..255.
--- @field is_transparent_transmission boolean Exact boolean; encoded as one byte0/1.
--- @field use_503_port boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Xarm_msgsGetSetModbusDataRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetSetModbusDataRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetSetModbusDataRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetSetModbusDataRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetSetModbusDataRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetSetModbusDataRequest.
--- @brief Ros1Xarm_msgsGetSetModbusDataRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetSetModbusDataRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetSetModbusDataRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetSetModbusDataRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetSetModbusDataRequest.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetSetModbusDataRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros1Xarm_msgsGetSetModbusDataRequest.MAX_WIRE_BYTES: Inclusive complete maximum 4105 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetSetModbusDataRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4105 bytes.
--- @brief Construct Ros1Xarm_msgsGetSetModbusDataRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetSetModbusDataRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetSetModbusDataRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetSetModbusDataRequest
--- @brief Encode a complete Ros1Xarm_msgsGetSetModbusDataRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetSetModbusDataRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..4105 bytes.
--- @see Ros1Xarm_msgsGetSetModbusDataRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsGetSetModbusDataRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetSetModbusDataRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetSetModbusDataRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetSetModbusDataRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetSetModbusDataRequest
local Ros1Xarm_msgsGetSetModbusDataRequest = classes["Ros1Xarm_msgsGetSetModbusDataRequest"]

--- @class Ros1Xarm_msgsGetSetModbusDataResponse
--- @brief Complete ROS1 xarm_msgs/GetSetModbusDataResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field respond_data integer[] Exact uint8 range 0..255. At most 4096 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Xarm_msgsGetSetModbusDataResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetSetModbusDataResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGetSetModbusDataResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GetSetModbusDataResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetSetModbusDataResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GetSetModbusDataResponse.
--- @brief Ros1Xarm_msgsGetSetModbusDataResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetSetModbusDataResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGetSetModbusDataResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetSetModbusDataResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGetSetModbusDataResponse.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetSetModbusDataResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Xarm_msgsGetSetModbusDataResponse.MAX_WIRE_BYTES: Inclusive complete maximum 4362 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGetSetModbusDataResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4362 bytes.
--- @brief Construct Ros1Xarm_msgsGetSetModbusDataResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGetSetModbusDataResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGetSetModbusDataResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGetSetModbusDataResponse
--- @brief Encode a complete Ros1Xarm_msgsGetSetModbusDataResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGetSetModbusDataResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..4362 bytes.
--- @see Ros1Xarm_msgsGetSetModbusDataResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsGetSetModbusDataResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGetSetModbusDataResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGetSetModbusDataResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGetSetModbusDataResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGetSetModbusDataResponse
local Ros1Xarm_msgsGetSetModbusDataResponse = classes["Ros1Xarm_msgsGetSetModbusDataResponse"]

--- @class Ros1Xarm_msgsGripperConfigRequest
--- @brief Complete ROS1 xarm_msgs/GripperConfigRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pulse_vel number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_msgsGripperConfigRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperConfigRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGripperConfigRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GripperConfigRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperConfigRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GripperConfigRequest.
--- @brief Ros1Xarm_msgsGripperConfigRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperConfigRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGripperConfigRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperConfigRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGripperConfigRequest.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperConfigRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Xarm_msgsGripperConfigRequest.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperConfigRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Xarm_msgsGripperConfigRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGripperConfigRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGripperConfigRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGripperConfigRequest
--- @brief Encode a complete Ros1Xarm_msgsGripperConfigRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGripperConfigRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Xarm_msgsGripperConfigRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsGripperConfigRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGripperConfigRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGripperConfigRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGripperConfigRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGripperConfigRequest
local Ros1Xarm_msgsGripperConfigRequest = classes["Ros1Xarm_msgsGripperConfigRequest"]

--- @class Ros1Xarm_msgsGripperConfigResponse
--- @brief Complete ROS1 xarm_msgs/GripperConfigResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsGripperConfigResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperConfigResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGripperConfigResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GripperConfigResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperConfigResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GripperConfigResponse.
--- @brief Ros1Xarm_msgsGripperConfigResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperConfigResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGripperConfigResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperConfigResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGripperConfigResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperConfigResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsGripperConfigResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperConfigResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsGripperConfigResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGripperConfigResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGripperConfigResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGripperConfigResponse
--- @brief Encode a complete Ros1Xarm_msgsGripperConfigResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGripperConfigResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsGripperConfigResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsGripperConfigResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGripperConfigResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGripperConfigResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGripperConfigResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGripperConfigResponse
local Ros1Xarm_msgsGripperConfigResponse = classes["Ros1Xarm_msgsGripperConfigResponse"]

--- @class Ros1Xarm_msgsGripperMoveRequest
--- @brief Complete ROS1 xarm_msgs/GripperMoveRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pulse_pos number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_msgsGripperMoveRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperMoveRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGripperMoveRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GripperMoveRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperMoveRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GripperMoveRequest.
--- @brief Ros1Xarm_msgsGripperMoveRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperMoveRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGripperMoveRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperMoveRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGripperMoveRequest.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperMoveRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Xarm_msgsGripperMoveRequest.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperMoveRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Xarm_msgsGripperMoveRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGripperMoveRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGripperMoveRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGripperMoveRequest
--- @brief Encode a complete Ros1Xarm_msgsGripperMoveRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGripperMoveRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Xarm_msgsGripperMoveRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsGripperMoveRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGripperMoveRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGripperMoveRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGripperMoveRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGripperMoveRequest
local Ros1Xarm_msgsGripperMoveRequest = classes["Ros1Xarm_msgsGripperMoveRequest"]

--- @class Ros1Xarm_msgsGripperMoveResponse
--- @brief Complete ROS1 xarm_msgs/GripperMoveResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsGripperMoveResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperMoveResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGripperMoveResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GripperMoveResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperMoveResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GripperMoveResponse.
--- @brief Ros1Xarm_msgsGripperMoveResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperMoveResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGripperMoveResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperMoveResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGripperMoveResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperMoveResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsGripperMoveResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperMoveResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsGripperMoveResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGripperMoveResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGripperMoveResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGripperMoveResponse
--- @brief Encode a complete Ros1Xarm_msgsGripperMoveResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGripperMoveResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsGripperMoveResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsGripperMoveResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGripperMoveResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGripperMoveResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGripperMoveResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGripperMoveResponse
local Ros1Xarm_msgsGripperMoveResponse = classes["Ros1Xarm_msgsGripperMoveResponse"]

--- @class Ros1Xarm_msgsGripperStateRequest
--- @brief Complete ROS1 xarm_msgs/GripperStateRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Xarm_msgsGripperStateRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperStateRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGripperStateRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GripperStateRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperStateRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GripperStateRequest.
--- @brief Ros1Xarm_msgsGripperStateRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperStateRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGripperStateRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperStateRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGripperStateRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperStateRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Xarm_msgsGripperStateRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperStateRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Xarm_msgsGripperStateRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGripperStateRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGripperStateRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGripperStateRequest
--- @brief Encode a complete Ros1Xarm_msgsGripperStateRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGripperStateRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Xarm_msgsGripperStateRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsGripperStateRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGripperStateRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGripperStateRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGripperStateRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGripperStateRequest
local Ros1Xarm_msgsGripperStateRequest = classes["Ros1Xarm_msgsGripperStateRequest"]

--- @class Ros1Xarm_msgsGripperStateResponse
--- @brief Complete ROS1 xarm_msgs/GripperStateResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field curr_pos number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field err_code integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsGripperStateResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperStateResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsGripperStateResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/GripperStateResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperStateResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/GripperStateResponse.
--- @brief Ros1Xarm_msgsGripperStateResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperStateResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsGripperStateResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperStateResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsGripperStateResponse.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperStateResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Xarm_msgsGripperStateResponse.MAX_WIRE_BYTES: Inclusive complete maximum 268 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsGripperStateResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 268 bytes.
--- @brief Construct Ros1Xarm_msgsGripperStateResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsGripperStateResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsGripperStateResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsGripperStateResponse
--- @brief Encode a complete Ros1Xarm_msgsGripperStateResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsGripperStateResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..268 bytes.
--- @see Ros1Xarm_msgsGripperStateResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsGripperStateResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsGripperStateResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsGripperStateResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsGripperStateResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsGripperStateResponse
local Ros1Xarm_msgsGripperStateResponse = classes["Ros1Xarm_msgsGripperStateResponse"]

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

--- @class Ros1Xarm_msgsMoveAxisAngleRequest
--- @brief Complete ROS1 xarm_msgs/MoveAxisAngleRequest value and codec.
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
--- @field coord integer Exact int16 range -32768..32767.
--- @field relative integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsMoveAxisAngleRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveAxisAngleRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsMoveAxisAngleRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/MoveAxisAngleRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveAxisAngleRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/MoveAxisAngleRequest.
--- @brief Ros1Xarm_msgsMoveAxisAngleRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveAxisAngleRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsMoveAxisAngleRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveAxisAngleRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsMoveAxisAngleRequest.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveAxisAngleRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros1Xarm_msgsMoveAxisAngleRequest.MAX_WIRE_BYTES: Inclusive complete maximum 148 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveAxisAngleRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 148 bytes.
--- @brief Construct Ros1Xarm_msgsMoveAxisAngleRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsMoveAxisAngleRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsMoveAxisAngleRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsMoveAxisAngleRequest
--- @brief Encode a complete Ros1Xarm_msgsMoveAxisAngleRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsMoveAxisAngleRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..148 bytes.
--- @see Ros1Xarm_msgsMoveAxisAngleRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsMoveAxisAngleRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsMoveAxisAngleRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsMoveAxisAngleRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsMoveAxisAngleRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsMoveAxisAngleRequest
local Ros1Xarm_msgsMoveAxisAngleRequest = classes["Ros1Xarm_msgsMoveAxisAngleRequest"]

--- @class Ros1Xarm_msgsMoveAxisAngleResponse
--- @brief Complete ROS1 xarm_msgs/MoveAxisAngleResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsMoveAxisAngleResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveAxisAngleResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsMoveAxisAngleResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/MoveAxisAngleResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveAxisAngleResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/MoveAxisAngleResponse.
--- @brief Ros1Xarm_msgsMoveAxisAngleResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveAxisAngleResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsMoveAxisAngleResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveAxisAngleResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsMoveAxisAngleResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveAxisAngleResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsMoveAxisAngleResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveAxisAngleResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsMoveAxisAngleResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsMoveAxisAngleResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsMoveAxisAngleResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsMoveAxisAngleResponse
--- @brief Encode a complete Ros1Xarm_msgsMoveAxisAngleResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsMoveAxisAngleResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsMoveAxisAngleResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsMoveAxisAngleResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsMoveAxisAngleResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsMoveAxisAngleResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsMoveAxisAngleResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsMoveAxisAngleResponse
local Ros1Xarm_msgsMoveAxisAngleResponse = classes["Ros1Xarm_msgsMoveAxisAngleResponse"]

--- @class Ros1Xarm_msgsMoveVeloRequest
--- @brief Complete ROS1 xarm_msgs/MoveVeloRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field velocities number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field jnt_sync integer Exact int16 range -32768..32767.
--- @field coord integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsMoveVeloRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVeloRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsMoveVeloRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/MoveVeloRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVeloRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/MoveVeloRequest.
--- @brief Ros1Xarm_msgsMoveVeloRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVeloRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsMoveVeloRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVeloRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsMoveVeloRequest.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVeloRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Xarm_msgsMoveVeloRequest.MAX_WIRE_BYTES: Inclusive complete maximum 136 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVeloRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 136 bytes.
--- @brief Construct Ros1Xarm_msgsMoveVeloRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsMoveVeloRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsMoveVeloRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsMoveVeloRequest
--- @brief Encode a complete Ros1Xarm_msgsMoveVeloRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsMoveVeloRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..136 bytes.
--- @see Ros1Xarm_msgsMoveVeloRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsMoveVeloRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsMoveVeloRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsMoveVeloRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsMoveVeloRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsMoveVeloRequest
local Ros1Xarm_msgsMoveVeloRequest = classes["Ros1Xarm_msgsMoveVeloRequest"]

--- @class Ros1Xarm_msgsMoveVeloResponse
--- @brief Complete ROS1 xarm_msgs/MoveVeloResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsMoveVeloResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVeloResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsMoveVeloResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/MoveVeloResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVeloResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/MoveVeloResponse.
--- @brief Ros1Xarm_msgsMoveVeloResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVeloResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsMoveVeloResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVeloResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsMoveVeloResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVeloResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsMoveVeloResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVeloResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsMoveVeloResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsMoveVeloResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsMoveVeloResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsMoveVeloResponse
--- @brief Encode a complete Ros1Xarm_msgsMoveVeloResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsMoveVeloResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsMoveVeloResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsMoveVeloResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsMoveVeloResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsMoveVeloResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsMoveVeloResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsMoveVeloResponse
local Ros1Xarm_msgsMoveVeloResponse = classes["Ros1Xarm_msgsMoveVeloResponse"]

--- @class Ros1Xarm_msgsMoveVelocityRequest
--- @brief Complete ROS1 xarm_msgs/MoveVelocityRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speeds number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field is_sync boolean Exact boolean; encoded as one byte0/1.
--- @field is_tool_coord boolean Exact boolean; encoded as one byte0/1.
--- @field duration number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_msgsMoveVelocityRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVelocityRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsMoveVelocityRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/MoveVelocityRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVelocityRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/MoveVelocityRequest.
--- @brief Ros1Xarm_msgsMoveVelocityRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVelocityRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsMoveVelocityRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVelocityRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsMoveVelocityRequest.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVelocityRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Xarm_msgsMoveVelocityRequest.MAX_WIRE_BYTES: Inclusive complete maximum 138 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVelocityRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 138 bytes.
--- @brief Construct Ros1Xarm_msgsMoveVelocityRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsMoveVelocityRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsMoveVelocityRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsMoveVelocityRequest
--- @brief Encode a complete Ros1Xarm_msgsMoveVelocityRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsMoveVelocityRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..138 bytes.
--- @see Ros1Xarm_msgsMoveVelocityRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsMoveVelocityRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsMoveVelocityRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsMoveVelocityRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsMoveVelocityRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsMoveVelocityRequest
local Ros1Xarm_msgsMoveVelocityRequest = classes["Ros1Xarm_msgsMoveVelocityRequest"]

--- @class Ros1Xarm_msgsMoveVelocityResponse
--- @brief Complete ROS1 xarm_msgs/MoveVelocityResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsMoveVelocityResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVelocityResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsMoveVelocityResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/MoveVelocityResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVelocityResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/MoveVelocityResponse.
--- @brief Ros1Xarm_msgsMoveVelocityResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVelocityResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsMoveVelocityResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVelocityResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsMoveVelocityResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVelocityResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsMoveVelocityResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsMoveVelocityResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsMoveVelocityResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsMoveVelocityResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsMoveVelocityResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsMoveVelocityResponse
--- @brief Encode a complete Ros1Xarm_msgsMoveVelocityResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsMoveVelocityResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsMoveVelocityResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsMoveVelocityResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsMoveVelocityResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsMoveVelocityResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsMoveVelocityResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsMoveVelocityResponse
local Ros1Xarm_msgsMoveVelocityResponse = classes["Ros1Xarm_msgsMoveVelocityResponse"]

--- @class Ros1Xarm_msgsPlayTrajRequest
--- @brief Complete ROS1 xarm_msgs/PlayTrajRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field traj_file string Strict UTF-8 without NUL; length0..256 bytes.
--- @field repeat_times integer Exact int16 range -32768..32767.
--- @field speed_factor integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsPlayTrajRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsPlayTrajRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsPlayTrajRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/PlayTrajRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsPlayTrajRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/PlayTrajRequest.
--- @brief Ros1Xarm_msgsPlayTrajRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsPlayTrajRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsPlayTrajRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsPlayTrajRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsPlayTrajRequest.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsPlayTrajRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Xarm_msgsPlayTrajRequest.MAX_WIRE_BYTES: Inclusive complete maximum 264 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsPlayTrajRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 264 bytes.
--- @brief Construct Ros1Xarm_msgsPlayTrajRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsPlayTrajRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsPlayTrajRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsPlayTrajRequest
--- @brief Encode a complete Ros1Xarm_msgsPlayTrajRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsPlayTrajRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..264 bytes.
--- @see Ros1Xarm_msgsPlayTrajRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsPlayTrajRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsPlayTrajRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsPlayTrajRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsPlayTrajRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsPlayTrajRequest
local Ros1Xarm_msgsPlayTrajRequest = classes["Ros1Xarm_msgsPlayTrajRequest"]

--- @class Ros1Xarm_msgsPlayTrajResponse
--- @brief Complete ROS1 xarm_msgs/PlayTrajResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsPlayTrajResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsPlayTrajResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsPlayTrajResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/PlayTrajResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsPlayTrajResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/PlayTrajResponse.
--- @brief Ros1Xarm_msgsPlayTrajResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsPlayTrajResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsPlayTrajResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsPlayTrajResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsPlayTrajResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsPlayTrajResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsPlayTrajResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsPlayTrajResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsPlayTrajResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsPlayTrajResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsPlayTrajResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsPlayTrajResponse
--- @brief Encode a complete Ros1Xarm_msgsPlayTrajResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsPlayTrajResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsPlayTrajResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsPlayTrajResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsPlayTrajResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsPlayTrajResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsPlayTrajResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsPlayTrajResponse
local Ros1Xarm_msgsPlayTrajResponse = classes["Ros1Xarm_msgsPlayTrajResponse"]

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

--- @class Ros1Xarm_msgsSetControllerAnalogIORequest
--- @brief Complete ROS1 xarm_msgs/SetControllerAnalogIORequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field port_num integer Exact int16 range -32768..32767.
--- @field analog_value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_msgsSetControllerAnalogIORequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetControllerAnalogIORequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetControllerAnalogIORequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetControllerAnalogIORequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetControllerAnalogIORequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetControllerAnalogIORequest.
--- @brief Ros1Xarm_msgsSetControllerAnalogIORequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetControllerAnalogIORequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetControllerAnalogIORequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetControllerAnalogIORequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetControllerAnalogIORequest.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetControllerAnalogIORequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsSetControllerAnalogIORequest.MAX_WIRE_BYTES: Inclusive complete maximum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetControllerAnalogIORequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 6 bytes.
--- @brief Construct Ros1Xarm_msgsSetControllerAnalogIORequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetControllerAnalogIORequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetControllerAnalogIORequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetControllerAnalogIORequest
--- @brief Encode a complete Ros1Xarm_msgsSetControllerAnalogIORequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetControllerAnalogIORequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..6 bytes.
--- @see Ros1Xarm_msgsSetControllerAnalogIORequest.decode
--- @field encode fun(value: Ros1Xarm_msgsSetControllerAnalogIORequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetControllerAnalogIORequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetControllerAnalogIORequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetControllerAnalogIORequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetControllerAnalogIORequest
local Ros1Xarm_msgsSetControllerAnalogIORequest = classes["Ros1Xarm_msgsSetControllerAnalogIORequest"]

--- @class Ros1Xarm_msgsSetControllerAnalogIOResponse
--- @brief Complete ROS1 xarm_msgs/SetControllerAnalogIOResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsSetControllerAnalogIOResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetControllerAnalogIOResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetControllerAnalogIOResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetControllerAnalogIOResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetControllerAnalogIOResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetControllerAnalogIOResponse.
--- @brief Ros1Xarm_msgsSetControllerAnalogIOResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetControllerAnalogIOResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetControllerAnalogIOResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetControllerAnalogIOResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetControllerAnalogIOResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetControllerAnalogIOResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsSetControllerAnalogIOResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetControllerAnalogIOResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsSetControllerAnalogIOResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetControllerAnalogIOResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetControllerAnalogIOResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetControllerAnalogIOResponse
--- @brief Encode a complete Ros1Xarm_msgsSetControllerAnalogIOResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetControllerAnalogIOResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsSetControllerAnalogIOResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsSetControllerAnalogIOResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetControllerAnalogIOResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetControllerAnalogIOResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetControllerAnalogIOResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetControllerAnalogIOResponse
local Ros1Xarm_msgsSetControllerAnalogIOResponse = classes["Ros1Xarm_msgsSetControllerAnalogIOResponse"]

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

--- @class Ros1Xarm_msgsSetFloat32Request
--- @brief Complete ROS1 xarm_msgs/SetFloat32Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field data number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_msgsSetFloat32Request.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetFloat32Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetFloat32Request.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetFloat32Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetFloat32Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetFloat32Request.
--- @brief Ros1Xarm_msgsSetFloat32Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetFloat32Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetFloat32Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetFloat32Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetFloat32Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetFloat32Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Xarm_msgsSetFloat32Request.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetFloat32Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Xarm_msgsSetFloat32Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetFloat32Request value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetFloat32Request.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetFloat32Request
--- @brief Encode a complete Ros1Xarm_msgsSetFloat32Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetFloat32Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Xarm_msgsSetFloat32Request.decode
--- @field encode fun(value: Ros1Xarm_msgsSetFloat32Request): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetFloat32Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetFloat32Request value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetFloat32Request.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetFloat32Request
local Ros1Xarm_msgsSetFloat32Request = classes["Ros1Xarm_msgsSetFloat32Request"]

--- @class Ros1Xarm_msgsSetFloat32Response
--- @brief Complete ROS1 xarm_msgs/SetFloat32Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsSetFloat32Response.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetFloat32Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetFloat32Response.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetFloat32Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetFloat32Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetFloat32Response.
--- @brief Ros1Xarm_msgsSetFloat32Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetFloat32Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetFloat32Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetFloat32Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetFloat32Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetFloat32Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsSetFloat32Response.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetFloat32Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsSetFloat32Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetFloat32Response value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetFloat32Response.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetFloat32Response
--- @brief Encode a complete Ros1Xarm_msgsSetFloat32Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetFloat32Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsSetFloat32Response.decode
--- @field encode fun(value: Ros1Xarm_msgsSetFloat32Response): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetFloat32Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetFloat32Response value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetFloat32Response.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetFloat32Response
local Ros1Xarm_msgsSetFloat32Response = classes["Ros1Xarm_msgsSetFloat32Response"]

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

--- @class Ros1Xarm_msgsSetLoadRequest
--- @brief Complete ROS1 xarm_msgs/SetLoadRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mass number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field xc number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field yc number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field zc number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_msgsSetLoadRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetLoadRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetLoadRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetLoadRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetLoadRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetLoadRequest.
--- @brief Ros1Xarm_msgsSetLoadRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetLoadRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetLoadRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetLoadRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetLoadRequest.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetLoadRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Xarm_msgsSetLoadRequest.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetLoadRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Xarm_msgsSetLoadRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetLoadRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetLoadRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetLoadRequest
--- @brief Encode a complete Ros1Xarm_msgsSetLoadRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetLoadRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Xarm_msgsSetLoadRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsSetLoadRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetLoadRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetLoadRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetLoadRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetLoadRequest
local Ros1Xarm_msgsSetLoadRequest = classes["Ros1Xarm_msgsSetLoadRequest"]

--- @class Ros1Xarm_msgsSetLoadResponse
--- @brief Complete ROS1 xarm_msgs/SetLoadResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsSetLoadResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetLoadResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetLoadResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetLoadResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetLoadResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetLoadResponse.
--- @brief Ros1Xarm_msgsSetLoadResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetLoadResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetLoadResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetLoadResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetLoadResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetLoadResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsSetLoadResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetLoadResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsSetLoadResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetLoadResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetLoadResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetLoadResponse
--- @brief Encode a complete Ros1Xarm_msgsSetLoadResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetLoadResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsSetLoadResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsSetLoadResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetLoadResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetLoadResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetLoadResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetLoadResponse
local Ros1Xarm_msgsSetLoadResponse = classes["Ros1Xarm_msgsSetLoadResponse"]

--- @class Ros1Xarm_msgsSetModbusTimeoutRequest
--- @brief Complete ROS1 xarm_msgs/SetModbusTimeoutRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field timeout_ms integer Exact int32 range -2147483648..2147483647.
--- @field is_transparent_transmission boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Xarm_msgsSetModbusTimeoutRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetModbusTimeoutRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetModbusTimeoutRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetModbusTimeoutRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetModbusTimeoutRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetModbusTimeoutRequest.
--- @brief Ros1Xarm_msgsSetModbusTimeoutRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetModbusTimeoutRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetModbusTimeoutRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetModbusTimeoutRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetModbusTimeoutRequest.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetModbusTimeoutRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Xarm_msgsSetModbusTimeoutRequest.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetModbusTimeoutRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros1Xarm_msgsSetModbusTimeoutRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetModbusTimeoutRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetModbusTimeoutRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetModbusTimeoutRequest
--- @brief Encode a complete Ros1Xarm_msgsSetModbusTimeoutRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetModbusTimeoutRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros1Xarm_msgsSetModbusTimeoutRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsSetModbusTimeoutRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetModbusTimeoutRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetModbusTimeoutRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetModbusTimeoutRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetModbusTimeoutRequest
local Ros1Xarm_msgsSetModbusTimeoutRequest = classes["Ros1Xarm_msgsSetModbusTimeoutRequest"]

--- @class Ros1Xarm_msgsSetModbusTimeoutResponse
--- @brief Complete ROS1 xarm_msgs/SetModbusTimeoutResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ret integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsSetModbusTimeoutResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetModbusTimeoutResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetModbusTimeoutResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetModbusTimeoutResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetModbusTimeoutResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetModbusTimeoutResponse.
--- @brief Ros1Xarm_msgsSetModbusTimeoutResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetModbusTimeoutResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetModbusTimeoutResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetModbusTimeoutResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetModbusTimeoutResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetModbusTimeoutResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsSetModbusTimeoutResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetModbusTimeoutResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsSetModbusTimeoutResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetModbusTimeoutResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetModbusTimeoutResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetModbusTimeoutResponse
--- @brief Encode a complete Ros1Xarm_msgsSetModbusTimeoutResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetModbusTimeoutResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsSetModbusTimeoutResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsSetModbusTimeoutResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetModbusTimeoutResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetModbusTimeoutResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetModbusTimeoutResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetModbusTimeoutResponse
local Ros1Xarm_msgsSetModbusTimeoutResponse = classes["Ros1Xarm_msgsSetModbusTimeoutResponse"]

--- @class Ros1Xarm_msgsSetMultipleIntsRequest
--- @brief Complete ROS1 xarm_msgs/SetMultipleIntsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field data_int integer[] Exact int16 range -32768..32767. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Xarm_msgsSetMultipleIntsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetMultipleIntsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetMultipleIntsRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetMultipleIntsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetMultipleIntsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetMultipleIntsRequest.
--- @brief Ros1Xarm_msgsSetMultipleIntsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetMultipleIntsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetMultipleIntsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetMultipleIntsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetMultipleIntsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetMultipleIntsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Xarm_msgsSetMultipleIntsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetMultipleIntsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros1Xarm_msgsSetMultipleIntsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetMultipleIntsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetMultipleIntsRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetMultipleIntsRequest
--- @brief Encode a complete Ros1Xarm_msgsSetMultipleIntsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetMultipleIntsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros1Xarm_msgsSetMultipleIntsRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsSetMultipleIntsRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetMultipleIntsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetMultipleIntsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetMultipleIntsRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetMultipleIntsRequest
local Ros1Xarm_msgsSetMultipleIntsRequest = classes["Ros1Xarm_msgsSetMultipleIntsRequest"]

--- @class Ros1Xarm_msgsSetMultipleIntsResponse
--- @brief Complete ROS1 xarm_msgs/SetMultipleIntsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsSetMultipleIntsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetMultipleIntsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetMultipleIntsResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetMultipleIntsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetMultipleIntsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetMultipleIntsResponse.
--- @brief Ros1Xarm_msgsSetMultipleIntsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetMultipleIntsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetMultipleIntsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetMultipleIntsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetMultipleIntsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetMultipleIntsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsSetMultipleIntsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetMultipleIntsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsSetMultipleIntsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetMultipleIntsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetMultipleIntsResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetMultipleIntsResponse
--- @brief Encode a complete Ros1Xarm_msgsSetMultipleIntsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetMultipleIntsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsSetMultipleIntsResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsSetMultipleIntsResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetMultipleIntsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetMultipleIntsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetMultipleIntsResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetMultipleIntsResponse
local Ros1Xarm_msgsSetMultipleIntsResponse = classes["Ros1Xarm_msgsSetMultipleIntsResponse"]

--- @class Ros1Xarm_msgsSetStringRequest
--- @brief Complete ROS1 xarm_msgs/SetStringRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field str_data string Strict UTF-8 without NUL; length0..256 bytes.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Xarm_msgsSetStringRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetStringRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetStringRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetStringRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetStringRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetStringRequest.
--- @brief Ros1Xarm_msgsSetStringRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetStringRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetStringRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetStringRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetStringRequest.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetStringRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Xarm_msgsSetStringRequest.MAX_WIRE_BYTES: Inclusive complete maximum 264 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetStringRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 264 bytes.
--- @brief Construct Ros1Xarm_msgsSetStringRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetStringRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetStringRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetStringRequest
--- @brief Encode a complete Ros1Xarm_msgsSetStringRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetStringRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..264 bytes.
--- @see Ros1Xarm_msgsSetStringRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsSetStringRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetStringRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetStringRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetStringRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetStringRequest
local Ros1Xarm_msgsSetStringRequest = classes["Ros1Xarm_msgsSetStringRequest"]

--- @class Ros1Xarm_msgsSetStringResponse
--- @brief Complete ROS1 xarm_msgs/SetStringResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsSetStringResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetStringResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetStringResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetStringResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetStringResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetStringResponse.
--- @brief Ros1Xarm_msgsSetStringResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetStringResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetStringResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetStringResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetStringResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetStringResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsSetStringResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetStringResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsSetStringResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetStringResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetStringResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetStringResponse
--- @brief Encode a complete Ros1Xarm_msgsSetStringResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetStringResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsSetStringResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsSetStringResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetStringResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetStringResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetStringResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetStringResponse
local Ros1Xarm_msgsSetStringResponse = classes["Ros1Xarm_msgsSetStringResponse"]

--- @class Ros1Xarm_msgsSetToolModbusRequest
--- @brief Complete ROS1 xarm_msgs/SetToolModbusRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field send_data integer[] Exact uint8 range 0..255. At most 4096 contiguous elements; holes and extra array keys are rejected.
--- @field respond_len integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsSetToolModbusRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetToolModbusRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetToolModbusRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetToolModbusRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetToolModbusRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetToolModbusRequest.
--- @brief Ros1Xarm_msgsSetToolModbusRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetToolModbusRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetToolModbusRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetToolModbusRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetToolModbusRequest.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetToolModbusRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsSetToolModbusRequest.MAX_WIRE_BYTES: Inclusive complete maximum 4102 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetToolModbusRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4102 bytes.
--- @brief Construct Ros1Xarm_msgsSetToolModbusRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetToolModbusRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetToolModbusRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetToolModbusRequest
--- @brief Encode a complete Ros1Xarm_msgsSetToolModbusRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetToolModbusRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..4102 bytes.
--- @see Ros1Xarm_msgsSetToolModbusRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsSetToolModbusRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetToolModbusRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetToolModbusRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetToolModbusRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetToolModbusRequest
local Ros1Xarm_msgsSetToolModbusRequest = classes["Ros1Xarm_msgsSetToolModbusRequest"]

--- @class Ros1Xarm_msgsSetToolModbusResponse
--- @brief Complete ROS1 xarm_msgs/SetToolModbusResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field respond_data integer[] Exact uint8 range 0..255. At most 4096 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Xarm_msgsSetToolModbusResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetToolModbusResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsSetToolModbusResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/SetToolModbusResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetToolModbusResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/SetToolModbusResponse.
--- @brief Ros1Xarm_msgsSetToolModbusResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetToolModbusResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsSetToolModbusResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetToolModbusResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsSetToolModbusResponse.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetToolModbusResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Xarm_msgsSetToolModbusResponse.MAX_WIRE_BYTES: Inclusive complete maximum 4362 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsSetToolModbusResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4362 bytes.
--- @brief Construct Ros1Xarm_msgsSetToolModbusResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsSetToolModbusResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsSetToolModbusResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsSetToolModbusResponse
--- @brief Encode a complete Ros1Xarm_msgsSetToolModbusResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsSetToolModbusResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..4362 bytes.
--- @see Ros1Xarm_msgsSetToolModbusResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsSetToolModbusResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsSetToolModbusResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsSetToolModbusResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsSetToolModbusResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsSetToolModbusResponse
local Ros1Xarm_msgsSetToolModbusResponse = classes["Ros1Xarm_msgsSetToolModbusResponse"]

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

--- @class Ros1Xarm_msgsVacuumGripperCtrlRequest
--- @brief Complete ROS1 xarm_msgs/VacuumGripperCtrlRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field on boolean Exact boolean; encoded as one byte0/1.
--- @field wait boolean Exact boolean; encoded as one byte0/1.
--- @field timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field delay_sec number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field sync boolean Exact boolean; encoded as one byte0/1.
--- @field hardware_version integer Exact int16 range -32768..32767.
--- @brief Ros1Xarm_msgsVacuumGripperCtrlRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVacuumGripperCtrlRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsVacuumGripperCtrlRequest.NATIVE_TYPE: Exact normalized native type name xarm_msgs/VacuumGripperCtrlRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVacuumGripperCtrlRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/VacuumGripperCtrlRequest.
--- @brief Ros1Xarm_msgsVacuumGripperCtrlRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVacuumGripperCtrlRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsVacuumGripperCtrlRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVacuumGripperCtrlRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsVacuumGripperCtrlRequest.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVacuumGripperCtrlRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros1Xarm_msgsVacuumGripperCtrlRequest.MAX_WIRE_BYTES: Inclusive complete maximum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVacuumGripperCtrlRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 13 bytes.
--- @brief Construct Ros1Xarm_msgsVacuumGripperCtrlRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsVacuumGripperCtrlRequest value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsVacuumGripperCtrlRequest.encode
--- @field new fun(values?: table): Ros1Xarm_msgsVacuumGripperCtrlRequest
--- @brief Encode a complete Ros1Xarm_msgsVacuumGripperCtrlRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsVacuumGripperCtrlRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..13 bytes.
--- @see Ros1Xarm_msgsVacuumGripperCtrlRequest.decode
--- @field encode fun(value: Ros1Xarm_msgsVacuumGripperCtrlRequest): string
--- @brief Decode exactly one complete Ros1Xarm_msgsVacuumGripperCtrlRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsVacuumGripperCtrlRequest value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsVacuumGripperCtrlRequest.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsVacuumGripperCtrlRequest
local Ros1Xarm_msgsVacuumGripperCtrlRequest = classes["Ros1Xarm_msgsVacuumGripperCtrlRequest"]

--- @class Ros1Xarm_msgsVacuumGripperCtrlResponse
--- @brief Complete ROS1 xarm_msgs/VacuumGripperCtrlResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ret integer Exact int16 range -32768..32767.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Xarm_msgsVacuumGripperCtrlResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVacuumGripperCtrlResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Xarm_msgsVacuumGripperCtrlResponse.NATIVE_TYPE: Exact normalized native type name xarm_msgs/VacuumGripperCtrlResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVacuumGripperCtrlResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name xarm_msgs/VacuumGripperCtrlResponse.
--- @brief Ros1Xarm_msgsVacuumGripperCtrlResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVacuumGripperCtrlResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Xarm_msgsVacuumGripperCtrlResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVacuumGripperCtrlResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Xarm_msgsVacuumGripperCtrlResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVacuumGripperCtrlResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Xarm_msgsVacuumGripperCtrlResponse.MAX_WIRE_BYTES: Inclusive complete maximum 262 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Xarm_msgsVacuumGripperCtrlResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 262 bytes.
--- @brief Construct Ros1Xarm_msgsVacuumGripperCtrlResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Xarm_msgsVacuumGripperCtrlResponse value New mutable complete value; no ROS resource.
--- @see Ros1Xarm_msgsVacuumGripperCtrlResponse.encode
--- @field new fun(values?: table): Ros1Xarm_msgsVacuumGripperCtrlResponse
--- @brief Encode a complete Ros1Xarm_msgsVacuumGripperCtrlResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Xarm_msgsVacuumGripperCtrlResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..262 bytes.
--- @see Ros1Xarm_msgsVacuumGripperCtrlResponse.decode
--- @field encode fun(value: Ros1Xarm_msgsVacuumGripperCtrlResponse): string
--- @brief Decode exactly one complete Ros1Xarm_msgsVacuumGripperCtrlResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Xarm_msgsVacuumGripperCtrlResponse value New complete value; failures raise Lua errors.
--- @see Ros1Xarm_msgsVacuumGripperCtrlResponse.encode
--- @field decode fun(bytes: string): Ros1Xarm_msgsVacuumGripperCtrlResponse
local Ros1Xarm_msgsVacuumGripperCtrlResponse = classes["Ros1Xarm_msgsVacuumGripperCtrlResponse"]

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
