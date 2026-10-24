-- @file bounded_records.lua
-- @brief Represent the complete original ABB ROS 2 canonical value catalog.
-- @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
-- fields, original constants and native defaults; field units and frames follow the retained
-- definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
-- native ROS objects; importing them grants no transport alias.
--- @brief Complete source-derived canonical Lua value classes.
--- @details Synchronous local values only; Lua5.4 with signed64-bit integers.
--- @see roswasm/wire.lua
local wire = require("roswasm.wire")
local schemas = {
    {
        ["symbol"] = "Ros2Abb_egm_msgsMsgEGMChannelState",
        ["ros_version"] = 2,
        ["native_type"] = "abb_egm_msgs/msg/EGMChannelState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519",
        ["minimum"] = 17,
        ["maximum"] = 81,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "active",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "egm_convergence_met",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "egm_client_state",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "motor_state",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "rapid_execution_state",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "utilization_rate",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {
            ["EGM_UNDEFINED"] = 1,
            ["EGM_ERROR"] = 2,
            ["EGM_STOPPED"] = 3,
            ["EGM_RUNNING"] = 4,
            ["MOTORS_UNDEFINED"] = 1,
            ["MOTORS_ON"] = 2,
            ["MOTORS_OFF"] = 3,
            ["RAPID_UNDEFINED"] = 1,
            ["RAPID_STOPPED"] = 2,
            ["RAPID_RUNNING"] = 3,
        },
    },
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
        ["symbol"] = "Ros2Std_msgsMsgHeader",
        ["ros_version"] = 2,
        ["native_type"] = "std_msgs/msg/Header",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
        ["minimum"] = 12,
        ["maximum"] = 76,
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
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_egm_msgsMsgEGMState",
        ["ros_version"] = 2,
        ["native_type"] = "abb_egm_msgs/msg/EGMState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d",
        ["minimum"] = 16,
        ["maximum"] = 1376,
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
                ["name"] = "egm_channels",
                ["type"] = "Ros2Abb_egm_msgsMsgEGMChannelState",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 17,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_msgsMsgConfData",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_msgs/msg/ConfData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "cf1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "cf4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "cf6",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "cfx",
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
        ["symbol"] = "Ros2Abb_rapid_msgsMsgExtJoint",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_msgs/msg/ExtJoint",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "eax_a",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "eax_b",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "eax_c",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "eax_d",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "eax_e",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "eax_f",
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
        ["symbol"] = "Ros2Abb_rapid_msgsMsgRobJoint",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_msgs/msg/RobJoint",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "rax_1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rax_2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rax_3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rax_4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rax_5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "rax_6",
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
        ["symbol"] = "Ros2Abb_rapid_msgsMsgJointTarget",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_msgs/msg/JointTarget",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540",
        ["minimum"] = 48,
        ["maximum"] = 48,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "robax",
                ["type"] = "Ros2Abb_rapid_msgsMsgRobJoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "extax",
                ["type"] = "Ros2Abb_rapid_msgsMsgExtJoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_msgsMsgPos",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_msgs/msg/Pos",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2",
        ["minimum"] = 12,
        ["maximum"] = 12,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_msgsMsgOrient",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_msgs/msg/Orient",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "q1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "q2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "q3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "q4",
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
        ["symbol"] = "Ros2Abb_rapid_msgsMsgLoadData",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_msgs/msg/LoadData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9",
        ["minimum"] = 44,
        ["maximum"] = 44,
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
                ["name"] = "cog",
                ["type"] = "Ros2Abb_rapid_msgsMsgPos",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
            {
                ["name"] = "aom",
                ["type"] = "Ros2Abb_rapid_msgsMsgOrient",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "ix",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "iy",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "iz",
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
        ["symbol"] = "Ros2Abb_rapid_msgsMsgPose",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_msgs/msg/Pose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2",
        ["minimum"] = 28,
        ["maximum"] = 28,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "trans",
                ["type"] = "Ros2Abb_rapid_msgsMsgPos",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
            {
                ["name"] = "rot",
                ["type"] = "Ros2Abb_rapid_msgsMsgOrient",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_msgsMsgRobTarget",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_msgs/msg/RobTarget",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8",
        ["minimum"] = 68,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "trans",
                ["type"] = "Ros2Abb_rapid_msgsMsgPos",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
            {
                ["name"] = "rot",
                ["type"] = "Ros2Abb_rapid_msgsMsgOrient",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "robconf",
                ["type"] = "Ros2Abb_rapid_msgsMsgConfData",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "extax",
                ["type"] = "Ros2Abb_rapid_msgsMsgExtJoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_msgsMsgToolData",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_msgs/msg/ToolData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237",
        ["minimum"] = 73,
        ["maximum"] = 73,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "robhold",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "tframe",
                ["type"] = "Ros2Abb_rapid_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "tload",
                ["type"] = "Ros2Abb_rapid_msgsMsgLoadData",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 44,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_msgsMsgWObjData",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_msgs/msg/WObjData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd",
        ["minimum"] = 62,
        ["maximum"] = 574,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "robhold",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "ufprog",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "ufmec",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "uframe",
                ["type"] = "Ros2Abb_rapid_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "oframe",
                ["type"] = "Ros2Abb_rapid_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/msg/EGMActivateSettings",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa",
        ["minimum"] = 204,
        ["maximum"] = 716,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "tool",
                ["type"] = "Ros2Abb_rapid_msgsMsgToolData",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 73,
            },
            {
                ["name"] = "wobj",
                ["type"] = "Ros2Abb_rapid_msgsMsgWObjData",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 62,
            },
            {
                ["name"] = "correction_frame",
                ["type"] = "Ros2Abb_rapid_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "sensor_frame",
                ["type"] = "Ros2Abb_rapid_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "cond_min_max",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "lp_filter",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sample_rate",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "max_speed_deviation",
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
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/msg/EGMRunSettings",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2",
        ["minimum"] = 40,
        ["maximum"] = 40,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "cond_time",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ramp_in_time",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "offset",
                ["type"] = "Ros2Abb_rapid_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "pos_corr_gain",
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
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/msg/EGMSetupSettings",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "use_filtering",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "comm_timeout",
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
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/msg/EGMStopSettings",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "ramp_out_time",
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
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/msg/EGMSettings",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3",
        ["minimum"] = 255,
        ["maximum"] = 767,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "allow_egm_motions",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "use_presync",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "setup_uc",
                ["type"] = "Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 5,
            },
            {
                ["name"] = "activate",
                ["type"] = "Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 204,
            },
            {
                ["name"] = "run",
                ["type"] = "Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 40,
            },
            {
                ["name"] = "stop",
                ["type"] = "Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings",
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
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/msg/StateMachineState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "rapid_task",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sm_state",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "egm_action",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {
            ["SM_STATE_UNKNOWN"] = 1,
            ["SM_STATE_IDLE"] = 2,
            ["SM_STATE_INITIALIZE"] = 3,
            ["SM_STATE_RUN_RAPID_ROUTINE"] = 4,
            ["SM_STATE_RUN_EGM_ROUTINE"] = 5,
            ["EGM_ACTION_UNKNOWN"] = 1,
            ["EGM_ACTION_NONE"] = 2,
            ["EGM_ACTION_RUN_JOINT"] = 3,
            ["EGM_ACTION_RUN_POSE"] = 4,
            ["EGM_ACTION_STOP"] = 5,
            ["EGM_ACTION_START_STREAM"] = 6,
            ["EGM_ACTION_STOP_STREAM"] = 7,
        },
    },
    {
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/msg/RuntimeState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9",
        ["minimum"] = 16,
        ["maximum"] = 8368,
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
                ["name"] = "state_machines",
                ["type"] = "Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 6,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_363be2459fcc9c475c6305cbcfebf7689e891eb27645b7667960aace23d56e8e",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "task",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d8f340e1c6d78fc0a782c3279efb34ae5e11df175a82f9dd5ee82e603d6b2ffb",
        ["minimum"] = 261,
        ["maximum"] = 1285,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "settings",
                ["type"] = "Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 255,
            },
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c2f3dd535e9475526bf18bdffa0e9a839049d315c9aebb150f8561ee3361a2bd",
        ["minimum"] = 259,
        ["maximum"] = 835,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "task",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "settings",
                ["type"] = "Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 255,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6a1adeebe31dfe101a6d57019e26ee2f1144b9a6ce30aee08d4c6fe56ea6838d",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4561b7e5e296a1a329d5f5684bcbde1ef41324554a34e9a79a85824286dd477c",
        ["minimum"] = 8,
        ["maximum"] = 584,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "task",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "routine",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_980d2a16536289f446161acdf2fc57d459baa2290d74f1dd5aaf8129126cbba1",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5d6983aa85c2c52f8ec06cbd723d5929cfc381db2e0bfffb4c27078497d86c90",
        ["minimum"] = 9,
        ["maximum"] = 73,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "task",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "command",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "target_position",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["SG_COMMAND_UNKNOWN"] = 1,
            ["SG_COMMAND_NONE"] = 2,
            ["SG_COMMAND_INITIALIZE"] = 3,
            ["SG_COMMAND_CALIBRATE"] = 4,
            ["SG_COMMAND_MOVE_TO"] = 5,
            ["SG_COMMAND_GRIP_IN"] = 6,
            ["SG_COMMAND_GRIP_OUT"] = 7,
            ["SG_COMMAND_BLOW_ON_1"] = 8,
            ["SG_COMMAND_BLOW_ON_2"] = 9,
            ["SG_COMMAND_BLOW_OFF_1"] = 10,
            ["SG_COMMAND_BLOW_OFF_2"] = 11,
            ["SG_COMMAND_VACUUM_ON_1"] = 12,
            ["SG_COMMAND_VACUUM_ON_2"] = 13,
            ["SG_COMMAND_VACUUM_OFF_1"] = 14,
            ["SG_COMMAND_VACUUM_OFF_2"] = 15,
        },
    },
    {
        ["symbol"] = "Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_87cdc41c81d49930dce7193d4b7af98add266a6e9a7cf5e69457d01ded388cf8",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsMsgMechanicalUnitState",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/msg/MechanicalUnitState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8",
        ["minimum"] = 5,
        ["maximum"] = 69,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "activated",
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
        ["symbol"] = "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/msg/RAPIDSymbolPath",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e",
        ["minimum"] = 12,
        ["maximum"] = 204,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "task",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "module",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "symbol",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsMsgRAPIDTaskState",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/msg/RAPIDTaskState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd",
        ["minimum"] = 7,
        ["maximum"] = 71,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "activated",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "execution_state",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "motion_task",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {
            ["EXECUTION_STATE_UNKNOWN"] = 1,
            ["EXECUTION_STATE_READY"] = 2,
            ["EXECUTION_STATE_STOPPED"] = 3,
            ["EXECUTION_STATE_STARTED"] = 4,
            ["EXECUTION_STATE_UNINITIALIZED"] = 5,
        },
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsMsgServiceResponses",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/msg/ServiceResponses",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {
            ["SUCCESS"] = "",
            ["RC_SUCCESS"] = 1,
            ["FAILED"] = "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)",
            ["RC_FAILED"] = 2,
            ["SERVER_IS_BUSY"] = "Server is busy",
            ["RC_SERVER_IS_BUSY"] = 1001,
            ["EMPTY_FILENAME"] = "Filename is empty",
            ["RC_EMPTY_FILENAME"] = 2001,
            ["EMPTY_SIGNAL_NAME"] = "Signal name is empty",
            ["RC_EMPTY_SIGNAL_NAME"] = 2002,
            ["EMPTY_RAPID_TASK_NAME"] = "RAPID task name is empty",
            ["RC_EMPTY_RAPID_TASK_NAME"] = 2003,
            ["EMPTY_RAPID_MODULE_NAME"] = "RAPID module name is empty",
            ["RC_EMPTY_RAPID_MODULE_NAME"] = 2004,
            ["EMPTY_RAPID_SYMBOL_NAME"] = "RAPID symbol name is empty",
            ["RC_EMPTY_RAPID_SYMBOL_NAME"] = 2005,
            ["NOT_IN_AUTO_MODE"] = "Robot controller is not in AUTO mode",
            ["RC_NOT_IN_AUTO_MODE"] = 3001,
            ["MOTORS_ARE_OFF"] = "Motors are off",
            ["RC_MOTORS_ARE_OFF"] = 3002,
            ["MOTORS_ARE_ON"] = "Motors are on",
            ["RC_MOTORS_ARE_ON"] = 3003,
            ["RAPID_NOT_STOPPED"] = "RAPID has not been stopped",
            ["RC_RAPID_NOT_STOPPED"] = 3004,
            ["RAPID_NOT_RUNNING"] = "RAPID is not running",
            ["RC_RAPID_NOT_RUNNING"] = 3005,
            ["SM_RUNTIME_STATES_MISSING"] = "No runtime states received for any StateMachine Add-In instance",
            ["RC_SM_RUNTIME_STATES_MISSING"] = 4001,
            ["SM_UNKNOWN_RAPID_TASK"] = "RAPID task not found among known StateMachine Add-In instances",
            ["RC_SM_UNKNOWN_RAPID_TASK"] = 4002,
            ["SM_UNINITIALIZED"] = "StateMachine Add-In instance has not been initialized",
            ["RC_SM_UNINITIALIZED"] = 4003,
        },
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsMsgSystemState",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/msg/SystemState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f",
        ["minimum"] = 23,
        ["maximum"] = 2327,
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
                ["name"] = "motors_on",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "auto_mode",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "rapid_running",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "rapid_tasks",
                ["type"] = "Ros2Abb_robot_msgsMsgRAPIDTaskState",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 7,
            },
            {
                ["name"] = "mechanical_units",
                ["type"] = "Ros2Abb_robot_msgsMsgMechanicalUnitState",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 5,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetFileContents_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetFileContents_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bdcf73a965bd05356e48019b74d633176fdeda62452bc7185d6b6ff30576016b",
        ["minimum"] = 4,
        ["maximum"] = 516,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "filename",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetFileContents_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetFileContents_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f05617145a40043e87cbc251f833274d2a962bd7cdaabc5f9a8e4591bd56e107",
        ["minimum"] = 10,
        ["maximum"] = 4618,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "contents",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 4096,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetIOSignal_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetIOSignal_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2406d53c2fce44e72ad7e6f1c9e75ea19c4df694ff9f00917229ec758209b1f5",
        ["minimum"] = 4,
        ["maximum"] = 516,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "signal",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetIOSignal_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetIOSignal_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1f668ef78c353f2ec8defdac619d349cda731576f2429cf07107b9b56ba9030e",
        ["minimum"] = 10,
        ["maximum"] = 1034,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "value",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetRAPIDBool_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetRAPIDBool_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c381080d235c78216a8e64275819ff3fb97e1b1de96e7da758c4889630b8e0ff",
        ["minimum"] = 12,
        ["maximum"] = 204,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetRAPIDBool_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetRAPIDBool_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b853e212489fb815866fa29b165eea474a977483158b6203699c4a1293aa6acd",
        ["minimum"] = 7,
        ["maximum"] = 519,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "value",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetRAPIDDnum_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_71057c2fe44bc96505ec6e05d998fcb6323b281fff40808ce990207c48626979",
        ["minimum"] = 12,
        ["maximum"] = 204,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetRAPIDDnum_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_af0420c126368a7e45b728c7fef76062b5ef2f0adea7535ad38e4771244edd56",
        ["minimum"] = 14,
        ["maximum"] = 526,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "value",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetRAPIDNum_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetRAPIDNum_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_03d5da34af8d90ed8a20f8ca38fa75d9e777496828978f0f348e3c1c8f67d0a5",
        ["minimum"] = 12,
        ["maximum"] = 204,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetRAPIDNum_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetRAPIDNum_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a0da03014dd001e58efc4a5b274cd5c62016e7fa257af1120a8142a79635220d",
        ["minimum"] = 10,
        ["maximum"] = 522,
        ["semantics"] = "",
        ["fields"] = {
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
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetRAPIDString_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetRAPIDString_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c7bc9c788301e619a165c18a1cdb0aca80df8def5be31da5dbf34c0038e73596",
        ["minimum"] = 12,
        ["maximum"] = 204,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetRAPIDString_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetRAPIDString_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cf7bfdb2af5b91eb58b19b909f7fa3357dc1dad02716f8fa4465b53f3f4a1458",
        ["minimum"] = 10,
        ["maximum"] = 1034,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "value",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetRAPIDSymbol_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e216a54cdae70f8147489928ff05a4b172ba4fc47e9ed5df4828b070354ac469",
        ["minimum"] = 12,
        ["maximum"] = 204,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetRAPIDSymbol_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b1f6de7ad0640f5645678d327804dc7e732bdad38805e642b13ed7294c21d602",
        ["minimum"] = 10,
        ["maximum"] = 1034,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "value",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetRobotControllerDescription_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_caf70e11b386a933f62d06a433ca1cedaa3c8ecc75b7e8de8c1d5ae00a29f03e",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetRobotControllerDescription_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1af2591f035379597f376ed1e2343f73a89f9fef5c29269aa420243a82e6c368",
        ["minimum"] = 10,
        ["maximum"] = 4618,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "description",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 4096,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetSpeedRatio_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetSpeedRatio_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_54ee2c897e2bf2f39c96cc42246ffe5997c8df280280433e8748b3bcf24c299c",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvGetSpeedRatio_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/GetSpeedRatio_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_baa271a258c7ca274e0145fea1abb7cbc43e98c82b8e40d67c4743237a19910b",
        ["minimum"] = 7,
        ["maximum"] = 519,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "speed_ratio",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetFileContents_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetFileContents_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3bfa8ad1846fc31acae47a875d3555a78a64b777923eb9b62e87a836f041b26b",
        ["minimum"] = 8,
        ["maximum"] = 4616,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "filename",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "contents",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 4096,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetFileContents_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetFileContents_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1586344401d43055460b49f2487567638f66838cfe5cac99a47e0a39c0b06ede",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetIOSignal_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetIOSignal_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2d206d0020179263e83e745a428616ed53d809b0c65a79ad495cb882ae9e49b7",
        ["minimum"] = 8,
        ["maximum"] = 1032,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "signal",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "value",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetIOSignal_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetIOSignal_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1fa28cc3160d51f71d0740cbe145663ec360d6fa488c2a6bf14ad6ab92004a75",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetRAPIDBool_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetRAPIDBool_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4e707e429acc860d032d216bcd2c1eb1a0f731fad7e7c0bef7beed810c6e4a52",
        ["minimum"] = 13,
        ["maximum"] = 205,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
            {
                ["name"] = "value",
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
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetRAPIDBool_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetRAPIDBool_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_80d2b31c93771cfa8a19ff82a3d9d63951bf9d28c039d2725017327fa3b0114a",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetRAPIDDnum_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cece086311a908f12c0b0ab3988ca829e891749c74687c717d2a52bfb8ceaf76",
        ["minimum"] = 20,
        ["maximum"] = 212,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
            {
                ["name"] = "value",
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
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetRAPIDDnum_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e5f77fe9850f109d873a2784b9690c8aa0632b9e91d158ed4d14daf1aaf90ea6",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetRAPIDNum_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetRAPIDNum_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a5bee9a64be69dc4246f68837a44362f52795ae3c6420a2df47685606283ea02",
        ["minimum"] = 16,
        ["maximum"] = 208,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetRAPIDNum_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetRAPIDNum_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_744f3c5fac58ff098c96cedcea94fe6fa87c88ceb89674449f50fbdcd1ca30bb",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetRAPIDString_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetRAPIDString_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f21c45f3f8cd4c0b50781bdd487fdc6ec0c0b35adbc7e36e9ca5b7cc47c3d461",
        ["minimum"] = 16,
        ["maximum"] = 720,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
            {
                ["name"] = "value",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetRAPIDString_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetRAPIDString_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1496ef4f4ffe48fe74b9e25b925c19f10f0e171a9d33fa2e56c15aa5cfbe4774",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetRAPIDSymbol_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_928d427801b79775595fed6e3779f9ba9e7e8e27f2de66cf79610cb51bb72bcf",
        ["minimum"] = 16,
        ["maximum"] = 720,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros2Abb_robot_msgsMsgRAPIDSymbolPath",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
            {
                ["name"] = "value",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetRAPIDSymbol_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e156616a51bf4691a1c3853d62a8b0c43bb17d1a330cd4e7a58eceb5fe442382",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetSpeedRatio_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetSpeedRatio_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_da30970377ba1bc151b544560773f02e17f4eaed56eb4c8d791de72bdef04355",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "speed_ratio",
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
        ["symbol"] = "Ros2Abb_robot_msgsSrvSetSpeedRatio_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/SetSpeedRatio_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_25e6d7edaa0503a4d45d893e886db4215bfd0af8711307c141bc63552609e3a5",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/TriggerWithResultCode_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fd1d49c3b4e489464c6662f306210137f71d15192f64cd8a8abf93acd5fbff8d",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response",
        ["ros_version"] = 2,
        ["native_type"] = "abb_robot_msgs/srv/TriggerWithResultCode_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e38422b2a008f07e108505ac3ce65c24189a1d6657e88a6289e17d7d4ae38d51",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint16",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Builtin_interfacesMsgDuration",
        ["ros_version"] = 2,
        ["native_type"] = "builtin_interfaces/msg/Duration",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
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
        ["symbol"] = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
        ["ros_version"] = 2,
        ["native_type"] = "trajectory_msgs/msg/JointTrajectoryPoint",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5",
        ["minimum"] = 24,
        ["maximum"] = 408,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "positions",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "velocities",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "accelerations",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "effort",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "time_from_start",
                ["type"] = "Ros2Builtin_interfacesMsgDuration",
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
        ["symbol"] = "Ros2Trajectory_msgsMsgJointTrajectory",
        ["ros_version"] = 2,
        ["native_type"] = "trajectory_msgs/msg/JointTrajectory",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0",
        ["minimum"] = 20,
        ["maximum"] = 4164,
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
                ["name"] = "joint_names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "points",
                ["type"] = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                ["array"] = "sequence",
                ["count"] = 8,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Geometry_msgsMsgVector3",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Vector3",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
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
        ["symbol"] = "Ros2Geometry_msgsMsgTransform",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Transform",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "translation",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "rotation",
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
        ["symbol"] = "Ros2Geometry_msgsMsgTwist",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Twist",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
        ["minimum"] = 48,
        ["maximum"] = 48,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "linear",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "angular",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
        ["ros_version"] = 2,
        ["native_type"] = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242",
        ["minimum"] = 20,
        ["maximum"] = 324,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "transforms",
                ["type"] = "Ros2Geometry_msgsMsgTransform",
                ["array"] = "sequence",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "velocities",
                ["type"] = "Ros2Geometry_msgsMsgTwist",
                ["array"] = "sequence",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 48,
            },
            {
                ["name"] = "accelerations",
                ["type"] = "Ros2Geometry_msgsMsgTwist",
                ["array"] = "sequence",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 48,
            },
            {
                ["name"] = "time_from_start",
                ["type"] = "Ros2Builtin_interfacesMsgDuration",
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
        ["symbol"] = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectory",
        ["ros_version"] = 2,
        ["native_type"] = "trajectory_msgs/msg/MultiDOFJointTrajectory",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401",
        ["minimum"] = 20,
        ["maximum"] = 1516,
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
                ["name"] = "joint_names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 2,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "points",
                ["type"] = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                ["array"] = "sequence",
                ["count"] = 4,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 20,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Control_msgsMsgJointTolerance",
        ["ros_version"] = 2,
        ["native_type"] = "control_msgs/msg/JointTolerance",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2",
        ["minimum"] = 28,
        ["maximum"] = 92,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "position",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "velocity",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "acceleration",
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
        ["symbol"] = "Ros2Control_msgsMsgJointComponentTolerance",
        ["ros_version"] = 2,
        ["native_type"] = "control_msgs/msg/JointComponentTolerance",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342",
        ["minimum"] = 30,
        ["maximum"] = 542,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "component",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "position",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "velocity",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "acceleration",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {
            ["X_AXIS"] = 1,
            ["Y_AXIS"] = 2,
            ["Z_AXIS"] = 3,
            ["TRANSLATION"] = 4,
            ["ROTATION"] = 5,
        },
    },
    {
        ["symbol"] = "Ros2Control_msgsActionFollowJointTrajectory_Goal",
        ["ros_version"] = 2,
        ["native_type"] = "control_msgs/action/FollowJointTrajectory_Goal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16",
        ["minimum"] = 64,
        ["maximum"] = 20920,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "trajectory",
                ["type"] = "Ros2Trajectory_msgsMsgJointTrajectory",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 20,
            },
            {
                ["name"] = "multi_dof_trajectory",
                ["type"] = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectory",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 20,
            },
            {
                ["name"] = "path_tolerance",
                ["type"] = "Ros2Control_msgsMsgJointTolerance",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "component_path_tolerance",
                ["type"] = "Ros2Control_msgsMsgJointComponentTolerance",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 30,
            },
            {
                ["name"] = "goal_tolerance",
                ["type"] = "Ros2Control_msgsMsgJointTolerance",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "component_goal_tolerance",
                ["type"] = "Ros2Control_msgsMsgJointComponentTolerance",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 30,
            },
            {
                ["name"] = "goal_time_tolerance",
                ["type"] = "Ros2Builtin_interfacesMsgDuration",
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
        ["symbol"] = "Ros2Control_msgsActionFollowJointTrajectory_Result",
        ["ros_version"] = 2,
        ["native_type"] = "control_msgs/action/FollowJointTrajectory_Result",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70",
        ["minimum"] = 8,
        ["maximum"] = 4104,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "error_code",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "error_string",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 4096,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["SUCCESSFUL"] = 0,
            ["INVALID_GOAL"] = -1,
            ["INVALID_JOINTS"] = -2,
            ["OLD_HEADER_TIMESTAMP"] = -3,
            ["PATH_TOLERANCE_VIOLATED"] = -4,
            ["GOAL_TOLERANCE_VIOLATED"] = -5,
        },
    },
    {
        ["symbol"] = "Ros2Control_msgsActionFollowJointTrajectory_Feedback",
        ["ros_version"] = 2,
        ["native_type"] = "control_msgs/action/FollowJointTrajectory_Feedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb",
        ["minimum"] = 152,
        ["maximum"] = 4128,
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
                ["name"] = "joint_names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "desired",
                ["type"] = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "actual",
                ["type"] = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "error",
                ["type"] = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "multi_dof_joint_names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 2,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "multi_dof_desired",
                ["type"] = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 20,
            },
            {
                ["name"] = "multi_dof_actual",
                ["type"] = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 20,
            },
            {
                ["name"] = "multi_dof_error",
                ["type"] = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 20,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Sensor_msgsMsgJointState",
        ["ros_version"] = 2,
        ["native_type"] = "sensor_msgs/msg/JointState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884",
        ["minimum"] = 28,
        ["maximum"] = 1196,
        ["semantics"] = "joint-state-optional-equal-length-arrays",
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
                ["name"] = "name",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "position",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "velocity",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "effort",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Std_srvsSrvTrigger_Request",
        ["ros_version"] = 2,
        ["native_type"] = "std_srvs/srv/Trigger_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Std_srvsSrvTrigger_Response",
        ["ros_version"] = 2,
        ["native_type"] = "std_srvs/srv/Trigger_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d",
        ["minimum"] = 5,
        ["maximum"] = 517,
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
                ["name"] = "message",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
}
local classes, by_name = wire.records(schemas)

--- @class Ros2Abb_egm_msgsMsgEGMChannelState
--- @brief Complete ROS2 abb_egm_msgs/msg/EGMChannelState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field name string Strict UTF-8 without NUL; length0..64 bytes.
--- @field active boolean Exact boolean; encoded as one byte0/1.
--- @field egm_convergence_met boolean Exact boolean; encoded as one byte0/1.
--- @field egm_client_state integer Exact uint8 range 0..255.
--- @field motor_state integer Exact uint8 range 0..255.
--- @field rapid_execution_state integer Exact uint8 range 0..255.
--- @field utilization_rate number Finite IEEE float64.
--- @brief Ros2Abb_egm_msgsMsgEGMChannelState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_egm_msgsMsgEGMChannelState.NATIVE_TYPE: Exact normalized native type name
--abb_egm_msgs/msg/EGMChannelState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_egm_msgs/msg/EGMChannelState.
--- @brief Ros2Abb_egm_msgsMsgEGMChannelState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_egm_msgsMsgEGMChannelState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_egm_msgsMsgEGMChannelState.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros2Abb_egm_msgsMsgEGMChannelState.MAX_WIRE_BYTES: Inclusive complete maximum 81 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 81 bytes.
--- @brief Native class constant Ros2Abb_egm_msgsMsgEGMChannelState.EGM_UNDEFINED.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.new
--- @field EGM_UNDEFINED integer
--- @brief Native class constant Ros2Abb_egm_msgsMsgEGMChannelState.EGM_ERROR.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.new
--- @field EGM_ERROR integer
--- @brief Native class constant Ros2Abb_egm_msgsMsgEGMChannelState.EGM_STOPPED.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.new
--- @field EGM_STOPPED integer
--- @brief Native class constant Ros2Abb_egm_msgsMsgEGMChannelState.EGM_RUNNING.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.new
--- @field EGM_RUNNING integer
--- @brief Native class constant Ros2Abb_egm_msgsMsgEGMChannelState.MOTORS_UNDEFINED.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.new
--- @field MOTORS_UNDEFINED integer
--- @brief Native class constant Ros2Abb_egm_msgsMsgEGMChannelState.MOTORS_ON.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.new
--- @field MOTORS_ON integer
--- @brief Native class constant Ros2Abb_egm_msgsMsgEGMChannelState.MOTORS_OFF.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.new
--- @field MOTORS_OFF integer
--- @brief Native class constant Ros2Abb_egm_msgsMsgEGMChannelState.RAPID_UNDEFINED.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.new
--- @field RAPID_UNDEFINED integer
--- @brief Native class constant Ros2Abb_egm_msgsMsgEGMChannelState.RAPID_STOPPED.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.new
--- @field RAPID_STOPPED integer
--- @brief Native class constant Ros2Abb_egm_msgsMsgEGMChannelState.RAPID_RUNNING.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.new
--- @field RAPID_RUNNING integer
--- @brief Construct Ros2Abb_egm_msgsMsgEGMChannelState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_egm_msgsMsgEGMChannelState value New mutable complete value; no ROS resource.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.encode
--- @field new fun(values?: table): Ros2Abb_egm_msgsMsgEGMChannelState
--- @brief Encode a complete Ros2Abb_egm_msgsMsgEGMChannelState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_egm_msgsMsgEGMChannelState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..81 bytes.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.decode
--- @field encode fun(value: Ros2Abb_egm_msgsMsgEGMChannelState): string
--- @brief Decode exactly one complete Ros2Abb_egm_msgsMsgEGMChannelState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_egm_msgsMsgEGMChannelState value New complete value; failures raise Lua errors.
--- @see Ros2Abb_egm_msgsMsgEGMChannelState.encode
--- @field decode fun(bytes: string): Ros2Abb_egm_msgsMsgEGMChannelState
local Ros2Abb_egm_msgsMsgEGMChannelState = classes["Ros2Abb_egm_msgsMsgEGMChannelState"]

--- @class Ros2Builtin_interfacesMsgTime
--- @brief Complete ROS2 builtin_interfaces/msg/Time value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field sec integer Exact int32 range -2147483648..2147483647. Whole seconds; signedness/range follow the
--native scalar above.
--- @field nanosec integer Exact uint32 range 0..4294967295. Normalized fractional nanoseconds,
--inclusive0..999999999.
--- @brief Ros2Builtin_interfacesMsgTime.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Builtin_interfacesMsgTime.NATIVE_TYPE: Exact normalized native type name
--builtin_interfaces/msg/Time.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field NATIVE_TYPE string Exact normalized native type name builtin_interfaces/msg/Time.
--- @brief Ros2Builtin_interfacesMsgTime.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Builtin_interfacesMsgTime.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
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

--- @class Ros2Std_msgsMsgHeader
--- @brief Complete ROS2 std_msgs/msg/Header value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field stamp table Complete nested builtin_interfaces/msg/Time value; no native fields are projected away.
--- @field frame_id string Strict UTF-8 without NUL; length0..64 bytes.
--- @brief Ros2Std_msgsMsgHeader.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Std_msgsMsgHeader.NATIVE_TYPE: Exact normalized native type name std_msgs/msg/Header.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field NATIVE_TYPE string Exact normalized native type name std_msgs/msg/Header.
--- @brief Ros2Std_msgsMsgHeader.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Std_msgsMsgHeader.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Std_msgsMsgHeader.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Std_msgsMsgHeader.MAX_WIRE_BYTES: Inclusive complete maximum 76 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 76 bytes.
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
--- @return string bytes New immutable string, 12..76 bytes.
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

--- @class Ros2Abb_egm_msgsMsgEGMState
--- @brief Complete ROS2 abb_egm_msgs/msg/EGMState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field egm_channels table[] Complete nested abb_egm_msgs/msg/EGMChannelState value; no native fields are
--projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Abb_egm_msgsMsgEGMState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_egm_msgsMsgEGMState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_egm_msgsMsgEGMState.NATIVE_TYPE: Exact normalized native type name abb_egm_msgs/msg/EGMState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_egm_msgsMsgEGMState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_egm_msgs/msg/EGMState.
--- @brief Ros2Abb_egm_msgsMsgEGMState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_egm_msgsMsgEGMState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_egm_msgsMsgEGMState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_egm_msgsMsgEGMState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_egm_msgsMsgEGMState.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_egm_msgsMsgEGMState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Abb_egm_msgsMsgEGMState.MAX_WIRE_BYTES: Inclusive complete maximum 1376 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_egm_msgsMsgEGMState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1376 bytes.
--- @brief Construct Ros2Abb_egm_msgsMsgEGMState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_egm_msgsMsgEGMState value New mutable complete value; no ROS resource.
--- @see Ros2Abb_egm_msgsMsgEGMState.encode
--- @field new fun(values?: table): Ros2Abb_egm_msgsMsgEGMState
--- @brief Encode a complete Ros2Abb_egm_msgsMsgEGMState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_egm_msgsMsgEGMState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..1376 bytes.
--- @see Ros2Abb_egm_msgsMsgEGMState.decode
--- @field encode fun(value: Ros2Abb_egm_msgsMsgEGMState): string
--- @brief Decode exactly one complete Ros2Abb_egm_msgsMsgEGMState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_egm_msgsMsgEGMState value New complete value; failures raise Lua errors.
--- @see Ros2Abb_egm_msgsMsgEGMState.encode
--- @field decode fun(bytes: string): Ros2Abb_egm_msgsMsgEGMState
local Ros2Abb_egm_msgsMsgEGMState = classes["Ros2Abb_egm_msgsMsgEGMState"]

--- @class Ros2Abb_rapid_msgsMsgConfData
--- @brief Complete ROS2 abb_rapid_msgs/msg/ConfData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field cf1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cf4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cf6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cfx number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Abb_rapid_msgsMsgConfData.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgConfData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_msgsMsgConfData.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_msgs/msg/ConfData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgConfData.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/msg/ConfData.
--- @brief Ros2Abb_rapid_msgsMsgConfData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgConfData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_msgsMsgConfData.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgConfData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_msgsMsgConfData.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgConfData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Abb_rapid_msgsMsgConfData.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgConfData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Abb_rapid_msgsMsgConfData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_msgsMsgConfData value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_msgsMsgConfData.encode
--- @field new fun(values?: table): Ros2Abb_rapid_msgsMsgConfData
--- @brief Encode a complete Ros2Abb_rapid_msgsMsgConfData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_msgsMsgConfData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Abb_rapid_msgsMsgConfData.decode
--- @field encode fun(value: Ros2Abb_rapid_msgsMsgConfData): string
--- @brief Decode exactly one complete Ros2Abb_rapid_msgsMsgConfData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_msgsMsgConfData value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_msgsMsgConfData.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_msgsMsgConfData
local Ros2Abb_rapid_msgsMsgConfData = classes["Ros2Abb_rapid_msgsMsgConfData"]

--- @class Ros2Abb_rapid_msgsMsgExtJoint
--- @brief Complete ROS2 abb_rapid_msgs/msg/ExtJoint value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field eax_a number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field eax_b number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field eax_c number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field eax_d number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field eax_e number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field eax_f number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Abb_rapid_msgsMsgExtJoint.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgExtJoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_msgsMsgExtJoint.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_msgs/msg/ExtJoint.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgExtJoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/msg/ExtJoint.
--- @brief Ros2Abb_rapid_msgsMsgExtJoint.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgExtJoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_msgsMsgExtJoint.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgExtJoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_msgsMsgExtJoint.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgExtJoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Abb_rapid_msgsMsgExtJoint.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgExtJoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Abb_rapid_msgsMsgExtJoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_msgsMsgExtJoint value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_msgsMsgExtJoint.encode
--- @field new fun(values?: table): Ros2Abb_rapid_msgsMsgExtJoint
--- @brief Encode a complete Ros2Abb_rapid_msgsMsgExtJoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_msgsMsgExtJoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Abb_rapid_msgsMsgExtJoint.decode
--- @field encode fun(value: Ros2Abb_rapid_msgsMsgExtJoint): string
--- @brief Decode exactly one complete Ros2Abb_rapid_msgsMsgExtJoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_msgsMsgExtJoint value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_msgsMsgExtJoint.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_msgsMsgExtJoint
local Ros2Abb_rapid_msgsMsgExtJoint = classes["Ros2Abb_rapid_msgsMsgExtJoint"]

--- @class Ros2Abb_rapid_msgsMsgRobJoint
--- @brief Complete ROS2 abb_rapid_msgs/msg/RobJoint value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field rax_1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rax_2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rax_3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rax_4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rax_5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field rax_6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Abb_rapid_msgsMsgRobJoint.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgRobJoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_msgsMsgRobJoint.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_msgs/msg/RobJoint.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgRobJoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/msg/RobJoint.
--- @brief Ros2Abb_rapid_msgsMsgRobJoint.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgRobJoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_msgsMsgRobJoint.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgRobJoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_msgsMsgRobJoint.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgRobJoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Abb_rapid_msgsMsgRobJoint.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgRobJoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Abb_rapid_msgsMsgRobJoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_msgsMsgRobJoint value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_msgsMsgRobJoint.encode
--- @field new fun(values?: table): Ros2Abb_rapid_msgsMsgRobJoint
--- @brief Encode a complete Ros2Abb_rapid_msgsMsgRobJoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_msgsMsgRobJoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Abb_rapid_msgsMsgRobJoint.decode
--- @field encode fun(value: Ros2Abb_rapid_msgsMsgRobJoint): string
--- @brief Decode exactly one complete Ros2Abb_rapid_msgsMsgRobJoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_msgsMsgRobJoint value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_msgsMsgRobJoint.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_msgsMsgRobJoint
local Ros2Abb_rapid_msgsMsgRobJoint = classes["Ros2Abb_rapid_msgsMsgRobJoint"]

--- @class Ros2Abb_rapid_msgsMsgJointTarget
--- @brief Complete ROS2 abb_rapid_msgs/msg/JointTarget value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field robax table Complete nested abb_rapid_msgs/msg/RobJoint value; no native fields are projected away.
--- @field extax table Complete nested abb_rapid_msgs/msg/ExtJoint value; no native fields are projected away.
--- @brief Ros2Abb_rapid_msgsMsgJointTarget.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgJointTarget.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_msgsMsgJointTarget.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_msgs/msg/JointTarget.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgJointTarget.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/msg/JointTarget.
--- @brief Ros2Abb_rapid_msgsMsgJointTarget.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgJointTarget.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_msgsMsgJointTarget.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgJointTarget.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_msgsMsgJointTarget.MIN_WIRE_BYTES: Inclusive complete minimum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgJointTarget.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 48 bytes.
--- @brief Ros2Abb_rapid_msgsMsgJointTarget.MAX_WIRE_BYTES: Inclusive complete maximum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgJointTarget.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 48 bytes.
--- @brief Construct Ros2Abb_rapid_msgsMsgJointTarget with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_msgsMsgJointTarget value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_msgsMsgJointTarget.encode
--- @field new fun(values?: table): Ros2Abb_rapid_msgsMsgJointTarget
--- @brief Encode a complete Ros2Abb_rapid_msgsMsgJointTarget value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_msgsMsgJointTarget [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 48..48 bytes.
--- @see Ros2Abb_rapid_msgsMsgJointTarget.decode
--- @field encode fun(value: Ros2Abb_rapid_msgsMsgJointTarget): string
--- @brief Decode exactly one complete Ros2Abb_rapid_msgsMsgJointTarget canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_msgsMsgJointTarget value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_msgsMsgJointTarget.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_msgsMsgJointTarget
local Ros2Abb_rapid_msgsMsgJointTarget = classes["Ros2Abb_rapid_msgsMsgJointTarget"]

--- @class Ros2Abb_rapid_msgsMsgPos
--- @brief Complete ROS2 abb_rapid_msgs/msg/Pos value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Abb_rapid_msgsMsgPos.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgPos.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_msgsMsgPos.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/msg/Pos.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgPos.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/msg/Pos.
--- @brief Ros2Abb_rapid_msgsMsgPos.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgPos.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_msgsMsgPos.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgPos.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_msgsMsgPos.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgPos.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Abb_rapid_msgsMsgPos.MAX_WIRE_BYTES: Inclusive complete maximum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgPos.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 12 bytes.
--- @brief Construct Ros2Abb_rapid_msgsMsgPos with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_msgsMsgPos value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_msgsMsgPos.encode
--- @field new fun(values?: table): Ros2Abb_rapid_msgsMsgPos
--- @brief Encode a complete Ros2Abb_rapid_msgsMsgPos value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_msgsMsgPos [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..12 bytes.
--- @see Ros2Abb_rapid_msgsMsgPos.decode
--- @field encode fun(value: Ros2Abb_rapid_msgsMsgPos): string
--- @brief Decode exactly one complete Ros2Abb_rapid_msgsMsgPos canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_msgsMsgPos value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_msgsMsgPos.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_msgsMsgPos
local Ros2Abb_rapid_msgsMsgPos = classes["Ros2Abb_rapid_msgsMsgPos"]

--- @class Ros2Abb_rapid_msgsMsgOrient
--- @brief Complete ROS2 abb_rapid_msgs/msg/Orient value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field q1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field q2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field q3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field q4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Abb_rapid_msgsMsgOrient.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgOrient.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_msgsMsgOrient.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/msg/Orient.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgOrient.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/msg/Orient.
--- @brief Ros2Abb_rapid_msgsMsgOrient.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgOrient.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_msgsMsgOrient.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgOrient.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_msgsMsgOrient.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgOrient.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Abb_rapid_msgsMsgOrient.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgOrient.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Abb_rapid_msgsMsgOrient with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_msgsMsgOrient value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_msgsMsgOrient.encode
--- @field new fun(values?: table): Ros2Abb_rapid_msgsMsgOrient
--- @brief Encode a complete Ros2Abb_rapid_msgsMsgOrient value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_msgsMsgOrient [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Abb_rapid_msgsMsgOrient.decode
--- @field encode fun(value: Ros2Abb_rapid_msgsMsgOrient): string
--- @brief Decode exactly one complete Ros2Abb_rapid_msgsMsgOrient canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_msgsMsgOrient value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_msgsMsgOrient.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_msgsMsgOrient
local Ros2Abb_rapid_msgsMsgOrient = classes["Ros2Abb_rapid_msgsMsgOrient"]

--- @class Ros2Abb_rapid_msgsMsgLoadData
--- @brief Complete ROS2 abb_rapid_msgs/msg/LoadData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mass number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cog table Complete nested abb_rapid_msgs/msg/Pos value; no native fields are projected away.
--- @field aom table Complete nested abb_rapid_msgs/msg/Orient value; no native fields are projected away.
--- @field ix number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field iy number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field iz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Abb_rapid_msgsMsgLoadData.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgLoadData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_msgsMsgLoadData.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_msgs/msg/LoadData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgLoadData.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/msg/LoadData.
--- @brief Ros2Abb_rapid_msgsMsgLoadData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgLoadData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_msgsMsgLoadData.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgLoadData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_msgsMsgLoadData.MIN_WIRE_BYTES: Inclusive complete minimum 44 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgLoadData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 44 bytes.
--- @brief Ros2Abb_rapid_msgsMsgLoadData.MAX_WIRE_BYTES: Inclusive complete maximum 44 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgLoadData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 44 bytes.
--- @brief Construct Ros2Abb_rapid_msgsMsgLoadData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_msgsMsgLoadData value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_msgsMsgLoadData.encode
--- @field new fun(values?: table): Ros2Abb_rapid_msgsMsgLoadData
--- @brief Encode a complete Ros2Abb_rapid_msgsMsgLoadData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_msgsMsgLoadData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 44..44 bytes.
--- @see Ros2Abb_rapid_msgsMsgLoadData.decode
--- @field encode fun(value: Ros2Abb_rapid_msgsMsgLoadData): string
--- @brief Decode exactly one complete Ros2Abb_rapid_msgsMsgLoadData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_msgsMsgLoadData value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_msgsMsgLoadData.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_msgsMsgLoadData
local Ros2Abb_rapid_msgsMsgLoadData = classes["Ros2Abb_rapid_msgsMsgLoadData"]

--- @class Ros2Abb_rapid_msgsMsgPose
--- @brief Complete ROS2 abb_rapid_msgs/msg/Pose value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field trans table Complete nested abb_rapid_msgs/msg/Pos value; no native fields are projected away.
--- @field rot table Complete nested abb_rapid_msgs/msg/Orient value; no native fields are projected away.
--- @brief Ros2Abb_rapid_msgsMsgPose.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgPose.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_msgsMsgPose.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/msg/Pose.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgPose.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/msg/Pose.
--- @brief Ros2Abb_rapid_msgsMsgPose.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgPose.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_msgsMsgPose.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgPose.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_msgsMsgPose.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgPose.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2Abb_rapid_msgsMsgPose.MAX_WIRE_BYTES: Inclusive complete maximum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgPose.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 28 bytes.
--- @brief Construct Ros2Abb_rapid_msgsMsgPose with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_msgsMsgPose value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_msgsMsgPose.encode
--- @field new fun(values?: table): Ros2Abb_rapid_msgsMsgPose
--- @brief Encode a complete Ros2Abb_rapid_msgsMsgPose value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_msgsMsgPose [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..28 bytes.
--- @see Ros2Abb_rapid_msgsMsgPose.decode
--- @field encode fun(value: Ros2Abb_rapid_msgsMsgPose): string
--- @brief Decode exactly one complete Ros2Abb_rapid_msgsMsgPose canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_msgsMsgPose value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_msgsMsgPose.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_msgsMsgPose
local Ros2Abb_rapid_msgsMsgPose = classes["Ros2Abb_rapid_msgsMsgPose"]

--- @class Ros2Abb_rapid_msgsMsgRobTarget
--- @brief Complete ROS2 abb_rapid_msgs/msg/RobTarget value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field trans table Complete nested abb_rapid_msgs/msg/Pos value; no native fields are projected away.
--- @field rot table Complete nested abb_rapid_msgs/msg/Orient value; no native fields are projected away.
--- @field robconf table Complete nested abb_rapid_msgs/msg/ConfData value; no native fields are projected away.
--- @field extax table Complete nested abb_rapid_msgs/msg/ExtJoint value; no native fields are projected away.
--- @brief Ros2Abb_rapid_msgsMsgRobTarget.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgRobTarget.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_msgsMsgRobTarget.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_msgs/msg/RobTarget.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgRobTarget.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/msg/RobTarget.
--- @brief Ros2Abb_rapid_msgsMsgRobTarget.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgRobTarget.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_msgsMsgRobTarget.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgRobTarget.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_msgsMsgRobTarget.MIN_WIRE_BYTES: Inclusive complete minimum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgRobTarget.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 68 bytes.
--- @brief Ros2Abb_rapid_msgsMsgRobTarget.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgRobTarget.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros2Abb_rapid_msgsMsgRobTarget with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_msgsMsgRobTarget value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_msgsMsgRobTarget.encode
--- @field new fun(values?: table): Ros2Abb_rapid_msgsMsgRobTarget
--- @brief Encode a complete Ros2Abb_rapid_msgsMsgRobTarget value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_msgsMsgRobTarget [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 68..68 bytes.
--- @see Ros2Abb_rapid_msgsMsgRobTarget.decode
--- @field encode fun(value: Ros2Abb_rapid_msgsMsgRobTarget): string
--- @brief Decode exactly one complete Ros2Abb_rapid_msgsMsgRobTarget canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_msgsMsgRobTarget value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_msgsMsgRobTarget.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_msgsMsgRobTarget
local Ros2Abb_rapid_msgsMsgRobTarget = classes["Ros2Abb_rapid_msgsMsgRobTarget"]

--- @class Ros2Abb_rapid_msgsMsgToolData
--- @brief Complete ROS2 abb_rapid_msgs/msg/ToolData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field robhold boolean Exact boolean; encoded as one byte0/1.
--- @field tframe table Complete nested abb_rapid_msgs/msg/Pose value; no native fields are projected away.
--- @field tload table Complete nested abb_rapid_msgs/msg/LoadData value; no native fields are projected away.
--- @brief Ros2Abb_rapid_msgsMsgToolData.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgToolData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_msgsMsgToolData.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_msgs/msg/ToolData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgToolData.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/msg/ToolData.
--- @brief Ros2Abb_rapid_msgsMsgToolData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgToolData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_msgsMsgToolData.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgToolData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_msgsMsgToolData.MIN_WIRE_BYTES: Inclusive complete minimum 73 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgToolData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 73 bytes.
--- @brief Ros2Abb_rapid_msgsMsgToolData.MAX_WIRE_BYTES: Inclusive complete maximum 73 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgToolData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 73 bytes.
--- @brief Construct Ros2Abb_rapid_msgsMsgToolData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_msgsMsgToolData value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_msgsMsgToolData.encode
--- @field new fun(values?: table): Ros2Abb_rapid_msgsMsgToolData
--- @brief Encode a complete Ros2Abb_rapid_msgsMsgToolData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_msgsMsgToolData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 73..73 bytes.
--- @see Ros2Abb_rapid_msgsMsgToolData.decode
--- @field encode fun(value: Ros2Abb_rapid_msgsMsgToolData): string
--- @brief Decode exactly one complete Ros2Abb_rapid_msgsMsgToolData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_msgsMsgToolData value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_msgsMsgToolData.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_msgsMsgToolData
local Ros2Abb_rapid_msgsMsgToolData = classes["Ros2Abb_rapid_msgsMsgToolData"]

--- @class Ros2Abb_rapid_msgsMsgWObjData
--- @brief Complete ROS2 abb_rapid_msgs/msg/WObjData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field robhold boolean Exact boolean; encoded as one byte0/1.
--- @field ufprog boolean Exact boolean; encoded as one byte0/1.
--- @field ufmec string Strict UTF-8 without NUL; length0..512 bytes.
--- @field uframe table Complete nested abb_rapid_msgs/msg/Pose value; no native fields are projected away.
--- @field oframe table Complete nested abb_rapid_msgs/msg/Pose value; no native fields are projected away.
--- @brief Ros2Abb_rapid_msgsMsgWObjData.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgWObjData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_msgsMsgWObjData.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_msgs/msg/WObjData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgWObjData.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/msg/WObjData.
--- @brief Ros2Abb_rapid_msgsMsgWObjData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgWObjData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_msgsMsgWObjData.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgWObjData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_msgsMsgWObjData.MIN_WIRE_BYTES: Inclusive complete minimum 62 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgWObjData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 62 bytes.
--- @brief Ros2Abb_rapid_msgsMsgWObjData.MAX_WIRE_BYTES: Inclusive complete maximum 574 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_msgsMsgWObjData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 574 bytes.
--- @brief Construct Ros2Abb_rapid_msgsMsgWObjData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_msgsMsgWObjData value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_msgsMsgWObjData.encode
--- @field new fun(values?: table): Ros2Abb_rapid_msgsMsgWObjData
--- @brief Encode a complete Ros2Abb_rapid_msgsMsgWObjData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_msgsMsgWObjData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 62..574 bytes.
--- @see Ros2Abb_rapid_msgsMsgWObjData.decode
--- @field encode fun(value: Ros2Abb_rapid_msgsMsgWObjData): string
--- @brief Decode exactly one complete Ros2Abb_rapid_msgsMsgWObjData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_msgsMsgWObjData value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_msgsMsgWObjData.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_msgsMsgWObjData
local Ros2Abb_rapid_msgsMsgWObjData = classes["Ros2Abb_rapid_msgsMsgWObjData"]

--- @class Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/msg/EGMActivateSettings value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field tool table Complete nested abb_rapid_msgs/msg/ToolData value; no native fields are projected away.
--- @field wobj table Complete nested abb_rapid_msgs/msg/WObjData value; no native fields are projected away.
--- @field correction_frame table Complete nested abb_rapid_msgs/msg/Pose value; no native fields are projected
--away.
--- @field sensor_frame table Complete nested abb_rapid_msgs/msg/Pose value; no native fields are projected
--away.
--- @field cond_min_max number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field lp_filter number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field sample_rate integer Exact uint8 range 0..255.
--- @field max_speed_deviation number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.MIN_WIRE_BYTES: Inclusive complete minimum 204
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 204 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.MAX_WIRE_BYTES: Inclusive complete maximum 716
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 716 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 204..716 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings value New complete value; failures raise Lua
--errors.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
local Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings = classes["Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings"]

--- @class Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/msg/EGMRunSettings value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field cond_time number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ramp_in_time number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field offset table Complete nested abb_rapid_msgs/msg/Pose value; no native fields are projected away.
--- @field pos_corr_gain number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.MIN_WIRE_BYTES: Inclusive complete minimum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 40 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.MAX_WIRE_BYTES: Inclusive complete maximum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 40 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 40..40 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
local Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings = classes["Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings"]

--- @class Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/msg/EGMSetupSettings value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field use_filtering boolean Exact boolean; encoded as one byte0/1.
--- @field comm_timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
local Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings = classes["Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings"]

--- @class Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/msg/EGMStopSettings value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ramp_out_time number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
local Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings = classes["Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings"]

--- @class Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/msg/EGMSettings value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field allow_egm_motions boolean Exact boolean; encoded as one byte0/1.
--- @field use_presync boolean Exact boolean; encoded as one byte0/1.
--- @field setup_uc table Complete nested abb_rapid_sm_addin_msgs/msg/EGMSetupSettings value; no native fields
--are projected away.
--- @field activate table Complete nested abb_rapid_sm_addin_msgs/msg/EGMActivateSettings value; no native
--fields are projected away.
--- @field run table Complete nested abb_rapid_sm_addin_msgs/msg/EGMRunSettings value; no native fields are
--projected away.
--- @field stop table Complete nested abb_rapid_sm_addin_msgs/msg/EGMStopSettings value; no native fields are
--projected away.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/msg/EGMSettings.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/msg/EGMSettings.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.MIN_WIRE_BYTES: Inclusive complete minimum 255 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 255 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.MAX_WIRE_BYTES: Inclusive complete maximum 767 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 767 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 255..767 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
local Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings = classes["Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings"]

--- @class Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/msg/StateMachineState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field rapid_task string Strict UTF-8 without NUL; length0..512 bytes.
--- @field sm_state integer Exact uint8 range 0..255.
--- @field egm_action integer Exact uint8 range 0..255.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/msg/StateMachineState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/msg/StateMachineState.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.SM_STATE_UNKNOWN.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.new
--- @field SM_STATE_UNKNOWN integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.SM_STATE_IDLE.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.new
--- @field SM_STATE_IDLE integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.SM_STATE_INITIALIZE.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.new
--- @field SM_STATE_INITIALIZE integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.SM_STATE_RUN_RAPID_ROUTINE.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.new
--- @field SM_STATE_RUN_RAPID_ROUTINE integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.SM_STATE_RUN_EGM_ROUTINE.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.new
--- @field SM_STATE_RUN_EGM_ROUTINE integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.EGM_ACTION_UNKNOWN.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.new
--- @field EGM_ACTION_UNKNOWN integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.EGM_ACTION_NONE.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.new
--- @field EGM_ACTION_NONE integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.EGM_ACTION_RUN_JOINT.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.new
--- @field EGM_ACTION_RUN_JOINT integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.EGM_ACTION_RUN_POSE.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.new
--- @field EGM_ACTION_RUN_POSE integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.EGM_ACTION_STOP.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.new
--- @field EGM_ACTION_STOP integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.EGM_ACTION_START_STREAM.
--- @details Original uint8 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.new
--- @field EGM_ACTION_START_STREAM integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.EGM_ACTION_STOP_STREAM.
--- @details Original uint8 literal 7; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.new
--- @field EGM_ACTION_STOP_STREAM integer
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState
local Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState = classes["Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState"]

--- @class Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/msg/RuntimeState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field state_machines table[] Complete nested abb_rapid_sm_addin_msgs/msg/StateMachineState value; no native
--fields are projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/msg/RuntimeState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/msg/RuntimeState.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.MAX_WIRE_BYTES: Inclusive complete maximum 8368 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8368 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState value New mutable complete value; no ROS resource.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..8368 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState value New complete value; failures raise Lua errors.
--- @see Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState
local Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState = classes["Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState"]

--- @class Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field task string Strict UTF-8 without NUL; length0..64 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.MAX_WIRE_BYTES: Inclusive complete maximum 68
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request value New mutable complete value; no ROS
--resource.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request
local Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request =
    classes["Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request"]

--- @class Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field settings table Complete nested abb_rapid_sm_addin_msgs/msg/EGMSettings value; no native fields are
--projected away.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.ROS_VERSION: Read-only-by-contract backend
--value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.NATIVE_IDENTITY: Exact supplied native
--identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.MIN_WIRE_BYTES: Inclusive complete minimum 261
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 261 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1285
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1285 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response value New mutable complete value; no ROS
--resource.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 261..1285 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response
local Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response =
    classes["Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response"]

--- @class Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field task string Strict UTF-8 without NUL; length0..64 bytes.
--- @field settings table Complete nested abb_rapid_sm_addin_msgs/msg/EGMSettings value; no native fields are
--projected away.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.MIN_WIRE_BYTES: Inclusive complete minimum 259
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 259 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.MAX_WIRE_BYTES: Inclusive complete maximum 835
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 835 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request value New mutable complete value; no ROS
--resource.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 259..835 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request
local Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request =
    classes["Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request"]

--- @class Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.ROS_VERSION: Read-only-by-contract backend
--value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.NATIVE_IDENTITY: Exact supplied native
--identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response value New mutable complete value; no ROS
--resource.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response
local Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response =
    classes["Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response"]

--- @class Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field task string Strict UTF-8 without NUL; length0..64 bytes.
--- @field routine string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.ROS_VERSION: Read-only-by-contract backend
--value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.NATIVE_IDENTITY: Exact supplied native
--identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.MAX_WIRE_BYTES: Inclusive complete maximum 584
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 584 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request value New mutable complete value; no ROS
--resource.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 8..584 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request
local Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request =
    classes["Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request"]

--- @class Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.ROS_VERSION: Read-only-by-contract backend
--value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.NATIVE_IDENTITY: Exact supplied native
--identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response value New mutable complete value; no ROS
--resource.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response
local Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response =
    classes["Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response"]

--- @class Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field task string Strict UTF-8 without NUL; length0..64 bytes.
--- @field command integer Exact uint8 range 0..255.
--- @field target_position number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.MIN_WIRE_BYTES: Inclusive complete minimum 9
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.MAX_WIRE_BYTES: Inclusive complete maximum 73
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 73 bytes.
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_UNKNOWN.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_UNKNOWN integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_NONE.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_NONE integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_INITIALIZE.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_INITIALIZE integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_CALIBRATE.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_CALIBRATE integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_MOVE_TO.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_MOVE_TO integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_GRIP_IN.
--- @details Original uint8 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_GRIP_IN integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_GRIP_OUT.
--- @details Original uint8 literal 7; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_GRIP_OUT integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_BLOW_ON_1.
--- @details Original uint8 literal 8; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_BLOW_ON_1 integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_BLOW_ON_2.
--- @details Original uint8 literal 9; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_BLOW_ON_2 integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_BLOW_OFF_1.
--- @details Original uint8 literal 10; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_BLOW_OFF_1 integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_BLOW_OFF_2.
--- @details Original uint8 literal 11; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_BLOW_OFF_2 integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_VACUUM_ON_1.
--- @details Original uint8 literal 12; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_VACUUM_ON_1 integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_VACUUM_ON_2.
--- @details Original uint8 literal 13; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_VACUUM_ON_2 integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_VACUUM_OFF_1.
--- @details Original uint8 literal 14; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_VACUUM_OFF_1 integer
--- @brief Native class constant Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.SG_COMMAND_VACUUM_OFF_2.
--- @details Original uint8 literal 15; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.new
--- @field SG_COMMAND_VACUUM_OFF_2 integer
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value New mutable complete value; no ROS
--resource.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..73 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request
local Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request = classes["Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request"]

--- @class Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response
--- @brief Complete ROS2 abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response value New mutable complete value; no ROS
--resource.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.encode
--- @field new fun(values?: table): Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response
--- @brief Encode a complete Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.decode
--- @field encode fun(value: Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response): string
--- @brief Decode exactly one complete Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response
local Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response =
    classes["Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response"]

--- @class Ros2Abb_robot_msgsMsgMechanicalUnitState
--- @brief Complete ROS2 abb_robot_msgs/msg/MechanicalUnitState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field name string Strict UTF-8 without NUL; length0..64 bytes.
--- @field activated boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Abb_robot_msgsMsgMechanicalUnitState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgMechanicalUnitState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsMsgMechanicalUnitState.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/msg/MechanicalUnitState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgMechanicalUnitState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/msg/MechanicalUnitState.
--- @brief Ros2Abb_robot_msgsMsgMechanicalUnitState.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgMechanicalUnitState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsMsgMechanicalUnitState.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgMechanicalUnitState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsMsgMechanicalUnitState.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgMechanicalUnitState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Abb_robot_msgsMsgMechanicalUnitState.MAX_WIRE_BYTES: Inclusive complete maximum 69 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgMechanicalUnitState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 69 bytes.
--- @brief Construct Ros2Abb_robot_msgsMsgMechanicalUnitState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsMsgMechanicalUnitState value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsMsgMechanicalUnitState.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsMsgMechanicalUnitState
--- @brief Encode a complete Ros2Abb_robot_msgsMsgMechanicalUnitState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsMsgMechanicalUnitState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..69 bytes.
--- @see Ros2Abb_robot_msgsMsgMechanicalUnitState.decode
--- @field encode fun(value: Ros2Abb_robot_msgsMsgMechanicalUnitState): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsMsgMechanicalUnitState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsMsgMechanicalUnitState value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsMsgMechanicalUnitState.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsMsgMechanicalUnitState
local Ros2Abb_robot_msgsMsgMechanicalUnitState = classes["Ros2Abb_robot_msgsMsgMechanicalUnitState"]

--- @class Ros2Abb_robot_msgsMsgRAPIDSymbolPath
--- @brief Complete ROS2 abb_robot_msgs/msg/RAPIDSymbolPath value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field task string Strict UTF-8 without NUL; length0..64 bytes.
--- @field module string Strict UTF-8 without NUL; length0..64 bytes.
--- @field symbol string Strict UTF-8 without NUL; length0..64 bytes.
--- @brief Ros2Abb_robot_msgsMsgRAPIDSymbolPath.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgRAPIDSymbolPath.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsMsgRAPIDSymbolPath.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/msg/RAPIDSymbolPath.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgRAPIDSymbolPath.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/msg/RAPIDSymbolPath.
--- @brief Ros2Abb_robot_msgsMsgRAPIDSymbolPath.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgRAPIDSymbolPath.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsMsgRAPIDSymbolPath.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgRAPIDSymbolPath.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsMsgRAPIDSymbolPath.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgRAPIDSymbolPath.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Abb_robot_msgsMsgRAPIDSymbolPath.MAX_WIRE_BYTES: Inclusive complete maximum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgRAPIDSymbolPath.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 204 bytes.
--- @brief Construct Ros2Abb_robot_msgsMsgRAPIDSymbolPath with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsMsgRAPIDSymbolPath value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsMsgRAPIDSymbolPath.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsMsgRAPIDSymbolPath
--- @brief Encode a complete Ros2Abb_robot_msgsMsgRAPIDSymbolPath value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsMsgRAPIDSymbolPath [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..204 bytes.
--- @see Ros2Abb_robot_msgsMsgRAPIDSymbolPath.decode
--- @field encode fun(value: Ros2Abb_robot_msgsMsgRAPIDSymbolPath): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsMsgRAPIDSymbolPath canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsMsgRAPIDSymbolPath value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsMsgRAPIDSymbolPath.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsMsgRAPIDSymbolPath
local Ros2Abb_robot_msgsMsgRAPIDSymbolPath = classes["Ros2Abb_robot_msgsMsgRAPIDSymbolPath"]

--- @class Ros2Abb_robot_msgsMsgRAPIDTaskState
--- @brief Complete ROS2 abb_robot_msgs/msg/RAPIDTaskState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field name string Strict UTF-8 without NUL; length0..64 bytes.
--- @field activated boolean Exact boolean; encoded as one byte0/1.
--- @field execution_state integer Exact uint8 range 0..255.
--- @field motion_task boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Abb_robot_msgsMsgRAPIDTaskState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsMsgRAPIDTaskState.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/msg/RAPIDTaskState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/msg/RAPIDTaskState.
--- @brief Ros2Abb_robot_msgsMsgRAPIDTaskState.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsMsgRAPIDTaskState.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsMsgRAPIDTaskState.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros2Abb_robot_msgsMsgRAPIDTaskState.MAX_WIRE_BYTES: Inclusive complete maximum 71 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 71 bytes.
--- @brief Native class constant Ros2Abb_robot_msgsMsgRAPIDTaskState.EXECUTION_STATE_UNKNOWN.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.new
--- @field EXECUTION_STATE_UNKNOWN integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgRAPIDTaskState.EXECUTION_STATE_READY.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.new
--- @field EXECUTION_STATE_READY integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgRAPIDTaskState.EXECUTION_STATE_STOPPED.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.new
--- @field EXECUTION_STATE_STOPPED integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgRAPIDTaskState.EXECUTION_STATE_STARTED.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.new
--- @field EXECUTION_STATE_STARTED integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgRAPIDTaskState.EXECUTION_STATE_UNINITIALIZED.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.new
--- @field EXECUTION_STATE_UNINITIALIZED integer
--- @brief Construct Ros2Abb_robot_msgsMsgRAPIDTaskState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsMsgRAPIDTaskState value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsMsgRAPIDTaskState
--- @brief Encode a complete Ros2Abb_robot_msgsMsgRAPIDTaskState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsMsgRAPIDTaskState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..71 bytes.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.decode
--- @field encode fun(value: Ros2Abb_robot_msgsMsgRAPIDTaskState): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsMsgRAPIDTaskState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsMsgRAPIDTaskState value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsMsgRAPIDTaskState.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsMsgRAPIDTaskState
local Ros2Abb_robot_msgsMsgRAPIDTaskState = classes["Ros2Abb_robot_msgsMsgRAPIDTaskState"]

--- @class Ros2Abb_robot_msgsMsgServiceResponses
--- @brief Complete ROS2 abb_robot_msgs/msg/ServiceResponses value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Abb_robot_msgsMsgServiceResponses.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsMsgServiceResponses.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/msg/ServiceResponses.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/msg/ServiceResponses.
--- @brief Ros2Abb_robot_msgsMsgServiceResponses.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsMsgServiceResponses.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsMsgServiceResponses.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Abb_robot_msgsMsgServiceResponses.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.SUCCESS.
--- @details Original string literal ; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field SUCCESS integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_SUCCESS.
--- @details Original uint16 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_SUCCESS integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.FAILED.
--- @details Original string literal Service failed (e.g. timeout or resource not found, see the DEBUG log for
--details); consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field FAILED integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_FAILED.
--- @details Original uint16 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_FAILED integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.SERVER_IS_BUSY.
--- @details Original string literal Server is busy; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field SERVER_IS_BUSY integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_SERVER_IS_BUSY.
--- @details Original uint16 literal 1001; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_SERVER_IS_BUSY integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.EMPTY_FILENAME.
--- @details Original string literal Filename is empty; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field EMPTY_FILENAME integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_EMPTY_FILENAME.
--- @details Original uint16 literal 2001; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_EMPTY_FILENAME integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.EMPTY_SIGNAL_NAME.
--- @details Original string literal Signal name is empty; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field EMPTY_SIGNAL_NAME integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_EMPTY_SIGNAL_NAME.
--- @details Original uint16 literal 2002; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_EMPTY_SIGNAL_NAME integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.EMPTY_RAPID_TASK_NAME.
--- @details Original string literal RAPID task name is empty; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field EMPTY_RAPID_TASK_NAME integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_EMPTY_RAPID_TASK_NAME.
--- @details Original uint16 literal 2003; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_EMPTY_RAPID_TASK_NAME integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.EMPTY_RAPID_MODULE_NAME.
--- @details Original string literal RAPID module name is empty; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field EMPTY_RAPID_MODULE_NAME integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_EMPTY_RAPID_MODULE_NAME.
--- @details Original uint16 literal 2004; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_EMPTY_RAPID_MODULE_NAME integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.EMPTY_RAPID_SYMBOL_NAME.
--- @details Original string literal RAPID symbol name is empty; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field EMPTY_RAPID_SYMBOL_NAME integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME.
--- @details Original uint16 literal 2005; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_EMPTY_RAPID_SYMBOL_NAME integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.NOT_IN_AUTO_MODE.
--- @details Original string literal Robot controller is not in AUTO mode; consumes no instance wire bytes.
--Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field NOT_IN_AUTO_MODE integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_NOT_IN_AUTO_MODE.
--- @details Original uint16 literal 3001; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_NOT_IN_AUTO_MODE integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.MOTORS_ARE_OFF.
--- @details Original string literal Motors are off; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field MOTORS_ARE_OFF integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_MOTORS_ARE_OFF.
--- @details Original uint16 literal 3002; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_MOTORS_ARE_OFF integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.MOTORS_ARE_ON.
--- @details Original string literal Motors are on; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field MOTORS_ARE_ON integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_MOTORS_ARE_ON.
--- @details Original uint16 literal 3003; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_MOTORS_ARE_ON integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RAPID_NOT_STOPPED.
--- @details Original string literal RAPID has not been stopped; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RAPID_NOT_STOPPED integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_RAPID_NOT_STOPPED.
--- @details Original uint16 literal 3004; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_RAPID_NOT_STOPPED integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RAPID_NOT_RUNNING.
--- @details Original string literal RAPID is not running; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RAPID_NOT_RUNNING integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_RAPID_NOT_RUNNING.
--- @details Original uint16 literal 3005; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_RAPID_NOT_RUNNING integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.SM_RUNTIME_STATES_MISSING.
--- @details Original string literal No runtime states received for any StateMachine Add-In instance; consumes
--no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field SM_RUNTIME_STATES_MISSING integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_SM_RUNTIME_STATES_MISSING.
--- @details Original uint16 literal 4001; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_SM_RUNTIME_STATES_MISSING integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.SM_UNKNOWN_RAPID_TASK.
--- @details Original string literal RAPID task not found among known StateMachine Add-In instances; consumes no
--instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field SM_UNKNOWN_RAPID_TASK integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_SM_UNKNOWN_RAPID_TASK.
--- @details Original uint16 literal 4002; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_SM_UNKNOWN_RAPID_TASK integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.SM_UNINITIALIZED.
--- @details Original string literal StateMachine Add-In instance has not been initialized; consumes no instance
--wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field SM_UNINITIALIZED integer
--- @brief Native class constant Ros2Abb_robot_msgsMsgServiceResponses.RC_SM_UNINITIALIZED.
--- @details Original uint16 literal 4003; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.new
--- @field RC_SM_UNINITIALIZED integer
--- @brief Construct Ros2Abb_robot_msgsMsgServiceResponses with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsMsgServiceResponses value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsMsgServiceResponses
--- @brief Encode a complete Ros2Abb_robot_msgsMsgServiceResponses value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsMsgServiceResponses [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.decode
--- @field encode fun(value: Ros2Abb_robot_msgsMsgServiceResponses): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsMsgServiceResponses canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsMsgServiceResponses value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsMsgServiceResponses.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsMsgServiceResponses
local Ros2Abb_robot_msgsMsgServiceResponses = classes["Ros2Abb_robot_msgsMsgServiceResponses"]

--- @class Ros2Abb_robot_msgsMsgSystemState
--- @brief Complete ROS2 abb_robot_msgs/msg/SystemState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field motors_on boolean Exact boolean; encoded as one byte0/1.
--- @field auto_mode boolean Exact boolean; encoded as one byte0/1.
--- @field rapid_running boolean Exact boolean; encoded as one byte0/1.
--- @field rapid_tasks table[] Complete nested abb_robot_msgs/msg/RAPIDTaskState value; no native fields are
--projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field mechanical_units table[] Complete nested abb_robot_msgs/msg/MechanicalUnitState value; no native
--fields are projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Abb_robot_msgsMsgSystemState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgSystemState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsMsgSystemState.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/msg/SystemState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgSystemState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/msg/SystemState.
--- @brief Ros2Abb_robot_msgsMsgSystemState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgSystemState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsMsgSystemState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgSystemState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsMsgSystemState.MIN_WIRE_BYTES: Inclusive complete minimum 23 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgSystemState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 23 bytes.
--- @brief Ros2Abb_robot_msgsMsgSystemState.MAX_WIRE_BYTES: Inclusive complete maximum 2327 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsMsgSystemState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2327 bytes.
--- @brief Construct Ros2Abb_robot_msgsMsgSystemState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsMsgSystemState value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsMsgSystemState.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsMsgSystemState
--- @brief Encode a complete Ros2Abb_robot_msgsMsgSystemState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsMsgSystemState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 23..2327 bytes.
--- @see Ros2Abb_robot_msgsMsgSystemState.decode
--- @field encode fun(value: Ros2Abb_robot_msgsMsgSystemState): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsMsgSystemState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsMsgSystemState value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsMsgSystemState.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsMsgSystemState
local Ros2Abb_robot_msgsMsgSystemState = classes["Ros2Abb_robot_msgsMsgSystemState"]

--- @class Ros2Abb_robot_msgsSrvGetFileContents_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/GetFileContents_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field filename string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetFileContents_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetFileContents_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetFileContents_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetFileContents_Request.
--- @brief Ros2Abb_robot_msgsSrvGetFileContents_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetFileContents_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetFileContents_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetFileContents_Request.MAX_WIRE_BYTES: Inclusive complete maximum 516 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 516 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetFileContents_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetFileContents_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetFileContents_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetFileContents_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetFileContents_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..516 bytes.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetFileContents_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetFileContents_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetFileContents_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetFileContents_Request
local Ros2Abb_robot_msgsSrvGetFileContents_Request = classes["Ros2Abb_robot_msgsSrvGetFileContents_Request"]

--- @class Ros2Abb_robot_msgsSrvGetFileContents_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/GetFileContents_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field contents string Strict UTF-8 without NUL; length0..4096 bytes.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetFileContents_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetFileContents_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetFileContents_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetFileContents_Response.
--- @brief Ros2Abb_robot_msgsSrvGetFileContents_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetFileContents_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetFileContents_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetFileContents_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4618 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4618 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetFileContents_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetFileContents_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetFileContents_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetFileContents_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetFileContents_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..4618 bytes.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetFileContents_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetFileContents_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetFileContents_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetFileContents_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetFileContents_Response
local Ros2Abb_robot_msgsSrvGetFileContents_Response = classes["Ros2Abb_robot_msgsSrvGetFileContents_Response"]

--- @class Ros2Abb_robot_msgsSrvGetIOSignal_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/GetIOSignal_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field signal string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetIOSignal_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetIOSignal_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetIOSignal_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetIOSignal_Request.
--- @brief Ros2Abb_robot_msgsSrvGetIOSignal_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetIOSignal_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetIOSignal_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetIOSignal_Request.MAX_WIRE_BYTES: Inclusive complete maximum 516 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 516 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetIOSignal_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetIOSignal_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetIOSignal_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetIOSignal_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetIOSignal_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..516 bytes.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetIOSignal_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetIOSignal_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetIOSignal_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetIOSignal_Request
local Ros2Abb_robot_msgsSrvGetIOSignal_Request = classes["Ros2Abb_robot_msgsSrvGetIOSignal_Request"]

--- @class Ros2Abb_robot_msgsSrvGetIOSignal_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/GetIOSignal_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value string Strict UTF-8 without NUL; length0..512 bytes.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetIOSignal_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetIOSignal_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetIOSignal_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetIOSignal_Response.
--- @brief Ros2Abb_robot_msgsSrvGetIOSignal_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetIOSignal_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetIOSignal_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetIOSignal_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1034 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1034 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetIOSignal_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetIOSignal_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetIOSignal_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetIOSignal_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetIOSignal_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..1034 bytes.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetIOSignal_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetIOSignal_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetIOSignal_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetIOSignal_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetIOSignal_Response
local Ros2Abb_robot_msgsSrvGetIOSignal_Response = classes["Ros2Abb_robot_msgsSrvGetIOSignal_Response"]

--- @class Ros2Abb_robot_msgsSrvGetRAPIDBool_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/GetRAPIDBool_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/msg/RAPIDSymbolPath value; no native fields are projected
--away.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetRAPIDBool_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetRAPIDBool_Request.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.MAX_WIRE_BYTES: Inclusive complete maximum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 204 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetRAPIDBool_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDBool_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetRAPIDBool_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetRAPIDBool_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetRAPIDBool_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..204 bytes.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetRAPIDBool_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetRAPIDBool_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDBool_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetRAPIDBool_Request
local Ros2Abb_robot_msgsSrvGetRAPIDBool_Request = classes["Ros2Abb_robot_msgsSrvGetRAPIDBool_Request"]

--- @class Ros2Abb_robot_msgsSrvGetRAPIDBool_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/GetRAPIDBool_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value boolean Exact boolean; encoded as one byte0/1.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetRAPIDBool_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetRAPIDBool_Response.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.MAX_WIRE_BYTES: Inclusive complete maximum 519 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 519 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetRAPIDBool_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDBool_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetRAPIDBool_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetRAPIDBool_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetRAPIDBool_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..519 bytes.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetRAPIDBool_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetRAPIDBool_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDBool_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDBool_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetRAPIDBool_Response
local Ros2Abb_robot_msgsSrvGetRAPIDBool_Response = classes["Ros2Abb_robot_msgsSrvGetRAPIDBool_Response"]

--- @class Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/GetRAPIDDnum_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/msg/RAPIDSymbolPath value; no native fields are projected
--away.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetRAPIDDnum_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetRAPIDDnum_Request.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.MAX_WIRE_BYTES: Inclusive complete maximum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 204 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..204 bytes.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request
local Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request = classes["Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request"]

--- @class Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/GetRAPIDDnum_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value number Finite IEEE float64.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetRAPIDDnum_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetRAPIDDnum_Response.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.MIN_WIRE_BYTES: Inclusive complete minimum 14 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 14 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.MAX_WIRE_BYTES: Inclusive complete maximum 526 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 526 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 14..526 bytes.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response
local Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response = classes["Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response"]

--- @class Ros2Abb_robot_msgsSrvGetRAPIDNum_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/GetRAPIDNum_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/msg/RAPIDSymbolPath value; no native fields are projected
--away.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetRAPIDNum_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetRAPIDNum_Request.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.MAX_WIRE_BYTES: Inclusive complete maximum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 204 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetRAPIDNum_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDNum_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetRAPIDNum_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetRAPIDNum_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetRAPIDNum_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..204 bytes.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetRAPIDNum_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetRAPIDNum_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDNum_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetRAPIDNum_Request
local Ros2Abb_robot_msgsSrvGetRAPIDNum_Request = classes["Ros2Abb_robot_msgsSrvGetRAPIDNum_Request"]

--- @class Ros2Abb_robot_msgsSrvGetRAPIDNum_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/GetRAPIDNum_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetRAPIDNum_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetRAPIDNum_Response.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.MAX_WIRE_BYTES: Inclusive complete maximum 522 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 522 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetRAPIDNum_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDNum_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetRAPIDNum_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetRAPIDNum_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetRAPIDNum_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..522 bytes.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetRAPIDNum_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetRAPIDNum_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDNum_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDNum_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetRAPIDNum_Response
local Ros2Abb_robot_msgsSrvGetRAPIDNum_Response = classes["Ros2Abb_robot_msgsSrvGetRAPIDNum_Response"]

--- @class Ros2Abb_robot_msgsSrvGetRAPIDString_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/GetRAPIDString_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/msg/RAPIDSymbolPath value; no native fields are projected
--away.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDString_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDString_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetRAPIDString_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetRAPIDString_Request.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDString_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDString_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDString_Request.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDString_Request.MAX_WIRE_BYTES: Inclusive complete maximum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 204 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetRAPIDString_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDString_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetRAPIDString_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetRAPIDString_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetRAPIDString_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..204 bytes.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetRAPIDString_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetRAPIDString_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDString_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetRAPIDString_Request
local Ros2Abb_robot_msgsSrvGetRAPIDString_Request = classes["Ros2Abb_robot_msgsSrvGetRAPIDString_Request"]

--- @class Ros2Abb_robot_msgsSrvGetRAPIDString_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/GetRAPIDString_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value string Strict UTF-8 without NUL; length0..512 bytes.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDString_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDString_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetRAPIDString_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetRAPIDString_Response.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDString_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDString_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDString_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDString_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1034 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1034 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetRAPIDString_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDString_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetRAPIDString_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetRAPIDString_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetRAPIDString_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..1034 bytes.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetRAPIDString_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetRAPIDString_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDString_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDString_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetRAPIDString_Response
local Ros2Abb_robot_msgsSrvGetRAPIDString_Response = classes["Ros2Abb_robot_msgsSrvGetRAPIDString_Response"]

--- @class Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/GetRAPIDSymbol_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/msg/RAPIDSymbolPath value; no native fields are projected
--away.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetRAPIDSymbol_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetRAPIDSymbol_Request.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.MAX_WIRE_BYTES: Inclusive complete maximum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 204 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..204 bytes.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request
local Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request = classes["Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request"]

--- @class Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/GetRAPIDSymbol_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value string Strict UTF-8 without NUL; length0..512 bytes.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetRAPIDSymbol_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetRAPIDSymbol_Response.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1034 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1034 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..1034 bytes.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response
local Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response = classes["Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response"]

--- @class Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/GetRobotControllerDescription_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.ROS_VERSION: Read-only-by-contract backend
--value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.NATIVE_TYPE: Exact normalized native type
--name abb_robot_msgs/srv/GetRobotControllerDescription_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_robot_msgs/srv/GetRobotControllerDescription_Request.
--- @brief Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.NATIVE_IDENTITY: Exact supplied native
--identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.MIN_WIRE_BYTES: Inclusive complete minimum
--0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.MAX_WIRE_BYTES: Inclusive complete maximum
--0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request value New mutable complete value; no ROS
--resource.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request value to canonical LE
--bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request canonical
--value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request value New complete value; failures raise
--Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request
local Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request =
    classes["Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request"]

--- @class Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/GetRobotControllerDescription_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field description string Strict UTF-8 without NUL; length0..4096 bytes.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.ROS_VERSION: Read-only-by-contract
--backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.NATIVE_TYPE: Exact normalized native type
--name abb_robot_msgs/srv/GetRobotControllerDescription_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_robot_msgs/srv/GetRobotControllerDescription_Response.
--- @brief Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.NATIVE_IDENTITY: Exact supplied native
--identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.MIN_WIRE_BYTES: Inclusive complete
--minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.MAX_WIRE_BYTES: Inclusive complete
--maximum 4618 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4618 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response value New mutable complete value; no ROS
--resource.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response value to canonical LE
--bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 10..4618 bytes.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response canonical
--value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response value New complete value; failures raise
--Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response
local Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response =
    classes["Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response"]

--- @class Ros2Abb_robot_msgsSrvGetSpeedRatio_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/GetSpeedRatio_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetSpeedRatio_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetSpeedRatio_Request.
--- @brief Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetSpeedRatio_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetSpeedRatio_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetSpeedRatio_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetSpeedRatio_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetSpeedRatio_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetSpeedRatio_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetSpeedRatio_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetSpeedRatio_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetSpeedRatio_Request
local Ros2Abb_robot_msgsSrvGetSpeedRatio_Request = classes["Ros2Abb_robot_msgsSrvGetSpeedRatio_Request"]

--- @class Ros2Abb_robot_msgsSrvGetSpeedRatio_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/GetSpeedRatio_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speed_ratio integer Exact uint8 range 0..255.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/GetSpeedRatio_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/GetSpeedRatio_Response.
--- @brief Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.MAX_WIRE_BYTES: Inclusive complete maximum 519 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 519 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvGetSpeedRatio_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvGetSpeedRatio_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvGetSpeedRatio_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvGetSpeedRatio_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvGetSpeedRatio_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..519 bytes.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvGetSpeedRatio_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvGetSpeedRatio_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvGetSpeedRatio_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvGetSpeedRatio_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvGetSpeedRatio_Response
local Ros2Abb_robot_msgsSrvGetSpeedRatio_Response = classes["Ros2Abb_robot_msgsSrvGetSpeedRatio_Response"]

--- @class Ros2Abb_robot_msgsSrvSetFileContents_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/SetFileContents_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field filename string Strict UTF-8 without NUL; length0..512 bytes.
--- @field contents string Strict UTF-8 without NUL; length0..4096 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetFileContents_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetFileContents_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetFileContents_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetFileContents_Request.
--- @brief Ros2Abb_robot_msgsSrvSetFileContents_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetFileContents_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetFileContents_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetFileContents_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4616 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4616 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetFileContents_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetFileContents_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetFileContents_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetFileContents_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetFileContents_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..4616 bytes.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetFileContents_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetFileContents_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetFileContents_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetFileContents_Request
local Ros2Abb_robot_msgsSrvSetFileContents_Request = classes["Ros2Abb_robot_msgsSrvSetFileContents_Request"]

--- @class Ros2Abb_robot_msgsSrvSetFileContents_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/SetFileContents_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetFileContents_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetFileContents_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetFileContents_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetFileContents_Response.
--- @brief Ros2Abb_robot_msgsSrvSetFileContents_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetFileContents_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetFileContents_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetFileContents_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetFileContents_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetFileContents_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetFileContents_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetFileContents_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetFileContents_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetFileContents_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetFileContents_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetFileContents_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetFileContents_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetFileContents_Response
local Ros2Abb_robot_msgsSrvSetFileContents_Response = classes["Ros2Abb_robot_msgsSrvSetFileContents_Response"]

--- @class Ros2Abb_robot_msgsSrvSetIOSignal_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/SetIOSignal_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field signal string Strict UTF-8 without NUL; length0..512 bytes.
--- @field value string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetIOSignal_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetIOSignal_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetIOSignal_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetIOSignal_Request.
--- @brief Ros2Abb_robot_msgsSrvSetIOSignal_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetIOSignal_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetIOSignal_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetIOSignal_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1032 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1032 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetIOSignal_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetIOSignal_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetIOSignal_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetIOSignal_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetIOSignal_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..1032 bytes.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetIOSignal_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetIOSignal_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetIOSignal_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetIOSignal_Request
local Ros2Abb_robot_msgsSrvSetIOSignal_Request = classes["Ros2Abb_robot_msgsSrvSetIOSignal_Request"]

--- @class Ros2Abb_robot_msgsSrvSetIOSignal_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/SetIOSignal_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetIOSignal_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetIOSignal_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetIOSignal_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetIOSignal_Response.
--- @brief Ros2Abb_robot_msgsSrvSetIOSignal_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetIOSignal_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetIOSignal_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetIOSignal_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetIOSignal_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetIOSignal_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetIOSignal_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetIOSignal_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetIOSignal_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetIOSignal_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetIOSignal_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetIOSignal_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetIOSignal_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetIOSignal_Response
local Ros2Abb_robot_msgsSrvSetIOSignal_Response = classes["Ros2Abb_robot_msgsSrvSetIOSignal_Response"]

--- @class Ros2Abb_robot_msgsSrvSetRAPIDBool_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/SetRAPIDBool_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/msg/RAPIDSymbolPath value; no native fields are projected
--away.
--- @field value boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetRAPIDBool_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetRAPIDBool_Request.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.MAX_WIRE_BYTES: Inclusive complete maximum 205 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 205 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetRAPIDBool_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDBool_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetRAPIDBool_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetRAPIDBool_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetRAPIDBool_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..205 bytes.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetRAPIDBool_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetRAPIDBool_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDBool_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetRAPIDBool_Request
local Ros2Abb_robot_msgsSrvSetRAPIDBool_Request = classes["Ros2Abb_robot_msgsSrvSetRAPIDBool_Request"]

--- @class Ros2Abb_robot_msgsSrvSetRAPIDBool_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/SetRAPIDBool_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetRAPIDBool_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetRAPIDBool_Response.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetRAPIDBool_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDBool_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetRAPIDBool_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetRAPIDBool_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetRAPIDBool_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetRAPIDBool_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetRAPIDBool_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDBool_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDBool_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetRAPIDBool_Response
local Ros2Abb_robot_msgsSrvSetRAPIDBool_Response = classes["Ros2Abb_robot_msgsSrvSetRAPIDBool_Response"]

--- @class Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/SetRAPIDDnum_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/msg/RAPIDSymbolPath value; no native fields are projected
--away.
--- @field value number Finite IEEE float64.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetRAPIDDnum_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetRAPIDDnum_Request.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.MAX_WIRE_BYTES: Inclusive complete maximum 212 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 212 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..212 bytes.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request
local Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request = classes["Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request"]

--- @class Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/SetRAPIDDnum_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetRAPIDDnum_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetRAPIDDnum_Response.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response
local Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response = classes["Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response"]

--- @class Ros2Abb_robot_msgsSrvSetRAPIDNum_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/SetRAPIDNum_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/msg/RAPIDSymbolPath value; no native fields are projected
--away.
--- @field value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetRAPIDNum_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetRAPIDNum_Request.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.MAX_WIRE_BYTES: Inclusive complete maximum 208 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 208 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetRAPIDNum_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDNum_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetRAPIDNum_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetRAPIDNum_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetRAPIDNum_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..208 bytes.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetRAPIDNum_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetRAPIDNum_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDNum_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetRAPIDNum_Request
local Ros2Abb_robot_msgsSrvSetRAPIDNum_Request = classes["Ros2Abb_robot_msgsSrvSetRAPIDNum_Request"]

--- @class Ros2Abb_robot_msgsSrvSetRAPIDNum_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/SetRAPIDNum_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetRAPIDNum_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetRAPIDNum_Response.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetRAPIDNum_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDNum_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetRAPIDNum_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetRAPIDNum_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetRAPIDNum_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetRAPIDNum_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetRAPIDNum_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDNum_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDNum_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetRAPIDNum_Response
local Ros2Abb_robot_msgsSrvSetRAPIDNum_Response = classes["Ros2Abb_robot_msgsSrvSetRAPIDNum_Response"]

--- @class Ros2Abb_robot_msgsSrvSetRAPIDString_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/SetRAPIDString_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/msg/RAPIDSymbolPath value; no native fields are projected
--away.
--- @field value string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDString_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDString_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetRAPIDString_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetRAPIDString_Request.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDString_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDString_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDString_Request.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDString_Request.MAX_WIRE_BYTES: Inclusive complete maximum 720 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 720 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetRAPIDString_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDString_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetRAPIDString_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetRAPIDString_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetRAPIDString_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..720 bytes.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetRAPIDString_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetRAPIDString_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDString_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetRAPIDString_Request
local Ros2Abb_robot_msgsSrvSetRAPIDString_Request = classes["Ros2Abb_robot_msgsSrvSetRAPIDString_Request"]

--- @class Ros2Abb_robot_msgsSrvSetRAPIDString_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/SetRAPIDString_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDString_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDString_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetRAPIDString_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetRAPIDString_Response.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDString_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDString_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDString_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDString_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetRAPIDString_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDString_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetRAPIDString_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetRAPIDString_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetRAPIDString_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetRAPIDString_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetRAPIDString_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDString_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDString_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetRAPIDString_Response
local Ros2Abb_robot_msgsSrvSetRAPIDString_Response = classes["Ros2Abb_robot_msgsSrvSetRAPIDString_Response"]

--- @class Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/SetRAPIDSymbol_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/msg/RAPIDSymbolPath value; no native fields are projected
--away.
--- @field value string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetRAPIDSymbol_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetRAPIDSymbol_Request.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.MAX_WIRE_BYTES: Inclusive complete maximum 720 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 720 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..720 bytes.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request
local Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request = classes["Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request"]

--- @class Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/SetRAPIDSymbol_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetRAPIDSymbol_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetRAPIDSymbol_Response.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response
local Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response = classes["Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response"]

--- @class Ros2Abb_robot_msgsSrvSetSpeedRatio_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/SetSpeedRatio_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speed_ratio integer Exact uint8 range 0..255.
--- @brief Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetSpeedRatio_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetSpeedRatio_Request.
--- @brief Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetSpeedRatio_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetSpeedRatio_Request value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetSpeedRatio_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetSpeedRatio_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetSpeedRatio_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetSpeedRatio_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetSpeedRatio_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetSpeedRatio_Request value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetSpeedRatio_Request
local Ros2Abb_robot_msgsSrvSetSpeedRatio_Request = classes["Ros2Abb_robot_msgsSrvSetSpeedRatio_Request"]

--- @class Ros2Abb_robot_msgsSrvSetSpeedRatio_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/SetSpeedRatio_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/SetSpeedRatio_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/srv/SetSpeedRatio_Response.
--- @brief Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvSetSpeedRatio_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvSetSpeedRatio_Response value New mutable complete value; no ROS resource.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvSetSpeedRatio_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvSetSpeedRatio_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvSetSpeedRatio_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvSetSpeedRatio_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvSetSpeedRatio_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvSetSpeedRatio_Response value New complete value; failures raise Lua errors.
--- @see Ros2Abb_robot_msgsSrvSetSpeedRatio_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvSetSpeedRatio_Response
local Ros2Abb_robot_msgsSrvSetSpeedRatio_Response = classes["Ros2Abb_robot_msgsSrvSetSpeedRatio_Response"]

--- @class Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request
--- @brief Complete ROS2 abb_robot_msgs/srv/TriggerWithResultCode_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/TriggerWithResultCode_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_robot_msgs/srv/TriggerWithResultCode_Request.
--- @brief Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request value New mutable complete value; no ROS
--resource.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request
--- @brief Encode a complete Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request
local Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request = classes["Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request"]

--- @class Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response
--- @brief Complete ROS2 abb_robot_msgs/srv/TriggerWithResultCode_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/srv/TriggerWithResultCode_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_robot_msgs/srv/TriggerWithResultCode_Response.
--- @brief Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response value New mutable complete value; no ROS
--resource.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.encode
--- @field new fun(values?: table): Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response
--- @brief Encode a complete Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.decode
--- @field encode fun(value: Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response): string
--- @brief Decode exactly one complete Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response.encode
--- @field decode fun(bytes: string): Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response
local Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response =
    classes["Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response"]

--- @class Ros2Builtin_interfacesMsgDuration
--- @brief Complete ROS2 builtin_interfaces/msg/Duration value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field sec integer Exact int32 range -2147483648..2147483647. Whole seconds; signedness/range follow the
--native scalar above.
--- @field nanosec integer Exact uint32 range 0..4294967295. Normalized fractional nanoseconds,
--inclusive0..999999999.
--- @brief Ros2Builtin_interfacesMsgDuration.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgDuration.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Builtin_interfacesMsgDuration.NATIVE_TYPE: Exact normalized native type name
--builtin_interfaces/msg/Duration.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgDuration.encode
--- @field NATIVE_TYPE string Exact normalized native type name builtin_interfaces/msg/Duration.
--- @brief Ros2Builtin_interfacesMsgDuration.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgDuration.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Builtin_interfacesMsgDuration.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgDuration.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Builtin_interfacesMsgDuration.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgDuration.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Builtin_interfacesMsgDuration.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgDuration.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Builtin_interfacesMsgDuration with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Builtin_interfacesMsgDuration value New mutable complete value; no ROS resource.
--- @see Ros2Builtin_interfacesMsgDuration.encode
--- @field new fun(values?: table): Ros2Builtin_interfacesMsgDuration
--- @brief Encode a complete Ros2Builtin_interfacesMsgDuration value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Builtin_interfacesMsgDuration [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Builtin_interfacesMsgDuration.decode
--- @field encode fun(value: Ros2Builtin_interfacesMsgDuration): string
--- @brief Decode exactly one complete Ros2Builtin_interfacesMsgDuration canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Builtin_interfacesMsgDuration value New complete value; failures raise Lua errors.
--- @see Ros2Builtin_interfacesMsgDuration.encode
--- @field decode fun(bytes: string): Ros2Builtin_interfacesMsgDuration
local Ros2Builtin_interfacesMsgDuration = classes["Ros2Builtin_interfacesMsgDuration"]

--- @class Ros2Trajectory_msgsMsgJointTrajectoryPoint
--- @brief Complete ROS2 trajectory_msgs/msg/JointTrajectoryPoint value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field positions number[] Finite IEEE float64. At most 12 contiguous elements; holes and extra array keys
--are rejected.
--- @field velocities number[] Finite IEEE float64. At most 12 contiguous elements; holes and extra array keys
--are rejected.
--- @field accelerations number[] Finite IEEE float64. At most 12 contiguous elements; holes and extra array
--keys are rejected.
--- @field effort number[] Finite IEEE float64. At most 12 contiguous elements; holes and extra array keys are
--rejected.
--- @field time_from_start table Complete nested builtin_interfaces/msg/Duration value; no native fields are
--projected away.
--- @brief Ros2Trajectory_msgsMsgJointTrajectoryPoint.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Trajectory_msgsMsgJointTrajectoryPoint.NATIVE_TYPE: Exact normalized native type name
--trajectory_msgs/msg/JointTrajectoryPoint.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name trajectory_msgs/msg/JointTrajectoryPoint.
--- @brief Ros2Trajectory_msgsMsgJointTrajectoryPoint.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Trajectory_msgsMsgJointTrajectoryPoint.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Trajectory_msgsMsgJointTrajectoryPoint.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Trajectory_msgsMsgJointTrajectoryPoint.MAX_WIRE_BYTES: Inclusive complete maximum 408 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 408 bytes.
--- @brief Construct Ros2Trajectory_msgsMsgJointTrajectoryPoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Trajectory_msgsMsgJointTrajectoryPoint value New mutable complete value; no ROS resource.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field new fun(values?: table): Ros2Trajectory_msgsMsgJointTrajectoryPoint
--- @brief Encode a complete Ros2Trajectory_msgsMsgJointTrajectoryPoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Trajectory_msgsMsgJointTrajectoryPoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..408 bytes.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.decode
--- @field encode fun(value: Ros2Trajectory_msgsMsgJointTrajectoryPoint): string
--- @brief Decode exactly one complete Ros2Trajectory_msgsMsgJointTrajectoryPoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Trajectory_msgsMsgJointTrajectoryPoint value New complete value; failures raise Lua errors.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field decode fun(bytes: string): Ros2Trajectory_msgsMsgJointTrajectoryPoint
local Ros2Trajectory_msgsMsgJointTrajectoryPoint = classes["Ros2Trajectory_msgsMsgJointTrajectoryPoint"]

--- @class Ros2Trajectory_msgsMsgJointTrajectory
--- @brief Complete ROS2 trajectory_msgs/msg/JointTrajectory value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field joint_names string[] Strict UTF-8 without NUL; length0..64 bytes. At most 12 contiguous elements;
--holes and extra array keys are rejected.
--- @field points table[] Complete nested trajectory_msgs/msg/JointTrajectoryPoint value; no native fields are
--projected away. At most 8 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Trajectory_msgsMsgJointTrajectory.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Trajectory_msgsMsgJointTrajectory.NATIVE_TYPE: Exact normalized native type name
--trajectory_msgs/msg/JointTrajectory.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field NATIVE_TYPE string Exact normalized native type name trajectory_msgs/msg/JointTrajectory.
--- @brief Ros2Trajectory_msgsMsgJointTrajectory.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Trajectory_msgsMsgJointTrajectory.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Trajectory_msgsMsgJointTrajectory.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Trajectory_msgsMsgJointTrajectory.MAX_WIRE_BYTES: Inclusive complete maximum 4164 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4164 bytes.
--- @brief Construct Ros2Trajectory_msgsMsgJointTrajectory with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Trajectory_msgsMsgJointTrajectory value New mutable complete value; no ROS resource.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field new fun(values?: table): Ros2Trajectory_msgsMsgJointTrajectory
--- @brief Encode a complete Ros2Trajectory_msgsMsgJointTrajectory value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Trajectory_msgsMsgJointTrajectory [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..4164 bytes.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.decode
--- @field encode fun(value: Ros2Trajectory_msgsMsgJointTrajectory): string
--- @brief Decode exactly one complete Ros2Trajectory_msgsMsgJointTrajectory canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Trajectory_msgsMsgJointTrajectory value New complete value; failures raise Lua errors.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field decode fun(bytes: string): Ros2Trajectory_msgsMsgJointTrajectory
local Ros2Trajectory_msgsMsgJointTrajectory = classes["Ros2Trajectory_msgsMsgJointTrajectory"]

--- @class Ros2Geometry_msgsMsgVector3
--- @brief Complete ROS2 geometry_msgs/msg/Vector3 value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float64.
--- @field y number Finite IEEE float64.
--- @field z number Finite IEEE float64.
--- @brief Ros2Geometry_msgsMsgVector3.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgVector3.NATIVE_TYPE: Exact normalized native type name geometry_msgs/msg/Vector3.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Vector3.
--- @brief Ros2Geometry_msgsMsgVector3.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Geometry_msgsMsgVector3.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgVector3.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Geometry_msgsMsgVector3.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Geometry_msgsMsgVector3 with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgVector3 value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgVector3
--- @brief Encode a complete Ros2Geometry_msgsMsgVector3 value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgVector3 [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Geometry_msgsMsgVector3.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgVector3): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgVector3 canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgVector3 value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgVector3
local Ros2Geometry_msgsMsgVector3 = classes["Ros2Geometry_msgsMsgVector3"]

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
--- @brief Ros2Geometry_msgsMsgQuaternion.NATIVE_TYPE: Exact normalized native type name
--geometry_msgs/msg/Quaternion.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgQuaternion.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Quaternion.
--- @brief Ros2Geometry_msgsMsgQuaternion.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgQuaternion.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Geometry_msgsMsgQuaternion.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
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

--- @class Ros2Geometry_msgsMsgTransform
--- @brief Complete ROS2 geometry_msgs/msg/Transform value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field translation table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected
--away.
--- @field rotation table Complete nested geometry_msgs/msg/Quaternion value; no native fields are projected
--away.
--- @brief Ros2Geometry_msgsMsgTransform.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransform.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgTransform.NATIVE_TYPE: Exact normalized native type name
--geometry_msgs/msg/Transform.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransform.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Transform.
--- @brief Ros2Geometry_msgsMsgTransform.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransform.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Geometry_msgsMsgTransform.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransform.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgTransform.MIN_WIRE_BYTES: Inclusive complete minimum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransform.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 56 bytes.
--- @brief Ros2Geometry_msgsMsgTransform.MAX_WIRE_BYTES: Inclusive complete maximum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransform.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 56 bytes.
--- @brief Construct Ros2Geometry_msgsMsgTransform with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgTransform value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgTransform.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgTransform
--- @brief Encode a complete Ros2Geometry_msgsMsgTransform value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgTransform [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 56..56 bytes.
--- @see Ros2Geometry_msgsMsgTransform.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgTransform): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgTransform canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgTransform value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgTransform.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgTransform
local Ros2Geometry_msgsMsgTransform = classes["Ros2Geometry_msgsMsgTransform"]

--- @class Ros2Geometry_msgsMsgTwist
--- @brief Complete ROS2 geometry_msgs/msg/Twist value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field linear table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected away.
--- @field angular table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected away.
--- @brief Ros2Geometry_msgsMsgTwist.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgTwist.NATIVE_TYPE: Exact normalized native type name geometry_msgs/msg/Twist.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Twist.
--- @brief Ros2Geometry_msgsMsgTwist.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Geometry_msgsMsgTwist.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgTwist.MIN_WIRE_BYTES: Inclusive complete minimum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 48 bytes.
--- @brief Ros2Geometry_msgsMsgTwist.MAX_WIRE_BYTES: Inclusive complete maximum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 48 bytes.
--- @brief Construct Ros2Geometry_msgsMsgTwist with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgTwist value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgTwist
--- @brief Encode a complete Ros2Geometry_msgsMsgTwist value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgTwist [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 48..48 bytes.
--- @see Ros2Geometry_msgsMsgTwist.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgTwist): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgTwist canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgTwist value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgTwist
local Ros2Geometry_msgsMsgTwist = classes["Ros2Geometry_msgsMsgTwist"]

--- @class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
--- @brief Complete ROS2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field transforms table[] Complete nested geometry_msgs/msg/Transform value; no native fields are projected
--away. At most 2 contiguous elements; holes and extra array keys are rejected.
--- @field velocities table[] Complete nested geometry_msgs/msg/Twist value; no native fields are projected
--away. At most 2 contiguous elements; holes and extra array keys are rejected.
--- @field accelerations table[] Complete nested geometry_msgs/msg/Twist value; no native fields are projected
--away. At most 2 contiguous elements; holes and extra array keys are rejected.
--- @field time_from_start table Complete nested builtin_interfaces/msg/Duration value; no native fields are
--projected away.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.NATIVE_TYPE: Exact normalized native type name
--trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.MIN_WIRE_BYTES: Inclusive complete minimum 20
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.MAX_WIRE_BYTES: Inclusive complete maximum 324
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 324 bytes.
--- @brief Construct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value New mutable complete value; no ROS
--resource.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field new fun(values?: table): Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
--- @brief Encode a complete Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..324 bytes.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.decode
--- @field encode fun(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint): string
--- @brief Decode exactly one complete Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value New complete value; failures raise Lua
--errors.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field decode fun(bytes: string): Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
local Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint = classes["Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint"]

--- @class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
--- @brief Complete ROS2 trajectory_msgs/msg/MultiDOFJointTrajectory value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field joint_names string[] Strict UTF-8 without NUL; length0..64 bytes. At most 2 contiguous elements;
--holes and extra array keys are rejected.
--- @field points table[] Complete nested trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value; no native
--fields are projected away. At most 4 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.NATIVE_TYPE: Exact normalized native type name
--trajectory_msgs/msg/MultiDOFJointTrajectory.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field NATIVE_TYPE string Exact normalized native type name trajectory_msgs/msg/MultiDOFJointTrajectory.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.MAX_WIRE_BYTES: Inclusive complete maximum 1516 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1516 bytes.
--- @brief Construct Ros2Trajectory_msgsMsgMultiDOFJointTrajectory with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value New mutable complete value; no ROS resource.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field new fun(values?: table): Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
--- @brief Encode a complete Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Trajectory_msgsMsgMultiDOFJointTrajectory [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..1516 bytes.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.decode
--- @field encode fun(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory): string
--- @brief Decode exactly one complete Ros2Trajectory_msgsMsgMultiDOFJointTrajectory canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value New complete value; failures raise Lua errors.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field decode fun(bytes: string): Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
local Ros2Trajectory_msgsMsgMultiDOFJointTrajectory = classes["Ros2Trajectory_msgsMsgMultiDOFJointTrajectory"]

--- @class Ros2Control_msgsMsgJointTolerance
--- @brief Complete ROS2 control_msgs/msg/JointTolerance value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field name string Strict UTF-8 without NUL; length0..64 bytes.
--- @field position number Finite IEEE float64.
--- @field velocity number Finite IEEE float64.
--- @field acceleration number Finite IEEE float64.
--- @brief Ros2Control_msgsMsgJointTolerance.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointTolerance.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Control_msgsMsgJointTolerance.NATIVE_TYPE: Exact normalized native type name
--control_msgs/msg/JointTolerance.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointTolerance.encode
--- @field NATIVE_TYPE string Exact normalized native type name control_msgs/msg/JointTolerance.
--- @brief Ros2Control_msgsMsgJointTolerance.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointTolerance.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Control_msgsMsgJointTolerance.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointTolerance.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Control_msgsMsgJointTolerance.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointTolerance.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2Control_msgsMsgJointTolerance.MAX_WIRE_BYTES: Inclusive complete maximum 92 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointTolerance.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 92 bytes.
--- @brief Construct Ros2Control_msgsMsgJointTolerance with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Control_msgsMsgJointTolerance value New mutable complete value; no ROS resource.
--- @see Ros2Control_msgsMsgJointTolerance.encode
--- @field new fun(values?: table): Ros2Control_msgsMsgJointTolerance
--- @brief Encode a complete Ros2Control_msgsMsgJointTolerance value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Control_msgsMsgJointTolerance [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..92 bytes.
--- @see Ros2Control_msgsMsgJointTolerance.decode
--- @field encode fun(value: Ros2Control_msgsMsgJointTolerance): string
--- @brief Decode exactly one complete Ros2Control_msgsMsgJointTolerance canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Control_msgsMsgJointTolerance value New complete value; failures raise Lua errors.
--- @see Ros2Control_msgsMsgJointTolerance.encode
--- @field decode fun(bytes: string): Ros2Control_msgsMsgJointTolerance
local Ros2Control_msgsMsgJointTolerance = classes["Ros2Control_msgsMsgJointTolerance"]

--- @class Ros2Control_msgsMsgJointComponentTolerance
--- @brief Complete ROS2 control_msgs/msg/JointComponentTolerance value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_name string Strict UTF-8 without NUL; length0..512 bytes.
--- @field component integer Exact uint16 range 0..65535.
--- @field position number Finite IEEE float64.
--- @field velocity number Finite IEEE float64.
--- @field acceleration number Finite IEEE float64.
--- @brief Ros2Control_msgsMsgJointComponentTolerance.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointComponentTolerance.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Control_msgsMsgJointComponentTolerance.NATIVE_TYPE: Exact normalized native type name
--control_msgs/msg/JointComponentTolerance.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointComponentTolerance.encode
--- @field NATIVE_TYPE string Exact normalized native type name control_msgs/msg/JointComponentTolerance.
--- @brief Ros2Control_msgsMsgJointComponentTolerance.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointComponentTolerance.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Control_msgsMsgJointComponentTolerance.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointComponentTolerance.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Control_msgsMsgJointComponentTolerance.MIN_WIRE_BYTES: Inclusive complete minimum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointComponentTolerance.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 30 bytes.
--- @brief Ros2Control_msgsMsgJointComponentTolerance.MAX_WIRE_BYTES: Inclusive complete maximum 542 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointComponentTolerance.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 542 bytes.
--- @brief Native class constant Ros2Control_msgsMsgJointComponentTolerance.X_AXIS.
--- @details Original uint16 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Control_msgsMsgJointComponentTolerance.new
--- @field X_AXIS integer
--- @brief Native class constant Ros2Control_msgsMsgJointComponentTolerance.Y_AXIS.
--- @details Original uint16 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Control_msgsMsgJointComponentTolerance.new
--- @field Y_AXIS integer
--- @brief Native class constant Ros2Control_msgsMsgJointComponentTolerance.Z_AXIS.
--- @details Original uint16 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Control_msgsMsgJointComponentTolerance.new
--- @field Z_AXIS integer
--- @brief Native class constant Ros2Control_msgsMsgJointComponentTolerance.TRANSLATION.
--- @details Original uint16 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Control_msgsMsgJointComponentTolerance.new
--- @field TRANSLATION integer
--- @brief Native class constant Ros2Control_msgsMsgJointComponentTolerance.ROTATION.
--- @details Original uint16 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Control_msgsMsgJointComponentTolerance.new
--- @field ROTATION integer
--- @brief Construct Ros2Control_msgsMsgJointComponentTolerance with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Control_msgsMsgJointComponentTolerance value New mutable complete value; no ROS resource.
--- @see Ros2Control_msgsMsgJointComponentTolerance.encode
--- @field new fun(values?: table): Ros2Control_msgsMsgJointComponentTolerance
--- @brief Encode a complete Ros2Control_msgsMsgJointComponentTolerance value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Control_msgsMsgJointComponentTolerance [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 30..542 bytes.
--- @see Ros2Control_msgsMsgJointComponentTolerance.decode
--- @field encode fun(value: Ros2Control_msgsMsgJointComponentTolerance): string
--- @brief Decode exactly one complete Ros2Control_msgsMsgJointComponentTolerance canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Control_msgsMsgJointComponentTolerance value New complete value; failures raise Lua errors.
--- @see Ros2Control_msgsMsgJointComponentTolerance.encode
--- @field decode fun(bytes: string): Ros2Control_msgsMsgJointComponentTolerance
local Ros2Control_msgsMsgJointComponentTolerance = classes["Ros2Control_msgsMsgJointComponentTolerance"]

--- @class Ros2Control_msgsActionFollowJointTrajectory_Goal
--- @brief Complete ROS2 control_msgs/action/FollowJointTrajectory_Goal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field trajectory table Complete nested trajectory_msgs/msg/JointTrajectory value; no native fields are
--projected away.
--- @field multi_dof_trajectory table Complete nested trajectory_msgs/msg/MultiDOFJointTrajectory value; no
--native fields are projected away.
--- @field path_tolerance table[] Complete nested control_msgs/msg/JointTolerance value; no native fields are
--projected away. At most 12 contiguous elements; holes and extra array keys are rejected.
--- @field component_path_tolerance table[] Complete nested control_msgs/msg/JointComponentTolerance value; no
--native fields are projected away. At most 12 contiguous elements; holes and extra array keys are rejected.
--- @field goal_tolerance table[] Complete nested control_msgs/msg/JointTolerance value; no native fields are
--projected away. At most 12 contiguous elements; holes and extra array keys are rejected.
--- @field component_goal_tolerance table[] Complete nested control_msgs/msg/JointComponentTolerance value; no
--native fields are projected away. At most 12 contiguous elements; holes and extra array keys are rejected.
--- @field goal_time_tolerance table Complete nested builtin_interfaces/msg/Duration value; no native fields are
--projected away.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Goal.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Goal.NATIVE_TYPE: Exact normalized native type name
--control_msgs/action/FollowJointTrajectory_Goal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.encode
--- @field NATIVE_TYPE string Exact normalized native type name control_msgs/action/FollowJointTrajectory_Goal.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Goal.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Goal.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Goal.MIN_WIRE_BYTES: Inclusive complete minimum 64 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 64 bytes.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Goal.MAX_WIRE_BYTES: Inclusive complete maximum 20920
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 20920 bytes.
--- @brief Construct Ros2Control_msgsActionFollowJointTrajectory_Goal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Control_msgsActionFollowJointTrajectory_Goal value New mutable complete value; no ROS resource.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.encode
--- @field new fun(values?: table): Ros2Control_msgsActionFollowJointTrajectory_Goal
--- @brief Encode a complete Ros2Control_msgsActionFollowJointTrajectory_Goal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Control_msgsActionFollowJointTrajectory_Goal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 64..20920 bytes.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.decode
--- @field encode fun(value: Ros2Control_msgsActionFollowJointTrajectory_Goal): string
--- @brief Decode exactly one complete Ros2Control_msgsActionFollowJointTrajectory_Goal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Control_msgsActionFollowJointTrajectory_Goal value New complete value; failures raise Lua
--errors.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.encode
--- @field decode fun(bytes: string): Ros2Control_msgsActionFollowJointTrajectory_Goal
local Ros2Control_msgsActionFollowJointTrajectory_Goal = classes["Ros2Control_msgsActionFollowJointTrajectory_Goal"]

--- @class Ros2Control_msgsActionFollowJointTrajectory_Result
--- @brief Complete ROS2 control_msgs/action/FollowJointTrajectory_Result value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field error_code integer Exact int32 range -2147483648..2147483647.
--- @field error_string string Strict UTF-8 without NUL; length0..4096 bytes.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Result.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Result.NATIVE_TYPE: Exact normalized native type name
--control_msgs/action/FollowJointTrajectory_Result.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--control_msgs/action/FollowJointTrajectory_Result.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Result.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Result.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Result.MIN_WIRE_BYTES: Inclusive complete minimum 8
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Result.MAX_WIRE_BYTES: Inclusive complete maximum 4104
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4104 bytes.
--- @brief Native class constant Ros2Control_msgsActionFollowJointTrajectory_Result.SUCCESSFUL.
--- @details Original int32 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.new
--- @field SUCCESSFUL integer
--- @brief Native class constant Ros2Control_msgsActionFollowJointTrajectory_Result.INVALID_GOAL.
--- @details Original int32 literal -1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.new
--- @field INVALID_GOAL integer
--- @brief Native class constant Ros2Control_msgsActionFollowJointTrajectory_Result.INVALID_JOINTS.
--- @details Original int32 literal -2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.new
--- @field INVALID_JOINTS integer
--- @brief Native class constant Ros2Control_msgsActionFollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP.
--- @details Original int32 literal -3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.new
--- @field OLD_HEADER_TIMESTAMP integer
--- @brief Native class constant Ros2Control_msgsActionFollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED.
--- @details Original int32 literal -4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.new
--- @field PATH_TOLERANCE_VIOLATED integer
--- @brief Native class constant Ros2Control_msgsActionFollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED.
--- @details Original int32 literal -5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.new
--- @field GOAL_TOLERANCE_VIOLATED integer
--- @brief Construct Ros2Control_msgsActionFollowJointTrajectory_Result with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Control_msgsActionFollowJointTrajectory_Result value New mutable complete value; no ROS
--resource.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field new fun(values?: table): Ros2Control_msgsActionFollowJointTrajectory_Result
--- @brief Encode a complete Ros2Control_msgsActionFollowJointTrajectory_Result value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Control_msgsActionFollowJointTrajectory_Result [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..4104 bytes.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.decode
--- @field encode fun(value: Ros2Control_msgsActionFollowJointTrajectory_Result): string
--- @brief Decode exactly one complete Ros2Control_msgsActionFollowJointTrajectory_Result canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Control_msgsActionFollowJointTrajectory_Result value New complete value; failures raise Lua
--errors.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field decode fun(bytes: string): Ros2Control_msgsActionFollowJointTrajectory_Result
local Ros2Control_msgsActionFollowJointTrajectory_Result = classes["Ros2Control_msgsActionFollowJointTrajectory_Result"]

--- @class Ros2Control_msgsActionFollowJointTrajectory_Feedback
--- @brief Complete ROS2 control_msgs/action/FollowJointTrajectory_Feedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field joint_names string[] Strict UTF-8 without NUL; length0..64 bytes. At most 12 contiguous elements;
--holes and extra array keys are rejected.
--- @field desired table Complete nested trajectory_msgs/msg/JointTrajectoryPoint value; no native fields are
--projected away.
--- @field actual table Complete nested trajectory_msgs/msg/JointTrajectoryPoint value; no native fields are
--projected away.
--- @field error table Complete nested trajectory_msgs/msg/JointTrajectoryPoint value; no native fields are
--projected away.
--- @field multi_dof_joint_names string[] Strict UTF-8 without NUL; length0..512 bytes. At most 2 contiguous
--elements; holes and extra array keys are rejected.
--- @field multi_dof_desired table Complete nested trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value; no
--native fields are projected away.
--- @field multi_dof_actual table Complete nested trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value; no
--native fields are projected away.
--- @field multi_dof_error table Complete nested trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value; no
--native fields are projected away.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Feedback.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Feedback.NATIVE_TYPE: Exact normalized native type name
--control_msgs/action/FollowJointTrajectory_Feedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--control_msgs/action/FollowJointTrajectory_Feedback.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Feedback.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Feedback.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Feedback.MIN_WIRE_BYTES: Inclusive complete minimum 152
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 152 bytes.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Feedback.MAX_WIRE_BYTES: Inclusive complete maximum 4128
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4128 bytes.
--- @brief Construct Ros2Control_msgsActionFollowJointTrajectory_Feedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Control_msgsActionFollowJointTrajectory_Feedback value New mutable complete value; no ROS
--resource.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field new fun(values?: table): Ros2Control_msgsActionFollowJointTrajectory_Feedback
--- @brief Encode a complete Ros2Control_msgsActionFollowJointTrajectory_Feedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Control_msgsActionFollowJointTrajectory_Feedback [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 152..4128 bytes.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.decode
--- @field encode fun(value: Ros2Control_msgsActionFollowJointTrajectory_Feedback): string
--- @brief Decode exactly one complete Ros2Control_msgsActionFollowJointTrajectory_Feedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Control_msgsActionFollowJointTrajectory_Feedback value New complete value; failures raise Lua
--errors.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field decode fun(bytes: string): Ros2Control_msgsActionFollowJointTrajectory_Feedback
local Ros2Control_msgsActionFollowJointTrajectory_Feedback =
    classes["Ros2Control_msgsActionFollowJointTrajectory_Feedback"]

--- @class Ros2Sensor_msgsMsgJointState
--- @brief Complete ROS2 sensor_msgs/msg/JointState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field name string[] Strict UTF-8 without NUL; length0..64 bytes. At most 12 contiguous elements; holes and
--extra array keys are rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field position number[] Finite IEEE float64. At most 12 contiguous elements; holes and extra array keys are
--rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field velocity number[] Finite IEEE float64. At most 12 contiguous elements; holes and extra array keys are
--rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field effort number[] Finite IEEE float64. At most 12 contiguous elements; holes and extra array keys are
--rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @brief Ros2Sensor_msgsMsgJointState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Sensor_msgsMsgJointState.NATIVE_TYPE: Exact normalized native type name
--sensor_msgs/msg/JointState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field NATIVE_TYPE string Exact normalized native type name sensor_msgs/msg/JointState.
--- @brief Ros2Sensor_msgsMsgJointState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Sensor_msgsMsgJointState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Sensor_msgsMsgJointState.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2Sensor_msgsMsgJointState.MAX_WIRE_BYTES: Inclusive complete maximum 1196 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1196 bytes.
--- @brief Construct Ros2Sensor_msgsMsgJointState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Sensor_msgsMsgJointState value New mutable complete value; no ROS resource.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field new fun(values?: table): Ros2Sensor_msgsMsgJointState
--- @brief Encode a complete Ros2Sensor_msgsMsgJointState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Sensor_msgsMsgJointState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..1196 bytes.
--- @see Ros2Sensor_msgsMsgJointState.decode
--- @field encode fun(value: Ros2Sensor_msgsMsgJointState): string
--- @brief Decode exactly one complete Ros2Sensor_msgsMsgJointState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Sensor_msgsMsgJointState value New complete value; failures raise Lua errors.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field decode fun(bytes: string): Ros2Sensor_msgsMsgJointState
local Ros2Sensor_msgsMsgJointState = classes["Ros2Sensor_msgsMsgJointState"]

--- @class Ros2Std_srvsSrvTrigger_Request
--- @brief Complete ROS2 std_srvs/srv/Trigger_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Std_srvsSrvTrigger_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_srvsSrvTrigger_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Std_srvsSrvTrigger_Request.NATIVE_TYPE: Exact normalized native type name
--std_srvs/srv/Trigger_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_srvsSrvTrigger_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name std_srvs/srv/Trigger_Request.
--- @brief Ros2Std_srvsSrvTrigger_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_srvsSrvTrigger_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Std_srvsSrvTrigger_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_srvsSrvTrigger_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Std_srvsSrvTrigger_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_srvsSrvTrigger_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Std_srvsSrvTrigger_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_srvsSrvTrigger_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Std_srvsSrvTrigger_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Std_srvsSrvTrigger_Request value New mutable complete value; no ROS resource.
--- @see Ros2Std_srvsSrvTrigger_Request.encode
--- @field new fun(values?: table): Ros2Std_srvsSrvTrigger_Request
--- @brief Encode a complete Ros2Std_srvsSrvTrigger_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Std_srvsSrvTrigger_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Std_srvsSrvTrigger_Request.decode
--- @field encode fun(value: Ros2Std_srvsSrvTrigger_Request): string
--- @brief Decode exactly one complete Ros2Std_srvsSrvTrigger_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Std_srvsSrvTrigger_Request value New complete value; failures raise Lua errors.
--- @see Ros2Std_srvsSrvTrigger_Request.encode
--- @field decode fun(bytes: string): Ros2Std_srvsSrvTrigger_Request
local Ros2Std_srvsSrvTrigger_Request = classes["Ros2Std_srvsSrvTrigger_Request"]

--- @class Ros2Std_srvsSrvTrigger_Response
--- @brief Complete ROS2 std_srvs/srv/Trigger_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Std_srvsSrvTrigger_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_srvsSrvTrigger_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Std_srvsSrvTrigger_Response.NATIVE_TYPE: Exact normalized native type name
--std_srvs/srv/Trigger_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_srvsSrvTrigger_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name std_srvs/srv/Trigger_Response.
--- @brief Ros2Std_srvsSrvTrigger_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_srvsSrvTrigger_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Std_srvsSrvTrigger_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_srvsSrvTrigger_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Std_srvsSrvTrigger_Response.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_srvsSrvTrigger_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Std_srvsSrvTrigger_Response.MAX_WIRE_BYTES: Inclusive complete maximum 517 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_srvsSrvTrigger_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 517 bytes.
--- @brief Construct Ros2Std_srvsSrvTrigger_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Std_srvsSrvTrigger_Response value New mutable complete value; no ROS resource.
--- @see Ros2Std_srvsSrvTrigger_Response.encode
--- @field new fun(values?: table): Ros2Std_srvsSrvTrigger_Response
--- @brief Encode a complete Ros2Std_srvsSrvTrigger_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Std_srvsSrvTrigger_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..517 bytes.
--- @see Ros2Std_srvsSrvTrigger_Response.decode
--- @field encode fun(value: Ros2Std_srvsSrvTrigger_Response): string
--- @brief Decode exactly one complete Ros2Std_srvsSrvTrigger_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Std_srvsSrvTrigger_Response value New complete value; failures raise Lua errors.
--- @see Ros2Std_srvsSrvTrigger_Response.encode
--- @field decode fun(bytes: string): Ros2Std_srvsSrvTrigger_Response
local Ros2Std_srvsSrvTrigger_Response = classes["Ros2Std_srvsSrvTrigger_Response"]

return classes, by_name
