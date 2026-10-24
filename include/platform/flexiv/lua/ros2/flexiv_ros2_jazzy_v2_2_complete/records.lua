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
        ["symbol"] = "Ros2Flexiv_msgsActionErrorRecovery_Goal",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/action/ErrorRecovery_Goal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a034d73edc5891f3a17f52efce4e491e8d08655b3e32d9cf58338547ad412830",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Flexiv_msgsActionErrorRecovery_Result",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/action/ErrorRecovery_Result",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc",
        ["minimum"] = 7,
        ["maximum"] = 263,
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
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "requires_controller_restart",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "recovery_policy",
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
        ["symbol"] = "Ros2Flexiv_msgsActionErrorRecovery_Feedback",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/action/ErrorRecovery_Feedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_eeafe196440ce0e03c9bd313aaeac627eaf8e2f1bc4f2ced2d94bcdf22088739",
        ["minimum"] = 9,
        ["maximum"] = 265,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "recovery_state",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "recovery_state_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "elapsed_seconds",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["STATE_IDLE"] = 0,
            ["STATE_CLASSIFY"] = 1,
            ["STATE_STOP"] = 2,
            ["STATE_CLEAR_FAULT"] = 3,
            ["STATE_WAIT_FAULT_CLEARED"] = 4,
            ["STATE_SERVO_ON"] = 5,
            ["STATE_WAIT_OPERATIONAL"] = 6,
            ["STATE_COMPLETE"] = 7,
            ["STATE_FAILED"] = 8,
        },
    },
    {
        ["symbol"] = "Ros2Flexiv_msgsActionGrasp_Goal",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/action/Grasp_Goal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "force",
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
        ["symbol"] = "Ros2Flexiv_msgsActionGrasp_Result",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/action/Grasp_Result",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a",
        ["minimum"] = 5,
        ["maximum"] = 261,
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
                ["name"] = "error",
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
        ["symbol"] = "Ros2Flexiv_msgsActionGrasp_Feedback",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/action/Grasp_Feedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05",
        ["minimum"] = 17,
        ["maximum"] = 17,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "current_width",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "current_force",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "moving",
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
        ["symbol"] = "Ros2Flexiv_msgsActionMove_Goal",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/action/Move_Goal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2",
        ["minimum"] = 24,
        ["maximum"] = 24,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "width",
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
                ["name"] = "max_force",
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
        ["symbol"] = "Ros2Flexiv_msgsActionMove_Result",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/action/Move_Result",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d",
        ["minimum"] = 5,
        ["maximum"] = 261,
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
                ["name"] = "error",
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
        ["symbol"] = "Ros2Flexiv_msgsActionMove_Feedback",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/action/Move_Feedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38",
        ["minimum"] = 17,
        ["maximum"] = 17,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "current_width",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "current_force",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "moving",
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
        ["symbol"] = "Ros2Flexiv_msgsMsgDigital",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/Digital",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "pin",
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
        ["symbol"] = "Ros2Flexiv_msgsMsgGPIOStates",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/GPIOStates",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "states",
                ["type"] = "Ros2Flexiv_msgsMsgDigital",
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
        ["symbol"] = "Ros2Flexiv_msgsMsgJointImpedance",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/JointImpedance",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a",
        ["minimum"] = 29,
        ["maximum"] = 9373,
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
                ["count"] = 32,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "k_q",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "z_q",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "k_q_nom",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "in_effect",
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
        ["symbol"] = "Ros2Flexiv_msgsMsgJointInertiaScale",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/JointInertiaScale",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f",
        ["minimum"] = 21,
        ["maximum"] = 8853,
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
                ["count"] = 32,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "inertia_scales",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "in_effect",
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
        ["symbol"] = "Ros2Flexiv_msgsMsgJointPosVel",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/JointPosVel",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca",
        ["minimum"] = 8,
        ["maximum"] = 520,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "positions",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "velocities",
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
        ["symbol"] = "Ros2Flexiv_msgsMsgMaxContactTorque",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/MaxContactTorque",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da",
        ["minimum"] = 25,
        ["maximum"] = 9113,
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
                ["count"] = 32,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "max_contact_torques",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_max",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "in_effect",
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
        ["symbol"] = "Ros2Flexiv_msgsMsgMode",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/Mode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
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
        ["constants"] = {
            ["MODE_UNKNOWN"] = 0,
            ["MODE_IDLE"] = 1,
            ["MODE_RT_JOINT_TORQUE"] = 2,
            ["MODE_RT_JOINT_IMPEDANCE"] = 3,
            ["MODE_NRT_JOINT_IMPEDANCE"] = 4,
            ["MODE_RT_JOINT_POSITION"] = 5,
            ["MODE_NRT_JOINT_POSITION"] = 6,
            ["MODE_NRT_PLAN_EXECUTION"] = 7,
            ["MODE_NRT_PRIMITIVE_EXECUTION"] = 8,
            ["MODE_RT_CARTESIAN_MOTION_FORCE"] = 9,
            ["MODE_NRT_CARTESIAN_MOTION_FORCE"] = 10,
            ["MODE_NRT_SUPER_PRIMITIVE"] = 11,
        },
    },
    {
        ["symbol"] = "Ros2Flexiv_msgsMsgRobotEvent",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/RobotEvent",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17",
        ["minimum"] = 29,
        ["maximum"] = 1053,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "level",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
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
                ["name"] = "description",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "consequences",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "probable_causes",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "recommended_actions",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "timestamp",
                ["type"] = "Ros2Builtin_interfacesMsgTime",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {
            ["LEVEL_UNKNOWN"] = 0,
            ["LEVEL_INFO"] = 1,
            ["LEVEL_WARNING"] = 2,
            ["LEVEL_ERROR"] = 3,
            ["LEVEL_CRITICAL"] = 4,
        },
    },
    {
        ["symbol"] = "Ros2Flexiv_msgsMsgOperationalStatus",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/OperationalStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_89c0f96c20a56eb45bb21b617945cbe727558f12094a8377414fe5729d147a62",
        ["minimum"] = 34,
        ["maximum"] = 17650,
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
                ["name"] = "operational_status",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "operational_status_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "driver_state",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "connected",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "fault",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "operational",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "estop_released",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "reduced",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "recovery_state",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "control_mode",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "recovery_policy",
                ["type"] = "uint8",
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
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "recent_events",
                ["type"] = "Ros2Flexiv_msgsMsgRobotEvent",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 29,
            },
        },
        ["constants"] = {
            ["STATUS_UNKNOWN"] = 0,
            ["STATUS_READY"] = 1,
            ["STATUS_BOOTING"] = 2,
            ["STATUS_ESTOP_NOT_RELEASED"] = 3,
            ["STATUS_NOT_SERVO_ON"] = 4,
            ["STATUS_RELEASING_BRAKE"] = 5,
            ["STATUS_MINOR_FAULT"] = 6,
            ["STATUS_CRITICAL_FAULT"] = 7,
            ["STATUS_IN_REDUCED_STATE"] = 8,
            ["STATUS_IN_RECOVERY_STATE"] = 9,
            ["STATUS_IN_MANUAL_MODE"] = 10,
            ["STATUS_IN_AUTO_MODE"] = 11,
            ["DRIVER_UNINITIALIZED"] = 0,
            ["DRIVER_READY"] = 1,
            ["DRIVER_FAULT"] = 2,
            ["DRIVER_RECOVERING"] = 3,
            ["DRIVER_LOCKOUT"] = 4,
            ["DRIVER_DISCONNECTED"] = 5,
        },
    },
    {
        ["symbol"] = "Ros2Flexiv_msgsMsgRecoveryPolicy",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/RecoveryPolicy",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "recovery_policy",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {
            ["NONE"] = 0,
            ["TRANSIENT"] = 1,
            ["AUTO_RECOVERABLE"] = 2,
            ["WAIT_OPERATOR"] = 3,
            ["SAFETY_LOCKOUT"] = 4,
            ["CONNECTION_LOST"] = 5,
        },
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
        ["symbol"] = "Ros2Geometry_msgsMsgPoseStamped",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/PoseStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad",
        ["minimum"] = 68,
        ["maximum"] = 324,
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
                ["name"] = "pose",
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
        ["symbol"] = "Ros2Geometry_msgsMsgTwistStamped",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/TwistStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308",
        ["minimum"] = 60,
        ["maximum"] = 316,
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
                ["name"] = "twist",
                ["type"] = "Ros2Geometry_msgsMsgTwist",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 48,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Geometry_msgsMsgWrench",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Wrench",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6",
        ["minimum"] = 48,
        ["maximum"] = 48,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "force",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "torque",
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
        ["symbol"] = "Ros2Geometry_msgsMsgWrenchStamped",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/WrenchStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177",
        ["minimum"] = 60,
        ["maximum"] = 316,
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
                ["name"] = "wrench",
                ["type"] = "Ros2Geometry_msgsMsgWrench",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 48,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Flexiv_msgsMsgRobotStates",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/RobotStates",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a",
        ["minimum"] = 552,
        ["maximum"] = 5160,
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
                ["name"] = "robot_timestamp",
                ["type"] = "Ros2Builtin_interfacesMsgTime",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "q",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "theta",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "dq",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "dtheta",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_dot",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_ext",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_interact",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "temperature",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tcp_pose",
                ["type"] = "Ros2Geometry_msgsMsgPoseStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 68,
            },
            {
                ["name"] = "tcp_twist",
                ["type"] = "Ros2Geometry_msgsMsgTwistStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 60,
            },
            {
                ["name"] = "flange_pose",
                ["type"] = "Ros2Geometry_msgsMsgPoseStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 68,
            },
            {
                ["name"] = "raw_ft_sensor",
                ["type"] = "Ros2Geometry_msgsMsgWrenchStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 60,
            },
            {
                ["name"] = "tcp_wrench_local",
                ["type"] = "Ros2Geometry_msgsMsgWrenchStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 60,
            },
            {
                ["name"] = "tcp_wrench",
                ["type"] = "Ros2Geometry_msgsMsgWrenchStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 60,
            },
            {
                ["name"] = "raw_tcp_wrench_local",
                ["type"] = "Ros2Geometry_msgsMsgWrenchStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 60,
            },
            {
                ["name"] = "raw_tcp_wrench",
                ["type"] = "Ros2Geometry_msgsMsgWrenchStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 60,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Flexiv_msgsSrvGetOperationalStatus_Request",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/srv/GetOperationalStatus_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Flexiv_msgsSrvGetOperationalStatus_Response",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/srv/GetOperationalStatus_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c0c5d8eabf0e036c0854728e784564c68669a6cdbb5e22f7f5934956d9e4e7da",
        ["minimum"] = 34,
        ["maximum"] = 17650,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "Ros2Flexiv_msgsMsgOperationalStatus",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 34,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Flexiv_msgsSrvSetJointImpedance_Request",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/srv/SetJointImpedance_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_37adbcb0beeef85996da45424e76b2d67bcbf245d22eae89f05e43d015527e08",
        ["minimum"] = 12,
        ["maximum"] = 8844,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "k_q",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "z_q",
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
        ["symbol"] = "Ros2Flexiv_msgsSrvSetJointImpedance_Response",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/srv/SetJointImpedance_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96",
        ["minimum"] = 34,
        ["maximum"] = 9634,
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
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "setting",
                ["type"] = "Ros2Flexiv_msgsMsgJointImpedance",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 29,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Flexiv_msgsSrvSetJointInertiaScale_Request",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/srv/SetJointInertiaScale_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_03aeec1174b3eda7777dc74548c9781915c532bef92af3f4383a801e3b8ff625",
        ["minimum"] = 8,
        ["maximum"] = 8584,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "inertia_scales",
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
        ["symbol"] = "Ros2Flexiv_msgsSrvSetJointInertiaScale_Response",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/srv/SetJointInertiaScale_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931",
        ["minimum"] = 26,
        ["maximum"] = 9114,
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
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "setting",
                ["type"] = "Ros2Flexiv_msgsMsgJointInertiaScale",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 21,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Flexiv_msgsSrvSetMaxContactTorque_Request",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/srv/SetMaxContactTorque_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cfbd80557b3c0529a3af3557b87908c05817d873401e3efb3c5ba8203af6b69e",
        ["minimum"] = 8,
        ["maximum"] = 8584,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "max_contact_torques",
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
        ["symbol"] = "Ros2Flexiv_msgsSrvSetMaxContactTorque_Response",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/srv/SetMaxContactTorque_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c",
        ["minimum"] = 30,
        ["maximum"] = 9374,
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
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "setting",
                ["type"] = "Ros2Flexiv_msgsMsgMaxContactTorque",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 25,
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
--- @field sec integer Exact int32 range -2147483648..2147483647. Whole seconds; signedness/range follow the native
--scalar above.
--- @field nanosec integer Exact uint32 range 0..4294967295. Normalized fractional nanoseconds, inclusive0..999999999.
--- @brief Ros2Builtin_interfacesMsgTime.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Builtin_interfacesMsgTime.NATIVE_TYPE: Exact normalized native type name builtin_interfaces/msg/Time.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field NATIVE_TYPE string Exact normalized native type name builtin_interfaces/msg/Time.
--- @brief Ros2Builtin_interfacesMsgTime.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgTime.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Builtin_interfacesMsgTime.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
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

--- @class Ros2Flexiv_msgsActionErrorRecovery_Goal
--- @brief Complete ROS2 flexiv_msgs/action/ErrorRecovery_Goal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Goal.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Goal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Goal.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/action/ErrorRecovery_Goal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Goal.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/action/ErrorRecovery_Goal.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Goal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Goal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Goal.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Goal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Goal.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Goal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Goal.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Goal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Flexiv_msgsActionErrorRecovery_Goal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsActionErrorRecovery_Goal value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Goal.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsActionErrorRecovery_Goal
--- @brief Encode a complete Ros2Flexiv_msgsActionErrorRecovery_Goal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsActionErrorRecovery_Goal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Goal.decode
--- @field encode fun(value: Ros2Flexiv_msgsActionErrorRecovery_Goal): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsActionErrorRecovery_Goal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsActionErrorRecovery_Goal value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Goal.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsActionErrorRecovery_Goal
local Ros2Flexiv_msgsActionErrorRecovery_Goal = classes["Ros2Flexiv_msgsActionErrorRecovery_Goal"]

--- @class Ros2Flexiv_msgsActionErrorRecovery_Result
--- @brief Complete ROS2 flexiv_msgs/action/ErrorRecovery_Result value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field requires_controller_restart boolean Exact boolean; encoded as one byte0/1.
--- @field recovery_policy integer Exact uint8 range 0..255.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Result.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Result.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Result.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/action/ErrorRecovery_Result.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Result.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/action/ErrorRecovery_Result.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Result.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Result.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Result.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Result.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Result.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Result.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Result.MAX_WIRE_BYTES: Inclusive complete maximum 263 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Result.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 263 bytes.
--- @brief Construct Ros2Flexiv_msgsActionErrorRecovery_Result with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsActionErrorRecovery_Result value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Result.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsActionErrorRecovery_Result
--- @brief Encode a complete Ros2Flexiv_msgsActionErrorRecovery_Result value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsActionErrorRecovery_Result [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..263 bytes.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Result.decode
--- @field encode fun(value: Ros2Flexiv_msgsActionErrorRecovery_Result): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsActionErrorRecovery_Result canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsActionErrorRecovery_Result value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Result.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsActionErrorRecovery_Result
local Ros2Flexiv_msgsActionErrorRecovery_Result = classes["Ros2Flexiv_msgsActionErrorRecovery_Result"]

--- @class Ros2Flexiv_msgsActionErrorRecovery_Feedback
--- @brief Complete ROS2 flexiv_msgs/action/ErrorRecovery_Feedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field recovery_state integer Exact uint8 range 0..255.
--- @field recovery_state_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field elapsed_seconds number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Feedback.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Feedback.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/action/ErrorRecovery_Feedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/action/ErrorRecovery_Feedback.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Feedback.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Feedback.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Feedback.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Flexiv_msgsActionErrorRecovery_Feedback.MAX_WIRE_BYTES: Inclusive complete maximum 265 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 265 bytes.
--- @brief Native class constant Ros2Flexiv_msgsActionErrorRecovery_Feedback.STATE_IDLE.
--- @details Original uint8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.new
--- @field STATE_IDLE integer
--- @brief Native class constant Ros2Flexiv_msgsActionErrorRecovery_Feedback.STATE_CLASSIFY.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.new
--- @field STATE_CLASSIFY integer
--- @brief Native class constant Ros2Flexiv_msgsActionErrorRecovery_Feedback.STATE_STOP.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.new
--- @field STATE_STOP integer
--- @brief Native class constant Ros2Flexiv_msgsActionErrorRecovery_Feedback.STATE_CLEAR_FAULT.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.new
--- @field STATE_CLEAR_FAULT integer
--- @brief Native class constant Ros2Flexiv_msgsActionErrorRecovery_Feedback.STATE_WAIT_FAULT_CLEARED.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.new
--- @field STATE_WAIT_FAULT_CLEARED integer
--- @brief Native class constant Ros2Flexiv_msgsActionErrorRecovery_Feedback.STATE_SERVO_ON.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.new
--- @field STATE_SERVO_ON integer
--- @brief Native class constant Ros2Flexiv_msgsActionErrorRecovery_Feedback.STATE_WAIT_OPERATIONAL.
--- @details Original uint8 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.new
--- @field STATE_WAIT_OPERATIONAL integer
--- @brief Native class constant Ros2Flexiv_msgsActionErrorRecovery_Feedback.STATE_COMPLETE.
--- @details Original uint8 literal 7; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.new
--- @field STATE_COMPLETE integer
--- @brief Native class constant Ros2Flexiv_msgsActionErrorRecovery_Feedback.STATE_FAILED.
--- @details Original uint8 literal 8; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.new
--- @field STATE_FAILED integer
--- @brief Construct Ros2Flexiv_msgsActionErrorRecovery_Feedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsActionErrorRecovery_Feedback value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsActionErrorRecovery_Feedback
--- @brief Encode a complete Ros2Flexiv_msgsActionErrorRecovery_Feedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsActionErrorRecovery_Feedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..265 bytes.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.decode
--- @field encode fun(value: Ros2Flexiv_msgsActionErrorRecovery_Feedback): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsActionErrorRecovery_Feedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsActionErrorRecovery_Feedback value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsActionErrorRecovery_Feedback.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsActionErrorRecovery_Feedback
local Ros2Flexiv_msgsActionErrorRecovery_Feedback = classes["Ros2Flexiv_msgsActionErrorRecovery_Feedback"]

--- @class Ros2Flexiv_msgsActionGrasp_Goal
--- @brief Complete ROS2 flexiv_msgs/action/Grasp_Goal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field force number Finite IEEE float64.
--- @brief Ros2Flexiv_msgsActionGrasp_Goal.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Goal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsActionGrasp_Goal.NATIVE_TYPE: Exact normalized native type name flexiv_msgs/action/Grasp_Goal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Goal.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/action/Grasp_Goal.
--- @brief Ros2Flexiv_msgsActionGrasp_Goal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Goal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsActionGrasp_Goal.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Goal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsActionGrasp_Goal.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Goal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Flexiv_msgsActionGrasp_Goal.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Goal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Flexiv_msgsActionGrasp_Goal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsActionGrasp_Goal value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsActionGrasp_Goal.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsActionGrasp_Goal
--- @brief Encode a complete Ros2Flexiv_msgsActionGrasp_Goal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsActionGrasp_Goal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Flexiv_msgsActionGrasp_Goal.decode
--- @field encode fun(value: Ros2Flexiv_msgsActionGrasp_Goal): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsActionGrasp_Goal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsActionGrasp_Goal value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsActionGrasp_Goal.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsActionGrasp_Goal
local Ros2Flexiv_msgsActionGrasp_Goal = classes["Ros2Flexiv_msgsActionGrasp_Goal"]

--- @class Ros2Flexiv_msgsActionGrasp_Result
--- @brief Complete ROS2 flexiv_msgs/action/Grasp_Result value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Flexiv_msgsActionGrasp_Result.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Result.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsActionGrasp_Result.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/action/Grasp_Result.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Result.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/action/Grasp_Result.
--- @brief Ros2Flexiv_msgsActionGrasp_Result.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Result.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsActionGrasp_Result.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Result.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsActionGrasp_Result.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Result.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Flexiv_msgsActionGrasp_Result.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Result.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Flexiv_msgsActionGrasp_Result with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsActionGrasp_Result value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsActionGrasp_Result.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsActionGrasp_Result
--- @brief Encode a complete Ros2Flexiv_msgsActionGrasp_Result value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsActionGrasp_Result [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Flexiv_msgsActionGrasp_Result.decode
--- @field encode fun(value: Ros2Flexiv_msgsActionGrasp_Result): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsActionGrasp_Result canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsActionGrasp_Result value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsActionGrasp_Result.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsActionGrasp_Result
local Ros2Flexiv_msgsActionGrasp_Result = classes["Ros2Flexiv_msgsActionGrasp_Result"]

--- @class Ros2Flexiv_msgsActionGrasp_Feedback
--- @brief Complete ROS2 flexiv_msgs/action/Grasp_Feedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field current_width number Finite IEEE float64.
--- @field current_force number Finite IEEE float64.
--- @field moving boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Flexiv_msgsActionGrasp_Feedback.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Feedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsActionGrasp_Feedback.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/action/Grasp_Feedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Feedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/action/Grasp_Feedback.
--- @brief Ros2Flexiv_msgsActionGrasp_Feedback.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Feedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsActionGrasp_Feedback.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Feedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsActionGrasp_Feedback.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Feedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros2Flexiv_msgsActionGrasp_Feedback.MAX_WIRE_BYTES: Inclusive complete maximum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionGrasp_Feedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17 bytes.
--- @brief Construct Ros2Flexiv_msgsActionGrasp_Feedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsActionGrasp_Feedback value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsActionGrasp_Feedback.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsActionGrasp_Feedback
--- @brief Encode a complete Ros2Flexiv_msgsActionGrasp_Feedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsActionGrasp_Feedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..17 bytes.
--- @see Ros2Flexiv_msgsActionGrasp_Feedback.decode
--- @field encode fun(value: Ros2Flexiv_msgsActionGrasp_Feedback): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsActionGrasp_Feedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsActionGrasp_Feedback value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsActionGrasp_Feedback.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsActionGrasp_Feedback
local Ros2Flexiv_msgsActionGrasp_Feedback = classes["Ros2Flexiv_msgsActionGrasp_Feedback"]

--- @class Ros2Flexiv_msgsActionMove_Goal
--- @brief Complete ROS2 flexiv_msgs/action/Move_Goal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field width number Finite IEEE float64.
--- @field velocity number Finite IEEE float64.
--- @field max_force number Finite IEEE float64.
--- @brief Ros2Flexiv_msgsActionMove_Goal.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Goal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsActionMove_Goal.NATIVE_TYPE: Exact normalized native type name flexiv_msgs/action/Move_Goal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Goal.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/action/Move_Goal.
--- @brief Ros2Flexiv_msgsActionMove_Goal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Goal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsActionMove_Goal.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Goal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsActionMove_Goal.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Goal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Flexiv_msgsActionMove_Goal.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Goal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Flexiv_msgsActionMove_Goal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsActionMove_Goal value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsActionMove_Goal.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsActionMove_Goal
--- @brief Encode a complete Ros2Flexiv_msgsActionMove_Goal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsActionMove_Goal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Flexiv_msgsActionMove_Goal.decode
--- @field encode fun(value: Ros2Flexiv_msgsActionMove_Goal): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsActionMove_Goal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsActionMove_Goal value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsActionMove_Goal.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsActionMove_Goal
local Ros2Flexiv_msgsActionMove_Goal = classes["Ros2Flexiv_msgsActionMove_Goal"]

--- @class Ros2Flexiv_msgsActionMove_Result
--- @brief Complete ROS2 flexiv_msgs/action/Move_Result value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Flexiv_msgsActionMove_Result.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Result.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsActionMove_Result.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/action/Move_Result.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Result.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/action/Move_Result.
--- @brief Ros2Flexiv_msgsActionMove_Result.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Result.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsActionMove_Result.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Result.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsActionMove_Result.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Result.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Flexiv_msgsActionMove_Result.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Result.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Flexiv_msgsActionMove_Result with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsActionMove_Result value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsActionMove_Result.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsActionMove_Result
--- @brief Encode a complete Ros2Flexiv_msgsActionMove_Result value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsActionMove_Result [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Flexiv_msgsActionMove_Result.decode
--- @field encode fun(value: Ros2Flexiv_msgsActionMove_Result): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsActionMove_Result canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsActionMove_Result value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsActionMove_Result.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsActionMove_Result
local Ros2Flexiv_msgsActionMove_Result = classes["Ros2Flexiv_msgsActionMove_Result"]

--- @class Ros2Flexiv_msgsActionMove_Feedback
--- @brief Complete ROS2 flexiv_msgs/action/Move_Feedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field current_width number Finite IEEE float64.
--- @field current_force number Finite IEEE float64.
--- @field moving boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Flexiv_msgsActionMove_Feedback.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Feedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsActionMove_Feedback.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/action/Move_Feedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Feedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/action/Move_Feedback.
--- @brief Ros2Flexiv_msgsActionMove_Feedback.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Feedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsActionMove_Feedback.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Feedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsActionMove_Feedback.MIN_WIRE_BYTES: Inclusive complete minimum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Feedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 17 bytes.
--- @brief Ros2Flexiv_msgsActionMove_Feedback.MAX_WIRE_BYTES: Inclusive complete maximum 17 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsActionMove_Feedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17 bytes.
--- @brief Construct Ros2Flexiv_msgsActionMove_Feedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsActionMove_Feedback value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsActionMove_Feedback.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsActionMove_Feedback
--- @brief Encode a complete Ros2Flexiv_msgsActionMove_Feedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsActionMove_Feedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 17..17 bytes.
--- @see Ros2Flexiv_msgsActionMove_Feedback.decode
--- @field encode fun(value: Ros2Flexiv_msgsActionMove_Feedback): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsActionMove_Feedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsActionMove_Feedback value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsActionMove_Feedback.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsActionMove_Feedback
local Ros2Flexiv_msgsActionMove_Feedback = classes["Ros2Flexiv_msgsActionMove_Feedback"]

--- @class Ros2Flexiv_msgsMsgDigital
--- @brief Complete ROS2 flexiv_msgs/msg/Digital value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field pin integer Exact uint8 range 0..255.
--- @field state boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Flexiv_msgsMsgDigital.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgDigital.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsMsgDigital.NATIVE_TYPE: Exact normalized native type name flexiv_msgs/msg/Digital.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgDigital.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/msg/Digital.
--- @brief Ros2Flexiv_msgsMsgDigital.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgDigital.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsMsgDigital.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgDigital.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsMsgDigital.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgDigital.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Flexiv_msgsMsgDigital.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgDigital.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Flexiv_msgsMsgDigital with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsMsgDigital value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsMsgDigital.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsMsgDigital
--- @brief Encode a complete Ros2Flexiv_msgsMsgDigital value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsMsgDigital [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Flexiv_msgsMsgDigital.decode
--- @field encode fun(value: Ros2Flexiv_msgsMsgDigital): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsMsgDigital canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsMsgDigital value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsMsgDigital.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsMsgDigital
local Ros2Flexiv_msgsMsgDigital = classes["Ros2Flexiv_msgsMsgDigital"]

--- @class Ros2Flexiv_msgsMsgGPIOStates
--- @brief Complete ROS2 flexiv_msgs/msg/GPIOStates value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field states table[] Complete nested flexiv_msgs/msg/Digital value; no native fields are projected away. At most 32
--contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Flexiv_msgsMsgGPIOStates.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgGPIOStates.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsMsgGPIOStates.NATIVE_TYPE: Exact normalized native type name flexiv_msgs/msg/GPIOStates.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgGPIOStates.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/msg/GPIOStates.
--- @brief Ros2Flexiv_msgsMsgGPIOStates.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgGPIOStates.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsMsgGPIOStates.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgGPIOStates.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsMsgGPIOStates.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgGPIOStates.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Flexiv_msgsMsgGPIOStates.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgGPIOStates.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Construct Ros2Flexiv_msgsMsgGPIOStates with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsMsgGPIOStates value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsMsgGPIOStates.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsMsgGPIOStates
--- @brief Encode a complete Ros2Flexiv_msgsMsgGPIOStates value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsMsgGPIOStates [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros2Flexiv_msgsMsgGPIOStates.decode
--- @field encode fun(value: Ros2Flexiv_msgsMsgGPIOStates): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsMsgGPIOStates canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsMsgGPIOStates value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsMsgGPIOStates.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsMsgGPIOStates
local Ros2Flexiv_msgsMsgGPIOStates = classes["Ros2Flexiv_msgsMsgGPIOStates"]

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
--- @brief Ros2Std_msgsMsgHeader.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Std_msgsMsgHeader.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
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

--- @class Ros2Flexiv_msgsMsgJointImpedance
--- @brief Complete ROS2 flexiv_msgs/msg/JointImpedance value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field joint_names string[] Strict UTF-8 without NUL; length0..256 bytes. At most 32 contiguous elements; holes and
--extra array keys are rejected.
--- @field k_q number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field z_q number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field k_q_nom number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are
--rejected.
--- @field in_effect boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Flexiv_msgsMsgJointImpedance.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointImpedance.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsMsgJointImpedance.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/msg/JointImpedance.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointImpedance.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/msg/JointImpedance.
--- @brief Ros2Flexiv_msgsMsgJointImpedance.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointImpedance.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsMsgJointImpedance.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointImpedance.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsMsgJointImpedance.MIN_WIRE_BYTES: Inclusive complete minimum 29 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointImpedance.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 29 bytes.
--- @brief Ros2Flexiv_msgsMsgJointImpedance.MAX_WIRE_BYTES: Inclusive complete maximum 9373 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointImpedance.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 9373 bytes.
--- @brief Construct Ros2Flexiv_msgsMsgJointImpedance with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsMsgJointImpedance value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsMsgJointImpedance.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsMsgJointImpedance
--- @brief Encode a complete Ros2Flexiv_msgsMsgJointImpedance value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsMsgJointImpedance [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 29..9373 bytes.
--- @see Ros2Flexiv_msgsMsgJointImpedance.decode
--- @field encode fun(value: Ros2Flexiv_msgsMsgJointImpedance): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsMsgJointImpedance canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsMsgJointImpedance value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsMsgJointImpedance.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsMsgJointImpedance
local Ros2Flexiv_msgsMsgJointImpedance = classes["Ros2Flexiv_msgsMsgJointImpedance"]

--- @class Ros2Flexiv_msgsMsgJointInertiaScale
--- @brief Complete ROS2 flexiv_msgs/msg/JointInertiaScale value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field joint_names string[] Strict UTF-8 without NUL; length0..256 bytes. At most 32 contiguous elements; holes and
--extra array keys are rejected.
--- @field inertia_scales number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are
--rejected.
--- @field in_effect boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Flexiv_msgsMsgJointInertiaScale.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointInertiaScale.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsMsgJointInertiaScale.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/msg/JointInertiaScale.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointInertiaScale.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/msg/JointInertiaScale.
--- @brief Ros2Flexiv_msgsMsgJointInertiaScale.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointInertiaScale.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsMsgJointInertiaScale.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointInertiaScale.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsMsgJointInertiaScale.MIN_WIRE_BYTES: Inclusive complete minimum 21 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointInertiaScale.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 21 bytes.
--- @brief Ros2Flexiv_msgsMsgJointInertiaScale.MAX_WIRE_BYTES: Inclusive complete maximum 8853 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointInertiaScale.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8853 bytes.
--- @brief Construct Ros2Flexiv_msgsMsgJointInertiaScale with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsMsgJointInertiaScale value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsMsgJointInertiaScale.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsMsgJointInertiaScale
--- @brief Encode a complete Ros2Flexiv_msgsMsgJointInertiaScale value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsMsgJointInertiaScale [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 21..8853 bytes.
--- @see Ros2Flexiv_msgsMsgJointInertiaScale.decode
--- @field encode fun(value: Ros2Flexiv_msgsMsgJointInertiaScale): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsMsgJointInertiaScale canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsMsgJointInertiaScale value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsMsgJointInertiaScale.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsMsgJointInertiaScale
local Ros2Flexiv_msgsMsgJointInertiaScale = classes["Ros2Flexiv_msgsMsgJointInertiaScale"]

--- @class Ros2Flexiv_msgsMsgJointPosVel
--- @brief Complete ROS2 flexiv_msgs/msg/JointPosVel value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field positions number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are
--rejected.
--- @field velocities number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are
--rejected.
--- @brief Ros2Flexiv_msgsMsgJointPosVel.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointPosVel.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsMsgJointPosVel.NATIVE_TYPE: Exact normalized native type name flexiv_msgs/msg/JointPosVel.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointPosVel.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/msg/JointPosVel.
--- @brief Ros2Flexiv_msgsMsgJointPosVel.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointPosVel.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsMsgJointPosVel.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointPosVel.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsMsgJointPosVel.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointPosVel.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Flexiv_msgsMsgJointPosVel.MAX_WIRE_BYTES: Inclusive complete maximum 520 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointPosVel.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 520 bytes.
--- @brief Construct Ros2Flexiv_msgsMsgJointPosVel with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsMsgJointPosVel value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsMsgJointPosVel.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsMsgJointPosVel
--- @brief Encode a complete Ros2Flexiv_msgsMsgJointPosVel value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsMsgJointPosVel [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..520 bytes.
--- @see Ros2Flexiv_msgsMsgJointPosVel.decode
--- @field encode fun(value: Ros2Flexiv_msgsMsgJointPosVel): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsMsgJointPosVel canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsMsgJointPosVel value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsMsgJointPosVel.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsMsgJointPosVel
local Ros2Flexiv_msgsMsgJointPosVel = classes["Ros2Flexiv_msgsMsgJointPosVel"]

--- @class Ros2Flexiv_msgsMsgMaxContactTorque
--- @brief Complete ROS2 flexiv_msgs/msg/MaxContactTorque value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field joint_names string[] Strict UTF-8 without NUL; length0..256 bytes. At most 32 contiguous elements; holes and
--extra array keys are rejected.
--- @field max_contact_torques number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys
--are rejected.
--- @field tau_max number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are
--rejected.
--- @field in_effect boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Flexiv_msgsMsgMaxContactTorque.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgMaxContactTorque.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsMsgMaxContactTorque.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/msg/MaxContactTorque.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgMaxContactTorque.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/msg/MaxContactTorque.
--- @brief Ros2Flexiv_msgsMsgMaxContactTorque.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgMaxContactTorque.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsMsgMaxContactTorque.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgMaxContactTorque.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsMsgMaxContactTorque.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgMaxContactTorque.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Flexiv_msgsMsgMaxContactTorque.MAX_WIRE_BYTES: Inclusive complete maximum 9113 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgMaxContactTorque.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 9113 bytes.
--- @brief Construct Ros2Flexiv_msgsMsgMaxContactTorque with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsMsgMaxContactTorque value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsMsgMaxContactTorque.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsMsgMaxContactTorque
--- @brief Encode a complete Ros2Flexiv_msgsMsgMaxContactTorque value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsMsgMaxContactTorque [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..9113 bytes.
--- @see Ros2Flexiv_msgsMsgMaxContactTorque.decode
--- @field encode fun(value: Ros2Flexiv_msgsMsgMaxContactTorque): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsMsgMaxContactTorque canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsMsgMaxContactTorque value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsMsgMaxContactTorque.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsMsgMaxContactTorque
local Ros2Flexiv_msgsMsgMaxContactTorque = classes["Ros2Flexiv_msgsMsgMaxContactTorque"]

--- @class Ros2Flexiv_msgsMsgMode
--- @brief Complete ROS2 flexiv_msgs/msg/Mode value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mode integer Exact int8 range -128..127.
--- @brief Ros2Flexiv_msgsMsgMode.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgMode.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsMsgMode.NATIVE_TYPE: Exact normalized native type name flexiv_msgs/msg/Mode.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgMode.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/msg/Mode.
--- @brief Ros2Flexiv_msgsMsgMode.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgMode.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsMsgMode.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgMode.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsMsgMode.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgMode.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Flexiv_msgsMsgMode.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgMode.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_UNKNOWN.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_UNKNOWN integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_IDLE.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_IDLE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_RT_JOINT_TORQUE.
--- @details Original int8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_RT_JOINT_TORQUE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_RT_JOINT_IMPEDANCE.
--- @details Original int8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_RT_JOINT_IMPEDANCE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_JOINT_IMPEDANCE.
--- @details Original int8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_JOINT_IMPEDANCE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_RT_JOINT_POSITION.
--- @details Original int8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_RT_JOINT_POSITION integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_JOINT_POSITION.
--- @details Original int8 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_JOINT_POSITION integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_PLAN_EXECUTION.
--- @details Original int8 literal 7; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_PLAN_EXECUTION integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_PRIMITIVE_EXECUTION.
--- @details Original int8 literal 8; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_PRIMITIVE_EXECUTION integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_RT_CARTESIAN_MOTION_FORCE.
--- @details Original int8 literal 9; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_RT_CARTESIAN_MOTION_FORCE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_CARTESIAN_MOTION_FORCE.
--- @details Original int8 literal 10; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_CARTESIAN_MOTION_FORCE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_SUPER_PRIMITIVE.
--- @details Original int8 literal 11; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_SUPER_PRIMITIVE integer
--- @brief Construct Ros2Flexiv_msgsMsgMode with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsMsgMode value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsMsgMode.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsMsgMode
--- @brief Encode a complete Ros2Flexiv_msgsMsgMode value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsMsgMode [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Flexiv_msgsMsgMode.decode
--- @field encode fun(value: Ros2Flexiv_msgsMsgMode): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsMsgMode canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsMsgMode value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsMsgMode.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsMsgMode
local Ros2Flexiv_msgsMsgMode = classes["Ros2Flexiv_msgsMsgMode"]

--- @class Ros2Flexiv_msgsMsgRobotEvent
--- @brief Complete ROS2 flexiv_msgs/msg/RobotEvent value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field level integer Exact uint8 range 0..255.
--- @field id integer Exact int32 range -2147483648..2147483647.
--- @field description string Strict UTF-8 without NUL; length0..256 bytes.
--- @field consequences string Strict UTF-8 without NUL; length0..256 bytes.
--- @field probable_causes string Strict UTF-8 without NUL; length0..256 bytes.
--- @field recommended_actions string Strict UTF-8 without NUL; length0..256 bytes.
--- @field timestamp table Complete nested builtin_interfaces/msg/Time value; no native fields are projected away.
--- @brief Ros2Flexiv_msgsMsgRobotEvent.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotEvent.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsMsgRobotEvent.NATIVE_TYPE: Exact normalized native type name flexiv_msgs/msg/RobotEvent.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotEvent.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/msg/RobotEvent.
--- @brief Ros2Flexiv_msgsMsgRobotEvent.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotEvent.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsMsgRobotEvent.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotEvent.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsMsgRobotEvent.MIN_WIRE_BYTES: Inclusive complete minimum 29 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotEvent.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 29 bytes.
--- @brief Ros2Flexiv_msgsMsgRobotEvent.MAX_WIRE_BYTES: Inclusive complete maximum 1053 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotEvent.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1053 bytes.
--- @brief Native class constant Ros2Flexiv_msgsMsgRobotEvent.LEVEL_UNKNOWN.
--- @details Original uint8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgRobotEvent.new
--- @field LEVEL_UNKNOWN integer
--- @brief Native class constant Ros2Flexiv_msgsMsgRobotEvent.LEVEL_INFO.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgRobotEvent.new
--- @field LEVEL_INFO integer
--- @brief Native class constant Ros2Flexiv_msgsMsgRobotEvent.LEVEL_WARNING.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgRobotEvent.new
--- @field LEVEL_WARNING integer
--- @brief Native class constant Ros2Flexiv_msgsMsgRobotEvent.LEVEL_ERROR.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgRobotEvent.new
--- @field LEVEL_ERROR integer
--- @brief Native class constant Ros2Flexiv_msgsMsgRobotEvent.LEVEL_CRITICAL.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgRobotEvent.new
--- @field LEVEL_CRITICAL integer
--- @brief Construct Ros2Flexiv_msgsMsgRobotEvent with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsMsgRobotEvent value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsMsgRobotEvent.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsMsgRobotEvent
--- @brief Encode a complete Ros2Flexiv_msgsMsgRobotEvent value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsMsgRobotEvent [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 29..1053 bytes.
--- @see Ros2Flexiv_msgsMsgRobotEvent.decode
--- @field encode fun(value: Ros2Flexiv_msgsMsgRobotEvent): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsMsgRobotEvent canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsMsgRobotEvent value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsMsgRobotEvent.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsMsgRobotEvent
local Ros2Flexiv_msgsMsgRobotEvent = classes["Ros2Flexiv_msgsMsgRobotEvent"]

--- @class Ros2Flexiv_msgsMsgOperationalStatus
--- @brief Complete ROS2 flexiv_msgs/msg/OperationalStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field operational_status integer Exact uint8 range 0..255.
--- @field operational_status_name string Strict UTF-8 without NUL; length0..256 bytes.
--- @field driver_state integer Exact uint8 range 0..255.
--- @field connected boolean Exact boolean; encoded as one byte0/1.
--- @field fault boolean Exact boolean; encoded as one byte0/1.
--- @field operational boolean Exact boolean; encoded as one byte0/1.
--- @field estop_released boolean Exact boolean; encoded as one byte0/1.
--- @field reduced boolean Exact boolean; encoded as one byte0/1.
--- @field recovery_state boolean Exact boolean; encoded as one byte0/1.
--- @field control_mode integer Exact int8 range -128..127.
--- @field recovery_policy integer Exact uint8 range 0..255.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field recent_events table[] Complete nested flexiv_msgs/msg/RobotEvent value; no native fields are projected away.
--At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Flexiv_msgsMsgOperationalStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsMsgOperationalStatus.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/msg/OperationalStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/msg/OperationalStatus.
--- @brief Ros2Flexiv_msgsMsgOperationalStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsMsgOperationalStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsMsgOperationalStatus.MIN_WIRE_BYTES: Inclusive complete minimum 34 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 34 bytes.
--- @brief Ros2Flexiv_msgsMsgOperationalStatus.MAX_WIRE_BYTES: Inclusive complete maximum 17650 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17650 bytes.
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.STATUS_UNKNOWN.
--- @details Original uint8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field STATUS_UNKNOWN integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.STATUS_READY.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field STATUS_READY integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.STATUS_BOOTING.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field STATUS_BOOTING integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.STATUS_ESTOP_NOT_RELEASED.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field STATUS_ESTOP_NOT_RELEASED integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.STATUS_NOT_SERVO_ON.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field STATUS_NOT_SERVO_ON integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.STATUS_RELEASING_BRAKE.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field STATUS_RELEASING_BRAKE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.STATUS_MINOR_FAULT.
--- @details Original uint8 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field STATUS_MINOR_FAULT integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.STATUS_CRITICAL_FAULT.
--- @details Original uint8 literal 7; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field STATUS_CRITICAL_FAULT integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.STATUS_IN_REDUCED_STATE.
--- @details Original uint8 literal 8; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field STATUS_IN_REDUCED_STATE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.STATUS_IN_RECOVERY_STATE.
--- @details Original uint8 literal 9; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field STATUS_IN_RECOVERY_STATE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.STATUS_IN_MANUAL_MODE.
--- @details Original uint8 literal 10; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field STATUS_IN_MANUAL_MODE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.STATUS_IN_AUTO_MODE.
--- @details Original uint8 literal 11; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field STATUS_IN_AUTO_MODE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.DRIVER_UNINITIALIZED.
--- @details Original uint8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field DRIVER_UNINITIALIZED integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.DRIVER_READY.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field DRIVER_READY integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.DRIVER_FAULT.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field DRIVER_FAULT integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.DRIVER_RECOVERING.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field DRIVER_RECOVERING integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.DRIVER_LOCKOUT.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field DRIVER_LOCKOUT integer
--- @brief Native class constant Ros2Flexiv_msgsMsgOperationalStatus.DRIVER_DISCONNECTED.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.new
--- @field DRIVER_DISCONNECTED integer
--- @brief Construct Ros2Flexiv_msgsMsgOperationalStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsMsgOperationalStatus value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsMsgOperationalStatus
--- @brief Encode a complete Ros2Flexiv_msgsMsgOperationalStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsMsgOperationalStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 34..17650 bytes.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.decode
--- @field encode fun(value: Ros2Flexiv_msgsMsgOperationalStatus): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsMsgOperationalStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsMsgOperationalStatus value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsMsgOperationalStatus.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsMsgOperationalStatus
local Ros2Flexiv_msgsMsgOperationalStatus = classes["Ros2Flexiv_msgsMsgOperationalStatus"]

--- @class Ros2Flexiv_msgsMsgRecoveryPolicy
--- @brief Complete ROS2 flexiv_msgs/msg/RecoveryPolicy value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field recovery_policy integer Exact uint8 range 0..255.
--- @brief Ros2Flexiv_msgsMsgRecoveryPolicy.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsMsgRecoveryPolicy.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/msg/RecoveryPolicy.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/msg/RecoveryPolicy.
--- @brief Ros2Flexiv_msgsMsgRecoveryPolicy.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsMsgRecoveryPolicy.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsMsgRecoveryPolicy.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Flexiv_msgsMsgRecoveryPolicy.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Native class constant Ros2Flexiv_msgsMsgRecoveryPolicy.NONE.
--- @details Original uint8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.new
--- @field NONE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgRecoveryPolicy.TRANSIENT.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.new
--- @field TRANSIENT integer
--- @brief Native class constant Ros2Flexiv_msgsMsgRecoveryPolicy.AUTO_RECOVERABLE.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.new
--- @field AUTO_RECOVERABLE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgRecoveryPolicy.WAIT_OPERATOR.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.new
--- @field WAIT_OPERATOR integer
--- @brief Native class constant Ros2Flexiv_msgsMsgRecoveryPolicy.SAFETY_LOCKOUT.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.new
--- @field SAFETY_LOCKOUT integer
--- @brief Native class constant Ros2Flexiv_msgsMsgRecoveryPolicy.CONNECTION_LOST.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.new
--- @field CONNECTION_LOST integer
--- @brief Construct Ros2Flexiv_msgsMsgRecoveryPolicy with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsMsgRecoveryPolicy value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsMsgRecoveryPolicy
--- @brief Encode a complete Ros2Flexiv_msgsMsgRecoveryPolicy value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsMsgRecoveryPolicy [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.decode
--- @field encode fun(value: Ros2Flexiv_msgsMsgRecoveryPolicy): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsMsgRecoveryPolicy canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsMsgRecoveryPolicy value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsMsgRecoveryPolicy.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsMsgRecoveryPolicy
local Ros2Flexiv_msgsMsgRecoveryPolicy = classes["Ros2Flexiv_msgsMsgRecoveryPolicy"]

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
--- @brief Ros2Geometry_msgsMsgPoint.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgPoint.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
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
--- @brief Ros2Geometry_msgsMsgQuaternion.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgQuaternion.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgQuaternion.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
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
--- @brief Ros2Geometry_msgsMsgPose.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPose.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgPose.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
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

--- @class Ros2Geometry_msgsMsgPoseStamped
--- @brief Complete ROS2 geometry_msgs/msg/PoseStamped value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field pose table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @brief Ros2Geometry_msgsMsgPoseStamped.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoseStamped.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgPoseStamped.NATIVE_TYPE: Exact normalized native type name geometry_msgs/msg/PoseStamped.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoseStamped.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/PoseStamped.
--- @brief Ros2Geometry_msgsMsgPoseStamped.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoseStamped.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgPoseStamped.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoseStamped.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgPoseStamped.MIN_WIRE_BYTES: Inclusive complete minimum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoseStamped.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 68 bytes.
--- @brief Ros2Geometry_msgsMsgPoseStamped.MAX_WIRE_BYTES: Inclusive complete maximum 324 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoseStamped.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 324 bytes.
--- @brief Construct Ros2Geometry_msgsMsgPoseStamped with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgPoseStamped value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgPoseStamped.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgPoseStamped
--- @brief Encode a complete Ros2Geometry_msgsMsgPoseStamped value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgPoseStamped [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 68..324 bytes.
--- @see Ros2Geometry_msgsMsgPoseStamped.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgPoseStamped): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgPoseStamped canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgPoseStamped value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgPoseStamped.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgPoseStamped
local Ros2Geometry_msgsMsgPoseStamped = classes["Ros2Geometry_msgsMsgPoseStamped"]

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
--- @brief Ros2Geometry_msgsMsgVector3.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgVector3.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
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
--- @brief Ros2Geometry_msgsMsgTwist.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwist.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgTwist.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
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

--- @class Ros2Geometry_msgsMsgTwistStamped
--- @brief Complete ROS2 geometry_msgs/msg/TwistStamped value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field twist table Complete nested geometry_msgs/msg/Twist value; no native fields are projected away.
--- @brief Ros2Geometry_msgsMsgTwistStamped.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwistStamped.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgTwistStamped.NATIVE_TYPE: Exact normalized native type name
--geometry_msgs/msg/TwistStamped.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwistStamped.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/TwistStamped.
--- @brief Ros2Geometry_msgsMsgTwistStamped.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwistStamped.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgTwistStamped.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwistStamped.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgTwistStamped.MIN_WIRE_BYTES: Inclusive complete minimum 60 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwistStamped.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 60 bytes.
--- @brief Ros2Geometry_msgsMsgTwistStamped.MAX_WIRE_BYTES: Inclusive complete maximum 316 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwistStamped.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 316 bytes.
--- @brief Construct Ros2Geometry_msgsMsgTwistStamped with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgTwistStamped value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgTwistStamped.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgTwistStamped
--- @brief Encode a complete Ros2Geometry_msgsMsgTwistStamped value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgTwistStamped [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 60..316 bytes.
--- @see Ros2Geometry_msgsMsgTwistStamped.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgTwistStamped): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgTwistStamped canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgTwistStamped value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgTwistStamped.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgTwistStamped
local Ros2Geometry_msgsMsgTwistStamped = classes["Ros2Geometry_msgsMsgTwistStamped"]

--- @class Ros2Geometry_msgsMsgWrench
--- @brief Complete ROS2 geometry_msgs/msg/Wrench value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field force table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected away.
--- @field torque table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected away.
--- @brief Ros2Geometry_msgsMsgWrench.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrench.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgWrench.NATIVE_TYPE: Exact normalized native type name geometry_msgs/msg/Wrench.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrench.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Wrench.
--- @brief Ros2Geometry_msgsMsgWrench.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrench.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgWrench.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrench.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgWrench.MIN_WIRE_BYTES: Inclusive complete minimum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrench.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 48 bytes.
--- @brief Ros2Geometry_msgsMsgWrench.MAX_WIRE_BYTES: Inclusive complete maximum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrench.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 48 bytes.
--- @brief Construct Ros2Geometry_msgsMsgWrench with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgWrench value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgWrench.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgWrench
--- @brief Encode a complete Ros2Geometry_msgsMsgWrench value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgWrench [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 48..48 bytes.
--- @see Ros2Geometry_msgsMsgWrench.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgWrench): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgWrench canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgWrench value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgWrench.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgWrench
local Ros2Geometry_msgsMsgWrench = classes["Ros2Geometry_msgsMsgWrench"]

--- @class Ros2Geometry_msgsMsgWrenchStamped
--- @brief Complete ROS2 geometry_msgs/msg/WrenchStamped value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field wrench table Complete nested geometry_msgs/msg/Wrench value; no native fields are projected away.
--- @brief Ros2Geometry_msgsMsgWrenchStamped.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrenchStamped.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgWrenchStamped.NATIVE_TYPE: Exact normalized native type name
--geometry_msgs/msg/WrenchStamped.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrenchStamped.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/WrenchStamped.
--- @brief Ros2Geometry_msgsMsgWrenchStamped.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrenchStamped.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgWrenchStamped.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrenchStamped.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgWrenchStamped.MIN_WIRE_BYTES: Inclusive complete minimum 60 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrenchStamped.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 60 bytes.
--- @brief Ros2Geometry_msgsMsgWrenchStamped.MAX_WIRE_BYTES: Inclusive complete maximum 316 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrenchStamped.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 316 bytes.
--- @brief Construct Ros2Geometry_msgsMsgWrenchStamped with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgWrenchStamped value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgWrenchStamped.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgWrenchStamped
--- @brief Encode a complete Ros2Geometry_msgsMsgWrenchStamped value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgWrenchStamped [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 60..316 bytes.
--- @see Ros2Geometry_msgsMsgWrenchStamped.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgWrenchStamped): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgWrenchStamped canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgWrenchStamped value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgWrenchStamped.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgWrenchStamped
local Ros2Geometry_msgsMsgWrenchStamped = classes["Ros2Geometry_msgsMsgWrenchStamped"]

--- @class Ros2Flexiv_msgsMsgRobotStates
--- @brief Complete ROS2 flexiv_msgs/msg/RobotStates value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field robot_timestamp table Complete nested builtin_interfaces/msg/Time value; no native fields are projected away.
--- @field q number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field theta number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field dq number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field dtheta number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field tau number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field tau_dot number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are
--rejected.
--- @field tau_ext number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are
--rejected.
--- @field tau_interact number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are
--rejected.
--- @field temperature number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are
--rejected.
--- @field tcp_pose table Complete nested geometry_msgs/msg/PoseStamped value; no native fields are projected away.
--- @field tcp_twist table Complete nested geometry_msgs/msg/TwistStamped value; no native fields are projected away.
--- @field flange_pose table Complete nested geometry_msgs/msg/PoseStamped value; no native fields are projected away.
--- @field raw_ft_sensor table Complete nested geometry_msgs/msg/WrenchStamped value; no native fields are projected
--away.
--- @field tcp_wrench_local table Complete nested geometry_msgs/msg/WrenchStamped value; no native fields are projected
--away.
--- @field tcp_wrench table Complete nested geometry_msgs/msg/WrenchStamped value; no native fields are projected away.
--- @field raw_tcp_wrench_local table Complete nested geometry_msgs/msg/WrenchStamped value; no native fields are
--projected away.
--- @field raw_tcp_wrench table Complete nested geometry_msgs/msg/WrenchStamped value; no native fields are projected
--away.
--- @brief Ros2Flexiv_msgsMsgRobotStates.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotStates.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsMsgRobotStates.NATIVE_TYPE: Exact normalized native type name flexiv_msgs/msg/RobotStates.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotStates.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/msg/RobotStates.
--- @brief Ros2Flexiv_msgsMsgRobotStates.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotStates.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsMsgRobotStates.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotStates.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsMsgRobotStates.MIN_WIRE_BYTES: Inclusive complete minimum 552 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotStates.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 552 bytes.
--- @brief Ros2Flexiv_msgsMsgRobotStates.MAX_WIRE_BYTES: Inclusive complete maximum 5160 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotStates.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5160 bytes.
--- @brief Construct Ros2Flexiv_msgsMsgRobotStates with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsMsgRobotStates value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsMsgRobotStates.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsMsgRobotStates
--- @brief Encode a complete Ros2Flexiv_msgsMsgRobotStates value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsMsgRobotStates [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 552..5160 bytes.
--- @see Ros2Flexiv_msgsMsgRobotStates.decode
--- @field encode fun(value: Ros2Flexiv_msgsMsgRobotStates): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsMsgRobotStates canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsMsgRobotStates value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsMsgRobotStates.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsMsgRobotStates
local Ros2Flexiv_msgsMsgRobotStates = classes["Ros2Flexiv_msgsMsgRobotStates"]

--- @class Ros2Flexiv_msgsSrvGetOperationalStatus_Request
--- @brief Complete ROS2 flexiv_msgs/srv/GetOperationalStatus_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Flexiv_msgsSrvGetOperationalStatus_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsSrvGetOperationalStatus_Request.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/srv/GetOperationalStatus_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/srv/GetOperationalStatus_Request.
--- @brief Ros2Flexiv_msgsSrvGetOperationalStatus_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsSrvGetOperationalStatus_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsSrvGetOperationalStatus_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Flexiv_msgsSrvGetOperationalStatus_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Flexiv_msgsSrvGetOperationalStatus_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsSrvGetOperationalStatus_Request value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsSrvGetOperationalStatus_Request
--- @brief Encode a complete Ros2Flexiv_msgsSrvGetOperationalStatus_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsSrvGetOperationalStatus_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request.decode
--- @field encode fun(value: Ros2Flexiv_msgsSrvGetOperationalStatus_Request): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsSrvGetOperationalStatus_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsSrvGetOperationalStatus_Request value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Request.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsSrvGetOperationalStatus_Request
local Ros2Flexiv_msgsSrvGetOperationalStatus_Request = classes["Ros2Flexiv_msgsSrvGetOperationalStatus_Request"]

--- @class Ros2Flexiv_msgsSrvGetOperationalStatus_Response
--- @brief Complete ROS2 flexiv_msgs/srv/GetOperationalStatus_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status table Complete nested flexiv_msgs/msg/OperationalStatus value; no native fields are projected away.
--- @brief Ros2Flexiv_msgsSrvGetOperationalStatus_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsSrvGetOperationalStatus_Response.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/srv/GetOperationalStatus_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/srv/GetOperationalStatus_Response.
--- @brief Ros2Flexiv_msgsSrvGetOperationalStatus_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsSrvGetOperationalStatus_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsSrvGetOperationalStatus_Response.MIN_WIRE_BYTES: Inclusive complete minimum 34 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 34 bytes.
--- @brief Ros2Flexiv_msgsSrvGetOperationalStatus_Response.MAX_WIRE_BYTES: Inclusive complete maximum 17650 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 17650 bytes.
--- @brief Construct Ros2Flexiv_msgsSrvGetOperationalStatus_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsSrvGetOperationalStatus_Response value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsSrvGetOperationalStatus_Response
--- @brief Encode a complete Ros2Flexiv_msgsSrvGetOperationalStatus_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsSrvGetOperationalStatus_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 34..17650 bytes.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response.decode
--- @field encode fun(value: Ros2Flexiv_msgsSrvGetOperationalStatus_Response): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsSrvGetOperationalStatus_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsSrvGetOperationalStatus_Response value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsSrvGetOperationalStatus_Response.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsSrvGetOperationalStatus_Response
local Ros2Flexiv_msgsSrvGetOperationalStatus_Response = classes["Ros2Flexiv_msgsSrvGetOperationalStatus_Response"]

--- @class Ros2Flexiv_msgsSrvSetJointImpedance_Request
--- @brief Complete ROS2 flexiv_msgs/srv/SetJointImpedance_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_names string[] Strict UTF-8 without NUL; length0..256 bytes. At most 32 contiguous elements; holes and
--extra array keys are rejected.
--- @field k_q number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @field z_q number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Flexiv_msgsSrvSetJointImpedance_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsSrvSetJointImpedance_Request.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/srv/SetJointImpedance_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/srv/SetJointImpedance_Request.
--- @brief Ros2Flexiv_msgsSrvSetJointImpedance_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsSrvSetJointImpedance_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsSrvSetJointImpedance_Request.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Flexiv_msgsSrvSetJointImpedance_Request.MAX_WIRE_BYTES: Inclusive complete maximum 8844 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8844 bytes.
--- @brief Construct Ros2Flexiv_msgsSrvSetJointImpedance_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsSrvSetJointImpedance_Request value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Request.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsSrvSetJointImpedance_Request
--- @brief Encode a complete Ros2Flexiv_msgsSrvSetJointImpedance_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsSrvSetJointImpedance_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..8844 bytes.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Request.decode
--- @field encode fun(value: Ros2Flexiv_msgsSrvSetJointImpedance_Request): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsSrvSetJointImpedance_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsSrvSetJointImpedance_Request value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Request.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsSrvSetJointImpedance_Request
local Ros2Flexiv_msgsSrvSetJointImpedance_Request = classes["Ros2Flexiv_msgsSrvSetJointImpedance_Request"]

--- @class Ros2Flexiv_msgsSrvSetJointImpedance_Response
--- @brief Complete ROS2 flexiv_msgs/srv/SetJointImpedance_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field setting table Complete nested flexiv_msgs/msg/JointImpedance value; no native fields are projected away.
--- @brief Ros2Flexiv_msgsSrvSetJointImpedance_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsSrvSetJointImpedance_Response.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/srv/SetJointImpedance_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/srv/SetJointImpedance_Response.
--- @brief Ros2Flexiv_msgsSrvSetJointImpedance_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsSrvSetJointImpedance_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsSrvSetJointImpedance_Response.MIN_WIRE_BYTES: Inclusive complete minimum 34 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 34 bytes.
--- @brief Ros2Flexiv_msgsSrvSetJointImpedance_Response.MAX_WIRE_BYTES: Inclusive complete maximum 9634 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 9634 bytes.
--- @brief Construct Ros2Flexiv_msgsSrvSetJointImpedance_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsSrvSetJointImpedance_Response value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Response.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsSrvSetJointImpedance_Response
--- @brief Encode a complete Ros2Flexiv_msgsSrvSetJointImpedance_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsSrvSetJointImpedance_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 34..9634 bytes.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Response.decode
--- @field encode fun(value: Ros2Flexiv_msgsSrvSetJointImpedance_Response): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsSrvSetJointImpedance_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsSrvSetJointImpedance_Response value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsSrvSetJointImpedance_Response.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsSrvSetJointImpedance_Response
local Ros2Flexiv_msgsSrvSetJointImpedance_Response = classes["Ros2Flexiv_msgsSrvSetJointImpedance_Response"]

--- @class Ros2Flexiv_msgsSrvSetJointInertiaScale_Request
--- @brief Complete ROS2 flexiv_msgs/srv/SetJointInertiaScale_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_names string[] Strict UTF-8 without NUL; length0..256 bytes. At most 32 contiguous elements; holes and
--extra array keys are rejected.
--- @field inertia_scales number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys are
--rejected.
--- @brief Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/srv/SetJointInertiaScale_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/srv/SetJointInertiaScale_Request.
--- @brief Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.MAX_WIRE_BYTES: Inclusive complete maximum 8584 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8584 bytes.
--- @brief Construct Ros2Flexiv_msgsSrvSetJointInertiaScale_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsSrvSetJointInertiaScale_Request value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsSrvSetJointInertiaScale_Request
--- @brief Encode a complete Ros2Flexiv_msgsSrvSetJointInertiaScale_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsSrvSetJointInertiaScale_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8584 bytes.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.decode
--- @field encode fun(value: Ros2Flexiv_msgsSrvSetJointInertiaScale_Request): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsSrvSetJointInertiaScale_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsSrvSetJointInertiaScale_Request value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Request.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsSrvSetJointInertiaScale_Request
local Ros2Flexiv_msgsSrvSetJointInertiaScale_Request = classes["Ros2Flexiv_msgsSrvSetJointInertiaScale_Request"]

--- @class Ros2Flexiv_msgsSrvSetJointInertiaScale_Response
--- @brief Complete ROS2 flexiv_msgs/srv/SetJointInertiaScale_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field setting table Complete nested flexiv_msgs/msg/JointInertiaScale value; no native fields are projected away.
--- @brief Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/srv/SetJointInertiaScale_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/srv/SetJointInertiaScale_Response.
--- @brief Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.MAX_WIRE_BYTES: Inclusive complete maximum 9114 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 9114 bytes.
--- @brief Construct Ros2Flexiv_msgsSrvSetJointInertiaScale_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsSrvSetJointInertiaScale_Response value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsSrvSetJointInertiaScale_Response
--- @brief Encode a complete Ros2Flexiv_msgsSrvSetJointInertiaScale_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsSrvSetJointInertiaScale_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..9114 bytes.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.decode
--- @field encode fun(value: Ros2Flexiv_msgsSrvSetJointInertiaScale_Response): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsSrvSetJointInertiaScale_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsSrvSetJointInertiaScale_Response value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsSrvSetJointInertiaScale_Response.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsSrvSetJointInertiaScale_Response
local Ros2Flexiv_msgsSrvSetJointInertiaScale_Response = classes["Ros2Flexiv_msgsSrvSetJointInertiaScale_Response"]

--- @class Ros2Flexiv_msgsSrvSetMaxContactTorque_Request
--- @brief Complete ROS2 flexiv_msgs/srv/SetMaxContactTorque_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_names string[] Strict UTF-8 without NUL; length0..256 bytes. At most 32 contiguous elements; holes and
--extra array keys are rejected.
--- @field max_contact_torques number[] Finite IEEE float64. At most 32 contiguous elements; holes and extra array keys
--are rejected.
--- @brief Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/srv/SetMaxContactTorque_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/srv/SetMaxContactTorque_Request.
--- @brief Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.MAX_WIRE_BYTES: Inclusive complete maximum 8584 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8584 bytes.
--- @brief Construct Ros2Flexiv_msgsSrvSetMaxContactTorque_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsSrvSetMaxContactTorque_Request value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsSrvSetMaxContactTorque_Request
--- @brief Encode a complete Ros2Flexiv_msgsSrvSetMaxContactTorque_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsSrvSetMaxContactTorque_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8584 bytes.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.decode
--- @field encode fun(value: Ros2Flexiv_msgsSrvSetMaxContactTorque_Request): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsSrvSetMaxContactTorque_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsSrvSetMaxContactTorque_Request value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Request.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsSrvSetMaxContactTorque_Request
local Ros2Flexiv_msgsSrvSetMaxContactTorque_Request = classes["Ros2Flexiv_msgsSrvSetMaxContactTorque_Request"]

--- @class Ros2Flexiv_msgsSrvSetMaxContactTorque_Response
--- @brief Complete ROS2 flexiv_msgs/srv/SetMaxContactTorque_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @field setting table Complete nested flexiv_msgs/msg/MaxContactTorque value; no native fields are projected away.
--- @brief Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.NATIVE_TYPE: Exact normalized native type name
--flexiv_msgs/srv/SetMaxContactTorque_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/srv/SetMaxContactTorque_Response.
--- @brief Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.MIN_WIRE_BYTES: Inclusive complete minimum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 30 bytes.
--- @brief Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.MAX_WIRE_BYTES: Inclusive complete maximum 9374 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 9374 bytes.
--- @brief Construct Ros2Flexiv_msgsSrvSetMaxContactTorque_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Flexiv_msgsSrvSetMaxContactTorque_Response value New mutable complete value; no ROS resource.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.encode
--- @field new fun(values?: table): Ros2Flexiv_msgsSrvSetMaxContactTorque_Response
--- @brief Encode a complete Ros2Flexiv_msgsSrvSetMaxContactTorque_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Flexiv_msgsSrvSetMaxContactTorque_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 30..9374 bytes.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.decode
--- @field encode fun(value: Ros2Flexiv_msgsSrvSetMaxContactTorque_Response): string
--- @brief Decode exactly one complete Ros2Flexiv_msgsSrvSetMaxContactTorque_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Flexiv_msgsSrvSetMaxContactTorque_Response value New complete value; failures raise Lua errors.
--- @see Ros2Flexiv_msgsSrvSetMaxContactTorque_Response.encode
--- @field decode fun(bytes: string): Ros2Flexiv_msgsSrvSetMaxContactTorque_Response
local Ros2Flexiv_msgsSrvSetMaxContactTorque_Response = classes["Ros2Flexiv_msgsSrvSetMaxContactTorque_Response"]

return classes, by_name
