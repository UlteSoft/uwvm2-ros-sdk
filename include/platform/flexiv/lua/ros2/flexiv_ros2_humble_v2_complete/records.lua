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
        ["symbol"] = "Ros2Flexiv_msgsMsgMode",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/Mode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6",
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
            ["MODE_UNKNOWN"] = -1,
            ["MODE_IDLE"] = 0,
            ["MODE_RT_JOINT_TORQUE"] = 1,
            ["MODE_RT_JOINT_IMPEDANCE"] = 2,
            ["MODE_NRT_JOINT_IMPEDANCE"] = 3,
            ["MODE_RT_JOINT_POSITION"] = 4,
            ["MODE_NRT_JOINT_POSITION"] = 5,
            ["MODE_NRT_PLAN_EXECUTION"] = 6,
            ["MODE_NRT_PRIMITIVE_EXECUTION"] = 7,
            ["MODE_RT_CARTESIAN_MOTION_FORCE"] = 8,
            ["MODE_NRT_CARTESIAN_MOTION_FORCE"] = 9,
            ["MODE_NRT_SUPER_PRIMITIVE"] = 10,
        },
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
--- @details Original int8 literal -1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_UNKNOWN integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_IDLE.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_IDLE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_RT_JOINT_TORQUE.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_RT_JOINT_TORQUE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_RT_JOINT_IMPEDANCE.
--- @details Original int8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_RT_JOINT_IMPEDANCE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_JOINT_IMPEDANCE.
--- @details Original int8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_JOINT_IMPEDANCE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_RT_JOINT_POSITION.
--- @details Original int8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_RT_JOINT_POSITION integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_JOINT_POSITION.
--- @details Original int8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_JOINT_POSITION integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_PLAN_EXECUTION.
--- @details Original int8 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_PLAN_EXECUTION integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_PRIMITIVE_EXECUTION.
--- @details Original int8 literal 7; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_PRIMITIVE_EXECUTION integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_RT_CARTESIAN_MOTION_FORCE.
--- @details Original int8 literal 8; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_RT_CARTESIAN_MOTION_FORCE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_CARTESIAN_MOTION_FORCE.
--- @details Original int8 literal 9; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_CARTESIAN_MOTION_FORCE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_SUPER_PRIMITIVE.
--- @details Original int8 literal 10; consumes no instance wire bytes. Treat as read-only.
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

return classes, by_name
