-- @file records.lua
-- @brief Represent the complete original ABB ROS 1 canonical value catalog.
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
        ["symbol"] = "Ros1Abb_egm_msgsEGMChannelState",
        ["ros_version"] = 1,
        ["native_type"] = "abb_egm_msgs/EGMChannelState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2",
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
        ["codec_identity"] = "UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db",
        ["minimum"] = 16,
        ["maximum"] = 80,
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
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Abb_egm_msgsEGMState",
        ["ros_version"] = 1,
        ["native_type"] = "abb_egm_msgs/EGMState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8",
        ["minimum"] = 20,
        ["maximum"] = 1380,
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
                ["name"] = "egm_channels",
                ["type"] = "Ros1Abb_egm_msgsEGMChannelState",
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
        ["symbol"] = "Ros1Abb_rapid_msgsConfData",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_msgs/ConfData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2",
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
        ["symbol"] = "Ros1Abb_rapid_msgsExtJoint",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_msgs/ExtJoint",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a",
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
        ["symbol"] = "Ros1Abb_rapid_msgsRobJoint",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_msgs/RobJoint",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0",
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
        ["symbol"] = "Ros1Abb_rapid_msgsJointTarget",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_msgs/JointTarget",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24",
        ["minimum"] = 48,
        ["maximum"] = 48,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "robax",
                ["type"] = "Ros1Abb_rapid_msgsRobJoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "extax",
                ["type"] = "Ros1Abb_rapid_msgsExtJoint",
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
        ["symbol"] = "Ros1Abb_rapid_msgsPos",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_msgs/Pos",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01",
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
        ["symbol"] = "Ros1Abb_rapid_msgsOrient",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_msgs/Orient",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270",
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
        ["symbol"] = "Ros1Abb_rapid_msgsLoadData",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_msgs/LoadData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d",
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
                ["type"] = "Ros1Abb_rapid_msgsPos",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
            {
                ["name"] = "aom",
                ["type"] = "Ros1Abb_rapid_msgsOrient",
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
        ["symbol"] = "Ros1Abb_rapid_msgsPose",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_msgs/Pose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99",
        ["minimum"] = 28,
        ["maximum"] = 28,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "trans",
                ["type"] = "Ros1Abb_rapid_msgsPos",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
            {
                ["name"] = "rot",
                ["type"] = "Ros1Abb_rapid_msgsOrient",
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
        ["symbol"] = "Ros1Abb_rapid_msgsRobTarget",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_msgs/RobTarget",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce",
        ["minimum"] = 68,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "trans",
                ["type"] = "Ros1Abb_rapid_msgsPos",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 12,
            },
            {
                ["name"] = "rot",
                ["type"] = "Ros1Abb_rapid_msgsOrient",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "robconf",
                ["type"] = "Ros1Abb_rapid_msgsConfData",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "extax",
                ["type"] = "Ros1Abb_rapid_msgsExtJoint",
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
        ["symbol"] = "Ros1Abb_rapid_msgsToolData",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_msgs/ToolData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba",
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
                ["type"] = "Ros1Abb_rapid_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "tload",
                ["type"] = "Ros1Abb_rapid_msgsLoadData",
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
        ["symbol"] = "Ros1Abb_rapid_msgsWObjData",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_msgs/WObjData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f",
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
                ["type"] = "Ros1Abb_rapid_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "oframe",
                ["type"] = "Ros1Abb_rapid_msgsPose",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/EGMActivateSettings",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d",
        ["minimum"] = 204,
        ["maximum"] = 716,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "tool",
                ["type"] = "Ros1Abb_rapid_msgsToolData",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 73,
            },
            {
                ["name"] = "wobj",
                ["type"] = "Ros1Abb_rapid_msgsWObjData",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 62,
            },
            {
                ["name"] = "correction_frame",
                ["type"] = "Ros1Abb_rapid_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "sensor_frame",
                ["type"] = "Ros1Abb_rapid_msgsPose",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsEGMRunSettings",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/EGMRunSettings",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506",
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
                ["type"] = "Ros1Abb_rapid_msgsPose",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/EGMSetupSettings",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsEGMStopSettings",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/EGMStopSettings",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsEGMSettings",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/EGMSettings",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b",
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
                ["type"] = "Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 5,
            },
            {
                ["name"] = "activate",
                ["type"] = "Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 204,
            },
            {
                ["name"] = "run",
                ["type"] = "Ros1Abb_rapid_sm_addin_msgsEGMRunSettings",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 40,
            },
            {
                ["name"] = "stop",
                ["type"] = "Ros1Abb_rapid_sm_addin_msgsEGMStopSettings",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/GetEGMSettingsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_42cca857367e08720f989416d18d6a1f7d677f7e5bf49435b9735a9eb10a8f9c",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/GetEGMSettingsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_094fd8b0b992c26d708bbd09952d36a3921ad5e5e66f45edb9d19af5ec3472bc",
        ["minimum"] = 261,
        ["maximum"] = 1285,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "settings",
                ["type"] = "Ros1Abb_rapid_sm_addin_msgsEGMSettings",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsStateMachineState",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/StateMachineState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsRuntimeState",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/RuntimeState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c",
        ["minimum"] = 20,
        ["maximum"] = 8372,
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
                ["name"] = "state_machines",
                ["type"] = "Ros1Abb_rapid_sm_addin_msgsStateMachineState",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/SetEGMSettingsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fe85c34f8dff2c0a547f89385d75771af13a03d997b880ab7be2eb84ea800155",
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
                ["type"] = "Ros1Abb_rapid_sm_addin_msgsEGMSettings",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/SetEGMSettingsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c0d4e594a51a6cdd245ad03b6e27bbdc298c5c9fbe26cc25fa3594deef9b2591",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b16ba3e98ee1d45864532b01f914746f041e49463b9330ef6056e427d199a5a3",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_44de2385f12a8612fa75ca7c3f97b07f22d04e920bdeca0f0bd7fed5322c680e",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/SetSGCommandRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e39d7fee66c1efb9ea963216823f6e10bd632d78634d8c47f3283a1a1779f0c2",
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
        ["symbol"] = "Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_rapid_sm_addin_msgs/SetSGCommandResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2f22b2098d86dd0764277247eb7f64dccecebf0cddce85654b01c1928eb9c192",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetFileContentsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetFileContentsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_75f5802b385cc1efb524fadea657fda1d5cc4298c5720222d33cd3dd39656f21",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetFileContentsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetFileContentsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_693b53ed168f81a7c93ac8083977c4f8bd6f4a3999d079f5b47029699ba68fdb",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetIOSignalRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetIOSignalRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d98f7577756b476cac0dd325d45f333fcd2b735df7dce58fb660790b5a91f83b",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetIOSignalResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetIOSignalResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_10a66146c4815b0d758ec81dde1c552695c97a8727ee995299018b23f129d79e",
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
        ["symbol"] = "Ros1Abb_robot_msgsRAPIDSymbolPath",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/RAPIDSymbolPath",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetRAPIDBoolRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetRAPIDBoolRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_46e49c0d6796175d0c56460dd4c7d2557deaa8db4f1a3bec40b53636d3b44b96",
        ["minimum"] = 12,
        ["maximum"] = 204,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros1Abb_robot_msgsRAPIDSymbolPath",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetRAPIDBoolResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetRAPIDBoolResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bfe21e95cb79f1d9bc1bc1dc2f61c744a2a7dc49e5a5ed07b6c8619344b97b3f",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetRAPIDDnumRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetRAPIDDnumRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9058d8774de0da657344a00d75a7f75878da2b0453bf25708bc8ed7f45c90c9d",
        ["minimum"] = 12,
        ["maximum"] = 204,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros1Abb_robot_msgsRAPIDSymbolPath",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetRAPIDDnumResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetRAPIDDnumResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9c209b4b12d733e33b76cc33ae93b6d561ce1eb7f8864429a56bd073317a01b3",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetRAPIDNumRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetRAPIDNumRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a316395c8a19b7c0a9c3a555e625fffc7d647c7b567f38c53b1c3735b50ee910",
        ["minimum"] = 12,
        ["maximum"] = 204,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros1Abb_robot_msgsRAPIDSymbolPath",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetRAPIDNumResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetRAPIDNumResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1573cba9a9046a6b304a49e3a77266fa0d6f615d2ea9a24692c25616970fd9b0",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetRAPIDStringRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetRAPIDStringRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_56514142e9e064aa43d09078b49ed8ee0366189727c35a9bc130b35007da4c9c",
        ["minimum"] = 12,
        ["maximum"] = 204,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros1Abb_robot_msgsRAPIDSymbolPath",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetRAPIDStringResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetRAPIDStringResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d1188827af3c307a721f8128b6f14fa6020f3187afce8a4162ce6562cdd1c854",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetRAPIDSymbolRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetRAPIDSymbolRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_31302ad912a8ff39b56a429bc9dae22cbfc2c2101b8cd05162d00d9206aecf5b",
        ["minimum"] = 12,
        ["maximum"] = 204,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros1Abb_robot_msgsRAPIDSymbolPath",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetRAPIDSymbolResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetRAPIDSymbolResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_182dc465ea5fb9543791b6fb76520313cee1ed472ab0296c8ef7a9ed3d4d110f",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetRobotControllerDescriptionRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bc5f87f4d0f33cbc640c8188fbb15c9b0f43b3067f2406700d6f5bd2475089b6",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetRobotControllerDescriptionResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7db41283fbe12a010e526b87d77a5bb7faecdf85595ef2dc13f14bfed56b6e39",
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
        ["symbol"] = "Ros1Abb_robot_msgsGetSpeedRatioRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetSpeedRatioRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_82230aebf6fa923e09bcd413ecb3b4803a6f1cfd3e8334e0ce0c496b73008373",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Abb_robot_msgsGetSpeedRatioResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/GetSpeedRatioResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7784360ddafa1b8ad9626fde0afa2b2335f6a294507036c3aee953df99e91940",
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
        ["symbol"] = "Ros1Abb_robot_msgsMechanicalUnitState",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/MechanicalUnitState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa",
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
        ["symbol"] = "Ros1Abb_robot_msgsRAPIDTaskState",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/RAPIDTaskState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947",
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
        ["symbol"] = "Ros1Abb_robot_msgsServiceResponses",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/ServiceResponses",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetFileContentsRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetFileContentsRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f764448d9754e9ebc5e5fab64f0c8ebb01c534ec7b95751ed7d58e8ce0bd3012",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetFileContentsResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetFileContentsResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3de2a08b8e158e0612898880d6d9c98f1995828eb53bd5639b47f730c6cbefd0",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetIOSignalRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetIOSignalRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_57a0197e2a5de7efd2fc91d945d699be24559baec6651179a1256f1d9d35bbc9",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetIOSignalResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetIOSignalResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_becc0f844ce6a7fabd8a683175edd8033ba5c943c2de152991755ee112b460e5",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetRAPIDBoolRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetRAPIDBoolRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d8e5420678fe5feeffa20ad9ab8431678ec346f764c94871c4496c62e9dd8e8d",
        ["minimum"] = 13,
        ["maximum"] = 205,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros1Abb_robot_msgsRAPIDSymbolPath",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetRAPIDBoolResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetRAPIDBoolResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_da2ae1231cb0c1ec452fb2733d5c99dcae78ad0bfd10771241708931b271bf13",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetRAPIDDnumRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetRAPIDDnumRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0f17e3068f86bca6effb99f3bc850234b0163028f372340c450fce31657b9cf9",
        ["minimum"] = 20,
        ["maximum"] = 212,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros1Abb_robot_msgsRAPIDSymbolPath",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetRAPIDDnumResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetRAPIDDnumResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1905aed9683e03494baa54627ddbaf4aed0b92357823c0c042f9b7c6a970c8ed",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetRAPIDNumRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetRAPIDNumRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9982d02cb0b6ee5813f5fb38072d665226b7885aeb90517af881f4fc990f392f",
        ["minimum"] = 16,
        ["maximum"] = 208,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros1Abb_robot_msgsRAPIDSymbolPath",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetRAPIDNumResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetRAPIDNumResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_af1181242b4afdb6d387d39c24d0bc343e872fb9ab21c0ec1e451785786a4e64",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetRAPIDStringRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetRAPIDStringRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e06839324f8abfa8780b683386f87bab1ec04f1e6463e63c0599f5c2f8a75f0c",
        ["minimum"] = 16,
        ["maximum"] = 720,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros1Abb_robot_msgsRAPIDSymbolPath",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetRAPIDStringResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetRAPIDStringResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e175bdff5a150722b8c50cf2e1c0f28a99289a0b148339efdee4b034ea3b96b4",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetRAPIDSymbolRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetRAPIDSymbolRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0654a5a8e5ec42f4feab54b086a008e02a74d44df65d2fcf60f007736e3fec7d",
        ["minimum"] = 16,
        ["maximum"] = 720,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "path",
                ["type"] = "Ros1Abb_robot_msgsRAPIDSymbolPath",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetRAPIDSymbolResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetRAPIDSymbolResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a4ca0a8821337d1f16ba1f2ad2b232aceaba419308ca03b27f43dac427a32846",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetSpeedRatioRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetSpeedRatioRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a6ac368d243d488901b03d5e4303600d5f0eaf62150801103e5f5f9c0863fab5",
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
        ["symbol"] = "Ros1Abb_robot_msgsSetSpeedRatioResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SetSpeedRatioResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9775dc1029993d1dfdf5f3080e6ae4262177ba96cdc0fbe9851dc4fea16c70d8",
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
        ["symbol"] = "Ros1Abb_robot_msgsSystemState",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/SystemState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2",
        ["minimum"] = 27,
        ["maximum"] = 2331,
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
                ["type"] = "Ros1Abb_robot_msgsRAPIDTaskState",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 7,
            },
            {
                ["name"] = "mechanical_units",
                ["type"] = "Ros1Abb_robot_msgsMechanicalUnitState",
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
        ["symbol"] = "Ros1Abb_robot_msgsTriggerWithResultCodeRequest",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/TriggerWithResultCodeRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_999f63504788e522f7d0108a895cf35cd101e9a50856e480ae9edabf791bcf94",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Abb_robot_msgsTriggerWithResultCodeResponse",
        ["ros_version"] = 1,
        ["native_type"] = "abb_robot_msgs/TriggerWithResultCodeResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4ef5c987592e849766b82b7fd99a65b7a1e17605f3e3341c99803181887967ff",
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
        ["symbol"] = "Ros1Duration",
        ["ros_version"] = 1,
        ["native_type"] = "duration",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "normalized-duration",
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
                ["name"] = "nsec",
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
        ["symbol"] = "Ros1Trajectory_msgsJointTrajectoryPoint",
        ["ros_version"] = 1,
        ["native_type"] = "trajectory_msgs/JointTrajectoryPoint",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5",
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
                ["type"] = "Ros1Duration",
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
        ["symbol"] = "Ros1Trajectory_msgsJointTrajectory",
        ["ros_version"] = 1,
        ["native_type"] = "trajectory_msgs/JointTrajectory",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b",
        ["minimum"] = 24,
        ["maximum"] = 4168,
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
                ["type"] = "Ros1Trajectory_msgsJointTrajectoryPoint",
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
        ["symbol"] = "Ros1Control_msgsJointTolerance",
        ["ros_version"] = 1,
        ["native_type"] = "control_msgs/JointTolerance",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88",
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
        ["symbol"] = "Ros1Control_msgsFollowJointTrajectoryGoal",
        ["ros_version"] = 1,
        ["native_type"] = "control_msgs/FollowJointTrajectoryGoal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e9fda6f9e732450f2cf1af046ceb67815e6e1a22105eda2fee38f8f470252d40",
        ["minimum"] = 40,
        ["maximum"] = 6392,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "trajectory",
                ["type"] = "Ros1Trajectory_msgsJointTrajectory",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "path_tolerance",
                ["type"] = "Ros1Control_msgsJointTolerance",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "goal_tolerance",
                ["type"] = "Ros1Control_msgsJointTolerance",
                ["array"] = "sequence",
                ["count"] = 12,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "goal_time_tolerance",
                ["type"] = "Ros1Duration",
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
        ["symbol"] = "Ros1Control_msgsFollowJointTrajectoryResult",
        ["ros_version"] = 1,
        ["native_type"] = "control_msgs/FollowJointTrajectoryResult",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281",
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
        ["symbol"] = "Ros1Control_msgsFollowJointTrajectoryFeedback",
        ["ros_version"] = 1,
        ["native_type"] = "control_msgs/FollowJointTrajectoryFeedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a1ad5a1f8a00b60f97d06209737993bd395d83d1a008705d65193b63933b62a8",
        ["minimum"] = 92,
        ["maximum"] = 2124,
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
                ["type"] = "Ros1Trajectory_msgsJointTrajectoryPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "actual",
                ["type"] = "Ros1Trajectory_msgsJointTrajectoryPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "error",
                ["type"] = "Ros1Trajectory_msgsJointTrajectoryPoint",
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
        ["symbol"] = "Ros1Sensor_msgsJointState",
        ["ros_version"] = 1,
        ["native_type"] = "sensor_msgs/JointState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057",
        ["minimum"] = 32,
        ["maximum"] = 1200,
        ["semantics"] = "joint-state-optional-equal-length-arrays",
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
}
local classes, by_name = wire.records(schemas)

--- @class Ros1Abb_egm_msgsEGMChannelState
--- @brief Complete ROS1 abb_egm_msgs/EGMChannelState value and codec.
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
--- @brief Ros1Abb_egm_msgsEGMChannelState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_egm_msgsEGMChannelState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_egm_msgsEGMChannelState.NATIVE_TYPE: Exact normalized native type name
--abb_egm_msgs/EGMChannelState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_egm_msgsEGMChannelState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_egm_msgs/EGMChannelState.
--- @brief Ros1Abb_egm_msgsEGMChannelState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_egm_msgsEGMChannelState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_egm_msgsEGMChannelState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_egm_msgsEGMChannelState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_egm_msgsEGMChannelState.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_egm_msgsEGMChannelState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros1Abb_egm_msgsEGMChannelState.MAX_WIRE_BYTES: Inclusive complete maximum 81 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_egm_msgsEGMChannelState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 81 bytes.
--- @brief Native class constant Ros1Abb_egm_msgsEGMChannelState.EGM_UNDEFINED.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_egm_msgsEGMChannelState.new
--- @field EGM_UNDEFINED integer
--- @brief Native class constant Ros1Abb_egm_msgsEGMChannelState.EGM_ERROR.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_egm_msgsEGMChannelState.new
--- @field EGM_ERROR integer
--- @brief Native class constant Ros1Abb_egm_msgsEGMChannelState.EGM_STOPPED.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_egm_msgsEGMChannelState.new
--- @field EGM_STOPPED integer
--- @brief Native class constant Ros1Abb_egm_msgsEGMChannelState.EGM_RUNNING.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_egm_msgsEGMChannelState.new
--- @field EGM_RUNNING integer
--- @brief Native class constant Ros1Abb_egm_msgsEGMChannelState.MOTORS_UNDEFINED.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_egm_msgsEGMChannelState.new
--- @field MOTORS_UNDEFINED integer
--- @brief Native class constant Ros1Abb_egm_msgsEGMChannelState.MOTORS_ON.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_egm_msgsEGMChannelState.new
--- @field MOTORS_ON integer
--- @brief Native class constant Ros1Abb_egm_msgsEGMChannelState.MOTORS_OFF.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_egm_msgsEGMChannelState.new
--- @field MOTORS_OFF integer
--- @brief Native class constant Ros1Abb_egm_msgsEGMChannelState.RAPID_UNDEFINED.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_egm_msgsEGMChannelState.new
--- @field RAPID_UNDEFINED integer
--- @brief Native class constant Ros1Abb_egm_msgsEGMChannelState.RAPID_STOPPED.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_egm_msgsEGMChannelState.new
--- @field RAPID_STOPPED integer
--- @brief Native class constant Ros1Abb_egm_msgsEGMChannelState.RAPID_RUNNING.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_egm_msgsEGMChannelState.new
--- @field RAPID_RUNNING integer
--- @brief Construct Ros1Abb_egm_msgsEGMChannelState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_egm_msgsEGMChannelState value New mutable complete value; no ROS resource.
--- @see Ros1Abb_egm_msgsEGMChannelState.encode
--- @field new fun(values?: table): Ros1Abb_egm_msgsEGMChannelState
--- @brief Encode a complete Ros1Abb_egm_msgsEGMChannelState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_egm_msgsEGMChannelState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..81 bytes.
--- @see Ros1Abb_egm_msgsEGMChannelState.decode
--- @field encode fun(value: Ros1Abb_egm_msgsEGMChannelState): string
--- @brief Decode exactly one complete Ros1Abb_egm_msgsEGMChannelState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_egm_msgsEGMChannelState value New complete value; failures raise Lua errors.
--- @see Ros1Abb_egm_msgsEGMChannelState.encode
--- @field decode fun(bytes: string): Ros1Abb_egm_msgsEGMChannelState
local Ros1Abb_egm_msgsEGMChannelState = classes["Ros1Abb_egm_msgsEGMChannelState"]

--- @class Ros1Time
--- @brief Complete ROS1 time value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field sec integer Exact uint32 range 0..4294967295. Whole seconds; signedness/range follow the native
--scalar above.
--- @field nsec integer Exact uint32 range 0..4294967295. Normalized fractional nanoseconds,
--inclusive0..999999999.
--- @brief Ros1Time.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Time.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Time.NATIVE_TYPE: Exact normalized native type name time.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Time.encode
--- @field NATIVE_TYPE string Exact normalized native type name time.
--- @brief Ros1Time.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Time.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
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
--- @field frame_id string Strict UTF-8 without NUL; length0..64 bytes.
--- @brief Ros1Std_msgsHeader.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Std_msgsHeader.NATIVE_TYPE: Exact normalized native type name std_msgs/Header.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field NATIVE_TYPE string Exact normalized native type name std_msgs/Header.
--- @brief Ros1Std_msgsHeader.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Std_msgsHeader.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Std_msgsHeader.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Std_msgsHeader.MAX_WIRE_BYTES: Inclusive complete maximum 80 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 80 bytes.
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
--- @return string bytes New immutable string, 16..80 bytes.
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

--- @class Ros1Abb_egm_msgsEGMState
--- @brief Complete ROS1 abb_egm_msgs/EGMState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/Header value; no native fields are projected away.
--- @field egm_channels table[] Complete nested abb_egm_msgs/EGMChannelState value; no native fields are
--projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Abb_egm_msgsEGMState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_egm_msgsEGMState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_egm_msgsEGMState.NATIVE_TYPE: Exact normalized native type name abb_egm_msgs/EGMState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_egm_msgsEGMState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_egm_msgs/EGMState.
--- @brief Ros1Abb_egm_msgsEGMState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_egm_msgsEGMState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_egm_msgsEGMState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_egm_msgsEGMState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_egm_msgsEGMState.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_egm_msgsEGMState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros1Abb_egm_msgsEGMState.MAX_WIRE_BYTES: Inclusive complete maximum 1380 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_egm_msgsEGMState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1380 bytes.
--- @brief Construct Ros1Abb_egm_msgsEGMState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_egm_msgsEGMState value New mutable complete value; no ROS resource.
--- @see Ros1Abb_egm_msgsEGMState.encode
--- @field new fun(values?: table): Ros1Abb_egm_msgsEGMState
--- @brief Encode a complete Ros1Abb_egm_msgsEGMState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_egm_msgsEGMState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..1380 bytes.
--- @see Ros1Abb_egm_msgsEGMState.decode
--- @field encode fun(value: Ros1Abb_egm_msgsEGMState): string
--- @brief Decode exactly one complete Ros1Abb_egm_msgsEGMState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_egm_msgsEGMState value New complete value; failures raise Lua errors.
--- @see Ros1Abb_egm_msgsEGMState.encode
--- @field decode fun(bytes: string): Ros1Abb_egm_msgsEGMState
local Ros1Abb_egm_msgsEGMState = classes["Ros1Abb_egm_msgsEGMState"]

--- @class Ros1Abb_rapid_msgsConfData
--- @brief Complete ROS1 abb_rapid_msgs/ConfData value and codec.
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
--- @brief Ros1Abb_rapid_msgsConfData.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsConfData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_msgsConfData.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/ConfData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsConfData.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/ConfData.
--- @brief Ros1Abb_rapid_msgsConfData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsConfData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_msgsConfData.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsConfData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_msgsConfData.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsConfData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Abb_rapid_msgsConfData.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsConfData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Abb_rapid_msgsConfData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_msgsConfData value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_msgsConfData.encode
--- @field new fun(values?: table): Ros1Abb_rapid_msgsConfData
--- @brief Encode a complete Ros1Abb_rapid_msgsConfData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_msgsConfData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Abb_rapid_msgsConfData.decode
--- @field encode fun(value: Ros1Abb_rapid_msgsConfData): string
--- @brief Decode exactly one complete Ros1Abb_rapid_msgsConfData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_msgsConfData value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_msgsConfData.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_msgsConfData
local Ros1Abb_rapid_msgsConfData = classes["Ros1Abb_rapid_msgsConfData"]

--- @class Ros1Abb_rapid_msgsExtJoint
--- @brief Complete ROS1 abb_rapid_msgs/ExtJoint value and codec.
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
--- @brief Ros1Abb_rapid_msgsExtJoint.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsExtJoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_msgsExtJoint.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/ExtJoint.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsExtJoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/ExtJoint.
--- @brief Ros1Abb_rapid_msgsExtJoint.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsExtJoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_msgsExtJoint.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsExtJoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_msgsExtJoint.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsExtJoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Abb_rapid_msgsExtJoint.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsExtJoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Abb_rapid_msgsExtJoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_msgsExtJoint value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_msgsExtJoint.encode
--- @field new fun(values?: table): Ros1Abb_rapid_msgsExtJoint
--- @brief Encode a complete Ros1Abb_rapid_msgsExtJoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_msgsExtJoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Abb_rapid_msgsExtJoint.decode
--- @field encode fun(value: Ros1Abb_rapid_msgsExtJoint): string
--- @brief Decode exactly one complete Ros1Abb_rapid_msgsExtJoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_msgsExtJoint value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_msgsExtJoint.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_msgsExtJoint
local Ros1Abb_rapid_msgsExtJoint = classes["Ros1Abb_rapid_msgsExtJoint"]

--- @class Ros1Abb_rapid_msgsRobJoint
--- @brief Complete ROS1 abb_rapid_msgs/RobJoint value and codec.
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
--- @brief Ros1Abb_rapid_msgsRobJoint.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsRobJoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_msgsRobJoint.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/RobJoint.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsRobJoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/RobJoint.
--- @brief Ros1Abb_rapid_msgsRobJoint.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsRobJoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_msgsRobJoint.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsRobJoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_msgsRobJoint.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsRobJoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Abb_rapid_msgsRobJoint.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsRobJoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Abb_rapid_msgsRobJoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_msgsRobJoint value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_msgsRobJoint.encode
--- @field new fun(values?: table): Ros1Abb_rapid_msgsRobJoint
--- @brief Encode a complete Ros1Abb_rapid_msgsRobJoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_msgsRobJoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Abb_rapid_msgsRobJoint.decode
--- @field encode fun(value: Ros1Abb_rapid_msgsRobJoint): string
--- @brief Decode exactly one complete Ros1Abb_rapid_msgsRobJoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_msgsRobJoint value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_msgsRobJoint.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_msgsRobJoint
local Ros1Abb_rapid_msgsRobJoint = classes["Ros1Abb_rapid_msgsRobJoint"]

--- @class Ros1Abb_rapid_msgsJointTarget
--- @brief Complete ROS1 abb_rapid_msgs/JointTarget value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field robax table Complete nested abb_rapid_msgs/RobJoint value; no native fields are projected away.
--- @field extax table Complete nested abb_rapid_msgs/ExtJoint value; no native fields are projected away.
--- @brief Ros1Abb_rapid_msgsJointTarget.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsJointTarget.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_msgsJointTarget.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_msgs/JointTarget.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsJointTarget.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/JointTarget.
--- @brief Ros1Abb_rapid_msgsJointTarget.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsJointTarget.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_msgsJointTarget.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsJointTarget.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_msgsJointTarget.MIN_WIRE_BYTES: Inclusive complete minimum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsJointTarget.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 48 bytes.
--- @brief Ros1Abb_rapid_msgsJointTarget.MAX_WIRE_BYTES: Inclusive complete maximum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsJointTarget.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 48 bytes.
--- @brief Construct Ros1Abb_rapid_msgsJointTarget with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_msgsJointTarget value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_msgsJointTarget.encode
--- @field new fun(values?: table): Ros1Abb_rapid_msgsJointTarget
--- @brief Encode a complete Ros1Abb_rapid_msgsJointTarget value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_msgsJointTarget [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 48..48 bytes.
--- @see Ros1Abb_rapid_msgsJointTarget.decode
--- @field encode fun(value: Ros1Abb_rapid_msgsJointTarget): string
--- @brief Decode exactly one complete Ros1Abb_rapid_msgsJointTarget canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_msgsJointTarget value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_msgsJointTarget.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_msgsJointTarget
local Ros1Abb_rapid_msgsJointTarget = classes["Ros1Abb_rapid_msgsJointTarget"]

--- @class Ros1Abb_rapid_msgsPos
--- @brief Complete ROS1 abb_rapid_msgs/Pos value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Abb_rapid_msgsPos.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsPos.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_msgsPos.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/Pos.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsPos.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/Pos.
--- @brief Ros1Abb_rapid_msgsPos.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsPos.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_msgsPos.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsPos.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_msgsPos.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsPos.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Abb_rapid_msgsPos.MAX_WIRE_BYTES: Inclusive complete maximum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsPos.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 12 bytes.
--- @brief Construct Ros1Abb_rapid_msgsPos with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_msgsPos value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_msgsPos.encode
--- @field new fun(values?: table): Ros1Abb_rapid_msgsPos
--- @brief Encode a complete Ros1Abb_rapid_msgsPos value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_msgsPos [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..12 bytes.
--- @see Ros1Abb_rapid_msgsPos.decode
--- @field encode fun(value: Ros1Abb_rapid_msgsPos): string
--- @brief Decode exactly one complete Ros1Abb_rapid_msgsPos canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_msgsPos value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_msgsPos.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_msgsPos
local Ros1Abb_rapid_msgsPos = classes["Ros1Abb_rapid_msgsPos"]

--- @class Ros1Abb_rapid_msgsOrient
--- @brief Complete ROS1 abb_rapid_msgs/Orient value and codec.
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
--- @brief Ros1Abb_rapid_msgsOrient.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsOrient.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_msgsOrient.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/Orient.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsOrient.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/Orient.
--- @brief Ros1Abb_rapid_msgsOrient.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsOrient.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_msgsOrient.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsOrient.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_msgsOrient.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsOrient.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Abb_rapid_msgsOrient.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsOrient.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Abb_rapid_msgsOrient with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_msgsOrient value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_msgsOrient.encode
--- @field new fun(values?: table): Ros1Abb_rapid_msgsOrient
--- @brief Encode a complete Ros1Abb_rapid_msgsOrient value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_msgsOrient [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Abb_rapid_msgsOrient.decode
--- @field encode fun(value: Ros1Abb_rapid_msgsOrient): string
--- @brief Decode exactly one complete Ros1Abb_rapid_msgsOrient canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_msgsOrient value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_msgsOrient.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_msgsOrient
local Ros1Abb_rapid_msgsOrient = classes["Ros1Abb_rapid_msgsOrient"]

--- @class Ros1Abb_rapid_msgsLoadData
--- @brief Complete ROS1 abb_rapid_msgs/LoadData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mass number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cog table Complete nested abb_rapid_msgs/Pos value; no native fields are projected away.
--- @field aom table Complete nested abb_rapid_msgs/Orient value; no native fields are projected away.
--- @field ix number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field iy number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field iz number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Abb_rapid_msgsLoadData.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsLoadData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_msgsLoadData.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/LoadData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsLoadData.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/LoadData.
--- @brief Ros1Abb_rapid_msgsLoadData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsLoadData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_msgsLoadData.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsLoadData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_msgsLoadData.MIN_WIRE_BYTES: Inclusive complete minimum 44 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsLoadData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 44 bytes.
--- @brief Ros1Abb_rapid_msgsLoadData.MAX_WIRE_BYTES: Inclusive complete maximum 44 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsLoadData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 44 bytes.
--- @brief Construct Ros1Abb_rapid_msgsLoadData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_msgsLoadData value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_msgsLoadData.encode
--- @field new fun(values?: table): Ros1Abb_rapid_msgsLoadData
--- @brief Encode a complete Ros1Abb_rapid_msgsLoadData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_msgsLoadData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 44..44 bytes.
--- @see Ros1Abb_rapid_msgsLoadData.decode
--- @field encode fun(value: Ros1Abb_rapid_msgsLoadData): string
--- @brief Decode exactly one complete Ros1Abb_rapid_msgsLoadData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_msgsLoadData value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_msgsLoadData.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_msgsLoadData
local Ros1Abb_rapid_msgsLoadData = classes["Ros1Abb_rapid_msgsLoadData"]

--- @class Ros1Abb_rapid_msgsPose
--- @brief Complete ROS1 abb_rapid_msgs/Pose value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field trans table Complete nested abb_rapid_msgs/Pos value; no native fields are projected away.
--- @field rot table Complete nested abb_rapid_msgs/Orient value; no native fields are projected away.
--- @brief Ros1Abb_rapid_msgsPose.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsPose.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_msgsPose.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/Pose.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsPose.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/Pose.
--- @brief Ros1Abb_rapid_msgsPose.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsPose.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_msgsPose.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsPose.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_msgsPose.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsPose.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros1Abb_rapid_msgsPose.MAX_WIRE_BYTES: Inclusive complete maximum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsPose.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 28 bytes.
--- @brief Construct Ros1Abb_rapid_msgsPose with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_msgsPose value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_msgsPose.encode
--- @field new fun(values?: table): Ros1Abb_rapid_msgsPose
--- @brief Encode a complete Ros1Abb_rapid_msgsPose value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_msgsPose [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..28 bytes.
--- @see Ros1Abb_rapid_msgsPose.decode
--- @field encode fun(value: Ros1Abb_rapid_msgsPose): string
--- @brief Decode exactly one complete Ros1Abb_rapid_msgsPose canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_msgsPose value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_msgsPose.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_msgsPose
local Ros1Abb_rapid_msgsPose = classes["Ros1Abb_rapid_msgsPose"]

--- @class Ros1Abb_rapid_msgsRobTarget
--- @brief Complete ROS1 abb_rapid_msgs/RobTarget value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field trans table Complete nested abb_rapid_msgs/Pos value; no native fields are projected away.
--- @field rot table Complete nested abb_rapid_msgs/Orient value; no native fields are projected away.
--- @field robconf table Complete nested abb_rapid_msgs/ConfData value; no native fields are projected away.
--- @field extax table Complete nested abb_rapid_msgs/ExtJoint value; no native fields are projected away.
--- @brief Ros1Abb_rapid_msgsRobTarget.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsRobTarget.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_msgsRobTarget.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/RobTarget.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsRobTarget.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/RobTarget.
--- @brief Ros1Abb_rapid_msgsRobTarget.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsRobTarget.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_msgsRobTarget.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsRobTarget.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_msgsRobTarget.MIN_WIRE_BYTES: Inclusive complete minimum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsRobTarget.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 68 bytes.
--- @brief Ros1Abb_rapid_msgsRobTarget.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsRobTarget.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros1Abb_rapid_msgsRobTarget with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_msgsRobTarget value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_msgsRobTarget.encode
--- @field new fun(values?: table): Ros1Abb_rapid_msgsRobTarget
--- @brief Encode a complete Ros1Abb_rapid_msgsRobTarget value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_msgsRobTarget [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 68..68 bytes.
--- @see Ros1Abb_rapid_msgsRobTarget.decode
--- @field encode fun(value: Ros1Abb_rapid_msgsRobTarget): string
--- @brief Decode exactly one complete Ros1Abb_rapid_msgsRobTarget canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_msgsRobTarget value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_msgsRobTarget.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_msgsRobTarget
local Ros1Abb_rapid_msgsRobTarget = classes["Ros1Abb_rapid_msgsRobTarget"]

--- @class Ros1Abb_rapid_msgsToolData
--- @brief Complete ROS1 abb_rapid_msgs/ToolData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field robhold boolean Exact boolean; encoded as one byte0/1.
--- @field tframe table Complete nested abb_rapid_msgs/Pose value; no native fields are projected away.
--- @field tload table Complete nested abb_rapid_msgs/LoadData value; no native fields are projected away.
--- @brief Ros1Abb_rapid_msgsToolData.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsToolData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_msgsToolData.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/ToolData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsToolData.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/ToolData.
--- @brief Ros1Abb_rapid_msgsToolData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsToolData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_msgsToolData.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsToolData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_msgsToolData.MIN_WIRE_BYTES: Inclusive complete minimum 73 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsToolData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 73 bytes.
--- @brief Ros1Abb_rapid_msgsToolData.MAX_WIRE_BYTES: Inclusive complete maximum 73 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsToolData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 73 bytes.
--- @brief Construct Ros1Abb_rapid_msgsToolData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_msgsToolData value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_msgsToolData.encode
--- @field new fun(values?: table): Ros1Abb_rapid_msgsToolData
--- @brief Encode a complete Ros1Abb_rapid_msgsToolData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_msgsToolData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 73..73 bytes.
--- @see Ros1Abb_rapid_msgsToolData.decode
--- @field encode fun(value: Ros1Abb_rapid_msgsToolData): string
--- @brief Decode exactly one complete Ros1Abb_rapid_msgsToolData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_msgsToolData value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_msgsToolData.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_msgsToolData
local Ros1Abb_rapid_msgsToolData = classes["Ros1Abb_rapid_msgsToolData"]

--- @class Ros1Abb_rapid_msgsWObjData
--- @brief Complete ROS1 abb_rapid_msgs/WObjData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field robhold boolean Exact boolean; encoded as one byte0/1.
--- @field ufprog boolean Exact boolean; encoded as one byte0/1.
--- @field ufmec string Strict UTF-8 without NUL; length0..512 bytes.
--- @field uframe table Complete nested abb_rapid_msgs/Pose value; no native fields are projected away.
--- @field oframe table Complete nested abb_rapid_msgs/Pose value; no native fields are projected away.
--- @brief Ros1Abb_rapid_msgsWObjData.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsWObjData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_msgsWObjData.NATIVE_TYPE: Exact normalized native type name abb_rapid_msgs/WObjData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsWObjData.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_msgs/WObjData.
--- @brief Ros1Abb_rapid_msgsWObjData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsWObjData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_msgsWObjData.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsWObjData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_msgsWObjData.MIN_WIRE_BYTES: Inclusive complete minimum 62 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsWObjData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 62 bytes.
--- @brief Ros1Abb_rapid_msgsWObjData.MAX_WIRE_BYTES: Inclusive complete maximum 574 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_msgsWObjData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 574 bytes.
--- @brief Construct Ros1Abb_rapid_msgsWObjData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_msgsWObjData value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_msgsWObjData.encode
--- @field new fun(values?: table): Ros1Abb_rapid_msgsWObjData
--- @brief Encode a complete Ros1Abb_rapid_msgsWObjData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_msgsWObjData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 62..574 bytes.
--- @see Ros1Abb_rapid_msgsWObjData.decode
--- @field encode fun(value: Ros1Abb_rapid_msgsWObjData): string
--- @brief Decode exactly one complete Ros1Abb_rapid_msgsWObjData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_msgsWObjData value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_msgsWObjData.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_msgsWObjData
local Ros1Abb_rapid_msgsWObjData = classes["Ros1Abb_rapid_msgsWObjData"]

--- @class Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/EGMActivateSettings value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field tool table Complete nested abb_rapid_msgs/ToolData value; no native fields are projected away.
--- @field wobj table Complete nested abb_rapid_msgs/WObjData value; no native fields are projected away.
--- @field correction_frame table Complete nested abb_rapid_msgs/Pose value; no native fields are projected
--away.
--- @field sensor_frame table Complete nested abb_rapid_msgs/Pose value; no native fields are projected away.
--- @field cond_min_max number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field lp_filter number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field sample_rate integer Exact uint8 range 0..255.
--- @field max_speed_deviation number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/EGMActivateSettings.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/EGMActivateSettings.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.MIN_WIRE_BYTES: Inclusive complete minimum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 204 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.MAX_WIRE_BYTES: Inclusive complete maximum 716 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 716 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 204..716 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
local Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings = classes["Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings"]

--- @class Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/EGMRunSettings value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field cond_time number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ramp_in_time number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field offset table Complete nested abb_rapid_msgs/Pose value; no native fields are projected away.
--- @field pos_corr_gain number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/EGMRunSettings.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/EGMRunSettings.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.MIN_WIRE_BYTES: Inclusive complete minimum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 40 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.MAX_WIRE_BYTES: Inclusive complete maximum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 40 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsEGMRunSettings with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsEGMRunSettings value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsEGMRunSettings value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsEGMRunSettings [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 40..40 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsEGMRunSettings): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsEGMRunSettings canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsEGMRunSettings value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMRunSettings.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
local Ros1Abb_rapid_sm_addin_msgsEGMRunSettings = classes["Ros1Abb_rapid_sm_addin_msgsEGMRunSettings"]

--- @class Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/EGMSetupSettings value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field use_filtering boolean Exact boolean; encoded as one byte0/1.
--- @field comm_timeout number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/EGMSetupSettings.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/EGMSetupSettings.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings
local Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings = classes["Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings"]

--- @class Ros1Abb_rapid_sm_addin_msgsEGMStopSettings
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/EGMStopSettings value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field ramp_out_time number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/EGMStopSettings.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/EGMStopSettings.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsEGMStopSettings with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsEGMStopSettings value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsEGMStopSettings
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsEGMStopSettings value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsEGMStopSettings [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsEGMStopSettings): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsEGMStopSettings canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsEGMStopSettings value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMStopSettings.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsEGMStopSettings
local Ros1Abb_rapid_sm_addin_msgsEGMStopSettings = classes["Ros1Abb_rapid_sm_addin_msgsEGMStopSettings"]

--- @class Ros1Abb_rapid_sm_addin_msgsEGMSettings
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/EGMSettings value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field allow_egm_motions boolean Exact boolean; encoded as one byte0/1.
--- @field use_presync boolean Exact boolean; encoded as one byte0/1.
--- @field setup_uc table Complete nested abb_rapid_sm_addin_msgs/EGMSetupSettings value; no native fields are
--projected away.
--- @field activate table Complete nested abb_rapid_sm_addin_msgs/EGMActivateSettings value; no native fields
--are projected away.
--- @field run table Complete nested abb_rapid_sm_addin_msgs/EGMRunSettings value; no native fields are
--projected away.
--- @field stop table Complete nested abb_rapid_sm_addin_msgs/EGMStopSettings value; no native fields are
--projected away.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMSettings.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSettings.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMSettings.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/EGMSettings.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSettings.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/EGMSettings.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMSettings.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSettings.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMSettings.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSettings.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMSettings.MIN_WIRE_BYTES: Inclusive complete minimum 255 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSettings.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 255 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsEGMSettings.MAX_WIRE_BYTES: Inclusive complete maximum 767 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSettings.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 767 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsEGMSettings with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsEGMSettings value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSettings.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsEGMSettings
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsEGMSettings value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsEGMSettings [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 255..767 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSettings.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsEGMSettings): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsEGMSettings canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsEGMSettings value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_sm_addin_msgsEGMSettings.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsEGMSettings
local Ros1Abb_rapid_sm_addin_msgsEGMSettings = classes["Ros1Abb_rapid_sm_addin_msgsEGMSettings"]

--- @class Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/GetEGMSettingsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field task string Strict UTF-8 without NUL; length0..64 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.
--- @brief Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest value New complete value; failures raise Lua
--errors.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest
local Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest = classes["Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest"]

--- @class Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/GetEGMSettingsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field settings table Complete nested abb_rapid_sm_addin_msgs/EGMSettings value; no native fields are
--projected away.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.
--- @brief Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 261
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 261 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1285
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1285 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 261..1285 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse value New complete value; failures raise Lua
--errors.
--- @see Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse
local Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse = classes["Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse"]

--- @class Ros1Abb_rapid_sm_addin_msgsStateMachineState
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/StateMachineState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field rapid_task string Strict UTF-8 without NUL; length0..512 bytes.
--- @field sm_state integer Exact uint8 range 0..255.
--- @field egm_action integer Exact uint8 range 0..255.
--- @brief Ros1Abb_rapid_sm_addin_msgsStateMachineState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsStateMachineState.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/StateMachineState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/StateMachineState.
--- @brief Ros1Abb_rapid_sm_addin_msgsStateMachineState.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsStateMachineState.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsStateMachineState.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsStateMachineState.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsStateMachineState.SM_STATE_UNKNOWN.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.new
--- @field SM_STATE_UNKNOWN integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsStateMachineState.SM_STATE_IDLE.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.new
--- @field SM_STATE_IDLE integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsStateMachineState.SM_STATE_INITIALIZE.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.new
--- @field SM_STATE_INITIALIZE integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsStateMachineState.SM_STATE_RUN_RAPID_ROUTINE.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.new
--- @field SM_STATE_RUN_RAPID_ROUTINE integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsStateMachineState.SM_STATE_RUN_EGM_ROUTINE.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.new
--- @field SM_STATE_RUN_EGM_ROUTINE integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsStateMachineState.EGM_ACTION_UNKNOWN.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.new
--- @field EGM_ACTION_UNKNOWN integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsStateMachineState.EGM_ACTION_NONE.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.new
--- @field EGM_ACTION_NONE integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsStateMachineState.EGM_ACTION_RUN_JOINT.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.new
--- @field EGM_ACTION_RUN_JOINT integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsStateMachineState.EGM_ACTION_RUN_POSE.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.new
--- @field EGM_ACTION_RUN_POSE integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsStateMachineState.EGM_ACTION_STOP.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.new
--- @field EGM_ACTION_STOP integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsStateMachineState.EGM_ACTION_START_STREAM.
--- @details Original uint8 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.new
--- @field EGM_ACTION_START_STREAM integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsStateMachineState.EGM_ACTION_STOP_STREAM.
--- @details Original uint8 literal 7; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.new
--- @field EGM_ACTION_STOP_STREAM integer
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsStateMachineState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsStateMachineState value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsStateMachineState
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsStateMachineState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsStateMachineState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsStateMachineState): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsStateMachineState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsStateMachineState value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_sm_addin_msgsStateMachineState.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsStateMachineState
local Ros1Abb_rapid_sm_addin_msgsStateMachineState = classes["Ros1Abb_rapid_sm_addin_msgsStateMachineState"]

--- @class Ros1Abb_rapid_sm_addin_msgsRuntimeState
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/RuntimeState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/Header value; no native fields are projected away.
--- @field state_machines table[] Complete nested abb_rapid_sm_addin_msgs/StateMachineState value; no native
--fields are projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Abb_rapid_sm_addin_msgsRuntimeState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsRuntimeState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsRuntimeState.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/RuntimeState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsRuntimeState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/RuntimeState.
--- @brief Ros1Abb_rapid_sm_addin_msgsRuntimeState.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsRuntimeState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsRuntimeState.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsRuntimeState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsRuntimeState.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsRuntimeState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsRuntimeState.MAX_WIRE_BYTES: Inclusive complete maximum 8372 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsRuntimeState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8372 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsRuntimeState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsRuntimeState value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsRuntimeState.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsRuntimeState
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsRuntimeState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsRuntimeState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..8372 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsRuntimeState.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsRuntimeState): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsRuntimeState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsRuntimeState value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_sm_addin_msgsRuntimeState.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsRuntimeState
local Ros1Abb_rapid_sm_addin_msgsRuntimeState = classes["Ros1Abb_rapid_sm_addin_msgsRuntimeState"]

--- @class Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/SetEGMSettingsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field task string Strict UTF-8 without NUL; length0..64 bytes.
--- @field settings table Complete nested abb_rapid_sm_addin_msgs/EGMSettings value; no native fields are
--projected away.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 259
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 259 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 835
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 835 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 259..835 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest value New complete value; failures raise Lua
--errors.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest
local Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest = classes["Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest"]

--- @class Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/SetEGMSettingsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 518
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse value New complete value; failures raise Lua
--errors.
--- @see Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse
local Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse = classes["Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse"]

--- @class Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field task string Strict UTF-8 without NUL; length0..64 bytes.
--- @field routine string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.MAX_WIRE_BYTES: Inclusive complete maximum 584
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 584 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..584 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest value New complete value; failures raise Lua
--errors.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest
local Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest = classes["Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest"]

--- @class Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.ROS_VERSION: Read-only-by-contract backend value
--1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.MAX_WIRE_BYTES: Inclusive complete maximum 518
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse value New mutable complete value; no ROS
--resource.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse value New complete value; failures raise Lua
--errors.
--- @see Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse
local Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse = classes["Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse"]

--- @class Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/SetSGCommandRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field task string Strict UTF-8 without NUL; length0..64 bytes.
--- @field command integer Exact uint8 range 0..255.
--- @field target_position number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/SetSGCommandRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/SetSGCommandRequest.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.MAX_WIRE_BYTES: Inclusive complete maximum 73 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 73 bytes.
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_UNKNOWN.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_UNKNOWN integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_NONE.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_NONE integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_INITIALIZE.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_INITIALIZE integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_CALIBRATE.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_CALIBRATE integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_MOVE_TO.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_MOVE_TO integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_GRIP_IN.
--- @details Original uint8 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_GRIP_IN integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_GRIP_OUT.
--- @details Original uint8 literal 7; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_GRIP_OUT integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_BLOW_ON_1.
--- @details Original uint8 literal 8; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_BLOW_ON_1 integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_BLOW_ON_2.
--- @details Original uint8 literal 9; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_BLOW_ON_2 integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_BLOW_OFF_1.
--- @details Original uint8 literal 10; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_BLOW_OFF_1 integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_BLOW_OFF_2.
--- @details Original uint8 literal 11; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_BLOW_OFF_2 integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_VACUUM_ON_1.
--- @details Original uint8 literal 12; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_VACUUM_ON_1 integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_VACUUM_ON_2.
--- @details Original uint8 literal 13; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_VACUUM_ON_2 integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_VACUUM_OFF_1.
--- @details Original uint8 literal 14; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_VACUUM_OFF_1 integer
--- @brief Native class constant Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.SG_COMMAND_VACUUM_OFF_2.
--- @details Original uint8 literal 15; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.new
--- @field SG_COMMAND_VACUUM_OFF_2 integer
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..73 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest
local Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest = classes["Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest"]

--- @class Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse
--- @brief Complete ROS1 abb_rapid_sm_addin_msgs/SetSGCommandResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.NATIVE_TYPE: Exact normalized native type name
--abb_rapid_sm_addin_msgs/SetSGCommandResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_rapid_sm_addin_msgs/SetSGCommandResponse.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.encode
--- @field new fun(values?: table): Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse
--- @brief Encode a complete Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.decode
--- @field encode fun(value: Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse): string
--- @brief Decode exactly one complete Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse
local Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse = classes["Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse"]

--- @class Ros1Abb_robot_msgsGetFileContentsRequest
--- @brief Complete ROS1 abb_robot_msgs/GetFileContentsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field filename string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsGetFileContentsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetFileContentsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetFileContentsRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetFileContentsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetFileContentsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetFileContentsRequest.
--- @brief Ros1Abb_robot_msgsGetFileContentsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetFileContentsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetFileContentsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetFileContentsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetFileContentsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetFileContentsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Abb_robot_msgsGetFileContentsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 516 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetFileContentsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 516 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetFileContentsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetFileContentsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetFileContentsRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetFileContentsRequest
--- @brief Encode a complete Ros1Abb_robot_msgsGetFileContentsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetFileContentsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..516 bytes.
--- @see Ros1Abb_robot_msgsGetFileContentsRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetFileContentsRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetFileContentsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetFileContentsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetFileContentsRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetFileContentsRequest
local Ros1Abb_robot_msgsGetFileContentsRequest = classes["Ros1Abb_robot_msgsGetFileContentsRequest"]

--- @class Ros1Abb_robot_msgsGetFileContentsResponse
--- @brief Complete ROS1 abb_robot_msgs/GetFileContentsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field contents string Strict UTF-8 without NUL; length0..4096 bytes.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsGetFileContentsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetFileContentsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetFileContentsResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetFileContentsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetFileContentsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetFileContentsResponse.
--- @brief Ros1Abb_robot_msgsGetFileContentsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetFileContentsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetFileContentsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetFileContentsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetFileContentsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetFileContentsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Abb_robot_msgsGetFileContentsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 4618 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetFileContentsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4618 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetFileContentsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetFileContentsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetFileContentsResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetFileContentsResponse
--- @brief Encode a complete Ros1Abb_robot_msgsGetFileContentsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetFileContentsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..4618 bytes.
--- @see Ros1Abb_robot_msgsGetFileContentsResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetFileContentsResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetFileContentsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetFileContentsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetFileContentsResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetFileContentsResponse
local Ros1Abb_robot_msgsGetFileContentsResponse = classes["Ros1Abb_robot_msgsGetFileContentsResponse"]

--- @class Ros1Abb_robot_msgsGetIOSignalRequest
--- @brief Complete ROS1 abb_robot_msgs/GetIOSignalRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field signal string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsGetIOSignalRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetIOSignalRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetIOSignalRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetIOSignalRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetIOSignalRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetIOSignalRequest.
--- @brief Ros1Abb_robot_msgsGetIOSignalRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetIOSignalRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetIOSignalRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetIOSignalRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetIOSignalRequest.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetIOSignalRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros1Abb_robot_msgsGetIOSignalRequest.MAX_WIRE_BYTES: Inclusive complete maximum 516 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetIOSignalRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 516 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetIOSignalRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetIOSignalRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetIOSignalRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetIOSignalRequest
--- @brief Encode a complete Ros1Abb_robot_msgsGetIOSignalRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetIOSignalRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..516 bytes.
--- @see Ros1Abb_robot_msgsGetIOSignalRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetIOSignalRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetIOSignalRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetIOSignalRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetIOSignalRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetIOSignalRequest
local Ros1Abb_robot_msgsGetIOSignalRequest = classes["Ros1Abb_robot_msgsGetIOSignalRequest"]

--- @class Ros1Abb_robot_msgsGetIOSignalResponse
--- @brief Complete ROS1 abb_robot_msgs/GetIOSignalResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value string Strict UTF-8 without NUL; length0..512 bytes.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsGetIOSignalResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetIOSignalResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetIOSignalResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetIOSignalResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetIOSignalResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetIOSignalResponse.
--- @brief Ros1Abb_robot_msgsGetIOSignalResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetIOSignalResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetIOSignalResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetIOSignalResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetIOSignalResponse.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetIOSignalResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Abb_robot_msgsGetIOSignalResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1034 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetIOSignalResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1034 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetIOSignalResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetIOSignalResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetIOSignalResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetIOSignalResponse
--- @brief Encode a complete Ros1Abb_robot_msgsGetIOSignalResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetIOSignalResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..1034 bytes.
--- @see Ros1Abb_robot_msgsGetIOSignalResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetIOSignalResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetIOSignalResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetIOSignalResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetIOSignalResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetIOSignalResponse
local Ros1Abb_robot_msgsGetIOSignalResponse = classes["Ros1Abb_robot_msgsGetIOSignalResponse"]

--- @class Ros1Abb_robot_msgsRAPIDSymbolPath
--- @brief Complete ROS1 abb_robot_msgs/RAPIDSymbolPath value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field task string Strict UTF-8 without NUL; length0..64 bytes.
--- @field module string Strict UTF-8 without NUL; length0..64 bytes.
--- @field symbol string Strict UTF-8 without NUL; length0..64 bytes.
--- @brief Ros1Abb_robot_msgsRAPIDSymbolPath.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsRAPIDSymbolPath.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsRAPIDSymbolPath.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/RAPIDSymbolPath.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsRAPIDSymbolPath.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/RAPIDSymbolPath.
--- @brief Ros1Abb_robot_msgsRAPIDSymbolPath.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsRAPIDSymbolPath.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsRAPIDSymbolPath.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsRAPIDSymbolPath.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsRAPIDSymbolPath.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsRAPIDSymbolPath.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Abb_robot_msgsRAPIDSymbolPath.MAX_WIRE_BYTES: Inclusive complete maximum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsRAPIDSymbolPath.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 204 bytes.
--- @brief Construct Ros1Abb_robot_msgsRAPIDSymbolPath with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsRAPIDSymbolPath value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsRAPIDSymbolPath.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsRAPIDSymbolPath
--- @brief Encode a complete Ros1Abb_robot_msgsRAPIDSymbolPath value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsRAPIDSymbolPath [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..204 bytes.
--- @see Ros1Abb_robot_msgsRAPIDSymbolPath.decode
--- @field encode fun(value: Ros1Abb_robot_msgsRAPIDSymbolPath): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsRAPIDSymbolPath canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsRAPIDSymbolPath value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsRAPIDSymbolPath.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsRAPIDSymbolPath
local Ros1Abb_robot_msgsRAPIDSymbolPath = classes["Ros1Abb_robot_msgsRAPIDSymbolPath"]

--- @class Ros1Abb_robot_msgsGetRAPIDBoolRequest
--- @brief Complete ROS1 abb_robot_msgs/GetRAPIDBoolRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/RAPIDSymbolPath value; no native fields are projected away.
--- @brief Ros1Abb_robot_msgsGetRAPIDBoolRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetRAPIDBoolRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetRAPIDBoolRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetRAPIDBoolRequest.
--- @brief Ros1Abb_robot_msgsGetRAPIDBoolRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetRAPIDBoolRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetRAPIDBoolRequest.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDBoolRequest.MAX_WIRE_BYTES: Inclusive complete maximum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 204 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetRAPIDBoolRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetRAPIDBoolRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetRAPIDBoolRequest
--- @brief Encode a complete Ros1Abb_robot_msgsGetRAPIDBoolRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetRAPIDBoolRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..204 bytes.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetRAPIDBoolRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetRAPIDBoolRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetRAPIDBoolRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetRAPIDBoolRequest
local Ros1Abb_robot_msgsGetRAPIDBoolRequest = classes["Ros1Abb_robot_msgsGetRAPIDBoolRequest"]

--- @class Ros1Abb_robot_msgsGetRAPIDBoolResponse
--- @brief Complete ROS1 abb_robot_msgs/GetRAPIDBoolResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value boolean Exact boolean; encoded as one byte0/1.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDBoolResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetRAPIDBoolResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetRAPIDBoolResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetRAPIDBoolResponse.
--- @brief Ros1Abb_robot_msgsGetRAPIDBoolResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetRAPIDBoolResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetRAPIDBoolResponse.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDBoolResponse.MAX_WIRE_BYTES: Inclusive complete maximum 519 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 519 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetRAPIDBoolResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetRAPIDBoolResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetRAPIDBoolResponse
--- @brief Encode a complete Ros1Abb_robot_msgsGetRAPIDBoolResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetRAPIDBoolResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..519 bytes.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetRAPIDBoolResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetRAPIDBoolResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetRAPIDBoolResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetRAPIDBoolResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetRAPIDBoolResponse
local Ros1Abb_robot_msgsGetRAPIDBoolResponse = classes["Ros1Abb_robot_msgsGetRAPIDBoolResponse"]

--- @class Ros1Abb_robot_msgsGetRAPIDDnumRequest
--- @brief Complete ROS1 abb_robot_msgs/GetRAPIDDnumRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/RAPIDSymbolPath value; no native fields are projected away.
--- @brief Ros1Abb_robot_msgsGetRAPIDDnumRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetRAPIDDnumRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetRAPIDDnumRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetRAPIDDnumRequest.
--- @brief Ros1Abb_robot_msgsGetRAPIDDnumRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetRAPIDDnumRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetRAPIDDnumRequest.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDDnumRequest.MAX_WIRE_BYTES: Inclusive complete maximum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 204 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetRAPIDDnumRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetRAPIDDnumRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetRAPIDDnumRequest
--- @brief Encode a complete Ros1Abb_robot_msgsGetRAPIDDnumRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetRAPIDDnumRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..204 bytes.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetRAPIDDnumRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetRAPIDDnumRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetRAPIDDnumRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetRAPIDDnumRequest
local Ros1Abb_robot_msgsGetRAPIDDnumRequest = classes["Ros1Abb_robot_msgsGetRAPIDDnumRequest"]

--- @class Ros1Abb_robot_msgsGetRAPIDDnumResponse
--- @brief Complete ROS1 abb_robot_msgs/GetRAPIDDnumResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value number Finite IEEE float64.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDDnumResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetRAPIDDnumResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetRAPIDDnumResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetRAPIDDnumResponse.
--- @brief Ros1Abb_robot_msgsGetRAPIDDnumResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetRAPIDDnumResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetRAPIDDnumResponse.MIN_WIRE_BYTES: Inclusive complete minimum 14 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 14 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDDnumResponse.MAX_WIRE_BYTES: Inclusive complete maximum 526 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 526 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetRAPIDDnumResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetRAPIDDnumResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetRAPIDDnumResponse
--- @brief Encode a complete Ros1Abb_robot_msgsGetRAPIDDnumResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetRAPIDDnumResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 14..526 bytes.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetRAPIDDnumResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetRAPIDDnumResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetRAPIDDnumResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetRAPIDDnumResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetRAPIDDnumResponse
local Ros1Abb_robot_msgsGetRAPIDDnumResponse = classes["Ros1Abb_robot_msgsGetRAPIDDnumResponse"]

--- @class Ros1Abb_robot_msgsGetRAPIDNumRequest
--- @brief Complete ROS1 abb_robot_msgs/GetRAPIDNumRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/RAPIDSymbolPath value; no native fields are projected away.
--- @brief Ros1Abb_robot_msgsGetRAPIDNumRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDNumRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetRAPIDNumRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetRAPIDNumRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDNumRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetRAPIDNumRequest.
--- @brief Ros1Abb_robot_msgsGetRAPIDNumRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDNumRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetRAPIDNumRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDNumRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetRAPIDNumRequest.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDNumRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDNumRequest.MAX_WIRE_BYTES: Inclusive complete maximum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDNumRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 204 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetRAPIDNumRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetRAPIDNumRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetRAPIDNumRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetRAPIDNumRequest
--- @brief Encode a complete Ros1Abb_robot_msgsGetRAPIDNumRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetRAPIDNumRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..204 bytes.
--- @see Ros1Abb_robot_msgsGetRAPIDNumRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetRAPIDNumRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetRAPIDNumRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetRAPIDNumRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetRAPIDNumRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetRAPIDNumRequest
local Ros1Abb_robot_msgsGetRAPIDNumRequest = classes["Ros1Abb_robot_msgsGetRAPIDNumRequest"]

--- @class Ros1Abb_robot_msgsGetRAPIDNumResponse
--- @brief Complete ROS1 abb_robot_msgs/GetRAPIDNumResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDNumResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDNumResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetRAPIDNumResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetRAPIDNumResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDNumResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetRAPIDNumResponse.
--- @brief Ros1Abb_robot_msgsGetRAPIDNumResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDNumResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetRAPIDNumResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDNumResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetRAPIDNumResponse.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDNumResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDNumResponse.MAX_WIRE_BYTES: Inclusive complete maximum 522 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDNumResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 522 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetRAPIDNumResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetRAPIDNumResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetRAPIDNumResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetRAPIDNumResponse
--- @brief Encode a complete Ros1Abb_robot_msgsGetRAPIDNumResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetRAPIDNumResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..522 bytes.
--- @see Ros1Abb_robot_msgsGetRAPIDNumResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetRAPIDNumResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetRAPIDNumResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetRAPIDNumResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetRAPIDNumResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetRAPIDNumResponse
local Ros1Abb_robot_msgsGetRAPIDNumResponse = classes["Ros1Abb_robot_msgsGetRAPIDNumResponse"]

--- @class Ros1Abb_robot_msgsGetRAPIDStringRequest
--- @brief Complete ROS1 abb_robot_msgs/GetRAPIDStringRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/RAPIDSymbolPath value; no native fields are projected away.
--- @brief Ros1Abb_robot_msgsGetRAPIDStringRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDStringRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetRAPIDStringRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetRAPIDStringRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDStringRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetRAPIDStringRequest.
--- @brief Ros1Abb_robot_msgsGetRAPIDStringRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDStringRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetRAPIDStringRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDStringRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetRAPIDStringRequest.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDStringRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDStringRequest.MAX_WIRE_BYTES: Inclusive complete maximum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDStringRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 204 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetRAPIDStringRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetRAPIDStringRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetRAPIDStringRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetRAPIDStringRequest
--- @brief Encode a complete Ros1Abb_robot_msgsGetRAPIDStringRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetRAPIDStringRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..204 bytes.
--- @see Ros1Abb_robot_msgsGetRAPIDStringRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetRAPIDStringRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetRAPIDStringRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetRAPIDStringRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetRAPIDStringRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetRAPIDStringRequest
local Ros1Abb_robot_msgsGetRAPIDStringRequest = classes["Ros1Abb_robot_msgsGetRAPIDStringRequest"]

--- @class Ros1Abb_robot_msgsGetRAPIDStringResponse
--- @brief Complete ROS1 abb_robot_msgs/GetRAPIDStringResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value string Strict UTF-8 without NUL; length0..512 bytes.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDStringResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDStringResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetRAPIDStringResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetRAPIDStringResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDStringResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetRAPIDStringResponse.
--- @brief Ros1Abb_robot_msgsGetRAPIDStringResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDStringResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetRAPIDStringResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDStringResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetRAPIDStringResponse.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDStringResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDStringResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1034 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDStringResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1034 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetRAPIDStringResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetRAPIDStringResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetRAPIDStringResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetRAPIDStringResponse
--- @brief Encode a complete Ros1Abb_robot_msgsGetRAPIDStringResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetRAPIDStringResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..1034 bytes.
--- @see Ros1Abb_robot_msgsGetRAPIDStringResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetRAPIDStringResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetRAPIDStringResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetRAPIDStringResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetRAPIDStringResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetRAPIDStringResponse
local Ros1Abb_robot_msgsGetRAPIDStringResponse = classes["Ros1Abb_robot_msgsGetRAPIDStringResponse"]

--- @class Ros1Abb_robot_msgsGetRAPIDSymbolRequest
--- @brief Complete ROS1 abb_robot_msgs/GetRAPIDSymbolRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/RAPIDSymbolPath value; no native fields are projected away.
--- @brief Ros1Abb_robot_msgsGetRAPIDSymbolRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetRAPIDSymbolRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetRAPIDSymbolRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetRAPIDSymbolRequest.
--- @brief Ros1Abb_robot_msgsGetRAPIDSymbolRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetRAPIDSymbolRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetRAPIDSymbolRequest.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDSymbolRequest.MAX_WIRE_BYTES: Inclusive complete maximum 204 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 204 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetRAPIDSymbolRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetRAPIDSymbolRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetRAPIDSymbolRequest
--- @brief Encode a complete Ros1Abb_robot_msgsGetRAPIDSymbolRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetRAPIDSymbolRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..204 bytes.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetRAPIDSymbolRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetRAPIDSymbolRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetRAPIDSymbolRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetRAPIDSymbolRequest
local Ros1Abb_robot_msgsGetRAPIDSymbolRequest = classes["Ros1Abb_robot_msgsGetRAPIDSymbolRequest"]

--- @class Ros1Abb_robot_msgsGetRAPIDSymbolResponse
--- @brief Complete ROS1 abb_robot_msgs/GetRAPIDSymbolResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value string Strict UTF-8 without NUL; length0..512 bytes.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDSymbolResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetRAPIDSymbolResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetRAPIDSymbolResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetRAPIDSymbolResponse.
--- @brief Ros1Abb_robot_msgsGetRAPIDSymbolResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetRAPIDSymbolResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetRAPIDSymbolResponse.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Abb_robot_msgsGetRAPIDSymbolResponse.MAX_WIRE_BYTES: Inclusive complete maximum 1034 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1034 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetRAPIDSymbolResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetRAPIDSymbolResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetRAPIDSymbolResponse
--- @brief Encode a complete Ros1Abb_robot_msgsGetRAPIDSymbolResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetRAPIDSymbolResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..1034 bytes.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetRAPIDSymbolResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetRAPIDSymbolResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetRAPIDSymbolResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetRAPIDSymbolResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetRAPIDSymbolResponse
local Ros1Abb_robot_msgsGetRAPIDSymbolResponse = classes["Ros1Abb_robot_msgsGetRAPIDSymbolResponse"]

--- @class Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest
--- @brief Complete ROS1 abb_robot_msgs/GetRobotControllerDescriptionRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.ROS_VERSION: Read-only-by-contract backend
--value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetRobotControllerDescriptionRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_robot_msgs/GetRobotControllerDescriptionRequest.
--- @brief Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.NATIVE_IDENTITY: Exact supplied native
--identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest value New mutable complete value; no ROS
--resource.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest
--- @brief Encode a complete Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest value New complete value; failures raise Lua
--errors.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest
local Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest = classes["Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest"]

--- @class Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse
--- @brief Complete ROS1 abb_robot_msgs/GetRobotControllerDescriptionResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field description string Strict UTF-8 without NUL; length0..4096 bytes.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.ROS_VERSION: Read-only-by-contract backend
--value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.NATIVE_TYPE: Exact normalized native type
--name abb_robot_msgs/GetRobotControllerDescriptionResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--abb_robot_msgs/GetRobotControllerDescriptionResponse.
--- @brief Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.NATIVE_IDENTITY: Exact supplied native
--identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.MIN_WIRE_BYTES: Inclusive complete minimum 10
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.MAX_WIRE_BYTES: Inclusive complete maximum
--4618 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4618 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse value New mutable complete value; no ROS
--resource.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse
--- @brief Encode a complete Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse value to canonical LE
--bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 10..4618 bytes.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse value New complete value; failures raise Lua
--errors.
--- @see Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse
local Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse = classes["Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse"]

--- @class Ros1Abb_robot_msgsGetSpeedRatioRequest
--- @brief Complete ROS1 abb_robot_msgs/GetSpeedRatioRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Abb_robot_msgsGetSpeedRatioRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetSpeedRatioRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetSpeedRatioRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetSpeedRatioRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetSpeedRatioRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetSpeedRatioRequest.
--- @brief Ros1Abb_robot_msgsGetSpeedRatioRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetSpeedRatioRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetSpeedRatioRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetSpeedRatioRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetSpeedRatioRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetSpeedRatioRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Abb_robot_msgsGetSpeedRatioRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetSpeedRatioRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetSpeedRatioRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetSpeedRatioRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetSpeedRatioRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetSpeedRatioRequest
--- @brief Encode a complete Ros1Abb_robot_msgsGetSpeedRatioRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetSpeedRatioRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Abb_robot_msgsGetSpeedRatioRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetSpeedRatioRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetSpeedRatioRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetSpeedRatioRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetSpeedRatioRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetSpeedRatioRequest
local Ros1Abb_robot_msgsGetSpeedRatioRequest = classes["Ros1Abb_robot_msgsGetSpeedRatioRequest"]

--- @class Ros1Abb_robot_msgsGetSpeedRatioResponse
--- @brief Complete ROS1 abb_robot_msgs/GetSpeedRatioResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speed_ratio integer Exact uint8 range 0..255.
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsGetSpeedRatioResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetSpeedRatioResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsGetSpeedRatioResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/GetSpeedRatioResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetSpeedRatioResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/GetSpeedRatioResponse.
--- @brief Ros1Abb_robot_msgsGetSpeedRatioResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetSpeedRatioResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsGetSpeedRatioResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetSpeedRatioResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsGetSpeedRatioResponse.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetSpeedRatioResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros1Abb_robot_msgsGetSpeedRatioResponse.MAX_WIRE_BYTES: Inclusive complete maximum 519 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsGetSpeedRatioResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 519 bytes.
--- @brief Construct Ros1Abb_robot_msgsGetSpeedRatioResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsGetSpeedRatioResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsGetSpeedRatioResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsGetSpeedRatioResponse
--- @brief Encode a complete Ros1Abb_robot_msgsGetSpeedRatioResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsGetSpeedRatioResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..519 bytes.
--- @see Ros1Abb_robot_msgsGetSpeedRatioResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsGetSpeedRatioResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsGetSpeedRatioResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsGetSpeedRatioResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsGetSpeedRatioResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsGetSpeedRatioResponse
local Ros1Abb_robot_msgsGetSpeedRatioResponse = classes["Ros1Abb_robot_msgsGetSpeedRatioResponse"]

--- @class Ros1Abb_robot_msgsMechanicalUnitState
--- @brief Complete ROS1 abb_robot_msgs/MechanicalUnitState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field name string Strict UTF-8 without NUL; length0..64 bytes.
--- @field activated boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Abb_robot_msgsMechanicalUnitState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsMechanicalUnitState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsMechanicalUnitState.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/MechanicalUnitState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsMechanicalUnitState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/MechanicalUnitState.
--- @brief Ros1Abb_robot_msgsMechanicalUnitState.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsMechanicalUnitState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsMechanicalUnitState.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsMechanicalUnitState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsMechanicalUnitState.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsMechanicalUnitState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Abb_robot_msgsMechanicalUnitState.MAX_WIRE_BYTES: Inclusive complete maximum 69 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsMechanicalUnitState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 69 bytes.
--- @brief Construct Ros1Abb_robot_msgsMechanicalUnitState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsMechanicalUnitState value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsMechanicalUnitState.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsMechanicalUnitState
--- @brief Encode a complete Ros1Abb_robot_msgsMechanicalUnitState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsMechanicalUnitState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..69 bytes.
--- @see Ros1Abb_robot_msgsMechanicalUnitState.decode
--- @field encode fun(value: Ros1Abb_robot_msgsMechanicalUnitState): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsMechanicalUnitState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsMechanicalUnitState value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsMechanicalUnitState.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsMechanicalUnitState
local Ros1Abb_robot_msgsMechanicalUnitState = classes["Ros1Abb_robot_msgsMechanicalUnitState"]

--- @class Ros1Abb_robot_msgsRAPIDTaskState
--- @brief Complete ROS1 abb_robot_msgs/RAPIDTaskState value and codec.
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
--- @brief Ros1Abb_robot_msgsRAPIDTaskState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsRAPIDTaskState.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/RAPIDTaskState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/RAPIDTaskState.
--- @brief Ros1Abb_robot_msgsRAPIDTaskState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsRAPIDTaskState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsRAPIDTaskState.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros1Abb_robot_msgsRAPIDTaskState.MAX_WIRE_BYTES: Inclusive complete maximum 71 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 71 bytes.
--- @brief Native class constant Ros1Abb_robot_msgsRAPIDTaskState.EXECUTION_STATE_UNKNOWN.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.new
--- @field EXECUTION_STATE_UNKNOWN integer
--- @brief Native class constant Ros1Abb_robot_msgsRAPIDTaskState.EXECUTION_STATE_READY.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.new
--- @field EXECUTION_STATE_READY integer
--- @brief Native class constant Ros1Abb_robot_msgsRAPIDTaskState.EXECUTION_STATE_STOPPED.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.new
--- @field EXECUTION_STATE_STOPPED integer
--- @brief Native class constant Ros1Abb_robot_msgsRAPIDTaskState.EXECUTION_STATE_STARTED.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.new
--- @field EXECUTION_STATE_STARTED integer
--- @brief Native class constant Ros1Abb_robot_msgsRAPIDTaskState.EXECUTION_STATE_UNINITIALIZED.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.new
--- @field EXECUTION_STATE_UNINITIALIZED integer
--- @brief Construct Ros1Abb_robot_msgsRAPIDTaskState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsRAPIDTaskState value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsRAPIDTaskState
--- @brief Encode a complete Ros1Abb_robot_msgsRAPIDTaskState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsRAPIDTaskState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..71 bytes.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.decode
--- @field encode fun(value: Ros1Abb_robot_msgsRAPIDTaskState): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsRAPIDTaskState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsRAPIDTaskState value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsRAPIDTaskState.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsRAPIDTaskState
local Ros1Abb_robot_msgsRAPIDTaskState = classes["Ros1Abb_robot_msgsRAPIDTaskState"]

--- @class Ros1Abb_robot_msgsServiceResponses
--- @brief Complete ROS1 abb_robot_msgs/ServiceResponses value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Abb_robot_msgsServiceResponses.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsServiceResponses.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsServiceResponses.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/ServiceResponses.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsServiceResponses.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/ServiceResponses.
--- @brief Ros1Abb_robot_msgsServiceResponses.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsServiceResponses.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsServiceResponses.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsServiceResponses.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsServiceResponses.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsServiceResponses.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Abb_robot_msgsServiceResponses.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsServiceResponses.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.SUCCESS.
--- @details Original string literal ; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field SUCCESS integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_SUCCESS.
--- @details Original uint16 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_SUCCESS integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.FAILED.
--- @details Original string literal Service failed (e.g. timeout or resource not found, see the DEBUG log for
--details); consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field FAILED integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_FAILED.
--- @details Original uint16 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_FAILED integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.SERVER_IS_BUSY.
--- @details Original string literal Server is busy; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field SERVER_IS_BUSY integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_SERVER_IS_BUSY.
--- @details Original uint16 literal 1001; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_SERVER_IS_BUSY integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.EMPTY_FILENAME.
--- @details Original string literal Filename is empty; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field EMPTY_FILENAME integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_EMPTY_FILENAME.
--- @details Original uint16 literal 2001; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_EMPTY_FILENAME integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.EMPTY_SIGNAL_NAME.
--- @details Original string literal Signal name is empty; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field EMPTY_SIGNAL_NAME integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_EMPTY_SIGNAL_NAME.
--- @details Original uint16 literal 2002; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_EMPTY_SIGNAL_NAME integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.EMPTY_RAPID_TASK_NAME.
--- @details Original string literal RAPID task name is empty; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field EMPTY_RAPID_TASK_NAME integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_EMPTY_RAPID_TASK_NAME.
--- @details Original uint16 literal 2003; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_EMPTY_RAPID_TASK_NAME integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.EMPTY_RAPID_MODULE_NAME.
--- @details Original string literal RAPID module name is empty; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field EMPTY_RAPID_MODULE_NAME integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_EMPTY_RAPID_MODULE_NAME.
--- @details Original uint16 literal 2004; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_EMPTY_RAPID_MODULE_NAME integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.EMPTY_RAPID_SYMBOL_NAME.
--- @details Original string literal RAPID symbol name is empty; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field EMPTY_RAPID_SYMBOL_NAME integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME.
--- @details Original uint16 literal 2005; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_EMPTY_RAPID_SYMBOL_NAME integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.NOT_IN_AUTO_MODE.
--- @details Original string literal Robot controller is not in AUTO mode; consumes no instance wire bytes.
--Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field NOT_IN_AUTO_MODE integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_NOT_IN_AUTO_MODE.
--- @details Original uint16 literal 3001; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_NOT_IN_AUTO_MODE integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.MOTORS_ARE_OFF.
--- @details Original string literal Motors are off; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field MOTORS_ARE_OFF integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_MOTORS_ARE_OFF.
--- @details Original uint16 literal 3002; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_MOTORS_ARE_OFF integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.MOTORS_ARE_ON.
--- @details Original string literal Motors are on; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field MOTORS_ARE_ON integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_MOTORS_ARE_ON.
--- @details Original uint16 literal 3003; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_MOTORS_ARE_ON integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RAPID_NOT_STOPPED.
--- @details Original string literal RAPID has not been stopped; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RAPID_NOT_STOPPED integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_RAPID_NOT_STOPPED.
--- @details Original uint16 literal 3004; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_RAPID_NOT_STOPPED integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RAPID_NOT_RUNNING.
--- @details Original string literal RAPID is not running; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RAPID_NOT_RUNNING integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_RAPID_NOT_RUNNING.
--- @details Original uint16 literal 3005; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_RAPID_NOT_RUNNING integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.SM_RUNTIME_STATES_MISSING.
--- @details Original string literal No runtime states received for any StateMachine Add-In instance; consumes
--no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field SM_RUNTIME_STATES_MISSING integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_SM_RUNTIME_STATES_MISSING.
--- @details Original uint16 literal 4001; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_SM_RUNTIME_STATES_MISSING integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.SM_UNKNOWN_RAPID_TASK.
--- @details Original string literal RAPID task not found among known StateMachine Add-In instances; consumes no
--instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field SM_UNKNOWN_RAPID_TASK integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_SM_UNKNOWN_RAPID_TASK.
--- @details Original uint16 literal 4002; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_SM_UNKNOWN_RAPID_TASK integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.SM_UNINITIALIZED.
--- @details Original string literal StateMachine Add-In instance has not been initialized; consumes no instance
--wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field SM_UNINITIALIZED integer
--- @brief Native class constant Ros1Abb_robot_msgsServiceResponses.RC_SM_UNINITIALIZED.
--- @details Original uint16 literal 4003; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Abb_robot_msgsServiceResponses.new
--- @field RC_SM_UNINITIALIZED integer
--- @brief Construct Ros1Abb_robot_msgsServiceResponses with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsServiceResponses value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsServiceResponses.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsServiceResponses
--- @brief Encode a complete Ros1Abb_robot_msgsServiceResponses value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsServiceResponses [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Abb_robot_msgsServiceResponses.decode
--- @field encode fun(value: Ros1Abb_robot_msgsServiceResponses): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsServiceResponses canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsServiceResponses value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsServiceResponses.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsServiceResponses
local Ros1Abb_robot_msgsServiceResponses = classes["Ros1Abb_robot_msgsServiceResponses"]

--- @class Ros1Abb_robot_msgsSetFileContentsRequest
--- @brief Complete ROS1 abb_robot_msgs/SetFileContentsRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field filename string Strict UTF-8 without NUL; length0..512 bytes.
--- @field contents string Strict UTF-8 without NUL; length0..4096 bytes.
--- @brief Ros1Abb_robot_msgsSetFileContentsRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetFileContentsRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetFileContentsRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetFileContentsRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetFileContentsRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetFileContentsRequest.
--- @brief Ros1Abb_robot_msgsSetFileContentsRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetFileContentsRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetFileContentsRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetFileContentsRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetFileContentsRequest.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetFileContentsRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Abb_robot_msgsSetFileContentsRequest.MAX_WIRE_BYTES: Inclusive complete maximum 4616 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetFileContentsRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4616 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetFileContentsRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetFileContentsRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetFileContentsRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetFileContentsRequest
--- @brief Encode a complete Ros1Abb_robot_msgsSetFileContentsRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetFileContentsRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..4616 bytes.
--- @see Ros1Abb_robot_msgsSetFileContentsRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetFileContentsRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetFileContentsRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetFileContentsRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetFileContentsRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetFileContentsRequest
local Ros1Abb_robot_msgsSetFileContentsRequest = classes["Ros1Abb_robot_msgsSetFileContentsRequest"]

--- @class Ros1Abb_robot_msgsSetFileContentsResponse
--- @brief Complete ROS1 abb_robot_msgs/SetFileContentsResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsSetFileContentsResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetFileContentsResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetFileContentsResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetFileContentsResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetFileContentsResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetFileContentsResponse.
--- @brief Ros1Abb_robot_msgsSetFileContentsResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetFileContentsResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetFileContentsResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetFileContentsResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetFileContentsResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetFileContentsResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_robot_msgsSetFileContentsResponse.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetFileContentsResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetFileContentsResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetFileContentsResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetFileContentsResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetFileContentsResponse
--- @brief Encode a complete Ros1Abb_robot_msgsSetFileContentsResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetFileContentsResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_robot_msgsSetFileContentsResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetFileContentsResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetFileContentsResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetFileContentsResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetFileContentsResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetFileContentsResponse
local Ros1Abb_robot_msgsSetFileContentsResponse = classes["Ros1Abb_robot_msgsSetFileContentsResponse"]

--- @class Ros1Abb_robot_msgsSetIOSignalRequest
--- @brief Complete ROS1 abb_robot_msgs/SetIOSignalRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field signal string Strict UTF-8 without NUL; length0..512 bytes.
--- @field value string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsSetIOSignalRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetIOSignalRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetIOSignalRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetIOSignalRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetIOSignalRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetIOSignalRequest.
--- @brief Ros1Abb_robot_msgsSetIOSignalRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetIOSignalRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetIOSignalRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetIOSignalRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetIOSignalRequest.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetIOSignalRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Abb_robot_msgsSetIOSignalRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1032 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetIOSignalRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1032 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetIOSignalRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetIOSignalRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetIOSignalRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetIOSignalRequest
--- @brief Encode a complete Ros1Abb_robot_msgsSetIOSignalRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetIOSignalRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..1032 bytes.
--- @see Ros1Abb_robot_msgsSetIOSignalRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetIOSignalRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetIOSignalRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetIOSignalRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetIOSignalRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetIOSignalRequest
local Ros1Abb_robot_msgsSetIOSignalRequest = classes["Ros1Abb_robot_msgsSetIOSignalRequest"]

--- @class Ros1Abb_robot_msgsSetIOSignalResponse
--- @brief Complete ROS1 abb_robot_msgs/SetIOSignalResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsSetIOSignalResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetIOSignalResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetIOSignalResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetIOSignalResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetIOSignalResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetIOSignalResponse.
--- @brief Ros1Abb_robot_msgsSetIOSignalResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetIOSignalResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetIOSignalResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetIOSignalResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetIOSignalResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetIOSignalResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_robot_msgsSetIOSignalResponse.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetIOSignalResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetIOSignalResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetIOSignalResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetIOSignalResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetIOSignalResponse
--- @brief Encode a complete Ros1Abb_robot_msgsSetIOSignalResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetIOSignalResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_robot_msgsSetIOSignalResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetIOSignalResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetIOSignalResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetIOSignalResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetIOSignalResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetIOSignalResponse
local Ros1Abb_robot_msgsSetIOSignalResponse = classes["Ros1Abb_robot_msgsSetIOSignalResponse"]

--- @class Ros1Abb_robot_msgsSetRAPIDBoolRequest
--- @brief Complete ROS1 abb_robot_msgs/SetRAPIDBoolRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/RAPIDSymbolPath value; no native fields are projected away.
--- @field value boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Abb_robot_msgsSetRAPIDBoolRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetRAPIDBoolRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetRAPIDBoolRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetRAPIDBoolRequest.
--- @brief Ros1Abb_robot_msgsSetRAPIDBoolRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetRAPIDBoolRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetRAPIDBoolRequest.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDBoolRequest.MAX_WIRE_BYTES: Inclusive complete maximum 205 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 205 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetRAPIDBoolRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetRAPIDBoolRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetRAPIDBoolRequest
--- @brief Encode a complete Ros1Abb_robot_msgsSetRAPIDBoolRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetRAPIDBoolRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..205 bytes.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetRAPIDBoolRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetRAPIDBoolRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetRAPIDBoolRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetRAPIDBoolRequest
local Ros1Abb_robot_msgsSetRAPIDBoolRequest = classes["Ros1Abb_robot_msgsSetRAPIDBoolRequest"]

--- @class Ros1Abb_robot_msgsSetRAPIDBoolResponse
--- @brief Complete ROS1 abb_robot_msgs/SetRAPIDBoolResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDBoolResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetRAPIDBoolResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetRAPIDBoolResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetRAPIDBoolResponse.
--- @brief Ros1Abb_robot_msgsSetRAPIDBoolResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetRAPIDBoolResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetRAPIDBoolResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDBoolResponse.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetRAPIDBoolResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetRAPIDBoolResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetRAPIDBoolResponse
--- @brief Encode a complete Ros1Abb_robot_msgsSetRAPIDBoolResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetRAPIDBoolResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetRAPIDBoolResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetRAPIDBoolResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetRAPIDBoolResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetRAPIDBoolResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetRAPIDBoolResponse
local Ros1Abb_robot_msgsSetRAPIDBoolResponse = classes["Ros1Abb_robot_msgsSetRAPIDBoolResponse"]

--- @class Ros1Abb_robot_msgsSetRAPIDDnumRequest
--- @brief Complete ROS1 abb_robot_msgs/SetRAPIDDnumRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/RAPIDSymbolPath value; no native fields are projected away.
--- @field value number Finite IEEE float64.
--- @brief Ros1Abb_robot_msgsSetRAPIDDnumRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetRAPIDDnumRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetRAPIDDnumRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetRAPIDDnumRequest.
--- @brief Ros1Abb_robot_msgsSetRAPIDDnumRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetRAPIDDnumRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetRAPIDDnumRequest.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDDnumRequest.MAX_WIRE_BYTES: Inclusive complete maximum 212 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 212 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetRAPIDDnumRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetRAPIDDnumRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetRAPIDDnumRequest
--- @brief Encode a complete Ros1Abb_robot_msgsSetRAPIDDnumRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetRAPIDDnumRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..212 bytes.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetRAPIDDnumRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetRAPIDDnumRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetRAPIDDnumRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetRAPIDDnumRequest
local Ros1Abb_robot_msgsSetRAPIDDnumRequest = classes["Ros1Abb_robot_msgsSetRAPIDDnumRequest"]

--- @class Ros1Abb_robot_msgsSetRAPIDDnumResponse
--- @brief Complete ROS1 abb_robot_msgs/SetRAPIDDnumResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDDnumResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetRAPIDDnumResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetRAPIDDnumResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetRAPIDDnumResponse.
--- @brief Ros1Abb_robot_msgsSetRAPIDDnumResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetRAPIDDnumResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetRAPIDDnumResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDDnumResponse.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetRAPIDDnumResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetRAPIDDnumResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetRAPIDDnumResponse
--- @brief Encode a complete Ros1Abb_robot_msgsSetRAPIDDnumResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetRAPIDDnumResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetRAPIDDnumResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetRAPIDDnumResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetRAPIDDnumResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetRAPIDDnumResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetRAPIDDnumResponse
local Ros1Abb_robot_msgsSetRAPIDDnumResponse = classes["Ros1Abb_robot_msgsSetRAPIDDnumResponse"]

--- @class Ros1Abb_robot_msgsSetRAPIDNumRequest
--- @brief Complete ROS1 abb_robot_msgs/SetRAPIDNumRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/RAPIDSymbolPath value; no native fields are projected away.
--- @field value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros1Abb_robot_msgsSetRAPIDNumRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDNumRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetRAPIDNumRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetRAPIDNumRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDNumRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetRAPIDNumRequest.
--- @brief Ros1Abb_robot_msgsSetRAPIDNumRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDNumRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetRAPIDNumRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDNumRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetRAPIDNumRequest.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDNumRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDNumRequest.MAX_WIRE_BYTES: Inclusive complete maximum 208 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDNumRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 208 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetRAPIDNumRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetRAPIDNumRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetRAPIDNumRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetRAPIDNumRequest
--- @brief Encode a complete Ros1Abb_robot_msgsSetRAPIDNumRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetRAPIDNumRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..208 bytes.
--- @see Ros1Abb_robot_msgsSetRAPIDNumRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetRAPIDNumRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetRAPIDNumRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetRAPIDNumRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetRAPIDNumRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetRAPIDNumRequest
local Ros1Abb_robot_msgsSetRAPIDNumRequest = classes["Ros1Abb_robot_msgsSetRAPIDNumRequest"]

--- @class Ros1Abb_robot_msgsSetRAPIDNumResponse
--- @brief Complete ROS1 abb_robot_msgs/SetRAPIDNumResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDNumResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDNumResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetRAPIDNumResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetRAPIDNumResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDNumResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetRAPIDNumResponse.
--- @brief Ros1Abb_robot_msgsSetRAPIDNumResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDNumResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetRAPIDNumResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDNumResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetRAPIDNumResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDNumResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDNumResponse.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDNumResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetRAPIDNumResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetRAPIDNumResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetRAPIDNumResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetRAPIDNumResponse
--- @brief Encode a complete Ros1Abb_robot_msgsSetRAPIDNumResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetRAPIDNumResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_robot_msgsSetRAPIDNumResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetRAPIDNumResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetRAPIDNumResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetRAPIDNumResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetRAPIDNumResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetRAPIDNumResponse
local Ros1Abb_robot_msgsSetRAPIDNumResponse = classes["Ros1Abb_robot_msgsSetRAPIDNumResponse"]

--- @class Ros1Abb_robot_msgsSetRAPIDStringRequest
--- @brief Complete ROS1 abb_robot_msgs/SetRAPIDStringRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/RAPIDSymbolPath value; no native fields are projected away.
--- @field value string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDStringRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDStringRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetRAPIDStringRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetRAPIDStringRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDStringRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetRAPIDStringRequest.
--- @brief Ros1Abb_robot_msgsSetRAPIDStringRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDStringRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetRAPIDStringRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDStringRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetRAPIDStringRequest.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDStringRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDStringRequest.MAX_WIRE_BYTES: Inclusive complete maximum 720 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDStringRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 720 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetRAPIDStringRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetRAPIDStringRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetRAPIDStringRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetRAPIDStringRequest
--- @brief Encode a complete Ros1Abb_robot_msgsSetRAPIDStringRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetRAPIDStringRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..720 bytes.
--- @see Ros1Abb_robot_msgsSetRAPIDStringRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetRAPIDStringRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetRAPIDStringRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetRAPIDStringRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetRAPIDStringRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetRAPIDStringRequest
local Ros1Abb_robot_msgsSetRAPIDStringRequest = classes["Ros1Abb_robot_msgsSetRAPIDStringRequest"]

--- @class Ros1Abb_robot_msgsSetRAPIDStringResponse
--- @brief Complete ROS1 abb_robot_msgs/SetRAPIDStringResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDStringResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDStringResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetRAPIDStringResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetRAPIDStringResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDStringResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetRAPIDStringResponse.
--- @brief Ros1Abb_robot_msgsSetRAPIDStringResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDStringResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetRAPIDStringResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDStringResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetRAPIDStringResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDStringResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDStringResponse.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDStringResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetRAPIDStringResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetRAPIDStringResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetRAPIDStringResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetRAPIDStringResponse
--- @brief Encode a complete Ros1Abb_robot_msgsSetRAPIDStringResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetRAPIDStringResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_robot_msgsSetRAPIDStringResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetRAPIDStringResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetRAPIDStringResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetRAPIDStringResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetRAPIDStringResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetRAPIDStringResponse
local Ros1Abb_robot_msgsSetRAPIDStringResponse = classes["Ros1Abb_robot_msgsSetRAPIDStringResponse"]

--- @class Ros1Abb_robot_msgsSetRAPIDSymbolRequest
--- @brief Complete ROS1 abb_robot_msgs/SetRAPIDSymbolRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field path table Complete nested abb_robot_msgs/RAPIDSymbolPath value; no native fields are projected away.
--- @field value string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDSymbolRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetRAPIDSymbolRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetRAPIDSymbolRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetRAPIDSymbolRequest.
--- @brief Ros1Abb_robot_msgsSetRAPIDSymbolRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetRAPIDSymbolRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetRAPIDSymbolRequest.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDSymbolRequest.MAX_WIRE_BYTES: Inclusive complete maximum 720 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 720 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetRAPIDSymbolRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetRAPIDSymbolRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetRAPIDSymbolRequest
--- @brief Encode a complete Ros1Abb_robot_msgsSetRAPIDSymbolRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetRAPIDSymbolRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..720 bytes.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetRAPIDSymbolRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetRAPIDSymbolRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetRAPIDSymbolRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetRAPIDSymbolRequest
local Ros1Abb_robot_msgsSetRAPIDSymbolRequest = classes["Ros1Abb_robot_msgsSetRAPIDSymbolRequest"]

--- @class Ros1Abb_robot_msgsSetRAPIDSymbolResponse
--- @brief Complete ROS1 abb_robot_msgs/SetRAPIDSymbolResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDSymbolResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetRAPIDSymbolResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetRAPIDSymbolResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetRAPIDSymbolResponse.
--- @brief Ros1Abb_robot_msgsSetRAPIDSymbolResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetRAPIDSymbolResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetRAPIDSymbolResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_robot_msgsSetRAPIDSymbolResponse.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetRAPIDSymbolResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetRAPIDSymbolResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetRAPIDSymbolResponse
--- @brief Encode a complete Ros1Abb_robot_msgsSetRAPIDSymbolResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetRAPIDSymbolResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetRAPIDSymbolResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetRAPIDSymbolResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetRAPIDSymbolResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetRAPIDSymbolResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetRAPIDSymbolResponse
local Ros1Abb_robot_msgsSetRAPIDSymbolResponse = classes["Ros1Abb_robot_msgsSetRAPIDSymbolResponse"]

--- @class Ros1Abb_robot_msgsSetSpeedRatioRequest
--- @brief Complete ROS1 abb_robot_msgs/SetSpeedRatioRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field speed_ratio integer Exact uint8 range 0..255.
--- @brief Ros1Abb_robot_msgsSetSpeedRatioRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetSpeedRatioRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetSpeedRatioRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetSpeedRatioRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetSpeedRatioRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetSpeedRatioRequest.
--- @brief Ros1Abb_robot_msgsSetSpeedRatioRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetSpeedRatioRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetSpeedRatioRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetSpeedRatioRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetSpeedRatioRequest.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetSpeedRatioRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Abb_robot_msgsSetSpeedRatioRequest.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetSpeedRatioRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetSpeedRatioRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetSpeedRatioRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetSpeedRatioRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetSpeedRatioRequest
--- @brief Encode a complete Ros1Abb_robot_msgsSetSpeedRatioRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetSpeedRatioRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Abb_robot_msgsSetSpeedRatioRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetSpeedRatioRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetSpeedRatioRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetSpeedRatioRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetSpeedRatioRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetSpeedRatioRequest
local Ros1Abb_robot_msgsSetSpeedRatioRequest = classes["Ros1Abb_robot_msgsSetSpeedRatioRequest"]

--- @class Ros1Abb_robot_msgsSetSpeedRatioResponse
--- @brief Complete ROS1 abb_robot_msgs/SetSpeedRatioResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsSetSpeedRatioResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetSpeedRatioResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSetSpeedRatioResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SetSpeedRatioResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetSpeedRatioResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SetSpeedRatioResponse.
--- @brief Ros1Abb_robot_msgsSetSpeedRatioResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetSpeedRatioResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSetSpeedRatioResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetSpeedRatioResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSetSpeedRatioResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetSpeedRatioResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_robot_msgsSetSpeedRatioResponse.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSetSpeedRatioResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros1Abb_robot_msgsSetSpeedRatioResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSetSpeedRatioResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSetSpeedRatioResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSetSpeedRatioResponse
--- @brief Encode a complete Ros1Abb_robot_msgsSetSpeedRatioResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSetSpeedRatioResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_robot_msgsSetSpeedRatioResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSetSpeedRatioResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSetSpeedRatioResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSetSpeedRatioResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSetSpeedRatioResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSetSpeedRatioResponse
local Ros1Abb_robot_msgsSetSpeedRatioResponse = classes["Ros1Abb_robot_msgsSetSpeedRatioResponse"]

--- @class Ros1Abb_robot_msgsSystemState
--- @brief Complete ROS1 abb_robot_msgs/SystemState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/Header value; no native fields are projected away.
--- @field motors_on boolean Exact boolean; encoded as one byte0/1.
--- @field auto_mode boolean Exact boolean; encoded as one byte0/1.
--- @field rapid_running boolean Exact boolean; encoded as one byte0/1.
--- @field rapid_tasks table[] Complete nested abb_robot_msgs/RAPIDTaskState value; no native fields are
--projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field mechanical_units table[] Complete nested abb_robot_msgs/MechanicalUnitState value; no native fields
--are projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Abb_robot_msgsSystemState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSystemState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsSystemState.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/SystemState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSystemState.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/SystemState.
--- @brief Ros1Abb_robot_msgsSystemState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSystemState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsSystemState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSystemState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsSystemState.MIN_WIRE_BYTES: Inclusive complete minimum 27 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSystemState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 27 bytes.
--- @brief Ros1Abb_robot_msgsSystemState.MAX_WIRE_BYTES: Inclusive complete maximum 2331 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsSystemState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2331 bytes.
--- @brief Construct Ros1Abb_robot_msgsSystemState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsSystemState value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsSystemState.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsSystemState
--- @brief Encode a complete Ros1Abb_robot_msgsSystemState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsSystemState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 27..2331 bytes.
--- @see Ros1Abb_robot_msgsSystemState.decode
--- @field encode fun(value: Ros1Abb_robot_msgsSystemState): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsSystemState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsSystemState value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsSystemState.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsSystemState
local Ros1Abb_robot_msgsSystemState = classes["Ros1Abb_robot_msgsSystemState"]

--- @class Ros1Abb_robot_msgsTriggerWithResultCodeRequest
--- @brief Complete ROS1 abb_robot_msgs/TriggerWithResultCodeRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Abb_robot_msgsTriggerWithResultCodeRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsTriggerWithResultCodeRequest.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/TriggerWithResultCodeRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/TriggerWithResultCodeRequest.
--- @brief Ros1Abb_robot_msgsTriggerWithResultCodeRequest.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsTriggerWithResultCodeRequest.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsTriggerWithResultCodeRequest.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Abb_robot_msgsTriggerWithResultCodeRequest.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Abb_robot_msgsTriggerWithResultCodeRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsTriggerWithResultCodeRequest value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeRequest.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsTriggerWithResultCodeRequest
--- @brief Encode a complete Ros1Abb_robot_msgsTriggerWithResultCodeRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsTriggerWithResultCodeRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeRequest.decode
--- @field encode fun(value: Ros1Abb_robot_msgsTriggerWithResultCodeRequest): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsTriggerWithResultCodeRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsTriggerWithResultCodeRequest value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeRequest.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsTriggerWithResultCodeRequest
local Ros1Abb_robot_msgsTriggerWithResultCodeRequest = classes["Ros1Abb_robot_msgsTriggerWithResultCodeRequest"]

--- @class Ros1Abb_robot_msgsTriggerWithResultCodeResponse
--- @brief Complete ROS1 abb_robot_msgs/TriggerWithResultCodeResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint16 range 0..65535.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros1Abb_robot_msgsTriggerWithResultCodeResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Abb_robot_msgsTriggerWithResultCodeResponse.NATIVE_TYPE: Exact normalized native type name
--abb_robot_msgs/TriggerWithResultCodeResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name abb_robot_msgs/TriggerWithResultCodeResponse.
--- @brief Ros1Abb_robot_msgsTriggerWithResultCodeResponse.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Abb_robot_msgsTriggerWithResultCodeResponse.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Abb_robot_msgsTriggerWithResultCodeResponse.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros1Abb_robot_msgsTriggerWithResultCodeResponse.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros1Abb_robot_msgsTriggerWithResultCodeResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Abb_robot_msgsTriggerWithResultCodeResponse value New mutable complete value; no ROS resource.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeResponse.encode
--- @field new fun(values?: table): Ros1Abb_robot_msgsTriggerWithResultCodeResponse
--- @brief Encode a complete Ros1Abb_robot_msgsTriggerWithResultCodeResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Abb_robot_msgsTriggerWithResultCodeResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeResponse.decode
--- @field encode fun(value: Ros1Abb_robot_msgsTriggerWithResultCodeResponse): string
--- @brief Decode exactly one complete Ros1Abb_robot_msgsTriggerWithResultCodeResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Abb_robot_msgsTriggerWithResultCodeResponse value New complete value; failures raise Lua errors.
--- @see Ros1Abb_robot_msgsTriggerWithResultCodeResponse.encode
--- @field decode fun(bytes: string): Ros1Abb_robot_msgsTriggerWithResultCodeResponse
local Ros1Abb_robot_msgsTriggerWithResultCodeResponse = classes["Ros1Abb_robot_msgsTriggerWithResultCodeResponse"]

--- @class Ros1Duration
--- @brief Complete ROS1 duration value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field sec integer Exact int32 range -2147483648..2147483647. Whole seconds; signedness/range follow the
--native scalar above.
--- @field nsec integer Exact int32 range -2147483648..2147483647. Normalized fractional nanoseconds,
--inclusive0..999999999.
--- @brief Ros1Duration.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Duration.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Duration.NATIVE_TYPE: Exact normalized native type name duration.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Duration.encode
--- @field NATIVE_TYPE string Exact normalized native type name duration.
--- @brief Ros1Duration.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Duration.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Duration.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Duration.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Duration.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Duration.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Duration.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Duration.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros1Duration with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Duration value New mutable complete value; no ROS resource.
--- @see Ros1Duration.encode
--- @field new fun(values?: table): Ros1Duration
--- @brief Encode a complete Ros1Duration value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Duration [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros1Duration.decode
--- @field encode fun(value: Ros1Duration): string
--- @brief Decode exactly one complete Ros1Duration canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Duration value New complete value; failures raise Lua errors.
--- @see Ros1Duration.encode
--- @field decode fun(bytes: string): Ros1Duration
local Ros1Duration = classes["Ros1Duration"]

--- @class Ros1Trajectory_msgsJointTrajectoryPoint
--- @brief Complete ROS1 trajectory_msgs/JointTrajectoryPoint value and codec.
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
--- @field time_from_start table Complete nested duration value; no native fields are projected away.
--- @brief Ros1Trajectory_msgsJointTrajectoryPoint.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Trajectory_msgsJointTrajectoryPoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Trajectory_msgsJointTrajectoryPoint.NATIVE_TYPE: Exact normalized native type name
--trajectory_msgs/JointTrajectoryPoint.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Trajectory_msgsJointTrajectoryPoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name trajectory_msgs/JointTrajectoryPoint.
--- @brief Ros1Trajectory_msgsJointTrajectoryPoint.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Trajectory_msgsJointTrajectoryPoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Trajectory_msgsJointTrajectoryPoint.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Trajectory_msgsJointTrajectoryPoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Trajectory_msgsJointTrajectoryPoint.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Trajectory_msgsJointTrajectoryPoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Trajectory_msgsJointTrajectoryPoint.MAX_WIRE_BYTES: Inclusive complete maximum 408 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Trajectory_msgsJointTrajectoryPoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 408 bytes.
--- @brief Construct Ros1Trajectory_msgsJointTrajectoryPoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Trajectory_msgsJointTrajectoryPoint value New mutable complete value; no ROS resource.
--- @see Ros1Trajectory_msgsJointTrajectoryPoint.encode
--- @field new fun(values?: table): Ros1Trajectory_msgsJointTrajectoryPoint
--- @brief Encode a complete Ros1Trajectory_msgsJointTrajectoryPoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Trajectory_msgsJointTrajectoryPoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..408 bytes.
--- @see Ros1Trajectory_msgsJointTrajectoryPoint.decode
--- @field encode fun(value: Ros1Trajectory_msgsJointTrajectoryPoint): string
--- @brief Decode exactly one complete Ros1Trajectory_msgsJointTrajectoryPoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Trajectory_msgsJointTrajectoryPoint value New complete value; failures raise Lua errors.
--- @see Ros1Trajectory_msgsJointTrajectoryPoint.encode
--- @field decode fun(bytes: string): Ros1Trajectory_msgsJointTrajectoryPoint
local Ros1Trajectory_msgsJointTrajectoryPoint = classes["Ros1Trajectory_msgsJointTrajectoryPoint"]

--- @class Ros1Trajectory_msgsJointTrajectory
--- @brief Complete ROS1 trajectory_msgs/JointTrajectory value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/Header value; no native fields are projected away.
--- @field joint_names string[] Strict UTF-8 without NUL; length0..64 bytes. At most 12 contiguous elements;
--holes and extra array keys are rejected.
--- @field points table[] Complete nested trajectory_msgs/JointTrajectoryPoint value; no native fields are
--projected away. At most 8 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Trajectory_msgsJointTrajectory.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Trajectory_msgsJointTrajectory.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Trajectory_msgsJointTrajectory.NATIVE_TYPE: Exact normalized native type name
--trajectory_msgs/JointTrajectory.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Trajectory_msgsJointTrajectory.encode
--- @field NATIVE_TYPE string Exact normalized native type name trajectory_msgs/JointTrajectory.
--- @brief Ros1Trajectory_msgsJointTrajectory.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Trajectory_msgsJointTrajectory.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Trajectory_msgsJointTrajectory.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Trajectory_msgsJointTrajectory.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Trajectory_msgsJointTrajectory.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Trajectory_msgsJointTrajectory.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Trajectory_msgsJointTrajectory.MAX_WIRE_BYTES: Inclusive complete maximum 4168 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Trajectory_msgsJointTrajectory.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4168 bytes.
--- @brief Construct Ros1Trajectory_msgsJointTrajectory with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Trajectory_msgsJointTrajectory value New mutable complete value; no ROS resource.
--- @see Ros1Trajectory_msgsJointTrajectory.encode
--- @field new fun(values?: table): Ros1Trajectory_msgsJointTrajectory
--- @brief Encode a complete Ros1Trajectory_msgsJointTrajectory value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Trajectory_msgsJointTrajectory [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..4168 bytes.
--- @see Ros1Trajectory_msgsJointTrajectory.decode
--- @field encode fun(value: Ros1Trajectory_msgsJointTrajectory): string
--- @brief Decode exactly one complete Ros1Trajectory_msgsJointTrajectory canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Trajectory_msgsJointTrajectory value New complete value; failures raise Lua errors.
--- @see Ros1Trajectory_msgsJointTrajectory.encode
--- @field decode fun(bytes: string): Ros1Trajectory_msgsJointTrajectory
local Ros1Trajectory_msgsJointTrajectory = classes["Ros1Trajectory_msgsJointTrajectory"]

--- @class Ros1Control_msgsJointTolerance
--- @brief Complete ROS1 control_msgs/JointTolerance value and codec.
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
--- @brief Ros1Control_msgsJointTolerance.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsJointTolerance.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Control_msgsJointTolerance.NATIVE_TYPE: Exact normalized native type name
--control_msgs/JointTolerance.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsJointTolerance.encode
--- @field NATIVE_TYPE string Exact normalized native type name control_msgs/JointTolerance.
--- @brief Ros1Control_msgsJointTolerance.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsJointTolerance.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Control_msgsJointTolerance.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsJointTolerance.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Control_msgsJointTolerance.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsJointTolerance.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros1Control_msgsJointTolerance.MAX_WIRE_BYTES: Inclusive complete maximum 92 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsJointTolerance.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 92 bytes.
--- @brief Construct Ros1Control_msgsJointTolerance with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Control_msgsJointTolerance value New mutable complete value; no ROS resource.
--- @see Ros1Control_msgsJointTolerance.encode
--- @field new fun(values?: table): Ros1Control_msgsJointTolerance
--- @brief Encode a complete Ros1Control_msgsJointTolerance value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Control_msgsJointTolerance [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..92 bytes.
--- @see Ros1Control_msgsJointTolerance.decode
--- @field encode fun(value: Ros1Control_msgsJointTolerance): string
--- @brief Decode exactly one complete Ros1Control_msgsJointTolerance canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Control_msgsJointTolerance value New complete value; failures raise Lua errors.
--- @see Ros1Control_msgsJointTolerance.encode
--- @field decode fun(bytes: string): Ros1Control_msgsJointTolerance
local Ros1Control_msgsJointTolerance = classes["Ros1Control_msgsJointTolerance"]

--- @class Ros1Control_msgsFollowJointTrajectoryGoal
--- @brief Complete ROS1 control_msgs/FollowJointTrajectoryGoal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field trajectory table Complete nested trajectory_msgs/JointTrajectory value; no native fields are
--projected away.
--- @field path_tolerance table[] Complete nested control_msgs/JointTolerance value; no native fields are
--projected away. At most 12 contiguous elements; holes and extra array keys are rejected.
--- @field goal_tolerance table[] Complete nested control_msgs/JointTolerance value; no native fields are
--projected away. At most 12 contiguous elements; holes and extra array keys are rejected.
--- @field goal_time_tolerance table Complete nested duration value; no native fields are projected away.
--- @brief Ros1Control_msgsFollowJointTrajectoryGoal.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryGoal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Control_msgsFollowJointTrajectoryGoal.NATIVE_TYPE: Exact normalized native type name
--control_msgs/FollowJointTrajectoryGoal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryGoal.encode
--- @field NATIVE_TYPE string Exact normalized native type name control_msgs/FollowJointTrajectoryGoal.
--- @brief Ros1Control_msgsFollowJointTrajectoryGoal.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryGoal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Control_msgsFollowJointTrajectoryGoal.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryGoal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Control_msgsFollowJointTrajectoryGoal.MIN_WIRE_BYTES: Inclusive complete minimum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryGoal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 40 bytes.
--- @brief Ros1Control_msgsFollowJointTrajectoryGoal.MAX_WIRE_BYTES: Inclusive complete maximum 6392 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryGoal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 6392 bytes.
--- @brief Construct Ros1Control_msgsFollowJointTrajectoryGoal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Control_msgsFollowJointTrajectoryGoal value New mutable complete value; no ROS resource.
--- @see Ros1Control_msgsFollowJointTrajectoryGoal.encode
--- @field new fun(values?: table): Ros1Control_msgsFollowJointTrajectoryGoal
--- @brief Encode a complete Ros1Control_msgsFollowJointTrajectoryGoal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Control_msgsFollowJointTrajectoryGoal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 40..6392 bytes.
--- @see Ros1Control_msgsFollowJointTrajectoryGoal.decode
--- @field encode fun(value: Ros1Control_msgsFollowJointTrajectoryGoal): string
--- @brief Decode exactly one complete Ros1Control_msgsFollowJointTrajectoryGoal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Control_msgsFollowJointTrajectoryGoal value New complete value; failures raise Lua errors.
--- @see Ros1Control_msgsFollowJointTrajectoryGoal.encode
--- @field decode fun(bytes: string): Ros1Control_msgsFollowJointTrajectoryGoal
local Ros1Control_msgsFollowJointTrajectoryGoal = classes["Ros1Control_msgsFollowJointTrajectoryGoal"]

--- @class Ros1Control_msgsFollowJointTrajectoryResult
--- @brief Complete ROS1 control_msgs/FollowJointTrajectoryResult value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field error_code integer Exact int32 range -2147483648..2147483647.
--- @field error_string string Strict UTF-8 without NUL; length0..4096 bytes.
--- @brief Ros1Control_msgsFollowJointTrajectoryResult.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Control_msgsFollowJointTrajectoryResult.NATIVE_TYPE: Exact normalized native type name
--control_msgs/FollowJointTrajectoryResult.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.encode
--- @field NATIVE_TYPE string Exact normalized native type name control_msgs/FollowJointTrajectoryResult.
--- @brief Ros1Control_msgsFollowJointTrajectoryResult.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Control_msgsFollowJointTrajectoryResult.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Control_msgsFollowJointTrajectoryResult.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros1Control_msgsFollowJointTrajectoryResult.MAX_WIRE_BYTES: Inclusive complete maximum 4104 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4104 bytes.
--- @brief Native class constant Ros1Control_msgsFollowJointTrajectoryResult.SUCCESSFUL.
--- @details Original int32 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.new
--- @field SUCCESSFUL integer
--- @brief Native class constant Ros1Control_msgsFollowJointTrajectoryResult.INVALID_GOAL.
--- @details Original int32 literal -1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.new
--- @field INVALID_GOAL integer
--- @brief Native class constant Ros1Control_msgsFollowJointTrajectoryResult.INVALID_JOINTS.
--- @details Original int32 literal -2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.new
--- @field INVALID_JOINTS integer
--- @brief Native class constant Ros1Control_msgsFollowJointTrajectoryResult.OLD_HEADER_TIMESTAMP.
--- @details Original int32 literal -3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.new
--- @field OLD_HEADER_TIMESTAMP integer
--- @brief Native class constant Ros1Control_msgsFollowJointTrajectoryResult.PATH_TOLERANCE_VIOLATED.
--- @details Original int32 literal -4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.new
--- @field PATH_TOLERANCE_VIOLATED integer
--- @brief Native class constant Ros1Control_msgsFollowJointTrajectoryResult.GOAL_TOLERANCE_VIOLATED.
--- @details Original int32 literal -5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.new
--- @field GOAL_TOLERANCE_VIOLATED integer
--- @brief Construct Ros1Control_msgsFollowJointTrajectoryResult with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Control_msgsFollowJointTrajectoryResult value New mutable complete value; no ROS resource.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.encode
--- @field new fun(values?: table): Ros1Control_msgsFollowJointTrajectoryResult
--- @brief Encode a complete Ros1Control_msgsFollowJointTrajectoryResult value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Control_msgsFollowJointTrajectoryResult [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..4104 bytes.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.decode
--- @field encode fun(value: Ros1Control_msgsFollowJointTrajectoryResult): string
--- @brief Decode exactly one complete Ros1Control_msgsFollowJointTrajectoryResult canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Control_msgsFollowJointTrajectoryResult value New complete value; failures raise Lua errors.
--- @see Ros1Control_msgsFollowJointTrajectoryResult.encode
--- @field decode fun(bytes: string): Ros1Control_msgsFollowJointTrajectoryResult
local Ros1Control_msgsFollowJointTrajectoryResult = classes["Ros1Control_msgsFollowJointTrajectoryResult"]

--- @class Ros1Control_msgsFollowJointTrajectoryFeedback
--- @brief Complete ROS1 control_msgs/FollowJointTrajectoryFeedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/Header value; no native fields are projected away.
--- @field joint_names string[] Strict UTF-8 without NUL; length0..64 bytes. At most 12 contiguous elements;
--holes and extra array keys are rejected.
--- @field desired table Complete nested trajectory_msgs/JointTrajectoryPoint value; no native fields are
--projected away.
--- @field actual table Complete nested trajectory_msgs/JointTrajectoryPoint value; no native fields are
--projected away.
--- @field error table Complete nested trajectory_msgs/JointTrajectoryPoint value; no native fields are
--projected away.
--- @brief Ros1Control_msgsFollowJointTrajectoryFeedback.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryFeedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Control_msgsFollowJointTrajectoryFeedback.NATIVE_TYPE: Exact normalized native type name
--control_msgs/FollowJointTrajectoryFeedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryFeedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name control_msgs/FollowJointTrajectoryFeedback.
--- @brief Ros1Control_msgsFollowJointTrajectoryFeedback.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryFeedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Control_msgsFollowJointTrajectoryFeedback.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryFeedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Control_msgsFollowJointTrajectoryFeedback.MIN_WIRE_BYTES: Inclusive complete minimum 92 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryFeedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 92 bytes.
--- @brief Ros1Control_msgsFollowJointTrajectoryFeedback.MAX_WIRE_BYTES: Inclusive complete maximum 2124 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Control_msgsFollowJointTrajectoryFeedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2124 bytes.
--- @brief Construct Ros1Control_msgsFollowJointTrajectoryFeedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Control_msgsFollowJointTrajectoryFeedback value New mutable complete value; no ROS resource.
--- @see Ros1Control_msgsFollowJointTrajectoryFeedback.encode
--- @field new fun(values?: table): Ros1Control_msgsFollowJointTrajectoryFeedback
--- @brief Encode a complete Ros1Control_msgsFollowJointTrajectoryFeedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Control_msgsFollowJointTrajectoryFeedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 92..2124 bytes.
--- @see Ros1Control_msgsFollowJointTrajectoryFeedback.decode
--- @field encode fun(value: Ros1Control_msgsFollowJointTrajectoryFeedback): string
--- @brief Decode exactly one complete Ros1Control_msgsFollowJointTrajectoryFeedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Control_msgsFollowJointTrajectoryFeedback value New complete value; failures raise Lua errors.
--- @see Ros1Control_msgsFollowJointTrajectoryFeedback.encode
--- @field decode fun(bytes: string): Ros1Control_msgsFollowJointTrajectoryFeedback
local Ros1Control_msgsFollowJointTrajectoryFeedback = classes["Ros1Control_msgsFollowJointTrajectoryFeedback"]

--- @class Ros1Sensor_msgsJointState
--- @brief Complete ROS1 sensor_msgs/JointState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/Header value; no native fields are projected away.
--- @field name string[] Strict UTF-8 without NUL; length0..64 bytes. At most 12 contiguous elements; holes and
--extra array keys are rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field position number[] Finite IEEE float64. At most 12 contiguous elements; holes and extra array keys are
--rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field velocity number[] Finite IEEE float64. At most 12 contiguous elements; holes and extra array keys are
--rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field effort number[] Finite IEEE float64. At most 12 contiguous elements; holes and extra array keys are
--rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @brief Ros1Sensor_msgsJointState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Sensor_msgsJointState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Sensor_msgsJointState.NATIVE_TYPE: Exact normalized native type name sensor_msgs/JointState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Sensor_msgsJointState.encode
--- @field NATIVE_TYPE string Exact normalized native type name sensor_msgs/JointState.
--- @brief Ros1Sensor_msgsJointState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Sensor_msgsJointState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros1Sensor_msgsJointState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Sensor_msgsJointState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Sensor_msgsJointState.MIN_WIRE_BYTES: Inclusive complete minimum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Sensor_msgsJointState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 32 bytes.
--- @brief Ros1Sensor_msgsJointState.MAX_WIRE_BYTES: Inclusive complete maximum 1200 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Sensor_msgsJointState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1200 bytes.
--- @brief Construct Ros1Sensor_msgsJointState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Sensor_msgsJointState value New mutable complete value; no ROS resource.
--- @see Ros1Sensor_msgsJointState.encode
--- @field new fun(values?: table): Ros1Sensor_msgsJointState
--- @brief Encode a complete Ros1Sensor_msgsJointState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Sensor_msgsJointState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 32..1200 bytes.
--- @see Ros1Sensor_msgsJointState.decode
--- @field encode fun(value: Ros1Sensor_msgsJointState): string
--- @brief Decode exactly one complete Ros1Sensor_msgsJointState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Sensor_msgsJointState value New complete value; failures raise Lua errors.
--- @see Ros1Sensor_msgsJointState.encode
--- @field decode fun(bytes: string): Ros1Sensor_msgsJointState
local Ros1Sensor_msgsJointState = classes["Ros1Sensor_msgsJointState"]

return classes, by_name
