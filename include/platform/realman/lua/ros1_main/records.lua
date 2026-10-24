--- @file records.lua
--- @brief Preserve the complete original realman/ros1_main canonical value domain.
--- @details The selected domain contains 105 complete record/components and 349 original fields. Declared
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
        ["symbol"] = "Ros1Rm_msgsArmState",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/ArmState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f66af5e8f31c3b897559c988ef8a9fe8257199453c3973bcb9afe56a420d2f93",
        ["minimum"] = 65,
        ["maximum"] = 161,
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
                ["name"] = "Pose",
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "err",
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
        ["symbol"] = "Ros1Rm_msgsArm_Analog_Output",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Arm_Analog_Output",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c344d257e1e5f45d1f82e60e66a38a1714dbc06b8e9379357c308b34f2ed3c94",
        ["minimum"] = 5,
        ["maximum"] = 5,
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
                ["name"] = "voltage",
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
        ["symbol"] = "Ros1Rm_msgsArm_Current_State",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Arm_Current_State",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b5c0206ba9eb0674b9a1ca4204aa63e41ce356ad38953a544760897d0d467844",
        ["minimum"] = 33,
        ["maximum"] = 129,
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
                ["name"] = "Pose",
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
        ["symbol"] = "Ros1Rm_msgsArm_Current_Status",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Arm_Current_Status",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_871842ca4ff929b1851a43d9cf855a85ab37ccf147e1b24dfbdb8421f4133fd3",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "arm_current_status",
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
        ["symbol"] = "Ros1Rm_msgsArm_Digital_Output",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Arm_Digital_Output",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_afc6da6c0b8f5e9dc9846b9c536ced62723c7e1479737bc5f4f31d14c2f5f029",
        ["minimum"] = 2,
        ["maximum"] = 2,
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
        ["symbol"] = "Ros1Rm_msgsArm_IO_State",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Arm_IO_State",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bdcfa192917433b9ac60a589c42c06cc1092080e0d0410dbcd967b88298b315c",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Arm_Digital_Input",
                ["type"] = "int8",
                ["array"] = "array",
                ["count"] = 4,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
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
        ["symbol"] = "Ros1Rm_msgsArm_Joint_Speed_Max",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Arm_Joint_Speed_Max",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3e8703dc738f06e4e9e3ce64446ef46706350439309eb78b54801c95846f547d",
        ["minimum"] = 24,
        ["maximum"] = 4568,
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
                ["name"] = "name",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "max_velocity",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsSoftwarebuildinfo",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Softwarebuildinfo",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c6ee342c433ac29a8e2b2484b8e3d5071c8a37baf95b1fb59883f43b8d2e1ec5",
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
        ["symbol"] = "Ros1Rm_msgsArm_Softversion_v3",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Arm_Softversion_v3",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7965401d47a025c253634e60695689f086763ff15ed2a624c9219f67dc3bf394",
        ["minimum"] = 28,
        ["maximum"] = 1820,
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
                ["type"] = "Ros1Rm_msgsSoftwarebuildinfo",
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
                ["type"] = "Ros1Rm_msgsSoftwarebuildinfo",
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
        ["symbol"] = "Ros1Rm_msgsArm_Softversion_v4",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Arm_Softversion_v4",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_40f59f8af4a50464ab428e1246a58ca767b21950c19e7d565c9a2aea5bc95a0f",
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
                ["type"] = "Ros1Rm_msgsSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "com_info",
                ["type"] = "Ros1Rm_msgsSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "program_info",
                ["type"] = "Ros1Rm_msgsSoftwarebuildinfo",
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
        ["symbol"] = "Ros1Rm_msgsArm_Software_Version",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Arm_Software_Version",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_73a8bbc2aae36edf9b7e16773c7c683e148f81269ed380e012d8a5e4cc79d5d5",
        ["minimum"] = 48,
        ["maximum"] = 3120,
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
                ["type"] = "Ros1Rm_msgsSoftwarebuildinfo",
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
                ["type"] = "Ros1Rm_msgsSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
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
                ["name"] = "com_info",
                ["type"] = "Ros1Rm_msgsSoftwarebuildinfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "program_info",
                ["type"] = "Ros1Rm_msgsSoftwarebuildinfo",
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
        ["symbol"] = "Ros1Rm_msgsCabinet",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Cabinet",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c87786d2d26af9f8d138443f251c69d46f60b011db9abd3b3d4f80dca8e1babf",
        ["minimum"] = 78,
        ["maximum"] = 334,
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
                ["name"] = "pose",
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "label",
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
        ["symbol"] = "Ros1Rm_msgsCartePos",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/CartePos",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c57fa78db159ce841b371c7cad7490b2059aabfe9394776129ab3eab33b59ce9",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Pose",
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
        ["symbol"] = "Ros1Rm_msgsCartePosCustom",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/CartePosCustom",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_747920217625df52e54b9f69ea1e7375e2945ef08c1a9243d7cf88429f6f871c",
        ["minimum"] = 59,
        ["maximum"] = 59,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Pose",
                ["type"] = "Ros1Geometry_msgsPose",
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
        ["symbol"] = "Ros1Rm_msgsChangeTool_Name",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/ChangeTool_Name",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e911c349e53bcce70562585461a9da98a2db38e964dc743d6eb49b334f7f2314",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "toolname",
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
        ["symbol"] = "Ros1Rm_msgsChangeTool_State",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/ChangeTool_State",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dd7214855c8334d6c5098ec2da0fd3ee89d02d7b17ad83c58f0b28740b044b86",
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
        ["symbol"] = "Ros1Rm_msgsChangeWorkFrame_Name",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/ChangeWorkFrame_Name",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_47a75a37f6777b0aee5ad12e298e07359d1ffcbd26e4fafe5efe5a98f757cbce",
        ["minimum"] = 4,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "WorkFrame_name",
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
        ["symbol"] = "Ros1Rm_msgsChangeWorkFrame_State",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/ChangeWorkFrame_State",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d5b387f63fb4c309d83fbdb046a8c8a0e6678d60fb521139250f15e8e5a56856",
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
        ["symbol"] = "Ros1Rm_msgsErr",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Err",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dec53c41ca46496e0ac25a56a15fc255aa369f59d7add914de365b18acff2117",
        ["minimum"] = 4,
        ["maximum"] = 36,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "err",
                ["type"] = "uint16",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsExpandState",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/ExpandState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_640f4cf4113a2c38af646bd4b1a112916b795daec1b8c4b4362712ab473d3f1a",
        ["minimum"] = 12,
        ["maximum"] = 12,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "get_state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
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
                ["name"] = "err_flag",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "en_flag",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "current",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "mode",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joint_id",
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
        ["symbol"] = "Ros1Rm_msgsExpand_In_Position",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Expand_In_Position",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_51acd7ca334e74e4c8ba72027230530ec5b1e63865cc0c35172aa6040969f3b0",
        ["minimum"] = 7,
        ["maximum"] = 263,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "device",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "state",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
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
                ["name"] = "trajectory_state",
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
        ["symbol"] = "Ros1Rm_msgsExpand_Position",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Expand_Position",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cd07785998b7fd5698c8606538f9ed6b35ae5f0aded4ca768c446dd7d235faed",
        ["minimum"] = 4,
        ["maximum"] = 4,
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
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsExpand_Speed",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Expand_Speed",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1ec010d530738e2f4f9ba5fe992202886bb3485be97f1e72b5b36ba0f6b5d9d4",
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
        ["symbol"] = "Ros1Rm_msgsFlowchartrunstate",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Flowchartrunstate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_deafa818f1cf99a33c9443d1880f5744f721ac3c07d583a00ed269569f07e030",
        ["minimum"] = 12,
        ["maximum"] = 524,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsForce_Position_Move_Joint",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Force_Position_Move_Joint",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_40252f1cf60424f32d01c870d44e286a0138883d8db1302ffdbbe0300e38cd39",
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
        ["symbol"] = "Ros1Rm_msgsForce_Position_Move_Pose",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Force_Position_Move_Pose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6397e7691e6a886b0ec77927e87229edf7c7c4b3164e64e4898813d240206f02",
        ["minimum"] = 61,
        ["maximum"] = 61,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Pose",
                ["type"] = "Ros1Geometry_msgsPose",
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsForce_Position_Move_Pose_Custom",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Force_Position_Move_Pose_Custom",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_85e4ff181a274b8e87937ae0eaa56b94de2b7d524caf3f6fc89c0d33a487c1bd",
        ["minimum"] = 64,
        ["maximum"] = 64,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Pose",
                ["type"] = "Ros1Geometry_msgsPose",
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
        ["symbol"] = "Ros1Rm_msgsForce_Position_State",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Force_Position_State",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8b817fc0422a9dcfc91e51ade9e0fc9d1d44ed315d9b813eaf88cf88d889b367",
        ["minimum"] = 11,
        ["maximum"] = 75,
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
        ["symbol"] = "Ros1Rm_msgsGetArmState_Command",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/GetArmState_Command",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ae8d3621dd3742fc96f2dd06907f546f1def2e1d91cb2b652d4f7fc499755d4b",
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
        ["symbol"] = "Ros1Rm_msgsGet_TCP_Master_List_Param",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Get_TCP_Master_List_Param",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8a8b20ec793a537927ce7190694ca820648b6492822a8284e2e072ea68a2ad00",
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
        ["symbol"] = "Ros1Rm_msgsGettrajectorylist",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Gettrajectorylist",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_da19e810ea29adcd43132897a49c6445e61cd18d1f06783162857b25b8c2cbe0",
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
        ["symbol"] = "Ros1Rm_msgsGripper_Pick",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Gripper_Pick",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cd54942d53ad8167aaa7f2cfe1d0d4e6ad1092d015d59deff29080fa70a9a7a9",
        ["minimum"] = 4,
        ["maximum"] = 4,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsGripper_Set",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Gripper_Set",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6095cdd3c0ac57ed78df3676ecc946e6cdc6ff48404dc7f205e1da3efeecabe3",
        ["minimum"] = 2,
        ["maximum"] = 2,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsHand_Angle",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Hand_Angle",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9d1bf1c63d0cd9feae75492e0610bd9f261bef5d9b774f042534ac5ff6b2ba48",
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
        ["symbol"] = "Ros1Rm_msgsHand_Force",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Hand_Force",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_530176ac18800838e1648e67dbc6f4ca83101e333adcae1b44dbf749ffafd71c",
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
        ["symbol"] = "Ros1Rm_msgsHand_Posture",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Hand_Posture",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0272a7a2465f613518f7bbcce5f31395faebe4b7f54c77bed3a076f0b9eb5785",
        ["minimum"] = 3,
        ["maximum"] = 3,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsHand_Seq",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Hand_Seq",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f6fa34fdf69af4115af9d275026c35614ececda0084ac45bee579bae43f2d3f0",
        ["minimum"] = 3,
        ["maximum"] = 3,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsHand_Speed",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Hand_Speed",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f21faf03c07ab57120835321e699b27ec6f86e462930e83499bef2a155f827ca",
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
        ["symbol"] = "Ros1Rm_msgsHand_Status",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Hand_Status",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2ff89c76aa0fc5924535b7de55609d74847aac91fc2ab8145ec7b8d958260ad8",
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
        ["symbol"] = "Ros1Rm_msgsIO_Update",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/IO_Update",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6941f85ba773344ca73a917cfef68d8a6a99f67ff76bdf6eea4b9b1a7d1ddba7",
        ["minimum"] = 1,
        ["maximum"] = 1,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsJointPos",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/JointPos",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_55bb4d07f6901dfd381902cb71f0bfa8bb2e34b70e7c8cae455b68a8b57e5623",
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
                ["name"] = "expand",
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
        ["symbol"] = "Ros1Rm_msgsJointPosCustom",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/JointPosCustom",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d4935ad5910358dea6a8902e472c01f413574a5db91a57e4e54dee65a0bac676",
        ["minimum"] = 11,
        ["maximum"] = 75,
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
                ["name"] = "expand",
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
        ["symbol"] = "Ros1Rm_msgsJoint_Current",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Joint_Current",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bc39b37164a42e1937db5e4404b2a9c869083a3b81e84f5d7beb34de93e04b7c",
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
        ["symbol"] = "Ros1Rm_msgsJoint_En_Flag",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Joint_En_Flag",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a5fc892ad2eb36348a3b49588393c82773299a8f7a8d73079c338864430e58b8",
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
        ["symbol"] = "Ros1Rm_msgsJoint_Enable",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Joint_Enable",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0b54d5338f0c38491ecf9f0e9e6d7963384f45666ee235b18ae24649fa99bfb6",
        ["minimum"] = 2,
        ["maximum"] = 2,
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
        ["symbol"] = "Ros1Rm_msgsJoint_Error_Code",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Joint_Error_Code",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_76bc10f3795648437b5021e1a3b7087d11dc1d85ddb429f6f3c87c7f00bed361",
        ["minimum"] = 4,
        ["maximum"] = 36,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsJoint_Max_Speed",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Joint_Max_Speed",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_808b0661dec52a0bb942426d3cff85fa3cd025ea5e18efde14b7c3cbf12212fb",
        ["minimum"] = 5,
        ["maximum"] = 5,
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
            {
                ["name"] = "joint_max_speed",
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
        ["symbol"] = "Ros1Rm_msgsJoint_PoseEuler",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Joint_PoseEuler",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5145fe7bbcebd72b80dbb5b09cb8e736049951d5c8011af97a05bfaccd1638e1",
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
        ["symbol"] = "Ros1Rm_msgsJoint_Speed",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Joint_Speed",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fbc6add09d420c1cf11af125de1f13a40586dca5e374bd8cd970289468e6140f",
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
        ["symbol"] = "Ros1Rm_msgsJoint_Step",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Joint_Step",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2f8f1683b5b2734e9fc105f61ed848e905a33abeb9e5f09028ea834991d4000b",
        ["minimum"] = 9,
        ["maximum"] = 9,
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
            {
                ["name"] = "step_angle",
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
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsJoint_Teach",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Joint_Teach",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6191ef24dc181055dd0fb597fec470a8b583791e0a67edd14f3eb7a6fdac1717",
        ["minimum"] = 8,
        ["maximum"] = 264,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "teach_joint",
                ["type"] = "int16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "direction",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "v",
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
        ["symbol"] = "Ros1Rm_msgsJoint_Temperature",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Joint_Temperature",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6c3dd6374ed98e575b6e4db3a15691bdde6e174c9aa6e15ce5d2ada37e79507e",
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
        ["symbol"] = "Ros1Rm_msgsJoint_Voltage",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Joint_Voltage",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_45e56529f780d399f86c70e4303dc63e49760f1247124a866d7830a656bf830d",
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
        ["symbol"] = "Ros1Rm_msgsJointversion",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Jointversion",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e49b2595327fcedf6a8a15f690deac2f4809eefb25957cf2c0ac9d7117579e1e",
        ["minimum"] = 28,
        ["maximum"] = 1820,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_version",
                ["type"] = "string",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsLiftState",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/LiftState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c09f03491729bb1f271578da29f8b68fba3da3e57a3b15dc1c835373d2406aea",
        ["minimum"] = 7,
        ["maximum"] = 7,
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
        ["symbol"] = "Ros1Rm_msgsLift_Height",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Lift_Height",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_91f1e27a75ec4d5b8e9a677e5a3eb0493cc19067019121a2d6397a87ebff5c61",
        ["minimum"] = 4,
        ["maximum"] = 4,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsLift_In_Position",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Lift_In_Position",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_eeb51df403cc708bf439f6a54b6d010981ad3d7919fd1d6cea84a77935ced787",
        ["minimum"] = 7,
        ["maximum"] = 263,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "device",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "state",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
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
                ["name"] = "trajectory_state",
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
        ["symbol"] = "Ros1Rm_msgsLift_Speed",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Lift_Speed",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_19aa9a2cffa38998503715ba68a5281d58933a12b16e1a2bfca7c8f96dcca0a8",
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
        ["symbol"] = "Ros1Rm_msgsManual_Set_Force_Pose",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Manual_Set_Force_Pose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_215450b7ec8f49bc87aea83627cc98d887c29b3a3c6377eee217d64eac2f3ea0",
        ["minimum"] = 8,
        ["maximum"] = 392,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pose",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint",
                ["type"] = "int64",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsMastername",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Mastername",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a10623bdcabd2f64e702b69c6549bdb219796e9516dc9cf505070036353cc59f",
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
        ["symbol"] = "Ros1Rm_msgsModbusreaddata",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Modbusreaddata",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_107972f1e16052d7b327932447d7d704c7888041f715105f30a416fbf429dd20",
        ["minimum"] = 4,
        ["maximum"] = 68,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsModbustcpmasterinfo",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Modbustcpmasterinfo",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7f45c814efbc1268c68b7955f3c077f319f46ba4dc532f36914ccd3c55420680",
        ["minimum"] = 12,
        ["maximum"] = 524,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsModbustcpmasterlist",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Modbustcpmasterlist",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a656fe16126d96dc7de6bdb80d60087d9ceb3f2680e403437283a1eaee3b5eb1",
        ["minimum"] = 4,
        ["maximum"] = 8388,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "master_list",
                ["type"] = "Ros1Rm_msgsModbustcpmasterinfo",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsMoveC",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/MoveC",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a7c9838edb369a30428d4225ce45305e72ddd5a9a315147dfa47288e3a367a69",
        ["minimum"] = 119,
        ["maximum"] = 119,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Mid_Pose",
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "End_Pose",
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "speed",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "loop",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsMoveJ",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/MoveJ",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b06164ba46d0b515ea1b853f6e91af08ac358839fef3174797ba097b2f4a0d93",
        ["minimum"] = 9,
        ["maximum"] = 73,
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
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsMoveJ_P",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/MoveJ_P",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e2f03dd50bed12ea4e61705e6cb09bfb224e8dd92b02a0bacf3dfeb253f72b65",
        ["minimum"] = 61,
        ["maximum"] = 61,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Pose",
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "speed",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsMoveL",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/MoveL",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2816f8d5ff4be8578d2dfa17425b165a4263456573dfd23ade5bd679a685cd49",
        ["minimum"] = 61,
        ["maximum"] = 61,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Pose",
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "speed",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsMoveloffset",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Moveloffset",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_886f3c1a20875ee75df0a4e50fd4dd0c3ec47ffd7bc3f868ac90ad9e7f0dec28",
        ["minimum"] = 67,
        ["maximum"] = 67,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "offset",
                ["type"] = "Ros1Geometry_msgsPose",
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
        ["symbol"] = "Ros1Rm_msgsOrt_Teach",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Ort_Teach",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_42dfe53597ed6f1ba5ffaa6042babc85f1a5ff43e2880f2c6fb383211ebed497",
        ["minimum"] = 10,
        ["maximum"] = 522,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "teach_type",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "direction",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "v",
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
        ["symbol"] = "Ros1Rm_msgsPlan_State",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Plan_State",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a9ac3bd0f8c096d42c8a5852fb71d9aac18315645cf0fb4669c38d6371fb2ba9",
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
        ["symbol"] = "Ros1Rm_msgsPos_Teach",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Pos_Teach",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6cf8ac67bafa4470a0a338053f3bef98e6c4c97cc508fbade9ebe590e4bf691a",
        ["minimum"] = 10,
        ["maximum"] = 522,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "teach_type",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "direction",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "v",
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
        ["symbol"] = "Ros1Rm_msgsProgramrunstate",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Programrunstate",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_33f9f3bf9c238c3b304fdb6f8394ff1efd76d312dafb908a2e39260dadd1434a",
        ["minimum"] = 36,
        ["maximum"] = 164,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsRS485_Mode",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/RS485_Mode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_47bf8f6bb74160b4acfea2fe14a2d75f35a0232f11419cda7c0d2333aab31424",
        ["minimum"] = 10,
        ["maximum"] = 10,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "controller_RS485_mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "tool_RS485_mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "baudrate",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "modbus_timeout",
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
        ["symbol"] = "Ros1Rm_msgsRS485params",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/RS485params",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7c8cce477352cfa8e2647042f8734dad2ed44aa35f51701d528cd0d9931f4eec",
        ["minimum"] = 8,
        ["maximum"] = 8,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsRead_ModbusRTU",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Read_ModbusRTU",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a81a5257d7f140e3d988d283c4fa2fdabfda43ca1d0c80f5dfad3f498a776969",
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
                ["name"] = "num",
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsRead_Register",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Read_Register",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_917ea5dfecf096965284116556b7d6e34011714da4cb369fbf3d9a497c630d4f",
        ["minimum"] = 13,
        ["maximum"] = 13,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "port",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "address",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "num",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "device",
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
        ["symbol"] = "Ros1Rm_msgsRead_TCPandRTU",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Read_TCPandRTU",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6380b88d7659fa5c4acc02f200882400b978c960d948edc551359a74bd3376b9",
        ["minimum"] = 28,
        ["maximum"] = 540,
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
                ["name"] = "num",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
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
                ["name"] = "master_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsRegister_Data",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Register_Data",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ba1d780495f79683c483081c8326ce806edc62e8402dcc0566dc34d86b3a8867",
        ["minimum"] = 5,
        ["maximum"] = 37,
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
            {
                ["name"] = "data",
                ["type"] = "uint16",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsRm_Plus_Base",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Rm_Plus_Base",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9ca40bb3db27ce29bdb768b19fbb9d83f54894b107844c5d127c99d45702c1d6",
        ["minimum"] = 61,
        ["maximum"] = 1597,
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
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "pos_low",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "angle_up",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "angle_low",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed_up",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed_low",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_up",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_low",
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
        ["symbol"] = "Ros1Rm_msgsRm_Plus_State",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Rm_Plus_State",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_430d17485316136f019ee6cda961a0152b7f024cb24aa235d2e048b0216f6db1",
        ["minimum"] = 60,
        ["maximum"] = 892,
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
                ["name"] = "sys_err",
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
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "dof_err",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "pos",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "angle",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "current",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "normal_force",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tangential_force",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tangential_force_dir",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tsa",
                ["type"] = "uint32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tma",
                ["type"] = "uint32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "touch_data",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force",
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
        ["symbol"] = "Ros1Rm_msgsServo_GetAngle",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Servo_GetAngle",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f3f0398034088c5c94c1551f041a808898ea8f6bdc82226ef69099be11286784",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "servo_id",
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
        ["symbol"] = "Ros1Rm_msgsServo_Move",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Servo_Move",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_776097952cd219d20f95b4e953dc4b0a9fbbe2652475309fd976537988f241fb",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "servo_id",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "angle",
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
        ["symbol"] = "Ros1Rm_msgsSet_Force_Position",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Set_Force_Position",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f2837e2588cbaabc85d66b6693a18ca1581be1ec09fbb4207d6e377d00fdbf87",
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
                ["name"] = "N",
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
        ["symbol"] = "Ros1Rm_msgsSet_Modbus_Mode",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Set_Modbus_Mode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_007fd5321b9c408191b697ed67ff0a439220fdabdec81e94ef1cc53b35de028e",
        ["minimum"] = 16,
        ["maximum"] = 272,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "port",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "baudrate",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "timeout",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsSet_Realtime_Push",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Set_Realtime_Push",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_aa3d4add03b4a1d307e389813bf8337b34c8260c9eb186ac5a3aabee7e344375",
        ["minimum"] = 20,
        ["maximum"] = 276,
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
                ["name"] = "joint_acc_enable",
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
                ["name"] = "tail_end_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "rm_plus_base_enable",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "rm_plus_state_enable",
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
        ["symbol"] = "Ros1Rm_msgsSix_Force",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Six_Force",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_16909106e846dce81f6ff66583cdb569fecd956c7e08367b9d532ce096d5d720",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "force_Fx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_Fy",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_Fz",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_Mx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_My",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_Mz",
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
        ["symbol"] = "Ros1Rm_msgsSocket_Command",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Socket_Command",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f55143fcc5bf1da4e0fbf538f9faf480932d5b8405d6c1f880c6091a38f68d17",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "command",
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
        ["symbol"] = "Ros1Rm_msgsStart_Multi_Drag_Teach",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Start_Multi_Drag_Teach",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5bc8bea8dc6051a6ec45da2fabd12107e8b7a9731cc6031af49371cb2b6c64a8",
        ["minimum"] = 32,
        ["maximum"] = 32,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "free_axes",
                ["type"] = "int32",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "frame",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "singular_wall",
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
        ["symbol"] = "Ros1Rm_msgsStop",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Stop",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_87bbb0270d31ccd7e207da872d191cf01d4f10f9eed6bcffaef9f440a2c5378a",
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
        ["symbol"] = "Ros1Rm_msgsStop_Teach",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Stop_Teach",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d7e8a4419f9a4132ecad0fcb738953bc3dc029aba09bc8f4fa97e12ab088f97e",
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
        ["symbol"] = "Ros1Rm_msgsTool_Analog_Output",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Tool_Analog_Output",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8ce6b700a85d05fa99167fad521b7162b9a0e4670c9022782ed522d1c320979f",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "voltage",
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
        ["symbol"] = "Ros1Rm_msgsTool_Digital_Output",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Tool_Digital_Output",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_10c924520a9c47a999bfebbf55c9474aa8e7770a8e8a58d446af0c1eacc1889e",
        ["minimum"] = 2,
        ["maximum"] = 2,
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
        ["symbol"] = "Ros1Rm_msgsTool_IO_State",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Tool_IO_State",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3259adff977d4832fc6ba1e9e2a13aca1e99f86c4f4177b54ccd7c459f86fb84",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "Tool_IO_Mode",
                ["type"] = "int8",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "Tool_IO_State",
                ["type"] = "int8",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsTrajectoryinfo",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Trajectoryinfo",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_16571d503b8ffbc3d3bbd71f2f4eea11e8d0c30ff1dc8a40349d00c6294bbebd",
        ["minimum"] = 12,
        ["maximum"] = 524,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsTrajectorylist",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Trajectorylist",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2a6f11ce34da610b3a2c7738fbdc705ce549702edf8869972ab1126d86717fd9",
        ["minimum"] = 20,
        ["maximum"] = 8660,
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
                ["type"] = "Ros1Rm_msgsTrajectoryinfo",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Rm_msgsTurtle_Driver",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Turtle_Driver",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d78bbc2b8ade4cc0f3a2807b674b87cf49f46faa33185187b579b7836c5bb7fe",
        ["minimum"] = 20,
        ["maximum"] = 532,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "message_type",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "robot_mac_address",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "vx",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "vy",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "vtheta",
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
        ["symbol"] = "Ros1Rm_msgsUpdateTCPmasterparam",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/UpdateTCPmasterparam",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_588eaac57487dc2d7ab412bf221ca0157959d2826d310ff218c63ddbfa287872",
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
                ["name"] = "new_name",
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
        ["symbol"] = "Ros1Rm_msgsWrite_ModbusRTU",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Write_ModbusRTU",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_09caba0e331ca32e826368f575bcfd26ec1e0e2ae63da26bdbfdda5f7cc486c8",
        ["minimum"] = 16,
        ["maximum"] = 80,
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
                ["name"] = "data",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
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
                ["name"] = "device",
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
        ["symbol"] = "Ros1Rm_msgsWrite_Register",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Write_Register",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ef2fb0ea4f38aecce5111c39f35aa4195d9658fe6bbe4f9c059b85ee3ce32251",
        ["minimum"] = 17,
        ["maximum"] = 49,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "port",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "address",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "num",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "data",
                ["type"] = "uint16",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "device",
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
        ["symbol"] = "Ros1Rm_msgsWrite_TCPandRTU",
        ["ros_version"] = 1,
        ["native_type"] = "rm_msgs/Write_TCPandRTU",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8e0690efe69c300dc98a90b00a785109bb3cf0b603a36e173a346383e6b7e16a",
        ["minimum"] = 28,
        ["maximum"] = 604,
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
                ["name"] = "data",
                ["type"] = "int32",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
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
                ["name"] = "master_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
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
                ["name"] = "device",
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

--- @class Ros1Rm_msgsArmState
--- @brief Complete ROS1 rm_msgs/ArmState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field Pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field err integer[] Exact uint16 range 0..65535. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field dof integer Exact uint8 range 0..255.
--- @brief Ros1Rm_msgsArmState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArmState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsArmState.NATIVE_TYPE: Exact normalized native type name rm_msgs/ArmState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArmState.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/ArmState.
--- @brief Ros1Rm_msgsArmState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArmState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsArmState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArmState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsArmState.MIN_WIRE_BYTES: Inclusive complete minimum 65 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArmState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 65 bytes.
--- @brief Ros1Rm_msgsArmState.MAX_WIRE_BYTES: Inclusive complete maximum 161 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArmState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 161 bytes.
--- @brief Construct Ros1Rm_msgsArmState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsArmState value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsArmState.encode
--- @field new fun(values?: table): Ros1Rm_msgsArmState
--- @brief Encode a complete Ros1Rm_msgsArmState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsArmState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 65..161 bytes.
--- @see Ros1Rm_msgsArmState.decode
--- @field encode fun(value: Ros1Rm_msgsArmState): string
--- @brief Decode exactly one complete Ros1Rm_msgsArmState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsArmState value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsArmState.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsArmState
local Ros1Rm_msgsArmState = classes["Ros1Rm_msgsArmState"]

--- @class Ros1Rm_msgsArm_Analog_Output
--- @brief Complete ROS1 rm_msgs/Arm_Analog_Output value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field num integer Exact uint8 range 0..255.
--- @field voltage number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Rm_msgsArm_Analog_Output.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Analog_Output.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsArm_Analog_Output.NATIVE_TYPE: Exact normalized native type name rm_msgs/Arm_Analog_Output.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Analog_Output.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Arm_Analog_Output.
--- @brief Ros1Rm_msgsArm_Analog_Output.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Analog_Output.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsArm_Analog_Output.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Analog_Output.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsArm_Analog_Output.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Analog_Output.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Rm_msgsArm_Analog_Output.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Analog_Output.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros1Rm_msgsArm_Analog_Output with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsArm_Analog_Output value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsArm_Analog_Output.encode
--- @field new fun(values?: table): Ros1Rm_msgsArm_Analog_Output
--- @brief Encode a complete Ros1Rm_msgsArm_Analog_Output value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsArm_Analog_Output [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros1Rm_msgsArm_Analog_Output.decode
--- @field encode fun(value: Ros1Rm_msgsArm_Analog_Output): string
--- @brief Decode exactly one complete Ros1Rm_msgsArm_Analog_Output canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsArm_Analog_Output value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsArm_Analog_Output.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsArm_Analog_Output
local Ros1Rm_msgsArm_Analog_Output = classes["Ros1Rm_msgsArm_Analog_Output"]

--- @class Ros1Rm_msgsArm_Current_State
--- @brief Complete ROS1 rm_msgs/Arm_Current_State value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field Pose number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field err integer[] Exact uint16 range 0..65535. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field dof integer Exact uint8 range 0..255.
--- @brief Ros1Rm_msgsArm_Current_State.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Current_State.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsArm_Current_State.NATIVE_TYPE: Exact normalized native type name rm_msgs/Arm_Current_State.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Current_State.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Arm_Current_State.
--- @brief Ros1Rm_msgsArm_Current_State.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Current_State.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsArm_Current_State.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Current_State.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsArm_Current_State.MIN_WIRE_BYTES: Inclusive complete minimum 33 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Current_State.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 33 bytes.
--- @brief Ros1Rm_msgsArm_Current_State.MAX_WIRE_BYTES: Inclusive complete maximum 129 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Current_State.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 129 bytes.
--- @brief Construct Ros1Rm_msgsArm_Current_State with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsArm_Current_State value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsArm_Current_State.encode
--- @field new fun(values?: table): Ros1Rm_msgsArm_Current_State
--- @brief Encode a complete Ros1Rm_msgsArm_Current_State value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsArm_Current_State [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 33..129 bytes.
--- @see Ros1Rm_msgsArm_Current_State.decode
--- @field encode fun(value: Ros1Rm_msgsArm_Current_State): string
--- @brief Decode exactly one complete Ros1Rm_msgsArm_Current_State canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsArm_Current_State value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsArm_Current_State.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsArm_Current_State
local Ros1Rm_msgsArm_Current_State = classes["Ros1Rm_msgsArm_Current_State"]

--- @class Ros1Rm_msgsArm_Current_Status
--- @brief Complete ROS1 rm_msgs/Arm_Current_Status value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field arm_current_status string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Rm_msgsArm_Current_Status.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Current_Status.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsArm_Current_Status.NATIVE_TYPE: Exact normalized native type name rm_msgs/Arm_Current_Status.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Current_Status.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Arm_Current_Status.
--- @brief Ros1Rm_msgsArm_Current_Status.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Current_Status.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsArm_Current_Status.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Current_Status.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsArm_Current_Status.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Current_Status.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsArm_Current_Status.MAX_WIRE_BYTES: Inclusive complete maximum 260 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Current_Status.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 260 bytes.
--- @brief Construct Ros1Rm_msgsArm_Current_Status with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsArm_Current_Status value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsArm_Current_Status.encode
--- @field new fun(values?: table): Ros1Rm_msgsArm_Current_Status
--- @brief Encode a complete Ros1Rm_msgsArm_Current_Status value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsArm_Current_Status [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..260 bytes.
--- @see Ros1Rm_msgsArm_Current_Status.decode
--- @field encode fun(value: Ros1Rm_msgsArm_Current_Status): string
--- @brief Decode exactly one complete Ros1Rm_msgsArm_Current_Status canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsArm_Current_Status value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsArm_Current_Status.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsArm_Current_Status
local Ros1Rm_msgsArm_Current_Status = classes["Ros1Rm_msgsArm_Current_Status"]

--- @class Ros1Rm_msgsArm_Digital_Output
--- @brief Complete ROS1 rm_msgs/Arm_Digital_Output value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field num integer Exact uint8 range 0..255.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsArm_Digital_Output.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Digital_Output.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsArm_Digital_Output.NATIVE_TYPE: Exact normalized native type name rm_msgs/Arm_Digital_Output.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Digital_Output.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Arm_Digital_Output.
--- @brief Ros1Rm_msgsArm_Digital_Output.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Digital_Output.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsArm_Digital_Output.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Digital_Output.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsArm_Digital_Output.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Digital_Output.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Rm_msgsArm_Digital_Output.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Digital_Output.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Rm_msgsArm_Digital_Output with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsArm_Digital_Output value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsArm_Digital_Output.encode
--- @field new fun(values?: table): Ros1Rm_msgsArm_Digital_Output
--- @brief Encode a complete Ros1Rm_msgsArm_Digital_Output value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsArm_Digital_Output [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Rm_msgsArm_Digital_Output.decode
--- @field encode fun(value: Ros1Rm_msgsArm_Digital_Output): string
--- @brief Decode exactly one complete Ros1Rm_msgsArm_Digital_Output canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsArm_Digital_Output value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsArm_Digital_Output.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsArm_Digital_Output
local Ros1Rm_msgsArm_Digital_Output = classes["Ros1Rm_msgsArm_Digital_Output"]

--- @class Ros1Rm_msgsArm_IO_State
--- @brief Complete ROS1 rm_msgs/Arm_IO_State value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Arm_Digital_Input integer[] Exact int8 range -128..127. Exactly 4 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsArm_IO_State.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_IO_State.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsArm_IO_State.NATIVE_TYPE: Exact normalized native type name rm_msgs/Arm_IO_State.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_IO_State.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Arm_IO_State.
--- @brief Ros1Rm_msgsArm_IO_State.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_IO_State.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsArm_IO_State.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_IO_State.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsArm_IO_State.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_IO_State.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsArm_IO_State.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_IO_State.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Rm_msgsArm_IO_State with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsArm_IO_State value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsArm_IO_State.encode
--- @field new fun(values?: table): Ros1Rm_msgsArm_IO_State
--- @brief Encode a complete Ros1Rm_msgsArm_IO_State value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsArm_IO_State [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Rm_msgsArm_IO_State.decode
--- @field encode fun(value: Ros1Rm_msgsArm_IO_State): string
--- @brief Decode exactly one complete Ros1Rm_msgsArm_IO_State canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsArm_IO_State value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsArm_IO_State.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsArm_IO_State
local Ros1Rm_msgsArm_IO_State = classes["Ros1Rm_msgsArm_IO_State"]

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

--- @class Ros1Rm_msgsArm_Joint_Speed_Max
--- @brief Complete ROS1 rm_msgs/Arm_Joint_Speed_Max value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/Header value; no native fields are projected away.
--- @field name string[] Strict UTF-8 without NUL; length0..256 bytes. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field max_velocity number[] Finite IEEE float64. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsArm_Joint_Speed_Max.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Joint_Speed_Max.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsArm_Joint_Speed_Max.NATIVE_TYPE: Exact normalized native type name rm_msgs/Arm_Joint_Speed_Max.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Joint_Speed_Max.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Arm_Joint_Speed_Max.
--- @brief Ros1Rm_msgsArm_Joint_Speed_Max.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Joint_Speed_Max.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsArm_Joint_Speed_Max.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Joint_Speed_Max.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsArm_Joint_Speed_Max.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Joint_Speed_Max.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Rm_msgsArm_Joint_Speed_Max.MAX_WIRE_BYTES: Inclusive complete maximum 4568 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Joint_Speed_Max.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4568 bytes.
--- @brief Construct Ros1Rm_msgsArm_Joint_Speed_Max with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsArm_Joint_Speed_Max value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsArm_Joint_Speed_Max.encode
--- @field new fun(values?: table): Ros1Rm_msgsArm_Joint_Speed_Max
--- @brief Encode a complete Ros1Rm_msgsArm_Joint_Speed_Max value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsArm_Joint_Speed_Max [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..4568 bytes.
--- @see Ros1Rm_msgsArm_Joint_Speed_Max.decode
--- @field encode fun(value: Ros1Rm_msgsArm_Joint_Speed_Max): string
--- @brief Decode exactly one complete Ros1Rm_msgsArm_Joint_Speed_Max canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsArm_Joint_Speed_Max value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsArm_Joint_Speed_Max.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsArm_Joint_Speed_Max
local Ros1Rm_msgsArm_Joint_Speed_Max = classes["Ros1Rm_msgsArm_Joint_Speed_Max"]

--- @class Ros1Rm_msgsSoftwarebuildinfo
--- @brief Complete ROS1 rm_msgs/Softwarebuildinfo value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field build_time string Strict UTF-8 without NUL; length0..256 bytes.
--- @field version string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Rm_msgsSoftwarebuildinfo.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSoftwarebuildinfo.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsSoftwarebuildinfo.NATIVE_TYPE: Exact normalized native type name rm_msgs/Softwarebuildinfo.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSoftwarebuildinfo.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Softwarebuildinfo.
--- @brief Ros1Rm_msgsSoftwarebuildinfo.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSoftwarebuildinfo.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsSoftwarebuildinfo.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSoftwarebuildinfo.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsSoftwarebuildinfo.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSoftwarebuildinfo.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Rm_msgsSoftwarebuildinfo.MAX_WIRE_BYTES: Inclusive complete maximum 520 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSoftwarebuildinfo.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 520 bytes.
--- @brief Construct Ros1Rm_msgsSoftwarebuildinfo with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsSoftwarebuildinfo value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsSoftwarebuildinfo.encode
--- @field new fun(values?: table): Ros1Rm_msgsSoftwarebuildinfo
--- @brief Encode a complete Ros1Rm_msgsSoftwarebuildinfo value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsSoftwarebuildinfo [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..520 bytes.
--- @see Ros1Rm_msgsSoftwarebuildinfo.decode
--- @field encode fun(value: Ros1Rm_msgsSoftwarebuildinfo): string
--- @brief Decode exactly one complete Ros1Rm_msgsSoftwarebuildinfo canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsSoftwarebuildinfo value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsSoftwarebuildinfo.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsSoftwarebuildinfo
local Ros1Rm_msgsSoftwarebuildinfo = classes["Ros1Rm_msgsSoftwarebuildinfo"]

--- @class Ros1Rm_msgsArm_Softversion_v3
--- @brief Complete ROS1 rm_msgs/Arm_Softversion_v3 value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field product_version string Strict UTF-8 without NUL; length0..256 bytes.
--- @field algorithm_info string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ctrl_info table Complete nested rm_msgs/Softwarebuildinfo value; no native fields are projected away.
--- @field dynamic_info string Strict UTF-8 without NUL; length0..256 bytes.
--- @field plan_info table Complete nested rm_msgs/Softwarebuildinfo value; no native fields are projected away.
--- @brief Ros1Rm_msgsArm_Softversion_v3.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Softversion_v3.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsArm_Softversion_v3.NATIVE_TYPE: Exact normalized native type name rm_msgs/Arm_Softversion_v3.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Softversion_v3.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Arm_Softversion_v3.
--- @brief Ros1Rm_msgsArm_Softversion_v3.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Softversion_v3.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsArm_Softversion_v3.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Softversion_v3.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsArm_Softversion_v3.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Softversion_v3.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros1Rm_msgsArm_Softversion_v3.MAX_WIRE_BYTES: Inclusive complete maximum 1820 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Softversion_v3.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1820 bytes.
--- @brief Construct Ros1Rm_msgsArm_Softversion_v3 with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsArm_Softversion_v3 value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsArm_Softversion_v3.encode
--- @field new fun(values?: table): Ros1Rm_msgsArm_Softversion_v3
--- @brief Encode a complete Ros1Rm_msgsArm_Softversion_v3 value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsArm_Softversion_v3 [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..1820 bytes.
--- @see Ros1Rm_msgsArm_Softversion_v3.decode
--- @field encode fun(value: Ros1Rm_msgsArm_Softversion_v3): string
--- @brief Decode exactly one complete Ros1Rm_msgsArm_Softversion_v3 canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsArm_Softversion_v3 value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsArm_Softversion_v3.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsArm_Softversion_v3
local Ros1Rm_msgsArm_Softversion_v3 = classes["Ros1Rm_msgsArm_Softversion_v3"]

--- @class Ros1Rm_msgsArm_Softversion_v4
--- @brief Complete ROS1 rm_msgs/Arm_Softversion_v4 value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field product_version string Strict UTF-8 without NUL; length0..256 bytes.
--- @field controller_version string Strict UTF-8 without NUL; length0..256 bytes.
--- @field algorithm_info string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ctrl_info table Complete nested rm_msgs/Softwarebuildinfo value; no native fields are projected away.
--- @field com_info table Complete nested rm_msgs/Softwarebuildinfo value; no native fields are projected away.
--- @field program_info table Complete nested rm_msgs/Softwarebuildinfo value; no native fields are projected away.
--- @brief Ros1Rm_msgsArm_Softversion_v4.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Softversion_v4.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsArm_Softversion_v4.NATIVE_TYPE: Exact normalized native type name rm_msgs/Arm_Softversion_v4.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Softversion_v4.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Arm_Softversion_v4.
--- @brief Ros1Rm_msgsArm_Softversion_v4.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Softversion_v4.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsArm_Softversion_v4.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Softversion_v4.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsArm_Softversion_v4.MIN_WIRE_BYTES: Inclusive complete minimum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Softversion_v4.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 36 bytes.
--- @brief Ros1Rm_msgsArm_Softversion_v4.MAX_WIRE_BYTES: Inclusive complete maximum 2340 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Softversion_v4.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2340 bytes.
--- @brief Construct Ros1Rm_msgsArm_Softversion_v4 with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsArm_Softversion_v4 value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsArm_Softversion_v4.encode
--- @field new fun(values?: table): Ros1Rm_msgsArm_Softversion_v4
--- @brief Encode a complete Ros1Rm_msgsArm_Softversion_v4 value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsArm_Softversion_v4 [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 36..2340 bytes.
--- @see Ros1Rm_msgsArm_Softversion_v4.decode
--- @field encode fun(value: Ros1Rm_msgsArm_Softversion_v4): string
--- @brief Decode exactly one complete Ros1Rm_msgsArm_Softversion_v4 canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsArm_Softversion_v4 value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsArm_Softversion_v4.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsArm_Softversion_v4
local Ros1Rm_msgsArm_Softversion_v4 = classes["Ros1Rm_msgsArm_Softversion_v4"]

--- @class Ros1Rm_msgsArm_Software_Version
--- @brief Complete ROS1 rm_msgs/Arm_Software_Version value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field product_version string Strict UTF-8 without NUL; length0..256 bytes.
--- @field algorithm_info string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ctrl_info table Complete nested rm_msgs/Softwarebuildinfo value; no native fields are projected away.
--- @field dynamic_info string Strict UTF-8 without NUL; length0..256 bytes.
--- @field plan_info table Complete nested rm_msgs/Softwarebuildinfo value; no native fields are projected away.
--- @field controller_version string Strict UTF-8 without NUL; length0..256 bytes.
--- @field com_info table Complete nested rm_msgs/Softwarebuildinfo value; no native fields are projected away.
--- @field program_info table Complete nested rm_msgs/Softwarebuildinfo value; no native fields are projected away.
--- @brief Ros1Rm_msgsArm_Software_Version.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Software_Version.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsArm_Software_Version.NATIVE_TYPE: Exact normalized native type name rm_msgs/Arm_Software_Version.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Software_Version.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Arm_Software_Version.
--- @brief Ros1Rm_msgsArm_Software_Version.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Software_Version.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsArm_Software_Version.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Software_Version.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsArm_Software_Version.MIN_WIRE_BYTES: Inclusive complete minimum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Software_Version.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 48 bytes.
--- @brief Ros1Rm_msgsArm_Software_Version.MAX_WIRE_BYTES: Inclusive complete maximum 3120 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsArm_Software_Version.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3120 bytes.
--- @brief Construct Ros1Rm_msgsArm_Software_Version with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsArm_Software_Version value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsArm_Software_Version.encode
--- @field new fun(values?: table): Ros1Rm_msgsArm_Software_Version
--- @brief Encode a complete Ros1Rm_msgsArm_Software_Version value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsArm_Software_Version [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 48..3120 bytes.
--- @see Ros1Rm_msgsArm_Software_Version.decode
--- @field encode fun(value: Ros1Rm_msgsArm_Software_Version): string
--- @brief Decode exactly one complete Ros1Rm_msgsArm_Software_Version canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsArm_Software_Version value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsArm_Software_Version.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsArm_Software_Version
local Ros1Rm_msgsArm_Software_Version = classes["Ros1Rm_msgsArm_Software_Version"]

--- @class Ros1Rm_msgsCabinet
--- @brief Complete ROS1 rm_msgs/Cabinet value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/Header value; no native fields are projected away.
--- @field pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field label integer Exact int16 range -32768..32767.
--- @field angle number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Rm_msgsCabinet.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCabinet.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsCabinet.NATIVE_TYPE: Exact normalized native type name rm_msgs/Cabinet.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCabinet.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Cabinet.
--- @brief Ros1Rm_msgsCabinet.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCabinet.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsCabinet.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCabinet.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsCabinet.MIN_WIRE_BYTES: Inclusive complete minimum 78 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCabinet.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 78 bytes.
--- @brief Ros1Rm_msgsCabinet.MAX_WIRE_BYTES: Inclusive complete maximum 334 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCabinet.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 334 bytes.
--- @brief Construct Ros1Rm_msgsCabinet with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsCabinet value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsCabinet.encode
--- @field new fun(values?: table): Ros1Rm_msgsCabinet
--- @brief Encode a complete Ros1Rm_msgsCabinet value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsCabinet [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 78..334 bytes.
--- @see Ros1Rm_msgsCabinet.decode
--- @field encode fun(value: Ros1Rm_msgsCabinet): string
--- @brief Decode exactly one complete Ros1Rm_msgsCabinet canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsCabinet value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsCabinet.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsCabinet
local Ros1Rm_msgsCabinet = classes["Ros1Rm_msgsCabinet"]

--- @class Ros1Rm_msgsCartePos
--- @brief Complete ROS1 rm_msgs/CartePos value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @brief Ros1Rm_msgsCartePos.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCartePos.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsCartePos.NATIVE_TYPE: Exact normalized native type name rm_msgs/CartePos.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCartePos.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/CartePos.
--- @brief Ros1Rm_msgsCartePos.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCartePos.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsCartePos.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCartePos.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsCartePos.MIN_WIRE_BYTES: Inclusive complete minimum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCartePos.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 56 bytes.
--- @brief Ros1Rm_msgsCartePos.MAX_WIRE_BYTES: Inclusive complete maximum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCartePos.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 56 bytes.
--- @brief Construct Ros1Rm_msgsCartePos with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsCartePos value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsCartePos.encode
--- @field new fun(values?: table): Ros1Rm_msgsCartePos
--- @brief Encode a complete Ros1Rm_msgsCartePos value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsCartePos [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 56..56 bytes.
--- @see Ros1Rm_msgsCartePos.decode
--- @field encode fun(value: Ros1Rm_msgsCartePos): string
--- @brief Decode exactly one complete Ros1Rm_msgsCartePos canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsCartePos value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsCartePos.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsCartePos
local Ros1Rm_msgsCartePos = classes["Ros1Rm_msgsCartePos"]

--- @class Ros1Rm_msgsCartePosCustom
--- @brief Complete ROS1 rm_msgs/CartePosCustom value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field follow boolean Exact boolean; encoded as one byte0/1.
--- @field trajectory_mode integer Exact uint8 range 0..255.
--- @field radio integer Exact uint8 range 0..255.
--- @brief Ros1Rm_msgsCartePosCustom.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCartePosCustom.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsCartePosCustom.NATIVE_TYPE: Exact normalized native type name rm_msgs/CartePosCustom.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCartePosCustom.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/CartePosCustom.
--- @brief Ros1Rm_msgsCartePosCustom.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCartePosCustom.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsCartePosCustom.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCartePosCustom.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsCartePosCustom.MIN_WIRE_BYTES: Inclusive complete minimum 59 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCartePosCustom.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 59 bytes.
--- @brief Ros1Rm_msgsCartePosCustom.MAX_WIRE_BYTES: Inclusive complete maximum 59 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsCartePosCustom.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 59 bytes.
--- @brief Construct Ros1Rm_msgsCartePosCustom with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsCartePosCustom value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsCartePosCustom.encode
--- @field new fun(values?: table): Ros1Rm_msgsCartePosCustom
--- @brief Encode a complete Ros1Rm_msgsCartePosCustom value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsCartePosCustom [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 59..59 bytes.
--- @see Ros1Rm_msgsCartePosCustom.decode
--- @field encode fun(value: Ros1Rm_msgsCartePosCustom): string
--- @brief Decode exactly one complete Ros1Rm_msgsCartePosCustom canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsCartePosCustom value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsCartePosCustom.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsCartePosCustom
local Ros1Rm_msgsCartePosCustom = classes["Ros1Rm_msgsCartePosCustom"]

--- @class Ros1Rm_msgsChangeTool_Name
--- @brief Complete ROS1 rm_msgs/ChangeTool_Name value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field toolname string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Rm_msgsChangeTool_Name.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeTool_Name.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsChangeTool_Name.NATIVE_TYPE: Exact normalized native type name rm_msgs/ChangeTool_Name.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeTool_Name.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/ChangeTool_Name.
--- @brief Ros1Rm_msgsChangeTool_Name.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeTool_Name.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsChangeTool_Name.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeTool_Name.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsChangeTool_Name.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeTool_Name.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsChangeTool_Name.MAX_WIRE_BYTES: Inclusive complete maximum 260 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeTool_Name.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 260 bytes.
--- @brief Construct Ros1Rm_msgsChangeTool_Name with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsChangeTool_Name value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsChangeTool_Name.encode
--- @field new fun(values?: table): Ros1Rm_msgsChangeTool_Name
--- @brief Encode a complete Ros1Rm_msgsChangeTool_Name value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsChangeTool_Name [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..260 bytes.
--- @see Ros1Rm_msgsChangeTool_Name.decode
--- @field encode fun(value: Ros1Rm_msgsChangeTool_Name): string
--- @brief Decode exactly one complete Ros1Rm_msgsChangeTool_Name canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsChangeTool_Name value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsChangeTool_Name.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsChangeTool_Name
local Ros1Rm_msgsChangeTool_Name = classes["Ros1Rm_msgsChangeTool_Name"]

--- @class Ros1Rm_msgsChangeTool_State
--- @brief Complete ROS1 rm_msgs/ChangeTool_State value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsChangeTool_State.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeTool_State.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsChangeTool_State.NATIVE_TYPE: Exact normalized native type name rm_msgs/ChangeTool_State.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeTool_State.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/ChangeTool_State.
--- @brief Ros1Rm_msgsChangeTool_State.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeTool_State.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsChangeTool_State.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeTool_State.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsChangeTool_State.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeTool_State.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Rm_msgsChangeTool_State.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeTool_State.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Rm_msgsChangeTool_State with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsChangeTool_State value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsChangeTool_State.encode
--- @field new fun(values?: table): Ros1Rm_msgsChangeTool_State
--- @brief Encode a complete Ros1Rm_msgsChangeTool_State value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsChangeTool_State [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Rm_msgsChangeTool_State.decode
--- @field encode fun(value: Ros1Rm_msgsChangeTool_State): string
--- @brief Decode exactly one complete Ros1Rm_msgsChangeTool_State canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsChangeTool_State value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsChangeTool_State.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsChangeTool_State
local Ros1Rm_msgsChangeTool_State = classes["Ros1Rm_msgsChangeTool_State"]

--- @class Ros1Rm_msgsChangeWorkFrame_Name
--- @brief Complete ROS1 rm_msgs/ChangeWorkFrame_Name value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field WorkFrame_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Rm_msgsChangeWorkFrame_Name.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeWorkFrame_Name.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsChangeWorkFrame_Name.NATIVE_TYPE: Exact normalized native type name rm_msgs/ChangeWorkFrame_Name.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeWorkFrame_Name.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/ChangeWorkFrame_Name.
--- @brief Ros1Rm_msgsChangeWorkFrame_Name.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeWorkFrame_Name.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsChangeWorkFrame_Name.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeWorkFrame_Name.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsChangeWorkFrame_Name.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeWorkFrame_Name.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsChangeWorkFrame_Name.MAX_WIRE_BYTES: Inclusive complete maximum 260 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeWorkFrame_Name.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 260 bytes.
--- @brief Construct Ros1Rm_msgsChangeWorkFrame_Name with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsChangeWorkFrame_Name value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsChangeWorkFrame_Name.encode
--- @field new fun(values?: table): Ros1Rm_msgsChangeWorkFrame_Name
--- @brief Encode a complete Ros1Rm_msgsChangeWorkFrame_Name value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsChangeWorkFrame_Name [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..260 bytes.
--- @see Ros1Rm_msgsChangeWorkFrame_Name.decode
--- @field encode fun(value: Ros1Rm_msgsChangeWorkFrame_Name): string
--- @brief Decode exactly one complete Ros1Rm_msgsChangeWorkFrame_Name canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsChangeWorkFrame_Name value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsChangeWorkFrame_Name.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsChangeWorkFrame_Name
local Ros1Rm_msgsChangeWorkFrame_Name = classes["Ros1Rm_msgsChangeWorkFrame_Name"]

--- @class Ros1Rm_msgsChangeWorkFrame_State
--- @brief Complete ROS1 rm_msgs/ChangeWorkFrame_State value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsChangeWorkFrame_State.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeWorkFrame_State.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsChangeWorkFrame_State.NATIVE_TYPE: Exact normalized native type name rm_msgs/ChangeWorkFrame_State.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeWorkFrame_State.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/ChangeWorkFrame_State.
--- @brief Ros1Rm_msgsChangeWorkFrame_State.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeWorkFrame_State.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsChangeWorkFrame_State.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeWorkFrame_State.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsChangeWorkFrame_State.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeWorkFrame_State.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Rm_msgsChangeWorkFrame_State.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsChangeWorkFrame_State.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Rm_msgsChangeWorkFrame_State with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsChangeWorkFrame_State value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsChangeWorkFrame_State.encode
--- @field new fun(values?: table): Ros1Rm_msgsChangeWorkFrame_State
--- @brief Encode a complete Ros1Rm_msgsChangeWorkFrame_State value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsChangeWorkFrame_State [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Rm_msgsChangeWorkFrame_State.decode
--- @field encode fun(value: Ros1Rm_msgsChangeWorkFrame_State): string
--- @brief Decode exactly one complete Ros1Rm_msgsChangeWorkFrame_State canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsChangeWorkFrame_State value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsChangeWorkFrame_State.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsChangeWorkFrame_State
local Ros1Rm_msgsChangeWorkFrame_State = classes["Ros1Rm_msgsChangeWorkFrame_State"]

--- @class Ros1Rm_msgsErr
--- @brief Complete ROS1 rm_msgs/Err value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field err integer[] Exact uint16 range 0..65535. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsErr.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsErr.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsErr.NATIVE_TYPE: Exact normalized native type name rm_msgs/Err.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsErr.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Err.
--- @brief Ros1Rm_msgsErr.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsErr.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsErr.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsErr.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsErr.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsErr.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsErr.MAX_WIRE_BYTES: Inclusive complete maximum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsErr.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 36 bytes.
--- @brief Construct Ros1Rm_msgsErr with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsErr value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsErr.encode
--- @field new fun(values?: table): Ros1Rm_msgsErr
--- @brief Encode a complete Ros1Rm_msgsErr value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsErr [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..36 bytes.
--- @see Ros1Rm_msgsErr.decode
--- @field encode fun(value: Ros1Rm_msgsErr): string
--- @brief Decode exactly one complete Ros1Rm_msgsErr canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsErr value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsErr.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsErr
local Ros1Rm_msgsErr = classes["Ros1Rm_msgsErr"]

--- @class Ros1Rm_msgsExpandState
--- @brief Complete ROS1 rm_msgs/ExpandState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field get_state boolean Exact boolean; encoded as one byte0/1.
--- @field pos integer Exact int16 range -32768..32767.
--- @field err_flag integer Exact int16 range -32768..32767.
--- @field en_flag integer Exact uint16 range 0..65535.
--- @field current integer Exact uint16 range 0..65535.
--- @field mode integer Exact int8 range -128..127.
--- @field joint_id integer Exact uint16 range 0..65535.
--- @brief Ros1Rm_msgsExpandState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpandState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsExpandState.NATIVE_TYPE: Exact normalized native type name rm_msgs/ExpandState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpandState.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/ExpandState.
--- @brief Ros1Rm_msgsExpandState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpandState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsExpandState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpandState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsExpandState.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpandState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Rm_msgsExpandState.MAX_WIRE_BYTES: Inclusive complete maximum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpandState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 12 bytes.
--- @brief Construct Ros1Rm_msgsExpandState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsExpandState value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsExpandState.encode
--- @field new fun(values?: table): Ros1Rm_msgsExpandState
--- @brief Encode a complete Ros1Rm_msgsExpandState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsExpandState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..12 bytes.
--- @see Ros1Rm_msgsExpandState.decode
--- @field encode fun(value: Ros1Rm_msgsExpandState): string
--- @brief Decode exactly one complete Ros1Rm_msgsExpandState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsExpandState value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsExpandState.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsExpandState
local Ros1Rm_msgsExpandState = classes["Ros1Rm_msgsExpandState"]

--- @class Ros1Rm_msgsExpand_In_Position
--- @brief Complete ROS1 rm_msgs/Expand_In_Position value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field device integer Exact uint8 range 0..255.
--- @field state string Strict UTF-8 without NUL; length0..256 bytes.
--- @field trajectory_connect integer Exact uint8 range 0..255.
--- @field trajectory_state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsExpand_In_Position.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_In_Position.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsExpand_In_Position.NATIVE_TYPE: Exact normalized native type name rm_msgs/Expand_In_Position.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_In_Position.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Expand_In_Position.
--- @brief Ros1Rm_msgsExpand_In_Position.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_In_Position.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsExpand_In_Position.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_In_Position.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsExpand_In_Position.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_In_Position.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros1Rm_msgsExpand_In_Position.MAX_WIRE_BYTES: Inclusive complete maximum 263 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_In_Position.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 263 bytes.
--- @brief Construct Ros1Rm_msgsExpand_In_Position with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsExpand_In_Position value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsExpand_In_Position.encode
--- @field new fun(values?: table): Ros1Rm_msgsExpand_In_Position
--- @brief Encode a complete Ros1Rm_msgsExpand_In_Position value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsExpand_In_Position [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..263 bytes.
--- @see Ros1Rm_msgsExpand_In_Position.decode
--- @field encode fun(value: Ros1Rm_msgsExpand_In_Position): string
--- @brief Decode exactly one complete Ros1Rm_msgsExpand_In_Position canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsExpand_In_Position value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsExpand_In_Position.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsExpand_In_Position
local Ros1Rm_msgsExpand_In_Position = classes["Ros1Rm_msgsExpand_In_Position"]

--- @class Ros1Rm_msgsExpand_Position
--- @brief Complete ROS1 rm_msgs/Expand_Position value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pos integer Exact int16 range -32768..32767.
--- @field speed integer Exact int16 range -32768..32767.
--- @brief Ros1Rm_msgsExpand_Position.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_Position.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsExpand_Position.NATIVE_TYPE: Exact normalized native type name rm_msgs/Expand_Position.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_Position.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Expand_Position.
--- @brief Ros1Rm_msgsExpand_Position.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_Position.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsExpand_Position.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_Position.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsExpand_Position.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_Position.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsExpand_Position.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_Position.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Rm_msgsExpand_Position with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsExpand_Position value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsExpand_Position.encode
--- @field new fun(values?: table): Ros1Rm_msgsExpand_Position
--- @brief Encode a complete Ros1Rm_msgsExpand_Position value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsExpand_Position [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Rm_msgsExpand_Position.decode
--- @field encode fun(value: Ros1Rm_msgsExpand_Position): string
--- @brief Decode exactly one complete Ros1Rm_msgsExpand_Position canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsExpand_Position value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsExpand_Position.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsExpand_Position
local Ros1Rm_msgsExpand_Position = classes["Ros1Rm_msgsExpand_Position"]

--- @class Ros1Rm_msgsExpand_Speed
--- @brief Complete ROS1 rm_msgs/Expand_Speed value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speed integer Exact int16 range -32768..32767.
--- @brief Ros1Rm_msgsExpand_Speed.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_Speed.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsExpand_Speed.NATIVE_TYPE: Exact normalized native type name rm_msgs/Expand_Speed.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_Speed.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Expand_Speed.
--- @brief Ros1Rm_msgsExpand_Speed.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_Speed.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsExpand_Speed.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_Speed.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsExpand_Speed.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_Speed.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Rm_msgsExpand_Speed.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsExpand_Speed.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Rm_msgsExpand_Speed with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsExpand_Speed value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsExpand_Speed.encode
--- @field new fun(values?: table): Ros1Rm_msgsExpand_Speed
--- @brief Encode a complete Ros1Rm_msgsExpand_Speed value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsExpand_Speed [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Rm_msgsExpand_Speed.decode
--- @field encode fun(value: Ros1Rm_msgsExpand_Speed): string
--- @brief Decode exactly one complete Ros1Rm_msgsExpand_Speed canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsExpand_Speed value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsExpand_Speed.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsExpand_Speed
local Ros1Rm_msgsExpand_Speed = classes["Ros1Rm_msgsExpand_Speed"]

--- @class Ros1Rm_msgsFlowchartrunstate
--- @brief Complete ROS1 rm_msgs/Flowchartrunstate value and codec.
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
--- @brief Ros1Rm_msgsFlowchartrunstate.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsFlowchartrunstate.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsFlowchartrunstate.NATIVE_TYPE: Exact normalized native type name rm_msgs/Flowchartrunstate.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsFlowchartrunstate.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Flowchartrunstate.
--- @brief Ros1Rm_msgsFlowchartrunstate.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsFlowchartrunstate.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsFlowchartrunstate.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsFlowchartrunstate.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsFlowchartrunstate.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsFlowchartrunstate.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Rm_msgsFlowchartrunstate.MAX_WIRE_BYTES: Inclusive complete maximum 524 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsFlowchartrunstate.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 524 bytes.
--- @brief Construct Ros1Rm_msgsFlowchartrunstate with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsFlowchartrunstate value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsFlowchartrunstate.encode
--- @field new fun(values?: table): Ros1Rm_msgsFlowchartrunstate
--- @brief Encode a complete Ros1Rm_msgsFlowchartrunstate value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsFlowchartrunstate [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..524 bytes.
--- @see Ros1Rm_msgsFlowchartrunstate.decode
--- @field encode fun(value: Ros1Rm_msgsFlowchartrunstate): string
--- @brief Decode exactly one complete Ros1Rm_msgsFlowchartrunstate canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsFlowchartrunstate value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsFlowchartrunstate.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsFlowchartrunstate
local Ros1Rm_msgsFlowchartrunstate = classes["Ros1Rm_msgsFlowchartrunstate"]

--- @class Ros1Rm_msgsForce_Position_Move_Joint
--- @brief Complete ROS1 rm_msgs/Force_Position_Move_Joint value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field sensor integer Exact uint8 range 0..255.
--- @field mode integer Exact uint8 range 0..255.
--- @field dir integer Exact uint8 range 0..255.
--- @field force integer Exact int16 range -32768..32767.
--- @field dof integer Exact uint8 range 0..255.
--- @brief Ros1Rm_msgsForce_Position_Move_Joint.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Joint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsForce_Position_Move_Joint.NATIVE_TYPE: Exact normalized native type name rm_msgs/Force_Position_Move_Joint.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Joint.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Force_Position_Move_Joint.
--- @brief Ros1Rm_msgsForce_Position_Move_Joint.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Joint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsForce_Position_Move_Joint.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Joint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsForce_Position_Move_Joint.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Joint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Rm_msgsForce_Position_Move_Joint.MAX_WIRE_BYTES: Inclusive complete maximum 74 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Joint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 74 bytes.
--- @brief Construct Ros1Rm_msgsForce_Position_Move_Joint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsForce_Position_Move_Joint value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsForce_Position_Move_Joint.encode
--- @field new fun(values?: table): Ros1Rm_msgsForce_Position_Move_Joint
--- @brief Encode a complete Ros1Rm_msgsForce_Position_Move_Joint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsForce_Position_Move_Joint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..74 bytes.
--- @see Ros1Rm_msgsForce_Position_Move_Joint.decode
--- @field encode fun(value: Ros1Rm_msgsForce_Position_Move_Joint): string
--- @brief Decode exactly one complete Ros1Rm_msgsForce_Position_Move_Joint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsForce_Position_Move_Joint value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsForce_Position_Move_Joint.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsForce_Position_Move_Joint
local Ros1Rm_msgsForce_Position_Move_Joint = classes["Ros1Rm_msgsForce_Position_Move_Joint"]

--- @class Ros1Rm_msgsForce_Position_Move_Pose
--- @brief Complete ROS1 rm_msgs/Force_Position_Move_Pose value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field sensor integer Exact uint8 range 0..255.
--- @field mode integer Exact uint8 range 0..255.
--- @field dir integer Exact uint8 range 0..255.
--- @field force integer Exact int16 range -32768..32767.
--- @brief Ros1Rm_msgsForce_Position_Move_Pose.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Pose.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsForce_Position_Move_Pose.NATIVE_TYPE: Exact normalized native type name rm_msgs/Force_Position_Move_Pose.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Pose.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Force_Position_Move_Pose.
--- @brief Ros1Rm_msgsForce_Position_Move_Pose.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Pose.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsForce_Position_Move_Pose.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Pose.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsForce_Position_Move_Pose.MIN_WIRE_BYTES: Inclusive complete minimum 61 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Pose.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 61 bytes.
--- @brief Ros1Rm_msgsForce_Position_Move_Pose.MAX_WIRE_BYTES: Inclusive complete maximum 61 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Pose.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 61 bytes.
--- @brief Construct Ros1Rm_msgsForce_Position_Move_Pose with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsForce_Position_Move_Pose value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsForce_Position_Move_Pose.encode
--- @field new fun(values?: table): Ros1Rm_msgsForce_Position_Move_Pose
--- @brief Encode a complete Ros1Rm_msgsForce_Position_Move_Pose value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsForce_Position_Move_Pose [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 61..61 bytes.
--- @see Ros1Rm_msgsForce_Position_Move_Pose.decode
--- @field encode fun(value: Ros1Rm_msgsForce_Position_Move_Pose): string
--- @brief Decode exactly one complete Ros1Rm_msgsForce_Position_Move_Pose canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsForce_Position_Move_Pose value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsForce_Position_Move_Pose.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsForce_Position_Move_Pose
local Ros1Rm_msgsForce_Position_Move_Pose = classes["Ros1Rm_msgsForce_Position_Move_Pose"]

--- @class Ros1Rm_msgsForce_Position_Move_Pose_Custom
--- @brief Complete ROS1 rm_msgs/Force_Position_Move_Pose_Custom value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field sensor integer Exact uint8 range 0..255.
--- @field mode integer Exact uint8 range 0..255.
--- @field dir integer Exact uint8 range 0..255.
--- @field force integer Exact int16 range -32768..32767.
--- @field follow boolean Exact boolean; encoded as one byte0/1.
--- @field trajectory_mode integer Exact uint8 range 0..255.
--- @field radio integer Exact uint8 range 0..255.
--- @brief Ros1Rm_msgsForce_Position_Move_Pose_Custom.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Pose_Custom.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsForce_Position_Move_Pose_Custom.NATIVE_TYPE: Exact normalized native type name rm_msgs/Force_Position_Move_Pose_Custom.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Pose_Custom.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Force_Position_Move_Pose_Custom.
--- @brief Ros1Rm_msgsForce_Position_Move_Pose_Custom.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Pose_Custom.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsForce_Position_Move_Pose_Custom.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Pose_Custom.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsForce_Position_Move_Pose_Custom.MIN_WIRE_BYTES: Inclusive complete minimum 64 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Pose_Custom.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 64 bytes.
--- @brief Ros1Rm_msgsForce_Position_Move_Pose_Custom.MAX_WIRE_BYTES: Inclusive complete maximum 64 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_Move_Pose_Custom.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 64 bytes.
--- @brief Construct Ros1Rm_msgsForce_Position_Move_Pose_Custom with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsForce_Position_Move_Pose_Custom value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsForce_Position_Move_Pose_Custom.encode
--- @field new fun(values?: table): Ros1Rm_msgsForce_Position_Move_Pose_Custom
--- @brief Encode a complete Ros1Rm_msgsForce_Position_Move_Pose_Custom value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsForce_Position_Move_Pose_Custom [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 64..64 bytes.
--- @see Ros1Rm_msgsForce_Position_Move_Pose_Custom.decode
--- @field encode fun(value: Ros1Rm_msgsForce_Position_Move_Pose_Custom): string
--- @brief Decode exactly one complete Ros1Rm_msgsForce_Position_Move_Pose_Custom canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsForce_Position_Move_Pose_Custom value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsForce_Position_Move_Pose_Custom.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsForce_Position_Move_Pose_Custom
local Ros1Rm_msgsForce_Position_Move_Pose_Custom = classes["Ros1Rm_msgsForce_Position_Move_Pose_Custom"]

--- @class Ros1Rm_msgsForce_Position_State
--- @brief Complete ROS1 rm_msgs/Force_Position_State value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field force number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field arm_err integer Exact uint16 range 0..65535.
--- @field dof integer Exact uint8 range 0..255.
--- @brief Ros1Rm_msgsForce_Position_State.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_State.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsForce_Position_State.NATIVE_TYPE: Exact normalized native type name rm_msgs/Force_Position_State.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_State.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Force_Position_State.
--- @brief Ros1Rm_msgsForce_Position_State.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_State.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsForce_Position_State.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_State.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsForce_Position_State.MIN_WIRE_BYTES: Inclusive complete minimum 11 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_State.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 11 bytes.
--- @brief Ros1Rm_msgsForce_Position_State.MAX_WIRE_BYTES: Inclusive complete maximum 75 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsForce_Position_State.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 75 bytes.
--- @brief Construct Ros1Rm_msgsForce_Position_State with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsForce_Position_State value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsForce_Position_State.encode
--- @field new fun(values?: table): Ros1Rm_msgsForce_Position_State
--- @brief Encode a complete Ros1Rm_msgsForce_Position_State value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsForce_Position_State [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 11..75 bytes.
--- @see Ros1Rm_msgsForce_Position_State.decode
--- @field encode fun(value: Ros1Rm_msgsForce_Position_State): string
--- @brief Decode exactly one complete Ros1Rm_msgsForce_Position_State canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsForce_Position_State value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsForce_Position_State.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsForce_Position_State
local Ros1Rm_msgsForce_Position_State = classes["Ros1Rm_msgsForce_Position_State"]

--- @class Ros1Rm_msgsGetArmState_Command
--- @brief Complete ROS1 rm_msgs/GetArmState_Command value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field command string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Rm_msgsGetArmState_Command.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGetArmState_Command.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsGetArmState_Command.NATIVE_TYPE: Exact normalized native type name rm_msgs/GetArmState_Command.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGetArmState_Command.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/GetArmState_Command.
--- @brief Ros1Rm_msgsGetArmState_Command.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGetArmState_Command.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsGetArmState_Command.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGetArmState_Command.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsGetArmState_Command.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGetArmState_Command.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsGetArmState_Command.MAX_WIRE_BYTES: Inclusive complete maximum 260 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGetArmState_Command.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 260 bytes.
--- @brief Construct Ros1Rm_msgsGetArmState_Command with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsGetArmState_Command value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsGetArmState_Command.encode
--- @field new fun(values?: table): Ros1Rm_msgsGetArmState_Command
--- @brief Encode a complete Ros1Rm_msgsGetArmState_Command value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsGetArmState_Command [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..260 bytes.
--- @see Ros1Rm_msgsGetArmState_Command.decode
--- @field encode fun(value: Ros1Rm_msgsGetArmState_Command): string
--- @brief Decode exactly one complete Ros1Rm_msgsGetArmState_Command canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsGetArmState_Command value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsGetArmState_Command.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsGetArmState_Command
local Ros1Rm_msgsGetArmState_Command = classes["Ros1Rm_msgsGetArmState_Command"]

--- @class Ros1Rm_msgsGet_TCP_Master_List_Param
--- @brief Complete ROS1 rm_msgs/Get_TCP_Master_List_Param value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field page_num integer Exact int32 range -2147483648..2147483647.
--- @field page_size integer Exact int32 range -2147483648..2147483647.
--- @field vague_search string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Rm_msgsGet_TCP_Master_List_Param.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGet_TCP_Master_List_Param.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsGet_TCP_Master_List_Param.NATIVE_TYPE: Exact normalized native type name rm_msgs/Get_TCP_Master_List_Param.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGet_TCP_Master_List_Param.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Get_TCP_Master_List_Param.
--- @brief Ros1Rm_msgsGet_TCP_Master_List_Param.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGet_TCP_Master_List_Param.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsGet_TCP_Master_List_Param.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGet_TCP_Master_List_Param.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsGet_TCP_Master_List_Param.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGet_TCP_Master_List_Param.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Rm_msgsGet_TCP_Master_List_Param.MAX_WIRE_BYTES: Inclusive complete maximum 268 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGet_TCP_Master_List_Param.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 268 bytes.
--- @brief Construct Ros1Rm_msgsGet_TCP_Master_List_Param with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsGet_TCP_Master_List_Param value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsGet_TCP_Master_List_Param.encode
--- @field new fun(values?: table): Ros1Rm_msgsGet_TCP_Master_List_Param
--- @brief Encode a complete Ros1Rm_msgsGet_TCP_Master_List_Param value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsGet_TCP_Master_List_Param [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..268 bytes.
--- @see Ros1Rm_msgsGet_TCP_Master_List_Param.decode
--- @field encode fun(value: Ros1Rm_msgsGet_TCP_Master_List_Param): string
--- @brief Decode exactly one complete Ros1Rm_msgsGet_TCP_Master_List_Param canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsGet_TCP_Master_List_Param value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsGet_TCP_Master_List_Param.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsGet_TCP_Master_List_Param
local Ros1Rm_msgsGet_TCP_Master_List_Param = classes["Ros1Rm_msgsGet_TCP_Master_List_Param"]

--- @class Ros1Rm_msgsGettrajectorylist
--- @brief Complete ROS1 rm_msgs/Gettrajectorylist value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field page_num integer Exact int32 range -2147483648..2147483647.
--- @field page_size integer Exact int32 range -2147483648..2147483647.
--- @field vague_search string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Rm_msgsGettrajectorylist.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGettrajectorylist.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsGettrajectorylist.NATIVE_TYPE: Exact normalized native type name rm_msgs/Gettrajectorylist.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGettrajectorylist.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Gettrajectorylist.
--- @brief Ros1Rm_msgsGettrajectorylist.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGettrajectorylist.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsGettrajectorylist.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGettrajectorylist.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsGettrajectorylist.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGettrajectorylist.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Rm_msgsGettrajectorylist.MAX_WIRE_BYTES: Inclusive complete maximum 268 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGettrajectorylist.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 268 bytes.
--- @brief Construct Ros1Rm_msgsGettrajectorylist with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsGettrajectorylist value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsGettrajectorylist.encode
--- @field new fun(values?: table): Ros1Rm_msgsGettrajectorylist
--- @brief Encode a complete Ros1Rm_msgsGettrajectorylist value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsGettrajectorylist [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..268 bytes.
--- @see Ros1Rm_msgsGettrajectorylist.decode
--- @field encode fun(value: Ros1Rm_msgsGettrajectorylist): string
--- @brief Decode exactly one complete Ros1Rm_msgsGettrajectorylist canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsGettrajectorylist value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsGettrajectorylist.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsGettrajectorylist
local Ros1Rm_msgsGettrajectorylist = classes["Ros1Rm_msgsGettrajectorylist"]

--- @class Ros1Rm_msgsGripper_Pick
--- @brief Complete ROS1 rm_msgs/Gripper_Pick value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speed integer Exact uint16 range 0..65535.
--- @field force integer Exact uint16 range 0..65535.
--- @brief Ros1Rm_msgsGripper_Pick.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGripper_Pick.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsGripper_Pick.NATIVE_TYPE: Exact normalized native type name rm_msgs/Gripper_Pick.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGripper_Pick.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Gripper_Pick.
--- @brief Ros1Rm_msgsGripper_Pick.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGripper_Pick.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsGripper_Pick.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGripper_Pick.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsGripper_Pick.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGripper_Pick.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsGripper_Pick.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGripper_Pick.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Rm_msgsGripper_Pick with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsGripper_Pick value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsGripper_Pick.encode
--- @field new fun(values?: table): Ros1Rm_msgsGripper_Pick
--- @brief Encode a complete Ros1Rm_msgsGripper_Pick value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsGripper_Pick [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Rm_msgsGripper_Pick.decode
--- @field encode fun(value: Ros1Rm_msgsGripper_Pick): string
--- @brief Decode exactly one complete Ros1Rm_msgsGripper_Pick canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsGripper_Pick value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsGripper_Pick.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsGripper_Pick
local Ros1Rm_msgsGripper_Pick = classes["Ros1Rm_msgsGripper_Pick"]

--- @class Ros1Rm_msgsGripper_Set
--- @brief Complete ROS1 rm_msgs/Gripper_Set value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field position integer Exact uint16 range 0..65535.
--- @brief Ros1Rm_msgsGripper_Set.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGripper_Set.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsGripper_Set.NATIVE_TYPE: Exact normalized native type name rm_msgs/Gripper_Set.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGripper_Set.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Gripper_Set.
--- @brief Ros1Rm_msgsGripper_Set.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGripper_Set.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsGripper_Set.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGripper_Set.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsGripper_Set.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGripper_Set.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Rm_msgsGripper_Set.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsGripper_Set.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Rm_msgsGripper_Set with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsGripper_Set value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsGripper_Set.encode
--- @field new fun(values?: table): Ros1Rm_msgsGripper_Set
--- @brief Encode a complete Ros1Rm_msgsGripper_Set value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsGripper_Set [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Rm_msgsGripper_Set.decode
--- @field encode fun(value: Ros1Rm_msgsGripper_Set): string
--- @brief Decode exactly one complete Ros1Rm_msgsGripper_Set canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsGripper_Set value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsGripper_Set.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsGripper_Set
local Ros1Rm_msgsGripper_Set = classes["Ros1Rm_msgsGripper_Set"]

--- @class Ros1Rm_msgsHand_Angle
--- @brief Complete ROS1 rm_msgs/Hand_Angle value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field hand_angle integer[] Exact int16 range -32768..32767. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsHand_Angle.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Angle.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsHand_Angle.NATIVE_TYPE: Exact normalized native type name rm_msgs/Hand_Angle.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Angle.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Hand_Angle.
--- @brief Ros1Rm_msgsHand_Angle.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Angle.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsHand_Angle.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Angle.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsHand_Angle.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Angle.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros1Rm_msgsHand_Angle.MAX_WIRE_BYTES: Inclusive complete maximum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Angle.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 13 bytes.
--- @brief Construct Ros1Rm_msgsHand_Angle with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsHand_Angle value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsHand_Angle.encode
--- @field new fun(values?: table): Ros1Rm_msgsHand_Angle
--- @brief Encode a complete Ros1Rm_msgsHand_Angle value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsHand_Angle [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..13 bytes.
--- @see Ros1Rm_msgsHand_Angle.decode
--- @field encode fun(value: Ros1Rm_msgsHand_Angle): string
--- @brief Decode exactly one complete Ros1Rm_msgsHand_Angle canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsHand_Angle value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsHand_Angle.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsHand_Angle
local Ros1Rm_msgsHand_Angle = classes["Ros1Rm_msgsHand_Angle"]

--- @class Ros1Rm_msgsHand_Force
--- @brief Complete ROS1 rm_msgs/Hand_Force value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field hand_force integer Exact uint16 range 0..65535.
--- @brief Ros1Rm_msgsHand_Force.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Force.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsHand_Force.NATIVE_TYPE: Exact normalized native type name rm_msgs/Hand_Force.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Force.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Hand_Force.
--- @brief Ros1Rm_msgsHand_Force.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Force.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsHand_Force.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Force.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsHand_Force.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Force.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Rm_msgsHand_Force.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Force.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Rm_msgsHand_Force with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsHand_Force value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsHand_Force.encode
--- @field new fun(values?: table): Ros1Rm_msgsHand_Force
--- @brief Encode a complete Ros1Rm_msgsHand_Force value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsHand_Force [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Rm_msgsHand_Force.decode
--- @field encode fun(value: Ros1Rm_msgsHand_Force): string
--- @brief Decode exactly one complete Ros1Rm_msgsHand_Force canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsHand_Force value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsHand_Force.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsHand_Force
local Ros1Rm_msgsHand_Force = classes["Ros1Rm_msgsHand_Force"]

--- @class Ros1Rm_msgsHand_Posture
--- @brief Complete ROS1 rm_msgs/Hand_Posture value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field posture_num integer Exact uint16 range 0..65535.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsHand_Posture.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Posture.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsHand_Posture.NATIVE_TYPE: Exact normalized native type name rm_msgs/Hand_Posture.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Posture.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Hand_Posture.
--- @brief Ros1Rm_msgsHand_Posture.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Posture.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsHand_Posture.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Posture.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsHand_Posture.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Posture.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Rm_msgsHand_Posture.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Posture.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Rm_msgsHand_Posture with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsHand_Posture value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsHand_Posture.encode
--- @field new fun(values?: table): Ros1Rm_msgsHand_Posture
--- @brief Encode a complete Ros1Rm_msgsHand_Posture value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsHand_Posture [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Rm_msgsHand_Posture.decode
--- @field encode fun(value: Ros1Rm_msgsHand_Posture): string
--- @brief Decode exactly one complete Ros1Rm_msgsHand_Posture canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsHand_Posture value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsHand_Posture.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsHand_Posture
local Ros1Rm_msgsHand_Posture = classes["Ros1Rm_msgsHand_Posture"]

--- @class Ros1Rm_msgsHand_Seq
--- @brief Complete ROS1 rm_msgs/Hand_Seq value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field seq_num integer Exact uint16 range 0..65535.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsHand_Seq.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Seq.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsHand_Seq.NATIVE_TYPE: Exact normalized native type name rm_msgs/Hand_Seq.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Seq.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Hand_Seq.
--- @brief Ros1Rm_msgsHand_Seq.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Seq.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsHand_Seq.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Seq.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsHand_Seq.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Seq.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros1Rm_msgsHand_Seq.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Seq.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros1Rm_msgsHand_Seq with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsHand_Seq value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsHand_Seq.encode
--- @field new fun(values?: table): Ros1Rm_msgsHand_Seq
--- @brief Encode a complete Ros1Rm_msgsHand_Seq value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsHand_Seq [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros1Rm_msgsHand_Seq.decode
--- @field encode fun(value: Ros1Rm_msgsHand_Seq): string
--- @brief Decode exactly one complete Ros1Rm_msgsHand_Seq canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsHand_Seq value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsHand_Seq.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsHand_Seq
local Ros1Rm_msgsHand_Seq = classes["Ros1Rm_msgsHand_Seq"]

--- @class Ros1Rm_msgsHand_Speed
--- @brief Complete ROS1 rm_msgs/Hand_Speed value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field hand_speed integer Exact uint16 range 0..65535.
--- @brief Ros1Rm_msgsHand_Speed.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Speed.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsHand_Speed.NATIVE_TYPE: Exact normalized native type name rm_msgs/Hand_Speed.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Speed.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Hand_Speed.
--- @brief Ros1Rm_msgsHand_Speed.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Speed.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsHand_Speed.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Speed.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsHand_Speed.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Speed.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Rm_msgsHand_Speed.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Speed.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Rm_msgsHand_Speed with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsHand_Speed value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsHand_Speed.encode
--- @field new fun(values?: table): Ros1Rm_msgsHand_Speed
--- @brief Encode a complete Ros1Rm_msgsHand_Speed value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsHand_Speed [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Rm_msgsHand_Speed.decode
--- @field encode fun(value: Ros1Rm_msgsHand_Speed): string
--- @brief Decode exactly one complete Ros1Rm_msgsHand_Speed canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsHand_Speed value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsHand_Speed.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsHand_Speed
local Ros1Rm_msgsHand_Speed = classes["Ros1Rm_msgsHand_Speed"]

--- @class Ros1Rm_msgsHand_Status
--- @brief Complete ROS1 rm_msgs/Hand_Status value and codec.
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
--- @brief Ros1Rm_msgsHand_Status.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Status.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsHand_Status.NATIVE_TYPE: Exact normalized native type name rm_msgs/Hand_Status.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Status.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Hand_Status.
--- @brief Ros1Rm_msgsHand_Status.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Status.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsHand_Status.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Status.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsHand_Status.MIN_WIRE_BYTES: Inclusive complete minimum 50 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Status.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 50 bytes.
--- @brief Ros1Rm_msgsHand_Status.MAX_WIRE_BYTES: Inclusive complete maximum 50 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsHand_Status.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 50 bytes.
--- @brief Construct Ros1Rm_msgsHand_Status with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsHand_Status value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsHand_Status.encode
--- @field new fun(values?: table): Ros1Rm_msgsHand_Status
--- @brief Encode a complete Ros1Rm_msgsHand_Status value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsHand_Status [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 50..50 bytes.
--- @see Ros1Rm_msgsHand_Status.decode
--- @field encode fun(value: Ros1Rm_msgsHand_Status): string
--- @brief Decode exactly one complete Ros1Rm_msgsHand_Status canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsHand_Status value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsHand_Status.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsHand_Status
local Ros1Rm_msgsHand_Status = classes["Ros1Rm_msgsHand_Status"]

--- @class Ros1Rm_msgsIO_Update
--- @brief Complete ROS1 rm_msgs/IO_Update value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field type integer Exact uint8 range 0..255.
--- @brief Ros1Rm_msgsIO_Update.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsIO_Update.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsIO_Update.NATIVE_TYPE: Exact normalized native type name rm_msgs/IO_Update.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsIO_Update.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/IO_Update.
--- @brief Ros1Rm_msgsIO_Update.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsIO_Update.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsIO_Update.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsIO_Update.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsIO_Update.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsIO_Update.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Rm_msgsIO_Update.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsIO_Update.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Rm_msgsIO_Update with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsIO_Update value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsIO_Update.encode
--- @field new fun(values?: table): Ros1Rm_msgsIO_Update
--- @brief Encode a complete Ros1Rm_msgsIO_Update value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsIO_Update [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Rm_msgsIO_Update.decode
--- @field encode fun(value: Ros1Rm_msgsIO_Update): string
--- @brief Decode exactly one complete Ros1Rm_msgsIO_Update canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsIO_Update value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsIO_Update.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsIO_Update
local Ros1Rm_msgsIO_Update = classes["Ros1Rm_msgsIO_Update"]

--- @class Ros1Rm_msgsJointPos
--- @brief Complete ROS1 rm_msgs/JointPos value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field expand number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Rm_msgsJointPos.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointPos.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJointPos.NATIVE_TYPE: Exact normalized native type name rm_msgs/JointPos.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointPos.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/JointPos.
--- @brief Ros1Rm_msgsJointPos.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointPos.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJointPos.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointPos.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJointPos.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointPos.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Rm_msgsJointPos.MAX_WIRE_BYTES: Inclusive complete maximum 72 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointPos.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 72 bytes.
--- @brief Construct Ros1Rm_msgsJointPos with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJointPos value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJointPos.encode
--- @field new fun(values?: table): Ros1Rm_msgsJointPos
--- @brief Encode a complete Ros1Rm_msgsJointPos value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJointPos [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..72 bytes.
--- @see Ros1Rm_msgsJointPos.decode
--- @field encode fun(value: Ros1Rm_msgsJointPos): string
--- @brief Decode exactly one complete Ros1Rm_msgsJointPos canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJointPos value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJointPos.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJointPos
local Ros1Rm_msgsJointPos = classes["Ros1Rm_msgsJointPos"]

--- @class Ros1Rm_msgsJointPosCustom
--- @brief Complete ROS1 rm_msgs/JointPosCustom value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field expand number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field follow boolean Exact boolean; encoded as one byte0/1.
--- @field trajectory_mode integer Exact uint8 range 0..255.
--- @field radio integer Exact uint8 range 0..255.
--- @brief Ros1Rm_msgsJointPosCustom.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointPosCustom.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJointPosCustom.NATIVE_TYPE: Exact normalized native type name rm_msgs/JointPosCustom.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointPosCustom.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/JointPosCustom.
--- @brief Ros1Rm_msgsJointPosCustom.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointPosCustom.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJointPosCustom.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointPosCustom.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJointPosCustom.MIN_WIRE_BYTES: Inclusive complete minimum 11 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointPosCustom.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 11 bytes.
--- @brief Ros1Rm_msgsJointPosCustom.MAX_WIRE_BYTES: Inclusive complete maximum 75 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointPosCustom.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 75 bytes.
--- @brief Construct Ros1Rm_msgsJointPosCustom with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJointPosCustom value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJointPosCustom.encode
--- @field new fun(values?: table): Ros1Rm_msgsJointPosCustom
--- @brief Encode a complete Ros1Rm_msgsJointPosCustom value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJointPosCustom [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 11..75 bytes.
--- @see Ros1Rm_msgsJointPosCustom.decode
--- @field encode fun(value: Ros1Rm_msgsJointPosCustom): string
--- @brief Decode exactly one complete Ros1Rm_msgsJointPosCustom canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJointPosCustom value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJointPosCustom.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJointPosCustom
local Ros1Rm_msgsJointPosCustom = classes["Ros1Rm_msgsJointPosCustom"]

--- @class Ros1Rm_msgsJoint_Current
--- @brief Complete ROS1 rm_msgs/Joint_Current value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_current number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsJoint_Current.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Current.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJoint_Current.NATIVE_TYPE: Exact normalized native type name rm_msgs/Joint_Current.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Current.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Joint_Current.
--- @brief Ros1Rm_msgsJoint_Current.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Current.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJoint_Current.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Current.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJoint_Current.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Current.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsJoint_Current.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Current.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros1Rm_msgsJoint_Current with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJoint_Current value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJoint_Current.encode
--- @field new fun(values?: table): Ros1Rm_msgsJoint_Current
--- @brief Encode a complete Ros1Rm_msgsJoint_Current value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJoint_Current [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros1Rm_msgsJoint_Current.decode
--- @field encode fun(value: Ros1Rm_msgsJoint_Current): string
--- @brief Decode exactly one complete Ros1Rm_msgsJoint_Current canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJoint_Current value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJoint_Current.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJoint_Current
local Ros1Rm_msgsJoint_Current = classes["Ros1Rm_msgsJoint_Current"]

--- @class Ros1Rm_msgsJoint_En_Flag
--- @brief Complete ROS1 rm_msgs/Joint_En_Flag value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_en_flag boolean[] Exact boolean; encoded as one byte0/1. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsJoint_En_Flag.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_En_Flag.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJoint_En_Flag.NATIVE_TYPE: Exact normalized native type name rm_msgs/Joint_En_Flag.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_En_Flag.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Joint_En_Flag.
--- @brief Ros1Rm_msgsJoint_En_Flag.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_En_Flag.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJoint_En_Flag.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_En_Flag.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJoint_En_Flag.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_En_Flag.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsJoint_En_Flag.MAX_WIRE_BYTES: Inclusive complete maximum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_En_Flag.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 20 bytes.
--- @brief Construct Ros1Rm_msgsJoint_En_Flag with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJoint_En_Flag value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJoint_En_Flag.encode
--- @field new fun(values?: table): Ros1Rm_msgsJoint_En_Flag
--- @brief Encode a complete Ros1Rm_msgsJoint_En_Flag value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJoint_En_Flag [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..20 bytes.
--- @see Ros1Rm_msgsJoint_En_Flag.decode
--- @field encode fun(value: Ros1Rm_msgsJoint_En_Flag): string
--- @brief Decode exactly one complete Ros1Rm_msgsJoint_En_Flag canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJoint_En_Flag value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJoint_En_Flag.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJoint_En_Flag
local Ros1Rm_msgsJoint_En_Flag = classes["Ros1Rm_msgsJoint_En_Flag"]

--- @class Ros1Rm_msgsJoint_Enable
--- @brief Complete ROS1 rm_msgs/Joint_Enable value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_num integer Exact uint8 range 0..255.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsJoint_Enable.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Enable.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJoint_Enable.NATIVE_TYPE: Exact normalized native type name rm_msgs/Joint_Enable.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Enable.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Joint_Enable.
--- @brief Ros1Rm_msgsJoint_Enable.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Enable.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJoint_Enable.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Enable.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJoint_Enable.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Enable.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Rm_msgsJoint_Enable.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Enable.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Rm_msgsJoint_Enable with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJoint_Enable value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJoint_Enable.encode
--- @field new fun(values?: table): Ros1Rm_msgsJoint_Enable
--- @brief Encode a complete Ros1Rm_msgsJoint_Enable value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJoint_Enable [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Rm_msgsJoint_Enable.decode
--- @field encode fun(value: Ros1Rm_msgsJoint_Enable): string
--- @brief Decode exactly one complete Ros1Rm_msgsJoint_Enable canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJoint_Enable value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJoint_Enable.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJoint_Enable
local Ros1Rm_msgsJoint_Enable = classes["Ros1Rm_msgsJoint_Enable"]

--- @class Ros1Rm_msgsJoint_Error_Code
--- @brief Complete ROS1 rm_msgs/Joint_Error_Code value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_error integer[] Exact uint16 range 0..65535. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsJoint_Error_Code.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Error_Code.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJoint_Error_Code.NATIVE_TYPE: Exact normalized native type name rm_msgs/Joint_Error_Code.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Error_Code.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Joint_Error_Code.
--- @brief Ros1Rm_msgsJoint_Error_Code.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Error_Code.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJoint_Error_Code.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Error_Code.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJoint_Error_Code.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Error_Code.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsJoint_Error_Code.MAX_WIRE_BYTES: Inclusive complete maximum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Error_Code.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 36 bytes.
--- @brief Construct Ros1Rm_msgsJoint_Error_Code with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJoint_Error_Code value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJoint_Error_Code.encode
--- @field new fun(values?: table): Ros1Rm_msgsJoint_Error_Code
--- @brief Encode a complete Ros1Rm_msgsJoint_Error_Code value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJoint_Error_Code [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..36 bytes.
--- @see Ros1Rm_msgsJoint_Error_Code.decode
--- @field encode fun(value: Ros1Rm_msgsJoint_Error_Code): string
--- @brief Decode exactly one complete Ros1Rm_msgsJoint_Error_Code canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJoint_Error_Code value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJoint_Error_Code.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJoint_Error_Code
local Ros1Rm_msgsJoint_Error_Code = classes["Ros1Rm_msgsJoint_Error_Code"]

--- @class Ros1Rm_msgsJoint_Max_Speed
--- @brief Complete ROS1 rm_msgs/Joint_Max_Speed value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_num integer Exact uint8 range 0..255.
--- @field joint_max_speed number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Rm_msgsJoint_Max_Speed.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Max_Speed.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJoint_Max_Speed.NATIVE_TYPE: Exact normalized native type name rm_msgs/Joint_Max_Speed.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Max_Speed.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Joint_Max_Speed.
--- @brief Ros1Rm_msgsJoint_Max_Speed.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Max_Speed.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJoint_Max_Speed.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Max_Speed.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJoint_Max_Speed.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Max_Speed.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Rm_msgsJoint_Max_Speed.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Max_Speed.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros1Rm_msgsJoint_Max_Speed with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJoint_Max_Speed value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJoint_Max_Speed.encode
--- @field new fun(values?: table): Ros1Rm_msgsJoint_Max_Speed
--- @brief Encode a complete Ros1Rm_msgsJoint_Max_Speed value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJoint_Max_Speed [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros1Rm_msgsJoint_Max_Speed.decode
--- @field encode fun(value: Ros1Rm_msgsJoint_Max_Speed): string
--- @brief Decode exactly one complete Ros1Rm_msgsJoint_Max_Speed canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJoint_Max_Speed value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJoint_Max_Speed.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJoint_Max_Speed
local Ros1Rm_msgsJoint_Max_Speed = classes["Ros1Rm_msgsJoint_Max_Speed"]

--- @class Ros1Rm_msgsJoint_PoseEuler
--- @brief Complete ROS1 rm_msgs/Joint_PoseEuler value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field euler number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 3 contiguous elements; holes and extra array keys are rejected.
--- @field position number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 3 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsJoint_PoseEuler.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_PoseEuler.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJoint_PoseEuler.NATIVE_TYPE: Exact normalized native type name rm_msgs/Joint_PoseEuler.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_PoseEuler.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Joint_PoseEuler.
--- @brief Ros1Rm_msgsJoint_PoseEuler.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_PoseEuler.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJoint_PoseEuler.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_PoseEuler.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJoint_PoseEuler.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_PoseEuler.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Rm_msgsJoint_PoseEuler.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_PoseEuler.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Rm_msgsJoint_PoseEuler with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJoint_PoseEuler value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJoint_PoseEuler.encode
--- @field new fun(values?: table): Ros1Rm_msgsJoint_PoseEuler
--- @brief Encode a complete Ros1Rm_msgsJoint_PoseEuler value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJoint_PoseEuler [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Rm_msgsJoint_PoseEuler.decode
--- @field encode fun(value: Ros1Rm_msgsJoint_PoseEuler): string
--- @brief Decode exactly one complete Ros1Rm_msgsJoint_PoseEuler canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJoint_PoseEuler value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJoint_PoseEuler.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJoint_PoseEuler
local Ros1Rm_msgsJoint_PoseEuler = classes["Ros1Rm_msgsJoint_PoseEuler"]

--- @class Ros1Rm_msgsJoint_Speed
--- @brief Complete ROS1 rm_msgs/Joint_Speed value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_speed number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsJoint_Speed.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Speed.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJoint_Speed.NATIVE_TYPE: Exact normalized native type name rm_msgs/Joint_Speed.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Speed.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Joint_Speed.
--- @brief Ros1Rm_msgsJoint_Speed.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Speed.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJoint_Speed.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Speed.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJoint_Speed.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Speed.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsJoint_Speed.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Speed.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros1Rm_msgsJoint_Speed with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJoint_Speed value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJoint_Speed.encode
--- @field new fun(values?: table): Ros1Rm_msgsJoint_Speed
--- @brief Encode a complete Ros1Rm_msgsJoint_Speed value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJoint_Speed [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros1Rm_msgsJoint_Speed.decode
--- @field encode fun(value: Ros1Rm_msgsJoint_Speed): string
--- @brief Decode exactly one complete Ros1Rm_msgsJoint_Speed canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJoint_Speed value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJoint_Speed.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJoint_Speed
local Ros1Rm_msgsJoint_Speed = classes["Ros1Rm_msgsJoint_Speed"]

--- @class Ros1Rm_msgsJoint_Step
--- @brief Complete ROS1 rm_msgs/Joint_Step value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_num integer Exact uint8 range 0..255.
--- @field step_angle number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field speed number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Rm_msgsJoint_Step.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Step.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJoint_Step.NATIVE_TYPE: Exact normalized native type name rm_msgs/Joint_Step.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Step.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Joint_Step.
--- @brief Ros1Rm_msgsJoint_Step.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Step.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJoint_Step.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Step.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJoint_Step.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Step.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros1Rm_msgsJoint_Step.MAX_WIRE_BYTES: Inclusive complete maximum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Step.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 9 bytes.
--- @brief Construct Ros1Rm_msgsJoint_Step with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJoint_Step value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJoint_Step.encode
--- @field new fun(values?: table): Ros1Rm_msgsJoint_Step
--- @brief Encode a complete Ros1Rm_msgsJoint_Step value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJoint_Step [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..9 bytes.
--- @see Ros1Rm_msgsJoint_Step.decode
--- @field encode fun(value: Ros1Rm_msgsJoint_Step): string
--- @brief Decode exactly one complete Ros1Rm_msgsJoint_Step canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJoint_Step value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJoint_Step.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJoint_Step
local Ros1Rm_msgsJoint_Step = classes["Ros1Rm_msgsJoint_Step"]

--- @class Ros1Rm_msgsJoint_Teach
--- @brief Complete ROS1 rm_msgs/Joint_Teach value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field teach_joint integer Exact int16 range -32768..32767.
--- @field direction string Strict UTF-8 without NUL; length0..256 bytes.
--- @field v integer Exact int16 range -32768..32767.
--- @brief Ros1Rm_msgsJoint_Teach.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Teach.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJoint_Teach.NATIVE_TYPE: Exact normalized native type name rm_msgs/Joint_Teach.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Teach.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Joint_Teach.
--- @brief Ros1Rm_msgsJoint_Teach.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Teach.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJoint_Teach.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Teach.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJoint_Teach.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Teach.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Rm_msgsJoint_Teach.MAX_WIRE_BYTES: Inclusive complete maximum 264 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Teach.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 264 bytes.
--- @brief Construct Ros1Rm_msgsJoint_Teach with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJoint_Teach value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJoint_Teach.encode
--- @field new fun(values?: table): Ros1Rm_msgsJoint_Teach
--- @brief Encode a complete Ros1Rm_msgsJoint_Teach value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJoint_Teach [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..264 bytes.
--- @see Ros1Rm_msgsJoint_Teach.decode
--- @field encode fun(value: Ros1Rm_msgsJoint_Teach): string
--- @brief Decode exactly one complete Ros1Rm_msgsJoint_Teach canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJoint_Teach value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJoint_Teach.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJoint_Teach
local Ros1Rm_msgsJoint_Teach = classes["Ros1Rm_msgsJoint_Teach"]

--- @class Ros1Rm_msgsJoint_Temperature
--- @brief Complete ROS1 rm_msgs/Joint_Temperature value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_temperature number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsJoint_Temperature.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Temperature.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJoint_Temperature.NATIVE_TYPE: Exact normalized native type name rm_msgs/Joint_Temperature.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Temperature.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Joint_Temperature.
--- @brief Ros1Rm_msgsJoint_Temperature.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Temperature.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJoint_Temperature.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Temperature.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJoint_Temperature.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Temperature.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsJoint_Temperature.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Temperature.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros1Rm_msgsJoint_Temperature with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJoint_Temperature value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJoint_Temperature.encode
--- @field new fun(values?: table): Ros1Rm_msgsJoint_Temperature
--- @brief Encode a complete Ros1Rm_msgsJoint_Temperature value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJoint_Temperature [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros1Rm_msgsJoint_Temperature.decode
--- @field encode fun(value: Ros1Rm_msgsJoint_Temperature): string
--- @brief Decode exactly one complete Ros1Rm_msgsJoint_Temperature canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJoint_Temperature value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJoint_Temperature.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJoint_Temperature
local Ros1Rm_msgsJoint_Temperature = classes["Ros1Rm_msgsJoint_Temperature"]

--- @class Ros1Rm_msgsJoint_Voltage
--- @brief Complete ROS1 rm_msgs/Joint_Voltage value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_voltage number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsJoint_Voltage.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Voltage.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJoint_Voltage.NATIVE_TYPE: Exact normalized native type name rm_msgs/Joint_Voltage.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Voltage.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Joint_Voltage.
--- @brief Ros1Rm_msgsJoint_Voltage.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Voltage.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJoint_Voltage.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Voltage.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJoint_Voltage.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Voltage.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsJoint_Voltage.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJoint_Voltage.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros1Rm_msgsJoint_Voltage with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJoint_Voltage value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJoint_Voltage.encode
--- @field new fun(values?: table): Ros1Rm_msgsJoint_Voltage
--- @brief Encode a complete Ros1Rm_msgsJoint_Voltage value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJoint_Voltage [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros1Rm_msgsJoint_Voltage.decode
--- @field encode fun(value: Ros1Rm_msgsJoint_Voltage): string
--- @brief Decode exactly one complete Ros1Rm_msgsJoint_Voltage canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJoint_Voltage value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJoint_Voltage.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJoint_Voltage
local Ros1Rm_msgsJoint_Voltage = classes["Ros1Rm_msgsJoint_Voltage"]

--- @class Ros1Rm_msgsJointversion
--- @brief Complete ROS1 rm_msgs/Jointversion value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_version string[] Strict UTF-8 without NUL; length0..256 bytes. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsJointversion.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointversion.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsJointversion.NATIVE_TYPE: Exact normalized native type name rm_msgs/Jointversion.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointversion.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Jointversion.
--- @brief Ros1Rm_msgsJointversion.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointversion.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsJointversion.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointversion.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsJointversion.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointversion.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros1Rm_msgsJointversion.MAX_WIRE_BYTES: Inclusive complete maximum 1820 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsJointversion.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1820 bytes.
--- @brief Construct Ros1Rm_msgsJointversion with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsJointversion value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsJointversion.encode
--- @field new fun(values?: table): Ros1Rm_msgsJointversion
--- @brief Encode a complete Ros1Rm_msgsJointversion value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsJointversion [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..1820 bytes.
--- @see Ros1Rm_msgsJointversion.decode
--- @field encode fun(value: Ros1Rm_msgsJointversion): string
--- @brief Decode exactly one complete Ros1Rm_msgsJointversion canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsJointversion value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsJointversion.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsJointversion
local Ros1Rm_msgsJointversion = classes["Ros1Rm_msgsJointversion"]

--- @class Ros1Rm_msgsLiftState
--- @brief Complete ROS1 rm_msgs/LiftState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field height integer Exact int16 range -32768..32767.
--- @field current integer Exact int16 range -32768..32767.
--- @field err_flag integer Exact uint16 range 0..65535.
--- @field mode integer Exact int8 range -128..127.
--- @brief Ros1Rm_msgsLiftState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLiftState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsLiftState.NATIVE_TYPE: Exact normalized native type name rm_msgs/LiftState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLiftState.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/LiftState.
--- @brief Ros1Rm_msgsLiftState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLiftState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsLiftState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLiftState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsLiftState.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLiftState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros1Rm_msgsLiftState.MAX_WIRE_BYTES: Inclusive complete maximum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLiftState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 7 bytes.
--- @brief Construct Ros1Rm_msgsLiftState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsLiftState value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsLiftState.encode
--- @field new fun(values?: table): Ros1Rm_msgsLiftState
--- @brief Encode a complete Ros1Rm_msgsLiftState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsLiftState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..7 bytes.
--- @see Ros1Rm_msgsLiftState.decode
--- @field encode fun(value: Ros1Rm_msgsLiftState): string
--- @brief Decode exactly one complete Ros1Rm_msgsLiftState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsLiftState value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsLiftState.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsLiftState
local Ros1Rm_msgsLiftState = classes["Ros1Rm_msgsLiftState"]

--- @class Ros1Rm_msgsLift_Height
--- @brief Complete ROS1 rm_msgs/Lift_Height value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field height integer Exact uint16 range 0..65535.
--- @field speed integer Exact uint16 range 0..65535.
--- @brief Ros1Rm_msgsLift_Height.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_Height.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsLift_Height.NATIVE_TYPE: Exact normalized native type name rm_msgs/Lift_Height.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_Height.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Lift_Height.
--- @brief Ros1Rm_msgsLift_Height.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_Height.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsLift_Height.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_Height.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsLift_Height.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_Height.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsLift_Height.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_Height.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Rm_msgsLift_Height with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsLift_Height value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsLift_Height.encode
--- @field new fun(values?: table): Ros1Rm_msgsLift_Height
--- @brief Encode a complete Ros1Rm_msgsLift_Height value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsLift_Height [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Rm_msgsLift_Height.decode
--- @field encode fun(value: Ros1Rm_msgsLift_Height): string
--- @brief Decode exactly one complete Ros1Rm_msgsLift_Height canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsLift_Height value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsLift_Height.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsLift_Height
local Ros1Rm_msgsLift_Height = classes["Ros1Rm_msgsLift_Height"]

--- @class Ros1Rm_msgsLift_In_Position
--- @brief Complete ROS1 rm_msgs/Lift_In_Position value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field device integer Exact uint8 range 0..255.
--- @field state string Strict UTF-8 without NUL; length0..256 bytes.
--- @field trajectory_connect integer Exact uint8 range 0..255.
--- @field trajectory_state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsLift_In_Position.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_In_Position.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsLift_In_Position.NATIVE_TYPE: Exact normalized native type name rm_msgs/Lift_In_Position.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_In_Position.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Lift_In_Position.
--- @brief Ros1Rm_msgsLift_In_Position.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_In_Position.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsLift_In_Position.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_In_Position.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsLift_In_Position.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_In_Position.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros1Rm_msgsLift_In_Position.MAX_WIRE_BYTES: Inclusive complete maximum 263 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_In_Position.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 263 bytes.
--- @brief Construct Ros1Rm_msgsLift_In_Position with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsLift_In_Position value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsLift_In_Position.encode
--- @field new fun(values?: table): Ros1Rm_msgsLift_In_Position
--- @brief Encode a complete Ros1Rm_msgsLift_In_Position value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsLift_In_Position [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..263 bytes.
--- @see Ros1Rm_msgsLift_In_Position.decode
--- @field encode fun(value: Ros1Rm_msgsLift_In_Position): string
--- @brief Decode exactly one complete Ros1Rm_msgsLift_In_Position canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsLift_In_Position value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsLift_In_Position.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsLift_In_Position
local Ros1Rm_msgsLift_In_Position = classes["Ros1Rm_msgsLift_In_Position"]

--- @class Ros1Rm_msgsLift_Speed
--- @brief Complete ROS1 rm_msgs/Lift_Speed value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speed integer Exact int16 range -32768..32767.
--- @brief Ros1Rm_msgsLift_Speed.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_Speed.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsLift_Speed.NATIVE_TYPE: Exact normalized native type name rm_msgs/Lift_Speed.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_Speed.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Lift_Speed.
--- @brief Ros1Rm_msgsLift_Speed.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_Speed.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsLift_Speed.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_Speed.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsLift_Speed.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_Speed.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Rm_msgsLift_Speed.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsLift_Speed.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Rm_msgsLift_Speed with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsLift_Speed value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsLift_Speed.encode
--- @field new fun(values?: table): Ros1Rm_msgsLift_Speed
--- @brief Encode a complete Ros1Rm_msgsLift_Speed value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsLift_Speed [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Rm_msgsLift_Speed.decode
--- @field encode fun(value: Ros1Rm_msgsLift_Speed): string
--- @brief Decode exactly one complete Ros1Rm_msgsLift_Speed canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsLift_Speed value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsLift_Speed.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsLift_Speed
local Ros1Rm_msgsLift_Speed = classes["Ros1Rm_msgsLift_Speed"]

--- @class Ros1Rm_msgsManual_Set_Force_Pose
--- @brief Complete ROS1 rm_msgs/Manual_Set_Force_Pose value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pose string Strict UTF-8 without NUL; length0..256 bytes.
--- @field joint integer[] Exact int64 range -9223372036854775808..9223372036854775807. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsManual_Set_Force_Pose.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsManual_Set_Force_Pose.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsManual_Set_Force_Pose.NATIVE_TYPE: Exact normalized native type name rm_msgs/Manual_Set_Force_Pose.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsManual_Set_Force_Pose.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Manual_Set_Force_Pose.
--- @brief Ros1Rm_msgsManual_Set_Force_Pose.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsManual_Set_Force_Pose.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsManual_Set_Force_Pose.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsManual_Set_Force_Pose.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsManual_Set_Force_Pose.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsManual_Set_Force_Pose.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Rm_msgsManual_Set_Force_Pose.MAX_WIRE_BYTES: Inclusive complete maximum 392 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsManual_Set_Force_Pose.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 392 bytes.
--- @brief Construct Ros1Rm_msgsManual_Set_Force_Pose with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsManual_Set_Force_Pose value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsManual_Set_Force_Pose.encode
--- @field new fun(values?: table): Ros1Rm_msgsManual_Set_Force_Pose
--- @brief Encode a complete Ros1Rm_msgsManual_Set_Force_Pose value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsManual_Set_Force_Pose [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..392 bytes.
--- @see Ros1Rm_msgsManual_Set_Force_Pose.decode
--- @field encode fun(value: Ros1Rm_msgsManual_Set_Force_Pose): string
--- @brief Decode exactly one complete Ros1Rm_msgsManual_Set_Force_Pose canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsManual_Set_Force_Pose value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsManual_Set_Force_Pose.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsManual_Set_Force_Pose
local Ros1Rm_msgsManual_Set_Force_Pose = classes["Ros1Rm_msgsManual_Set_Force_Pose"]

--- @class Ros1Rm_msgsMastername
--- @brief Complete ROS1 rm_msgs/Mastername value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field master_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Rm_msgsMastername.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMastername.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsMastername.NATIVE_TYPE: Exact normalized native type name rm_msgs/Mastername.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMastername.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Mastername.
--- @brief Ros1Rm_msgsMastername.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMastername.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsMastername.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMastername.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsMastername.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMastername.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsMastername.MAX_WIRE_BYTES: Inclusive complete maximum 260 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMastername.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 260 bytes.
--- @brief Construct Ros1Rm_msgsMastername with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsMastername value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsMastername.encode
--- @field new fun(values?: table): Ros1Rm_msgsMastername
--- @brief Encode a complete Ros1Rm_msgsMastername value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsMastername [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..260 bytes.
--- @see Ros1Rm_msgsMastername.decode
--- @field encode fun(value: Ros1Rm_msgsMastername): string
--- @brief Decode exactly one complete Ros1Rm_msgsMastername canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsMastername value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsMastername.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsMastername
local Ros1Rm_msgsMastername = classes["Ros1Rm_msgsMastername"]

--- @class Ros1Rm_msgsModbusreaddata
--- @brief Complete ROS1 rm_msgs/Modbusreaddata value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field read_data integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsModbusreaddata.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbusreaddata.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsModbusreaddata.NATIVE_TYPE: Exact normalized native type name rm_msgs/Modbusreaddata.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbusreaddata.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Modbusreaddata.
--- @brief Ros1Rm_msgsModbusreaddata.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbusreaddata.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsModbusreaddata.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbusreaddata.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsModbusreaddata.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbusreaddata.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsModbusreaddata.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbusreaddata.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros1Rm_msgsModbusreaddata with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsModbusreaddata value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsModbusreaddata.encode
--- @field new fun(values?: table): Ros1Rm_msgsModbusreaddata
--- @brief Encode a complete Ros1Rm_msgsModbusreaddata value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsModbusreaddata [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros1Rm_msgsModbusreaddata.decode
--- @field encode fun(value: Ros1Rm_msgsModbusreaddata): string
--- @brief Decode exactly one complete Ros1Rm_msgsModbusreaddata canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsModbusreaddata value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsModbusreaddata.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsModbusreaddata
local Ros1Rm_msgsModbusreaddata = classes["Ros1Rm_msgsModbusreaddata"]

--- @class Ros1Rm_msgsModbustcpmasterinfo
--- @brief Complete ROS1 rm_msgs/Modbustcpmasterinfo value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field master_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ip string Strict UTF-8 without NUL; length0..256 bytes.
--- @field port integer Exact int32 range -2147483648..2147483647.
--- @brief Ros1Rm_msgsModbustcpmasterinfo.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbustcpmasterinfo.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsModbustcpmasterinfo.NATIVE_TYPE: Exact normalized native type name rm_msgs/Modbustcpmasterinfo.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbustcpmasterinfo.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Modbustcpmasterinfo.
--- @brief Ros1Rm_msgsModbustcpmasterinfo.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbustcpmasterinfo.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsModbustcpmasterinfo.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbustcpmasterinfo.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsModbustcpmasterinfo.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbustcpmasterinfo.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Rm_msgsModbustcpmasterinfo.MAX_WIRE_BYTES: Inclusive complete maximum 524 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbustcpmasterinfo.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 524 bytes.
--- @brief Construct Ros1Rm_msgsModbustcpmasterinfo with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsModbustcpmasterinfo value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsModbustcpmasterinfo.encode
--- @field new fun(values?: table): Ros1Rm_msgsModbustcpmasterinfo
--- @brief Encode a complete Ros1Rm_msgsModbustcpmasterinfo value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsModbustcpmasterinfo [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..524 bytes.
--- @see Ros1Rm_msgsModbustcpmasterinfo.decode
--- @field encode fun(value: Ros1Rm_msgsModbustcpmasterinfo): string
--- @brief Decode exactly one complete Ros1Rm_msgsModbustcpmasterinfo canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsModbustcpmasterinfo value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsModbustcpmasterinfo.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsModbustcpmasterinfo
local Ros1Rm_msgsModbustcpmasterinfo = classes["Ros1Rm_msgsModbustcpmasterinfo"]

--- @class Ros1Rm_msgsModbustcpmasterlist
--- @brief Complete ROS1 rm_msgs/Modbustcpmasterlist value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field master_list table[] Complete nested rm_msgs/Modbustcpmasterinfo value; no native fields are projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsModbustcpmasterlist.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbustcpmasterlist.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsModbustcpmasterlist.NATIVE_TYPE: Exact normalized native type name rm_msgs/Modbustcpmasterlist.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbustcpmasterlist.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Modbustcpmasterlist.
--- @brief Ros1Rm_msgsModbustcpmasterlist.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbustcpmasterlist.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsModbustcpmasterlist.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbustcpmasterlist.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsModbustcpmasterlist.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbustcpmasterlist.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsModbustcpmasterlist.MAX_WIRE_BYTES: Inclusive complete maximum 8388 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsModbustcpmasterlist.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8388 bytes.
--- @brief Construct Ros1Rm_msgsModbustcpmasterlist with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsModbustcpmasterlist value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsModbustcpmasterlist.encode
--- @field new fun(values?: table): Ros1Rm_msgsModbustcpmasterlist
--- @brief Encode a complete Ros1Rm_msgsModbustcpmasterlist value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsModbustcpmasterlist [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..8388 bytes.
--- @see Ros1Rm_msgsModbustcpmasterlist.decode
--- @field encode fun(value: Ros1Rm_msgsModbustcpmasterlist): string
--- @brief Decode exactly one complete Ros1Rm_msgsModbustcpmasterlist canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsModbustcpmasterlist value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsModbustcpmasterlist.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsModbustcpmasterlist
local Ros1Rm_msgsModbustcpmasterlist = classes["Ros1Rm_msgsModbustcpmasterlist"]

--- @class Ros1Rm_msgsMoveC
--- @brief Complete ROS1 rm_msgs/MoveC value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Mid_Pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field End_Pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field speed number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field loop integer Exact uint16 range 0..65535.
--- @field trajectory_connect integer Exact uint8 range 0..255.
--- @brief Ros1Rm_msgsMoveC.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveC.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsMoveC.NATIVE_TYPE: Exact normalized native type name rm_msgs/MoveC.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveC.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/MoveC.
--- @brief Ros1Rm_msgsMoveC.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveC.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsMoveC.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveC.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsMoveC.MIN_WIRE_BYTES: Inclusive complete minimum 119 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveC.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 119 bytes.
--- @brief Ros1Rm_msgsMoveC.MAX_WIRE_BYTES: Inclusive complete maximum 119 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveC.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 119 bytes.
--- @brief Construct Ros1Rm_msgsMoveC with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsMoveC value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsMoveC.encode
--- @field new fun(values?: table): Ros1Rm_msgsMoveC
--- @brief Encode a complete Ros1Rm_msgsMoveC value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsMoveC [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 119..119 bytes.
--- @see Ros1Rm_msgsMoveC.decode
--- @field encode fun(value: Ros1Rm_msgsMoveC): string
--- @brief Decode exactly one complete Ros1Rm_msgsMoveC canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsMoveC value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsMoveC.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsMoveC
local Ros1Rm_msgsMoveC = classes["Ros1Rm_msgsMoveC"]

--- @class Ros1Rm_msgsMoveJ
--- @brief Complete ROS1 rm_msgs/MoveJ value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field speed number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field trajectory_connect integer Exact uint8 range 0..255.
--- @brief Ros1Rm_msgsMoveJ.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveJ.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsMoveJ.NATIVE_TYPE: Exact normalized native type name rm_msgs/MoveJ.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveJ.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/MoveJ.
--- @brief Ros1Rm_msgsMoveJ.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveJ.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsMoveJ.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveJ.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsMoveJ.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveJ.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros1Rm_msgsMoveJ.MAX_WIRE_BYTES: Inclusive complete maximum 73 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveJ.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 73 bytes.
--- @brief Construct Ros1Rm_msgsMoveJ with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsMoveJ value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsMoveJ.encode
--- @field new fun(values?: table): Ros1Rm_msgsMoveJ
--- @brief Encode a complete Ros1Rm_msgsMoveJ value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsMoveJ [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..73 bytes.
--- @see Ros1Rm_msgsMoveJ.decode
--- @field encode fun(value: Ros1Rm_msgsMoveJ): string
--- @brief Decode exactly one complete Ros1Rm_msgsMoveJ canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsMoveJ value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsMoveJ.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsMoveJ
local Ros1Rm_msgsMoveJ = classes["Ros1Rm_msgsMoveJ"]

--- @class Ros1Rm_msgsMoveJ_P
--- @brief Complete ROS1 rm_msgs/MoveJ_P value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field speed number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field trajectory_connect integer Exact uint8 range 0..255.
--- @brief Ros1Rm_msgsMoveJ_P.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveJ_P.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsMoveJ_P.NATIVE_TYPE: Exact normalized native type name rm_msgs/MoveJ_P.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveJ_P.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/MoveJ_P.
--- @brief Ros1Rm_msgsMoveJ_P.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveJ_P.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsMoveJ_P.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveJ_P.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsMoveJ_P.MIN_WIRE_BYTES: Inclusive complete minimum 61 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveJ_P.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 61 bytes.
--- @brief Ros1Rm_msgsMoveJ_P.MAX_WIRE_BYTES: Inclusive complete maximum 61 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveJ_P.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 61 bytes.
--- @brief Construct Ros1Rm_msgsMoveJ_P with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsMoveJ_P value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsMoveJ_P.encode
--- @field new fun(values?: table): Ros1Rm_msgsMoveJ_P
--- @brief Encode a complete Ros1Rm_msgsMoveJ_P value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsMoveJ_P [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 61..61 bytes.
--- @see Ros1Rm_msgsMoveJ_P.decode
--- @field encode fun(value: Ros1Rm_msgsMoveJ_P): string
--- @brief Decode exactly one complete Ros1Rm_msgsMoveJ_P canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsMoveJ_P value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsMoveJ_P.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsMoveJ_P
local Ros1Rm_msgsMoveJ_P = classes["Ros1Rm_msgsMoveJ_P"]

--- @class Ros1Rm_msgsMoveL
--- @brief Complete ROS1 rm_msgs/MoveL value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field speed number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field trajectory_connect integer Exact uint8 range 0..255.
--- @brief Ros1Rm_msgsMoveL.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveL.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsMoveL.NATIVE_TYPE: Exact normalized native type name rm_msgs/MoveL.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveL.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/MoveL.
--- @brief Ros1Rm_msgsMoveL.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveL.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsMoveL.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveL.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsMoveL.MIN_WIRE_BYTES: Inclusive complete minimum 61 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveL.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 61 bytes.
--- @brief Ros1Rm_msgsMoveL.MAX_WIRE_BYTES: Inclusive complete maximum 61 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveL.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 61 bytes.
--- @brief Construct Ros1Rm_msgsMoveL with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsMoveL value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsMoveL.encode
--- @field new fun(values?: table): Ros1Rm_msgsMoveL
--- @brief Encode a complete Ros1Rm_msgsMoveL value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsMoveL [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 61..61 bytes.
--- @see Ros1Rm_msgsMoveL.decode
--- @field encode fun(value: Ros1Rm_msgsMoveL): string
--- @brief Decode exactly one complete Ros1Rm_msgsMoveL canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsMoveL value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsMoveL.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsMoveL
local Ros1Rm_msgsMoveL = classes["Ros1Rm_msgsMoveL"]

--- @class Ros1Rm_msgsMoveloffset
--- @brief Complete ROS1 rm_msgs/Moveloffset value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field offset table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field speed integer Exact int32 range -2147483648..2147483647.
--- @field r integer Exact int32 range -2147483648..2147483647.
--- @field trajectory_connect boolean Exact boolean; encoded as one byte0/1.
--- @field frame_type boolean Exact boolean; encoded as one byte0/1.
--- @field block boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsMoveloffset.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveloffset.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsMoveloffset.NATIVE_TYPE: Exact normalized native type name rm_msgs/Moveloffset.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveloffset.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Moveloffset.
--- @brief Ros1Rm_msgsMoveloffset.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveloffset.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsMoveloffset.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveloffset.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsMoveloffset.MIN_WIRE_BYTES: Inclusive complete minimum 67 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveloffset.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 67 bytes.
--- @brief Ros1Rm_msgsMoveloffset.MAX_WIRE_BYTES: Inclusive complete maximum 67 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsMoveloffset.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 67 bytes.
--- @brief Construct Ros1Rm_msgsMoveloffset with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsMoveloffset value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsMoveloffset.encode
--- @field new fun(values?: table): Ros1Rm_msgsMoveloffset
--- @brief Encode a complete Ros1Rm_msgsMoveloffset value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsMoveloffset [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 67..67 bytes.
--- @see Ros1Rm_msgsMoveloffset.decode
--- @field encode fun(value: Ros1Rm_msgsMoveloffset): string
--- @brief Decode exactly one complete Ros1Rm_msgsMoveloffset canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsMoveloffset value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsMoveloffset.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsMoveloffset
local Ros1Rm_msgsMoveloffset = classes["Ros1Rm_msgsMoveloffset"]

--- @class Ros1Rm_msgsOrt_Teach
--- @brief Complete ROS1 rm_msgs/Ort_Teach value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field teach_type string Strict UTF-8 without NUL; length0..256 bytes.
--- @field direction string Strict UTF-8 without NUL; length0..256 bytes.
--- @field v integer Exact int16 range -32768..32767.
--- @brief Ros1Rm_msgsOrt_Teach.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsOrt_Teach.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsOrt_Teach.NATIVE_TYPE: Exact normalized native type name rm_msgs/Ort_Teach.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsOrt_Teach.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Ort_Teach.
--- @brief Ros1Rm_msgsOrt_Teach.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsOrt_Teach.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsOrt_Teach.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsOrt_Teach.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsOrt_Teach.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsOrt_Teach.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Rm_msgsOrt_Teach.MAX_WIRE_BYTES: Inclusive complete maximum 522 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsOrt_Teach.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 522 bytes.
--- @brief Construct Ros1Rm_msgsOrt_Teach with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsOrt_Teach value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsOrt_Teach.encode
--- @field new fun(values?: table): Ros1Rm_msgsOrt_Teach
--- @brief Encode a complete Ros1Rm_msgsOrt_Teach value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsOrt_Teach [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..522 bytes.
--- @see Ros1Rm_msgsOrt_Teach.decode
--- @field encode fun(value: Ros1Rm_msgsOrt_Teach): string
--- @brief Decode exactly one complete Ros1Rm_msgsOrt_Teach canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsOrt_Teach value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsOrt_Teach.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsOrt_Teach
local Ros1Rm_msgsOrt_Teach = classes["Ros1Rm_msgsOrt_Teach"]

--- @class Ros1Rm_msgsPlan_State
--- @brief Complete ROS1 rm_msgs/Plan_State value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsPlan_State.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsPlan_State.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsPlan_State.NATIVE_TYPE: Exact normalized native type name rm_msgs/Plan_State.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsPlan_State.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Plan_State.
--- @brief Ros1Rm_msgsPlan_State.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsPlan_State.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsPlan_State.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsPlan_State.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsPlan_State.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsPlan_State.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Rm_msgsPlan_State.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsPlan_State.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Rm_msgsPlan_State with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsPlan_State value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsPlan_State.encode
--- @field new fun(values?: table): Ros1Rm_msgsPlan_State
--- @brief Encode a complete Ros1Rm_msgsPlan_State value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsPlan_State [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Rm_msgsPlan_State.decode
--- @field encode fun(value: Ros1Rm_msgsPlan_State): string
--- @brief Decode exactly one complete Ros1Rm_msgsPlan_State canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsPlan_State value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsPlan_State.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsPlan_State
local Ros1Rm_msgsPlan_State = classes["Ros1Rm_msgsPlan_State"]

--- @class Ros1Rm_msgsPos_Teach
--- @brief Complete ROS1 rm_msgs/Pos_Teach value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field teach_type string Strict UTF-8 without NUL; length0..256 bytes.
--- @field direction string Strict UTF-8 without NUL; length0..256 bytes.
--- @field v integer Exact int16 range -32768..32767.
--- @brief Ros1Rm_msgsPos_Teach.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsPos_Teach.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsPos_Teach.NATIVE_TYPE: Exact normalized native type name rm_msgs/Pos_Teach.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsPos_Teach.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Pos_Teach.
--- @brief Ros1Rm_msgsPos_Teach.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsPos_Teach.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsPos_Teach.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsPos_Teach.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsPos_Teach.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsPos_Teach.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Rm_msgsPos_Teach.MAX_WIRE_BYTES: Inclusive complete maximum 522 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsPos_Teach.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 522 bytes.
--- @brief Construct Ros1Rm_msgsPos_Teach with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsPos_Teach value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsPos_Teach.encode
--- @field new fun(values?: table): Ros1Rm_msgsPos_Teach
--- @brief Encode a complete Ros1Rm_msgsPos_Teach value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsPos_Teach [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..522 bytes.
--- @see Ros1Rm_msgsPos_Teach.decode
--- @field encode fun(value: Ros1Rm_msgsPos_Teach): string
--- @brief Decode exactly one complete Ros1Rm_msgsPos_Teach canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsPos_Teach value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsPos_Teach.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsPos_Teach
local Ros1Rm_msgsPos_Teach = classes["Ros1Rm_msgsPos_Teach"]

--- @class Ros1Rm_msgsProgramrunstate
--- @brief Complete ROS1 rm_msgs/Programrunstate value and codec.
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
--- @brief Ros1Rm_msgsProgramrunstate.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsProgramrunstate.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsProgramrunstate.NATIVE_TYPE: Exact normalized native type name rm_msgs/Programrunstate.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsProgramrunstate.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Programrunstate.
--- @brief Ros1Rm_msgsProgramrunstate.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsProgramrunstate.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsProgramrunstate.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsProgramrunstate.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsProgramrunstate.MIN_WIRE_BYTES: Inclusive complete minimum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsProgramrunstate.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 36 bytes.
--- @brief Ros1Rm_msgsProgramrunstate.MAX_WIRE_BYTES: Inclusive complete maximum 164 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsProgramrunstate.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 164 bytes.
--- @brief Construct Ros1Rm_msgsProgramrunstate with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsProgramrunstate value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsProgramrunstate.encode
--- @field new fun(values?: table): Ros1Rm_msgsProgramrunstate
--- @brief Encode a complete Ros1Rm_msgsProgramrunstate value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsProgramrunstate [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 36..164 bytes.
--- @see Ros1Rm_msgsProgramrunstate.decode
--- @field encode fun(value: Ros1Rm_msgsProgramrunstate): string
--- @brief Decode exactly one complete Ros1Rm_msgsProgramrunstate canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsProgramrunstate value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsProgramrunstate.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsProgramrunstate
local Ros1Rm_msgsProgramrunstate = classes["Ros1Rm_msgsProgramrunstate"]

--- @class Ros1Rm_msgsRS485_Mode
--- @brief Complete ROS1 rm_msgs/RS485_Mode value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field controller_RS485_mode integer Exact uint8 range 0..255.
--- @field tool_RS485_mode integer Exact uint8 range 0..255.
--- @field baudrate integer Exact uint32 range 0..4294967295.
--- @field modbus_timeout integer Exact uint32 range 0..4294967295.
--- @brief Ros1Rm_msgsRS485_Mode.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRS485_Mode.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsRS485_Mode.NATIVE_TYPE: Exact normalized native type name rm_msgs/RS485_Mode.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRS485_Mode.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/RS485_Mode.
--- @brief Ros1Rm_msgsRS485_Mode.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRS485_Mode.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsRS485_Mode.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRS485_Mode.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsRS485_Mode.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRS485_Mode.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Rm_msgsRS485_Mode.MAX_WIRE_BYTES: Inclusive complete maximum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRS485_Mode.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 10 bytes.
--- @brief Construct Ros1Rm_msgsRS485_Mode with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsRS485_Mode value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsRS485_Mode.encode
--- @field new fun(values?: table): Ros1Rm_msgsRS485_Mode
--- @brief Encode a complete Ros1Rm_msgsRS485_Mode value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsRS485_Mode [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..10 bytes.
--- @see Ros1Rm_msgsRS485_Mode.decode
--- @field encode fun(value: Ros1Rm_msgsRS485_Mode): string
--- @brief Decode exactly one complete Ros1Rm_msgsRS485_Mode canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsRS485_Mode value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsRS485_Mode.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsRS485_Mode
local Ros1Rm_msgsRS485_Mode = classes["Ros1Rm_msgsRS485_Mode"]

--- @class Ros1Rm_msgsRS485params
--- @brief Complete ROS1 rm_msgs/RS485params value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mode integer Exact int32 range -2147483648..2147483647.
--- @field baudrate integer Exact int32 range -2147483648..2147483647.
--- @brief Ros1Rm_msgsRS485params.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRS485params.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsRS485params.NATIVE_TYPE: Exact normalized native type name rm_msgs/RS485params.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRS485params.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/RS485params.
--- @brief Ros1Rm_msgsRS485params.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRS485params.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsRS485params.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRS485params.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsRS485params.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRS485params.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Rm_msgsRS485params.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRS485params.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros1Rm_msgsRS485params with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsRS485params value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsRS485params.encode
--- @field new fun(values?: table): Ros1Rm_msgsRS485params
--- @brief Encode a complete Ros1Rm_msgsRS485params value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsRS485params [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros1Rm_msgsRS485params.decode
--- @field encode fun(value: Ros1Rm_msgsRS485params): string
--- @brief Decode exactly one complete Ros1Rm_msgsRS485params canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsRS485params value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsRS485params.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsRS485params
local Ros1Rm_msgsRS485params = classes["Ros1Rm_msgsRS485params"]

--- @class Ros1Rm_msgsRead_ModbusRTU
--- @brief Complete ROS1 rm_msgs/Read_ModbusRTU value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact int32 range -2147483648..2147483647.
--- @field device integer Exact int32 range -2147483648..2147483647.
--- @field num integer Exact int32 range -2147483648..2147483647.
--- @field type integer Exact int32 range -2147483648..2147483647.
--- @brief Ros1Rm_msgsRead_ModbusRTU.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_ModbusRTU.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsRead_ModbusRTU.NATIVE_TYPE: Exact normalized native type name rm_msgs/Read_ModbusRTU.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_ModbusRTU.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Read_ModbusRTU.
--- @brief Ros1Rm_msgsRead_ModbusRTU.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_ModbusRTU.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsRead_ModbusRTU.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_ModbusRTU.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsRead_ModbusRTU.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_ModbusRTU.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Rm_msgsRead_ModbusRTU.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_ModbusRTU.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Rm_msgsRead_ModbusRTU with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsRead_ModbusRTU value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsRead_ModbusRTU.encode
--- @field new fun(values?: table): Ros1Rm_msgsRead_ModbusRTU
--- @brief Encode a complete Ros1Rm_msgsRead_ModbusRTU value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsRead_ModbusRTU [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Rm_msgsRead_ModbusRTU.decode
--- @field encode fun(value: Ros1Rm_msgsRead_ModbusRTU): string
--- @brief Decode exactly one complete Ros1Rm_msgsRead_ModbusRTU canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsRead_ModbusRTU value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsRead_ModbusRTU.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsRead_ModbusRTU
local Ros1Rm_msgsRead_ModbusRTU = classes["Ros1Rm_msgsRead_ModbusRTU"]

--- @class Ros1Rm_msgsRead_Register
--- @brief Complete ROS1 rm_msgs/Read_Register value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field port integer Exact uint8 range 0..255.
--- @field address integer Exact uint32 range 0..4294967295.
--- @field num integer Exact uint32 range 0..4294967295.
--- @field device integer Exact uint32 range 0..4294967295.
--- @brief Ros1Rm_msgsRead_Register.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_Register.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsRead_Register.NATIVE_TYPE: Exact normalized native type name rm_msgs/Read_Register.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_Register.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Read_Register.
--- @brief Ros1Rm_msgsRead_Register.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_Register.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsRead_Register.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_Register.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsRead_Register.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_Register.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros1Rm_msgsRead_Register.MAX_WIRE_BYTES: Inclusive complete maximum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_Register.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 13 bytes.
--- @brief Construct Ros1Rm_msgsRead_Register with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsRead_Register value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsRead_Register.encode
--- @field new fun(values?: table): Ros1Rm_msgsRead_Register
--- @brief Encode a complete Ros1Rm_msgsRead_Register value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsRead_Register [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..13 bytes.
--- @see Ros1Rm_msgsRead_Register.decode
--- @field encode fun(value: Ros1Rm_msgsRead_Register): string
--- @brief Decode exactly one complete Ros1Rm_msgsRead_Register canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsRead_Register value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsRead_Register.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsRead_Register
local Ros1Rm_msgsRead_Register = classes["Ros1Rm_msgsRead_Register"]

--- @class Ros1Rm_msgsRead_TCPandRTU
--- @brief Complete ROS1 rm_msgs/Read_TCPandRTU value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact int32 range -2147483648..2147483647.
--- @field num integer Exact int32 range -2147483648..2147483647.
--- @field ip string Strict UTF-8 without NUL; length0..256 bytes.
--- @field port integer Exact int32 range -2147483648..2147483647.
--- @field master_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field device integer Exact int32 range -2147483648..2147483647.
--- @field type integer Exact int32 range -2147483648..2147483647.
--- @brief Ros1Rm_msgsRead_TCPandRTU.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_TCPandRTU.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsRead_TCPandRTU.NATIVE_TYPE: Exact normalized native type name rm_msgs/Read_TCPandRTU.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_TCPandRTU.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Read_TCPandRTU.
--- @brief Ros1Rm_msgsRead_TCPandRTU.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_TCPandRTU.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsRead_TCPandRTU.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_TCPandRTU.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsRead_TCPandRTU.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_TCPandRTU.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros1Rm_msgsRead_TCPandRTU.MAX_WIRE_BYTES: Inclusive complete maximum 540 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRead_TCPandRTU.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 540 bytes.
--- @brief Construct Ros1Rm_msgsRead_TCPandRTU with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsRead_TCPandRTU value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsRead_TCPandRTU.encode
--- @field new fun(values?: table): Ros1Rm_msgsRead_TCPandRTU
--- @brief Encode a complete Ros1Rm_msgsRead_TCPandRTU value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsRead_TCPandRTU [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..540 bytes.
--- @see Ros1Rm_msgsRead_TCPandRTU.decode
--- @field encode fun(value: Ros1Rm_msgsRead_TCPandRTU): string
--- @brief Decode exactly one complete Ros1Rm_msgsRead_TCPandRTU canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsRead_TCPandRTU value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsRead_TCPandRTU.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsRead_TCPandRTU
local Ros1Rm_msgsRead_TCPandRTU = classes["Ros1Rm_msgsRead_TCPandRTU"]

--- @class Ros1Rm_msgsRegister_Data
--- @brief Complete ROS1 rm_msgs/Register_Data value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @field data integer[] Exact uint16 range 0..65535. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsRegister_Data.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRegister_Data.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsRegister_Data.NATIVE_TYPE: Exact normalized native type name rm_msgs/Register_Data.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRegister_Data.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Register_Data.
--- @brief Ros1Rm_msgsRegister_Data.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRegister_Data.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsRegister_Data.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRegister_Data.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsRegister_Data.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRegister_Data.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Rm_msgsRegister_Data.MAX_WIRE_BYTES: Inclusive complete maximum 37 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRegister_Data.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 37 bytes.
--- @brief Construct Ros1Rm_msgsRegister_Data with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsRegister_Data value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsRegister_Data.encode
--- @field new fun(values?: table): Ros1Rm_msgsRegister_Data
--- @brief Encode a complete Ros1Rm_msgsRegister_Data value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsRegister_Data [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..37 bytes.
--- @see Ros1Rm_msgsRegister_Data.decode
--- @field encode fun(value: Ros1Rm_msgsRegister_Data): string
--- @brief Decode exactly one complete Ros1Rm_msgsRegister_Data canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsRegister_Data value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsRegister_Data.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsRegister_Data
local Ros1Rm_msgsRegister_Data = classes["Ros1Rm_msgsRegister_Data"]

--- @class Ros1Rm_msgsRm_Plus_Base
--- @brief Complete ROS1 rm_msgs/Rm_Plus_Base value and codec.
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
--- @field pos_up integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field pos_low integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field angle_up integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field angle_low integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field speed_up integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field speed_low integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field force_up integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field force_low integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsRm_Plus_Base.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRm_Plus_Base.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsRm_Plus_Base.NATIVE_TYPE: Exact normalized native type name rm_msgs/Rm_Plus_Base.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRm_Plus_Base.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Rm_Plus_Base.
--- @brief Ros1Rm_msgsRm_Plus_Base.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRm_Plus_Base.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsRm_Plus_Base.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRm_Plus_Base.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsRm_Plus_Base.MIN_WIRE_BYTES: Inclusive complete minimum 61 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRm_Plus_Base.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 61 bytes.
--- @brief Ros1Rm_msgsRm_Plus_Base.MAX_WIRE_BYTES: Inclusive complete maximum 1597 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRm_Plus_Base.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1597 bytes.
--- @brief Construct Ros1Rm_msgsRm_Plus_Base with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsRm_Plus_Base value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsRm_Plus_Base.encode
--- @field new fun(values?: table): Ros1Rm_msgsRm_Plus_Base
--- @brief Encode a complete Ros1Rm_msgsRm_Plus_Base value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsRm_Plus_Base [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 61..1597 bytes.
--- @see Ros1Rm_msgsRm_Plus_Base.decode
--- @field encode fun(value: Ros1Rm_msgsRm_Plus_Base): string
--- @brief Decode exactly one complete Ros1Rm_msgsRm_Plus_Base canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsRm_Plus_Base value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsRm_Plus_Base.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsRm_Plus_Base
local Ros1Rm_msgsRm_Plus_Base = classes["Ros1Rm_msgsRm_Plus_Base"]

--- @class Ros1Rm_msgsRm_Plus_State
--- @brief Complete ROS1 rm_msgs/Rm_Plus_State value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field sys_state integer Exact int32 range -2147483648..2147483647.
--- @field sys_err integer Exact int32 range -2147483648..2147483647.
--- @field dof_state integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field dof_err integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field pos integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field speed integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field angle integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field current integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field normal_force integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field tangential_force integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field tangential_force_dir integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field tsa integer[] Exact uint32 range 0..4294967295. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field tma integer[] Exact uint32 range 0..4294967295. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field touch_data integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field force integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsRm_Plus_State.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRm_Plus_State.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsRm_Plus_State.NATIVE_TYPE: Exact normalized native type name rm_msgs/Rm_Plus_State.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRm_Plus_State.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Rm_Plus_State.
--- @brief Ros1Rm_msgsRm_Plus_State.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRm_Plus_State.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsRm_Plus_State.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRm_Plus_State.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsRm_Plus_State.MIN_WIRE_BYTES: Inclusive complete minimum 60 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRm_Plus_State.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 60 bytes.
--- @brief Ros1Rm_msgsRm_Plus_State.MAX_WIRE_BYTES: Inclusive complete maximum 892 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsRm_Plus_State.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 892 bytes.
--- @brief Construct Ros1Rm_msgsRm_Plus_State with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsRm_Plus_State value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsRm_Plus_State.encode
--- @field new fun(values?: table): Ros1Rm_msgsRm_Plus_State
--- @brief Encode a complete Ros1Rm_msgsRm_Plus_State value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsRm_Plus_State [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 60..892 bytes.
--- @see Ros1Rm_msgsRm_Plus_State.decode
--- @field encode fun(value: Ros1Rm_msgsRm_Plus_State): string
--- @brief Decode exactly one complete Ros1Rm_msgsRm_Plus_State canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsRm_Plus_State value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsRm_Plus_State.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsRm_Plus_State
local Ros1Rm_msgsRm_Plus_State = classes["Ros1Rm_msgsRm_Plus_State"]

--- @class Ros1Rm_msgsServo_GetAngle
--- @brief Complete ROS1 rm_msgs/Servo_GetAngle value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field servo_id integer Exact uint16 range 0..65535.
--- @brief Ros1Rm_msgsServo_GetAngle.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsServo_GetAngle.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsServo_GetAngle.NATIVE_TYPE: Exact normalized native type name rm_msgs/Servo_GetAngle.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsServo_GetAngle.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Servo_GetAngle.
--- @brief Ros1Rm_msgsServo_GetAngle.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsServo_GetAngle.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsServo_GetAngle.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsServo_GetAngle.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsServo_GetAngle.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsServo_GetAngle.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Rm_msgsServo_GetAngle.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsServo_GetAngle.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Rm_msgsServo_GetAngle with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsServo_GetAngle value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsServo_GetAngle.encode
--- @field new fun(values?: table): Ros1Rm_msgsServo_GetAngle
--- @brief Encode a complete Ros1Rm_msgsServo_GetAngle value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsServo_GetAngle [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Rm_msgsServo_GetAngle.decode
--- @field encode fun(value: Ros1Rm_msgsServo_GetAngle): string
--- @brief Decode exactly one complete Ros1Rm_msgsServo_GetAngle canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsServo_GetAngle value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsServo_GetAngle.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsServo_GetAngle
local Ros1Rm_msgsServo_GetAngle = classes["Ros1Rm_msgsServo_GetAngle"]

--- @class Ros1Rm_msgsServo_Move
--- @brief Complete ROS1 rm_msgs/Servo_Move value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field servo_id integer Exact uint16 range 0..65535.
--- @field angle integer Exact uint16 range 0..65535.
--- @brief Ros1Rm_msgsServo_Move.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsServo_Move.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsServo_Move.NATIVE_TYPE: Exact normalized native type name rm_msgs/Servo_Move.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsServo_Move.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Servo_Move.
--- @brief Ros1Rm_msgsServo_Move.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsServo_Move.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsServo_Move.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsServo_Move.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsServo_Move.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsServo_Move.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsServo_Move.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsServo_Move.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Rm_msgsServo_Move with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsServo_Move value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsServo_Move.encode
--- @field new fun(values?: table): Ros1Rm_msgsServo_Move
--- @brief Encode a complete Ros1Rm_msgsServo_Move value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsServo_Move [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Rm_msgsServo_Move.decode
--- @field encode fun(value: Ros1Rm_msgsServo_Move): string
--- @brief Decode exactly one complete Ros1Rm_msgsServo_Move canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsServo_Move value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsServo_Move.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsServo_Move
local Ros1Rm_msgsServo_Move = classes["Ros1Rm_msgsServo_Move"]

--- @class Ros1Rm_msgsSet_Force_Position
--- @brief Complete ROS1 rm_msgs/Set_Force_Position value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field sensor integer Exact uint8 range 0..255.
--- @field mode integer Exact uint8 range 0..255.
--- @field direction integer Exact uint8 range 0..255.
--- @field N integer Exact int16 range -32768..32767.
--- @brief Ros1Rm_msgsSet_Force_Position.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Force_Position.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsSet_Force_Position.NATIVE_TYPE: Exact normalized native type name rm_msgs/Set_Force_Position.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Force_Position.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Set_Force_Position.
--- @brief Ros1Rm_msgsSet_Force_Position.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Force_Position.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsSet_Force_Position.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Force_Position.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsSet_Force_Position.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Force_Position.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Rm_msgsSet_Force_Position.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Force_Position.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros1Rm_msgsSet_Force_Position with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsSet_Force_Position value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsSet_Force_Position.encode
--- @field new fun(values?: table): Ros1Rm_msgsSet_Force_Position
--- @brief Encode a complete Ros1Rm_msgsSet_Force_Position value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsSet_Force_Position [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros1Rm_msgsSet_Force_Position.decode
--- @field encode fun(value: Ros1Rm_msgsSet_Force_Position): string
--- @brief Decode exactly one complete Ros1Rm_msgsSet_Force_Position canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsSet_Force_Position value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsSet_Force_Position.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsSet_Force_Position
local Ros1Rm_msgsSet_Force_Position = classes["Ros1Rm_msgsSet_Force_Position"]

--- @class Ros1Rm_msgsSet_Modbus_Mode
--- @brief Complete ROS1 rm_msgs/Set_Modbus_Mode value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field port integer Exact uint32 range 0..4294967295.
--- @field baudrate integer Exact uint32 range 0..4294967295.
--- @field timeout integer Exact uint32 range 0..4294967295.
--- @field ip string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Rm_msgsSet_Modbus_Mode.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Modbus_Mode.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsSet_Modbus_Mode.NATIVE_TYPE: Exact normalized native type name rm_msgs/Set_Modbus_Mode.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Modbus_Mode.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Set_Modbus_Mode.
--- @brief Ros1Rm_msgsSet_Modbus_Mode.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Modbus_Mode.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsSet_Modbus_Mode.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Modbus_Mode.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsSet_Modbus_Mode.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Modbus_Mode.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Rm_msgsSet_Modbus_Mode.MAX_WIRE_BYTES: Inclusive complete maximum 272 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Modbus_Mode.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 272 bytes.
--- @brief Construct Ros1Rm_msgsSet_Modbus_Mode with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsSet_Modbus_Mode value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsSet_Modbus_Mode.encode
--- @field new fun(values?: table): Ros1Rm_msgsSet_Modbus_Mode
--- @brief Encode a complete Ros1Rm_msgsSet_Modbus_Mode value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsSet_Modbus_Mode [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..272 bytes.
--- @see Ros1Rm_msgsSet_Modbus_Mode.decode
--- @field encode fun(value: Ros1Rm_msgsSet_Modbus_Mode): string
--- @brief Decode exactly one complete Ros1Rm_msgsSet_Modbus_Mode canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsSet_Modbus_Mode value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsSet_Modbus_Mode.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsSet_Modbus_Mode
local Ros1Rm_msgsSet_Modbus_Mode = classes["Ros1Rm_msgsSet_Modbus_Mode"]

--- @class Ros1Rm_msgsSet_Realtime_Push
--- @brief Complete ROS1 rm_msgs/Set_Realtime_Push value and codec.
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
--- @field joint_acc_enable boolean Exact boolean; encoded as one byte0/1.
--- @field joint_speed_enable boolean Exact boolean; encoded as one byte0/1.
--- @field lift_state_enable boolean Exact boolean; encoded as one byte0/1.
--- @field tail_end_enable boolean Exact boolean; encoded as one byte0/1.
--- @field rm_plus_base_enable boolean Exact boolean; encoded as one byte0/1.
--- @field rm_plus_state_enable boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsSet_Realtime_Push.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Realtime_Push.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsSet_Realtime_Push.NATIVE_TYPE: Exact normalized native type name rm_msgs/Set_Realtime_Push.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Realtime_Push.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Set_Realtime_Push.
--- @brief Ros1Rm_msgsSet_Realtime_Push.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Realtime_Push.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsSet_Realtime_Push.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Realtime_Push.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsSet_Realtime_Push.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Realtime_Push.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros1Rm_msgsSet_Realtime_Push.MAX_WIRE_BYTES: Inclusive complete maximum 276 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSet_Realtime_Push.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 276 bytes.
--- @brief Construct Ros1Rm_msgsSet_Realtime_Push with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsSet_Realtime_Push value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsSet_Realtime_Push.encode
--- @field new fun(values?: table): Ros1Rm_msgsSet_Realtime_Push
--- @brief Encode a complete Ros1Rm_msgsSet_Realtime_Push value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsSet_Realtime_Push [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..276 bytes.
--- @see Ros1Rm_msgsSet_Realtime_Push.decode
--- @field encode fun(value: Ros1Rm_msgsSet_Realtime_Push): string
--- @brief Decode exactly one complete Ros1Rm_msgsSet_Realtime_Push canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsSet_Realtime_Push value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsSet_Realtime_Push.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsSet_Realtime_Push
local Ros1Rm_msgsSet_Realtime_Push = classes["Ros1Rm_msgsSet_Realtime_Push"]

--- @class Ros1Rm_msgsSix_Force
--- @brief Complete ROS1 rm_msgs/Six_Force value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field force_Fx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field force_Fy number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field force_Fz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field force_Mx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field force_My number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field force_Mz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Rm_msgsSix_Force.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSix_Force.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsSix_Force.NATIVE_TYPE: Exact normalized native type name rm_msgs/Six_Force.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSix_Force.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Six_Force.
--- @brief Ros1Rm_msgsSix_Force.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSix_Force.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsSix_Force.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSix_Force.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsSix_Force.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSix_Force.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Rm_msgsSix_Force.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSix_Force.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Rm_msgsSix_Force with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsSix_Force value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsSix_Force.encode
--- @field new fun(values?: table): Ros1Rm_msgsSix_Force
--- @brief Encode a complete Ros1Rm_msgsSix_Force value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsSix_Force [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Rm_msgsSix_Force.decode
--- @field encode fun(value: Ros1Rm_msgsSix_Force): string
--- @brief Decode exactly one complete Ros1Rm_msgsSix_Force canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsSix_Force value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsSix_Force.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsSix_Force
local Ros1Rm_msgsSix_Force = classes["Ros1Rm_msgsSix_Force"]

--- @class Ros1Rm_msgsSocket_Command
--- @brief Complete ROS1 rm_msgs/Socket_Command value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field command integer Exact uint16 range 0..65535.
--- @brief Ros1Rm_msgsSocket_Command.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSocket_Command.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsSocket_Command.NATIVE_TYPE: Exact normalized native type name rm_msgs/Socket_Command.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSocket_Command.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Socket_Command.
--- @brief Ros1Rm_msgsSocket_Command.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSocket_Command.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsSocket_Command.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSocket_Command.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsSocket_Command.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSocket_Command.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Rm_msgsSocket_Command.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsSocket_Command.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Rm_msgsSocket_Command with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsSocket_Command value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsSocket_Command.encode
--- @field new fun(values?: table): Ros1Rm_msgsSocket_Command
--- @brief Encode a complete Ros1Rm_msgsSocket_Command value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsSocket_Command [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Rm_msgsSocket_Command.decode
--- @field encode fun(value: Ros1Rm_msgsSocket_Command): string
--- @brief Decode exactly one complete Ros1Rm_msgsSocket_Command canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsSocket_Command value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsSocket_Command.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsSocket_Command
local Ros1Rm_msgsSocket_Command = classes["Ros1Rm_msgsSocket_Command"]

--- @class Ros1Rm_msgsStart_Multi_Drag_Teach
--- @brief Complete ROS1 rm_msgs/Start_Multi_Drag_Teach value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field free_axes integer[] Exact int32 range -2147483648..2147483647. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field frame integer Exact int32 range -2147483648..2147483647.
--- @field singular_wall integer Exact int32 range -2147483648..2147483647.
--- @brief Ros1Rm_msgsStart_Multi_Drag_Teach.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStart_Multi_Drag_Teach.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsStart_Multi_Drag_Teach.NATIVE_TYPE: Exact normalized native type name rm_msgs/Start_Multi_Drag_Teach.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStart_Multi_Drag_Teach.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Start_Multi_Drag_Teach.
--- @brief Ros1Rm_msgsStart_Multi_Drag_Teach.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStart_Multi_Drag_Teach.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsStart_Multi_Drag_Teach.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStart_Multi_Drag_Teach.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsStart_Multi_Drag_Teach.MIN_WIRE_BYTES: Inclusive complete minimum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStart_Multi_Drag_Teach.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 32 bytes.
--- @brief Ros1Rm_msgsStart_Multi_Drag_Teach.MAX_WIRE_BYTES: Inclusive complete maximum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStart_Multi_Drag_Teach.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 32 bytes.
--- @brief Construct Ros1Rm_msgsStart_Multi_Drag_Teach with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsStart_Multi_Drag_Teach value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsStart_Multi_Drag_Teach.encode
--- @field new fun(values?: table): Ros1Rm_msgsStart_Multi_Drag_Teach
--- @brief Encode a complete Ros1Rm_msgsStart_Multi_Drag_Teach value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsStart_Multi_Drag_Teach [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 32..32 bytes.
--- @see Ros1Rm_msgsStart_Multi_Drag_Teach.decode
--- @field encode fun(value: Ros1Rm_msgsStart_Multi_Drag_Teach): string
--- @brief Decode exactly one complete Ros1Rm_msgsStart_Multi_Drag_Teach canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsStart_Multi_Drag_Teach value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsStart_Multi_Drag_Teach.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsStart_Multi_Drag_Teach
local Ros1Rm_msgsStart_Multi_Drag_Teach = classes["Ros1Rm_msgsStart_Multi_Drag_Teach"]

--- @class Ros1Rm_msgsStop
--- @brief Complete ROS1 rm_msgs/Stop value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsStop.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStop.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsStop.NATIVE_TYPE: Exact normalized native type name rm_msgs/Stop.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStop.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Stop.
--- @brief Ros1Rm_msgsStop.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStop.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsStop.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStop.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsStop.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStop.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Rm_msgsStop.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStop.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Rm_msgsStop with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsStop value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsStop.encode
--- @field new fun(values?: table): Ros1Rm_msgsStop
--- @brief Encode a complete Ros1Rm_msgsStop value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsStop [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Rm_msgsStop.decode
--- @field encode fun(value: Ros1Rm_msgsStop): string
--- @brief Decode exactly one complete Ros1Rm_msgsStop canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsStop value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsStop.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsStop
local Ros1Rm_msgsStop = classes["Ros1Rm_msgsStop"]

--- @class Ros1Rm_msgsStop_Teach
--- @brief Complete ROS1 rm_msgs/Stop_Teach value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field command string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Rm_msgsStop_Teach.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStop_Teach.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsStop_Teach.NATIVE_TYPE: Exact normalized native type name rm_msgs/Stop_Teach.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStop_Teach.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Stop_Teach.
--- @brief Ros1Rm_msgsStop_Teach.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStop_Teach.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsStop_Teach.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStop_Teach.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsStop_Teach.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStop_Teach.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsStop_Teach.MAX_WIRE_BYTES: Inclusive complete maximum 260 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsStop_Teach.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 260 bytes.
--- @brief Construct Ros1Rm_msgsStop_Teach with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsStop_Teach value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsStop_Teach.encode
--- @field new fun(values?: table): Ros1Rm_msgsStop_Teach
--- @brief Encode a complete Ros1Rm_msgsStop_Teach value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsStop_Teach [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..260 bytes.
--- @see Ros1Rm_msgsStop_Teach.decode
--- @field encode fun(value: Ros1Rm_msgsStop_Teach): string
--- @brief Decode exactly one complete Ros1Rm_msgsStop_Teach canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsStop_Teach value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsStop_Teach.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsStop_Teach
local Ros1Rm_msgsStop_Teach = classes["Ros1Rm_msgsStop_Teach"]

--- @class Ros1Rm_msgsTool_Analog_Output
--- @brief Complete ROS1 rm_msgs/Tool_Analog_Output value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field voltage number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Rm_msgsTool_Analog_Output.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_Analog_Output.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsTool_Analog_Output.NATIVE_TYPE: Exact normalized native type name rm_msgs/Tool_Analog_Output.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_Analog_Output.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Tool_Analog_Output.
--- @brief Ros1Rm_msgsTool_Analog_Output.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_Analog_Output.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsTool_Analog_Output.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_Analog_Output.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsTool_Analog_Output.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_Analog_Output.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsTool_Analog_Output.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_Analog_Output.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Rm_msgsTool_Analog_Output with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsTool_Analog_Output value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsTool_Analog_Output.encode
--- @field new fun(values?: table): Ros1Rm_msgsTool_Analog_Output
--- @brief Encode a complete Ros1Rm_msgsTool_Analog_Output value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsTool_Analog_Output [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Rm_msgsTool_Analog_Output.decode
--- @field encode fun(value: Ros1Rm_msgsTool_Analog_Output): string
--- @brief Decode exactly one complete Ros1Rm_msgsTool_Analog_Output canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsTool_Analog_Output value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsTool_Analog_Output.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsTool_Analog_Output
local Ros1Rm_msgsTool_Analog_Output = classes["Ros1Rm_msgsTool_Analog_Output"]

--- @class Ros1Rm_msgsTool_Digital_Output
--- @brief Complete ROS1 rm_msgs/Tool_Digital_Output value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field num integer Exact uint8 range 0..255.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Rm_msgsTool_Digital_Output.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_Digital_Output.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsTool_Digital_Output.NATIVE_TYPE: Exact normalized native type name rm_msgs/Tool_Digital_Output.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_Digital_Output.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Tool_Digital_Output.
--- @brief Ros1Rm_msgsTool_Digital_Output.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_Digital_Output.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsTool_Digital_Output.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_Digital_Output.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsTool_Digital_Output.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_Digital_Output.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros1Rm_msgsTool_Digital_Output.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_Digital_Output.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros1Rm_msgsTool_Digital_Output with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsTool_Digital_Output value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsTool_Digital_Output.encode
--- @field new fun(values?: table): Ros1Rm_msgsTool_Digital_Output
--- @brief Encode a complete Ros1Rm_msgsTool_Digital_Output value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsTool_Digital_Output [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros1Rm_msgsTool_Digital_Output.decode
--- @field encode fun(value: Ros1Rm_msgsTool_Digital_Output): string
--- @brief Decode exactly one complete Ros1Rm_msgsTool_Digital_Output canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsTool_Digital_Output value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsTool_Digital_Output.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsTool_Digital_Output
local Ros1Rm_msgsTool_Digital_Output = classes["Ros1Rm_msgsTool_Digital_Output"]

--- @class Ros1Rm_msgsTool_IO_State
--- @brief Complete ROS1 rm_msgs/Tool_IO_State value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field Tool_IO_Mode integer[] Exact int8 range -128..127. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @field Tool_IO_State integer[] Exact int8 range -128..127. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsTool_IO_State.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_IO_State.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsTool_IO_State.NATIVE_TYPE: Exact normalized native type name rm_msgs/Tool_IO_State.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_IO_State.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Tool_IO_State.
--- @brief Ros1Rm_msgsTool_IO_State.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_IO_State.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsTool_IO_State.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_IO_State.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsTool_IO_State.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_IO_State.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Rm_msgsTool_IO_State.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTool_IO_State.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Rm_msgsTool_IO_State with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsTool_IO_State value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsTool_IO_State.encode
--- @field new fun(values?: table): Ros1Rm_msgsTool_IO_State
--- @brief Encode a complete Ros1Rm_msgsTool_IO_State value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsTool_IO_State [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Rm_msgsTool_IO_State.decode
--- @field encode fun(value: Ros1Rm_msgsTool_IO_State): string
--- @brief Decode exactly one complete Ros1Rm_msgsTool_IO_State canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsTool_IO_State value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsTool_IO_State.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsTool_IO_State
local Ros1Rm_msgsTool_IO_State = classes["Ros1Rm_msgsTool_IO_State"]

--- @class Ros1Rm_msgsTrajectoryinfo
--- @brief Complete ROS1 rm_msgs/Trajectoryinfo value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field create_time string Strict UTF-8 without NUL; length0..256 bytes.
--- @field point_num integer Exact int32 range -2147483648..2147483647.
--- @brief Ros1Rm_msgsTrajectoryinfo.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTrajectoryinfo.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsTrajectoryinfo.NATIVE_TYPE: Exact normalized native type name rm_msgs/Trajectoryinfo.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTrajectoryinfo.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Trajectoryinfo.
--- @brief Ros1Rm_msgsTrajectoryinfo.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTrajectoryinfo.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsTrajectoryinfo.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTrajectoryinfo.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsTrajectoryinfo.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTrajectoryinfo.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Rm_msgsTrajectoryinfo.MAX_WIRE_BYTES: Inclusive complete maximum 524 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTrajectoryinfo.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 524 bytes.
--- @brief Construct Ros1Rm_msgsTrajectoryinfo with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsTrajectoryinfo value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsTrajectoryinfo.encode
--- @field new fun(values?: table): Ros1Rm_msgsTrajectoryinfo
--- @brief Encode a complete Ros1Rm_msgsTrajectoryinfo value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsTrajectoryinfo [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..524 bytes.
--- @see Ros1Rm_msgsTrajectoryinfo.decode
--- @field encode fun(value: Ros1Rm_msgsTrajectoryinfo): string
--- @brief Decode exactly one complete Ros1Rm_msgsTrajectoryinfo canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsTrajectoryinfo value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsTrajectoryinfo.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsTrajectoryinfo
local Ros1Rm_msgsTrajectoryinfo = classes["Ros1Rm_msgsTrajectoryinfo"]

--- @class Ros1Rm_msgsTrajectorylist
--- @brief Complete ROS1 rm_msgs/Trajectorylist value and codec.
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
--- @field tra_list table[] Complete nested rm_msgs/Trajectoryinfo value; no native fields are projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Rm_msgsTrajectorylist.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTrajectorylist.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsTrajectorylist.NATIVE_TYPE: Exact normalized native type name rm_msgs/Trajectorylist.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTrajectorylist.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Trajectorylist.
--- @brief Ros1Rm_msgsTrajectorylist.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTrajectorylist.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsTrajectorylist.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTrajectorylist.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsTrajectorylist.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTrajectorylist.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros1Rm_msgsTrajectorylist.MAX_WIRE_BYTES: Inclusive complete maximum 8660 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTrajectorylist.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8660 bytes.
--- @brief Construct Ros1Rm_msgsTrajectorylist with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsTrajectorylist value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsTrajectorylist.encode
--- @field new fun(values?: table): Ros1Rm_msgsTrajectorylist
--- @brief Encode a complete Ros1Rm_msgsTrajectorylist value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsTrajectorylist [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..8660 bytes.
--- @see Ros1Rm_msgsTrajectorylist.decode
--- @field encode fun(value: Ros1Rm_msgsTrajectorylist): string
--- @brief Decode exactly one complete Ros1Rm_msgsTrajectorylist canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsTrajectorylist value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsTrajectorylist.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsTrajectorylist
local Ros1Rm_msgsTrajectorylist = classes["Ros1Rm_msgsTrajectorylist"]

--- @class Ros1Rm_msgsTurtle_Driver
--- @brief Complete ROS1 rm_msgs/Turtle_Driver value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field message_type string Strict UTF-8 without NUL; length0..256 bytes.
--- @field robot_mac_address string Strict UTF-8 without NUL; length0..256 bytes.
--- @field vx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field vy number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field vtheta number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Rm_msgsTurtle_Driver.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTurtle_Driver.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsTurtle_Driver.NATIVE_TYPE: Exact normalized native type name rm_msgs/Turtle_Driver.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTurtle_Driver.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Turtle_Driver.
--- @brief Ros1Rm_msgsTurtle_Driver.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTurtle_Driver.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsTurtle_Driver.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTurtle_Driver.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsTurtle_Driver.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTurtle_Driver.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros1Rm_msgsTurtle_Driver.MAX_WIRE_BYTES: Inclusive complete maximum 532 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsTurtle_Driver.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 532 bytes.
--- @brief Construct Ros1Rm_msgsTurtle_Driver with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsTurtle_Driver value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsTurtle_Driver.encode
--- @field new fun(values?: table): Ros1Rm_msgsTurtle_Driver
--- @brief Encode a complete Ros1Rm_msgsTurtle_Driver value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsTurtle_Driver [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..532 bytes.
--- @see Ros1Rm_msgsTurtle_Driver.decode
--- @field encode fun(value: Ros1Rm_msgsTurtle_Driver): string
--- @brief Decode exactly one complete Ros1Rm_msgsTurtle_Driver canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsTurtle_Driver value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsTurtle_Driver.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsTurtle_Driver
local Ros1Rm_msgsTurtle_Driver = classes["Ros1Rm_msgsTurtle_Driver"]

--- @class Ros1Rm_msgsUpdateTCPmasterparam
--- @brief Complete ROS1 rm_msgs/UpdateTCPmasterparam value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field master_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field new_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field ip string Strict UTF-8 without NUL; length0..256 bytes.
--- @field port integer Exact int32 range -2147483648..2147483647.
--- @brief Ros1Rm_msgsUpdateTCPmasterparam.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsUpdateTCPmasterparam.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsUpdateTCPmasterparam.NATIVE_TYPE: Exact normalized native type name rm_msgs/UpdateTCPmasterparam.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsUpdateTCPmasterparam.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/UpdateTCPmasterparam.
--- @brief Ros1Rm_msgsUpdateTCPmasterparam.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsUpdateTCPmasterparam.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsUpdateTCPmasterparam.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsUpdateTCPmasterparam.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsUpdateTCPmasterparam.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsUpdateTCPmasterparam.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Rm_msgsUpdateTCPmasterparam.MAX_WIRE_BYTES: Inclusive complete maximum 784 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsUpdateTCPmasterparam.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 784 bytes.
--- @brief Construct Ros1Rm_msgsUpdateTCPmasterparam with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsUpdateTCPmasterparam value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsUpdateTCPmasterparam.encode
--- @field new fun(values?: table): Ros1Rm_msgsUpdateTCPmasterparam
--- @brief Encode a complete Ros1Rm_msgsUpdateTCPmasterparam value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsUpdateTCPmasterparam [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..784 bytes.
--- @see Ros1Rm_msgsUpdateTCPmasterparam.decode
--- @field encode fun(value: Ros1Rm_msgsUpdateTCPmasterparam): string
--- @brief Decode exactly one complete Ros1Rm_msgsUpdateTCPmasterparam canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsUpdateTCPmasterparam value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsUpdateTCPmasterparam.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsUpdateTCPmasterparam
local Ros1Rm_msgsUpdateTCPmasterparam = classes["Ros1Rm_msgsUpdateTCPmasterparam"]

--- @class Ros1Rm_msgsWrite_ModbusRTU
--- @brief Complete ROS1 rm_msgs/Write_ModbusRTU value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact int32 range -2147483648..2147483647.
--- @field data integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field type integer Exact int32 range -2147483648..2147483647.
--- @field device integer Exact int32 range -2147483648..2147483647.
--- @brief Ros1Rm_msgsWrite_ModbusRTU.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_ModbusRTU.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsWrite_ModbusRTU.NATIVE_TYPE: Exact normalized native type name rm_msgs/Write_ModbusRTU.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_ModbusRTU.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Write_ModbusRTU.
--- @brief Ros1Rm_msgsWrite_ModbusRTU.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_ModbusRTU.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsWrite_ModbusRTU.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_ModbusRTU.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsWrite_ModbusRTU.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_ModbusRTU.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Rm_msgsWrite_ModbusRTU.MAX_WIRE_BYTES: Inclusive complete maximum 80 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_ModbusRTU.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 80 bytes.
--- @brief Construct Ros1Rm_msgsWrite_ModbusRTU with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsWrite_ModbusRTU value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsWrite_ModbusRTU.encode
--- @field new fun(values?: table): Ros1Rm_msgsWrite_ModbusRTU
--- @brief Encode a complete Ros1Rm_msgsWrite_ModbusRTU value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsWrite_ModbusRTU [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..80 bytes.
--- @see Ros1Rm_msgsWrite_ModbusRTU.decode
--- @field encode fun(value: Ros1Rm_msgsWrite_ModbusRTU): string
--- @brief Decode exactly one complete Ros1Rm_msgsWrite_ModbusRTU canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsWrite_ModbusRTU value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsWrite_ModbusRTU.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsWrite_ModbusRTU
local Ros1Rm_msgsWrite_ModbusRTU = classes["Ros1Rm_msgsWrite_ModbusRTU"]

--- @class Ros1Rm_msgsWrite_Register
--- @brief Complete ROS1 rm_msgs/Write_Register value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field port integer Exact uint8 range 0..255.
--- @field address integer Exact uint32 range 0..4294967295.
--- @field num integer Exact uint32 range 0..4294967295.
--- @field data integer[] Exact uint16 range 0..65535. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field device integer Exact uint32 range 0..4294967295.
--- @brief Ros1Rm_msgsWrite_Register.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_Register.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsWrite_Register.NATIVE_TYPE: Exact normalized native type name rm_msgs/Write_Register.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_Register.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Write_Register.
--- @brief Ros1Rm_msgsWrite_Register.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_Register.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsWrite_Register.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_Register.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsWrite_Register.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_Register.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros1Rm_msgsWrite_Register.MAX_WIRE_BYTES: Inclusive complete maximum 49 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_Register.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 49 bytes.
--- @brief Construct Ros1Rm_msgsWrite_Register with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsWrite_Register value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsWrite_Register.encode
--- @field new fun(values?: table): Ros1Rm_msgsWrite_Register
--- @brief Encode a complete Ros1Rm_msgsWrite_Register value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsWrite_Register [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..49 bytes.
--- @see Ros1Rm_msgsWrite_Register.decode
--- @field encode fun(value: Ros1Rm_msgsWrite_Register): string
--- @brief Decode exactly one complete Ros1Rm_msgsWrite_Register canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsWrite_Register value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsWrite_Register.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsWrite_Register
local Ros1Rm_msgsWrite_Register = classes["Ros1Rm_msgsWrite_Register"]

--- @class Ros1Rm_msgsWrite_TCPandRTU
--- @brief Complete ROS1 rm_msgs/Write_TCPandRTU value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact int32 range -2147483648..2147483647.
--- @field data integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field ip string Strict UTF-8 without NUL; length0..256 bytes.
--- @field port integer Exact int32 range -2147483648..2147483647.
--- @field master_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field type integer Exact int32 range -2147483648..2147483647.
--- @field device integer Exact int32 range -2147483648..2147483647.
--- @brief Ros1Rm_msgsWrite_TCPandRTU.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_TCPandRTU.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Rm_msgsWrite_TCPandRTU.NATIVE_TYPE: Exact normalized native type name rm_msgs/Write_TCPandRTU.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_TCPandRTU.encode
--- @field NATIVE_TYPE string Exact normalized native type name rm_msgs/Write_TCPandRTU.
--- @brief Ros1Rm_msgsWrite_TCPandRTU.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_TCPandRTU.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Rm_msgsWrite_TCPandRTU.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_TCPandRTU.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Rm_msgsWrite_TCPandRTU.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_TCPandRTU.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros1Rm_msgsWrite_TCPandRTU.MAX_WIRE_BYTES: Inclusive complete maximum 604 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Rm_msgsWrite_TCPandRTU.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 604 bytes.
--- @brief Construct Ros1Rm_msgsWrite_TCPandRTU with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Rm_msgsWrite_TCPandRTU value New mutable complete value; no ROS resource.
--- @see Ros1Rm_msgsWrite_TCPandRTU.encode
--- @field new fun(values?: table): Ros1Rm_msgsWrite_TCPandRTU
--- @brief Encode a complete Ros1Rm_msgsWrite_TCPandRTU value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Rm_msgsWrite_TCPandRTU [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..604 bytes.
--- @see Ros1Rm_msgsWrite_TCPandRTU.decode
--- @field encode fun(value: Ros1Rm_msgsWrite_TCPandRTU): string
--- @brief Decode exactly one complete Ros1Rm_msgsWrite_TCPandRTU canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Rm_msgsWrite_TCPandRTU value New complete value; failures raise Lua errors.
--- @see Ros1Rm_msgsWrite_TCPandRTU.encode
--- @field decode fun(bytes: string): Ros1Rm_msgsWrite_TCPandRTU
local Ros1Rm_msgsWrite_TCPandRTU = classes["Ros1Rm_msgsWrite_TCPandRTU"]

return classes, by_name
