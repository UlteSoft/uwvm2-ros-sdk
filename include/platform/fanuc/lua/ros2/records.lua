-- @file records.lua
-- @brief Represent the complete original FANUC ROS 2 canonical value catalog.
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
        ["symbol"] = "Ros2Fanuc_msgsMsgIOType",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/IOType",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1815aa6b1bcab1efe21de0e31570ca650553b5c70f0793301f82c0ca7934c586",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "type",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["AI"] = "AI",
            ["AO"] = "AO",
            ["DI"] = "DI",
            ["DO"] = "DO",
            ["RI"] = "RI",
            ["RO"] = "RO",
            ["SI"] = "SI",
            ["SO"] = "SO",
            ["WI"] = "WI",
            ["WO"] = "WO",
            ["UI"] = "UI",
            ["UO"] = "UO",
            ["WSI"] = "WSI",
            ["WSO"] = "WSO",
            ["F"] = "F",
            ["M"] = "M",
            ["GI"] = "GI",
            ["GO"] = "GO",
        },
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsMsgAnalogIO",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/AnalogIO",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d62097527ba99bf6e803283350161cd1415173a22eb3cb20331a232366076d00",
        ["minimum"] = 10,
        ["maximum"] = 74,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "io_type",
                ["type"] = "Ros2Fanuc_msgsMsgIOType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "index",
                ["type"] = "uint16",
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsMsgAnalogIOCmd",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/AnalogIOCmd",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_62f38a088ed23f8daf7163f26514ae1aabd7b1b64845ccdbc281cb7839d857ba",
        ["minimum"] = 4,
        ["maximum"] = 2372,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "values",
                ["type"] = "Ros2Fanuc_msgsMsgAnalogIO",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 10,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsMsgAnalogIOState",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/AnalogIOState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_820b41fecbf6db8e2b2e67d60cd1167cf474b22ca6c489f4d2d64dd33eaac9a4",
        ["minimum"] = 4,
        ["maximum"] = 2372,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "values",
                ["type"] = "Ros2Fanuc_msgsMsgAnalogIO",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 10,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsMsgBoolIO",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/BoolIO",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9209ae1b8f5407a31beface0a3286f58bd823aabdc560c2a4bf4a9b1ca125aa7",
        ["minimum"] = 7,
        ["maximum"] = 71,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "io_type",
                ["type"] = "Ros2Fanuc_msgsMsgIOType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "index",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
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
        ["symbol"] = "Ros2Fanuc_msgsMsgCollaborativeSpeedScaling",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/CollaborativeSpeedScaling",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_693a3b581527d2eaf0f697f31e87ca2da428d1f51b821d42d6b06af387a2fb45",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "collaborative_speed_scaling",
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
        ["symbol"] = "Ros2Fanuc_msgsMsgConnectionStatus",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/ConnectionStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8ce24fb87538922b1f3c0ae856eb223d716143064eb46a6cfce5fec01b45b078",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "is_connected",
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
        ["symbol"] = "Ros2Fanuc_msgsMsgForceSensor",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/ForceSensor",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_06c99b43d7347646179850f3ba79192da7ce71296667d93d88659efbc1004032",
        ["minimum"] = 28,
        ["maximum"] = 28,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "force_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "force_z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "moment_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "moment_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "moment_z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "fs_type",
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
        ["symbol"] = "Ros2Fanuc_msgsMsgFrame",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/Frame",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_609d1b7e49315f7f0a0fe86fa997673acd0d009e57b563690f36624b59b9effb",
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
                ["name"] = "w",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "p",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "r",
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
        ["symbol"] = "Ros2Fanuc_msgsMsgIOCmd",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/IOCmd",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_462552bbaa3c9ed4caaf3108960d514e4ab61fcf2d6a84f0465b485bec1de45d",
        ["minimum"] = 4,
        ["maximum"] = 2276,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "values",
                ["type"] = "Ros2Fanuc_msgsMsgBoolIO",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 7,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsMsgIOState",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/IOState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_332533445014c03d626a2c4dbdffd9421748aa6b73f49d407441fd6b9f2b24d8",
        ["minimum"] = 4,
        ["maximum"] = 2276,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "values",
                ["type"] = "Ros2Fanuc_msgsMsgBoolIO",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 7,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsMsgNumReg",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/NumReg",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0fb9344c5768ea52ab072939f368f1e73dcc0ff83e74b4cb6d35fca47c1d29cc",
        ["minimum"] = 6,
        ["maximum"] = 6,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "index",
                ["type"] = "uint16",
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsMsgNumRegCmd",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/NumRegCmd",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9c76500073889377525a0802c46bd96589a2639dd9534cf7ad2b9956cd95b5b6",
        ["minimum"] = 4,
        ["maximum"] = 196,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "values",
                ["type"] = "Ros2Fanuc_msgsMsgNumReg",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 6,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsMsgNumRegState",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/NumRegState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9c8ff4917a6dd033e6a6776ae8525e93c2924d776f05fd54e7e8d2251fc48b3a",
        ["minimum"] = 4,
        ["maximum"] = 196,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "values",
                ["type"] = "Ros2Fanuc_msgsMsgNumReg",
                ["array"] = "sequence",
                ["count"] = 32,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 6,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsMsgRMIStatus",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/RMIStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dc2e7eaabf44807142581905838f8951653682a6c6d61ebcf56494b16a10d5e8",
        ["minimum"] = 24,
        ["maximum"] = 1048,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "program_status",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "next_sequence",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "last_sequence",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "last_sequence_error",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "last_sequence_instruction",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "last_sequence_error_message",
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
        ["symbol"] = "Ros2Fanuc_msgsMsgRobotStatus",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/RobotStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3f31ee3631dc6f4c90eb5ded6209ccebf0f4193ddfe5f5032bdd2bcd71f8cc31",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "in_error",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "tp_enabled",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "e_stopped",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "motion_possible",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "contact_stop_mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {
            ["CONTACT_STOP_MODE_NONE"] = 0,
            ["CONTACT_STOP_MODE_SAFE"] = 1,
            ["CONTACT_STOP_MODE_STOP"] = 2,
            ["CONTACT_STOP_MODE_DSBL"] = 3,
            ["CONTACT_STOP_MODE_ESCP"] = 4,
        },
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsMsgRobotStatusExt",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/msg/RobotStatusExt",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8ba47a11bfbe02026fe79b32e1ed02e5f609499ea55bb57c9f09af9fba389648",
        ["minimum"] = 18,
        ["maximum"] = 1042,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "error_code",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "in_motion",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "drives_powered",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "gen_override",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed_clamp_limit",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "control_mode",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvCfgForceSensor_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/CfgForceSensor_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_01973ed21546cb747ad2ce2a990a8ec4e70efb66e1c8fc8856cf1082870984ff",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "do_reset",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "fs_type",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvCfgForceSensor_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/CfgForceSensor_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_41799ce44c937b1524889391db61e2b4d35795055cb4bbacfe5cc8bbd5b9a37b",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetAnalogIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetAnalogIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cd567f97de2de581975c3d4f280eec545dea37c941d316fc3708bbc4d3af94d9",
        ["minimum"] = 6,
        ["maximum"] = 70,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "io_type",
                ["type"] = "Ros2Fanuc_msgsMsgIOType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "index",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetAnalogIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetAnalogIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3b53d3ce95d95454a782778c160fcc102ead869c5681c9c67224c373fef1b217",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetBoolIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetBoolIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ce8c4b1efd2828e92656e897baf041e8965367a236079231101807c898d4b50c",
        ["minimum"] = 6,
        ["maximum"] = 70,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "io_type",
                ["type"] = "Ros2Fanuc_msgsMsgIOType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "index",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetBoolIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetBoolIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7dbdcdde8d76c4ef422ea158551dd912273220c25a08f28fc8d19fdf8bc8a01c",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetCartesianPosition_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetCartesianPosition_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a694a17bde88131efcadac4f134464a7777beab4b09e17624ae7b173ab62c3e4",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetCartesianPosition_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetCartesianPosition_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0516f0145717b06550674e02f0b9c47f9b312f4f361c791f56257fbb79e67329",
        ["minimum"] = 54,
        ["maximum"] = 54,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "timetag",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "utool",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "uframe",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "front",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "up",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "left",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "flip",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "turn4",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "turn5",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "turn6",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
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
                ["name"] = "w",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "p",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "r",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ext1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ext2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ext3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetGroupIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetGroupIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dbd2e8e791e8debc745843827ed296b51bf84159f4c4fe5d912c231d621de216",
        ["minimum"] = 6,
        ["maximum"] = 70,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "io_type",
                ["type"] = "Ros2Fanuc_msgsMsgIOType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "index",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetGroupIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetGroupIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9e131b91f36badc90ddae54a9855095241ab86c51b419b684d62879fae0bda7f",
        ["minimum"] = 6,
        ["maximum"] = 6,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "value",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetNumReg_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetNumReg_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_727b5ff4ab9c8976280df12e80d3aee03b31288087adb94ee82161574fc8dcb5",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "index",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetNumReg_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetNumReg_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_78ae7ff82b3b2cd7d512fee8335f14a0759a71425fcf3d1b150dbe5e2a0179b3",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetPayloadComp_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetPayloadComp_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d48b88619f4a68ceeed02336e9ef078c27905707a21d977448fbbfbd560f398d",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "payload_schedule_id",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetPayloadComp_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetPayloadComp_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_012b216c949f99755a36678b6be28d032f698b472ce4fa9ba975bc6d453ae4e4",
        ["minimum"] = 32,
        ["maximum"] = 32,
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
                ["name"] = "cg_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "cg_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "cg_z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "in_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "in_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "in_z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetPayloadID_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetPayloadID_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6c943659905c8adc7aa4b73832584994c83bfe009d18dc30a11d99b9fc0d6eef",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsSrvGetPayloadID_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetPayloadID_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5551f4eab590c87fd7679d593c9c446903bdaa02aa1ed2512b146768122a950c",
        ["minimum"] = 6,
        ["maximum"] = 6,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "payload_schedule_id",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetPayloadValue_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetPayloadValue_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d82667bd644873ae4fa5de0289ed94791eb2a7af49c1b8f86ed7f91cf875407a",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "payload_schedule_id",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetPayloadValue_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetPayloadValue_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c3361ceec2ccd5b4d3ef566cbd885f8cddba75b4f1dc1712144147827689f06d",
        ["minimum"] = 32,
        ["maximum"] = 32,
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
                ["name"] = "cg_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "cg_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "cg_z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "in_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "in_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "in_z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetPosReg_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetPosReg_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f7f1391c5ea385bff615d95c5e38f01a809828b142112829dc436916b063505a",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "index",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetPosReg_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetPosReg_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e540225b0d532c460905582ad99ee175dd771e971c7e75f5dfb9325d39ed6b27",
        ["minimum"] = 89,
        ["maximum"] = 601,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "representation",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "utool",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "uframe",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "front",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "up",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "left",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "flip",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "turn4",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "turn5",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "turn6",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
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
                ["name"] = "w",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "p",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "r",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ext1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ext2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ext3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j6",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j7",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j8",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j9",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetTCPSpeed_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetTCPSpeed_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6bdfd44465b75bbd4e232f802dbd3c0bfa28e90a93f9a28b3c15fb150bce7ac7",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetTCPSpeed_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetTCPSpeed_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3ec07d99342f275506452f32076f9e1ea01bf32f43662311708a9b44ca951147",
        ["minimum"] = 13,
        ["maximum"] = 13,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "timetag",
                ["type"] = "int32",
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
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetUFrameData_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetUFrameData_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c1ef7077fd7f61ed8ff46931c8e39c5950658cfe1d36cffac10083ab304307be",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "uframe_number",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetUFrameData_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetUFrameData_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f956e1447bd4a15f547fdf5d6775836018d50153270fe8863c4b30d83422fd2e",
        ["minimum"] = 30,
        ["maximum"] = 30,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "uframe_number",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "frame",
                ["type"] = "Ros2Fanuc_msgsMsgFrame",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetUFrameUTool_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetUFrameUTool_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3d57da6f8003b33b2a079d4f284eb0f182d7e088074112b7f4ee25d3113bd443",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetUFrameUTool_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetUFrameUTool_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f9cb64b89f17b6811e4073b9f94d0fd6844d21ec4b846f78bfd13cb14a35a6b3",
        ["minimum"] = 7,
        ["maximum"] = 7,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "uframe_number",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "utool_number",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetUToolData_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetUToolData_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_10c3799dcb1b09dbcb6d1b794a00ecfaf69a8f457d95eeb92855f79dba7be1bc",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "utool_number",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvGetUToolData_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/GetUToolData_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f3a2b94f337cec9c58156b803675f38885350cc3fc3171234c0d361afc800d81",
        ["minimum"] = 30,
        ["maximum"] = 30,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "utool_number",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "frame",
                ["type"] = "Ros2Fanuc_msgsMsgFrame",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvReadError_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/ReadError_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4b67ed8e2ecccefb6bdead80249f5916e6ea192d822183292db43351839fb6f9",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "count",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 1,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsSrvReadError_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/ReadError_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6e28db10c7afb06cb1256f6d74a43e26c5efa6c13fec8826ae0e623a5eb954b6",
        ["minimum"] = 25,
        ["maximum"] = 2585,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "count",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "error_data",
                ["type"] = "string",
                ["array"] = "array",
                ["count"] = 5,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsSrvReset_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/Reset_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b73f661d569f6af8dad1cd6625f4c0c55ef2c14c79b3e9af0f17fdc02736abc4",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsSrvReset_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/Reset_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5e9b92e5a112b4934ce0893afaa09156fdb47c26b0aa6ae9a27d61920d308ab8",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetAnalogIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetAnalogIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a6bb4acfae23db79464faff849f359657537026d7c79f8a6c60259caec5e87f4",
        ["minimum"] = 10,
        ["maximum"] = 74,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "io_type",
                ["type"] = "Ros2Fanuc_msgsMsgIOType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "index",
                ["type"] = "uint16",
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsSrvSetAnalogIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetAnalogIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_aeac383e2c4a292f1237494bff5b261cd0197542e00456b4ee0edf9b7fe8a39b",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetBoolIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetBoolIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0e8ace58c769670a2519e733d020a3ca902bff99982514d5cd9ecda391c1a4cf",
        ["minimum"] = 7,
        ["maximum"] = 71,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "io_type",
                ["type"] = "Ros2Fanuc_msgsMsgIOType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "index",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetBoolIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetBoolIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c9c68ca577dd6e4d1743385d9c69c8f1c6e0780ae247877d823ab97a68e675a0",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetGenOverride_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetGenOverride_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7d321e33aaf6f58013c33ffc012c1ddbd27aefff3f21d7456030a1d590362039",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "value",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetGenOverride_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetGenOverride_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1ffcb25cad7dbf51c216753dac2c117a191fb081a5a562e63d34d447e61f0a59",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetGroupIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetGroupIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_42a76aec283e26e3a2c99bb27a23778e34effb6c3328754793f783038a2b84bd",
        ["minimum"] = 8,
        ["maximum"] = 72,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "io_type",
                ["type"] = "Ros2Fanuc_msgsMsgIOType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "index",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "value",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetGroupIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetGroupIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_aa6d2c99e8817273f8f2ab179df61d60efd8ee2cee0e1ec76c647956e22bff17",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetNumReg_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetNumReg_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7e362b671b8770db33f3876308c41a930863a0805771fa05fcbb170782207e36",
        ["minimum"] = 6,
        ["maximum"] = 6,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "index",
                ["type"] = "uint16",
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsSrvSetNumReg_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetNumReg_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7c7850ad8bb5c861d9b436311a8cf985e2e029d362877be80c5a6cb19021e482",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetPayloadComp_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetPayloadComp_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_92c495d71657249e15c172e850aa91869929a25817437567778df1b01d9037a8",
        ["minimum"] = 30,
        ["maximum"] = 30,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "payload_schedule_id",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
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
                ["name"] = "cg_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "cg_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "cg_z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "in_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "in_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "in_z",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetPayloadComp_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetPayloadComp_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_37a9876e2a9c514fa8c4337ff1351f778d350318bdc6d8aa5d569b4039a2f76b",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetPayloadID_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetPayloadID_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_aa15b59db17d2afb7ef9e74676a9b744763954ae063efafb91a3ab3c9852a1c0",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "payload_schedule_id",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetPayloadID_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetPayloadID_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7b704b36da10dc71b4cfaad92ea02ed22e4966077dc0940b03b8b8e49c5769c7",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetPayloadValue_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetPayloadValue_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5d56ce8f2f8df9c3450d6a5dc77e9e77861471805aa6b9c6f8815c2e7c324974",
        ["minimum"] = 31,
        ["maximum"] = 31,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "payload_schedule_id",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
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
                ["name"] = "cg_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "cg_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "cg_z",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "use_in",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "in_x",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "in_y",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "in_z",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetPayloadValue_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetPayloadValue_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_09f30071b49ac57353429e8a2862ee80d3dcab9237e8192d008c12a3628cc6ab",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetPosReg_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetPosReg_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f9af742e55a044a1a363a45cbe4a0a8ce4ca62fcaf43759041cef89149d96d30",
        ["minimum"] = 87,
        ["maximum"] = 599,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "index",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "representation",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "utool",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "uframe",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "front",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "up",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "left",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "flip",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "turn4",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "turn5",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "turn6",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
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
                ["name"] = "w",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "p",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "r",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ext1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ext2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ext3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j3",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j4",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j5",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j6",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j7",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j8",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "j9",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetPosReg_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetPosReg_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fb6f889d30c921df31f55cdc760346eb0d655816e71b52d4aac7a1e56d4e9cb2",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetUFrameData_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetUFrameData_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a067808d8fe5ca1418e18ac492313ad9211cc8f3bf402ad0ac51a2850a2bc169",
        ["minimum"] = 26,
        ["maximum"] = 26,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "uframe_number",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "frame",
                ["type"] = "Ros2Fanuc_msgsMsgFrame",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetUFrameData_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetUFrameData_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f436e4fe5bd06b048f4f53d2df4933ac8eac5a784f31b42ccf13f5eaf1696eee",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetUFrameUTool_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetUFrameUTool_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0b86b0a37e4dc23e0ff651df867f5958e7440bf4712b47779d69ca699af4c09f",
        ["minimum"] = 3,
        ["maximum"] = 3,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "uframe_number",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "utool_number",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetUFrameUTool_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetUFrameUTool_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b77837445c9663f29f23465cc7178a183d245486f74bcff732fc2f4025b82a67",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetUToolData_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetUToolData_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7d5b911133645744c8def79bc16c8b7c4ee4e87a057ea33741031d6a94e620ab",
        ["minimum"] = 26,
        ["maximum"] = 26,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "utool_number",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "frame",
                ["type"] = "Ros2Fanuc_msgsMsgFrame",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSetUToolData_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SetUToolData_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b33d265f275dfcb5fe20432d5e38b55574c85260135bded477c2d5fa2c85c7cb",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "group",
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
        ["symbol"] = "Ros2Fanuc_msgsSrvSwitchControlState_Request",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SwitchControlState_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b485b7071fe2737c7dc8f0360a15b7be30f997430142d8260454fd423172cc21",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["STOP"] = 0,
            ["START"] = 1,
        },
    },
    {
        ["symbol"] = "Ros2Fanuc_msgsSrvSwitchControlState_Response",
        ["ros_version"] = 2,
        ["native_type"] = "fanuc_msgs/srv/SwitchControlState_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8a3d7a3c1037174f4118843e34222ef8811eff3cc885a0c688d98071e1a9496c",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
        ["symbol"] = "Ros2Rmi_msgsMsgCallParam",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/msg/CallParam",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ed625d80db6c4314b8373f2d205344d6ab8d71be46182dab5a497d36564a2255",
        ["minimum"] = 16,
        ["maximum"] = 592,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "type",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "int_value",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "float_value",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "string_value",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["AR"] = "AR",
            ["PR"] = "PR",
            ["SR"] = "SR",
            ["R"] = "R",
            ["P"] = "P",
            ["INT"] = "INT",
            ["INTEGER"] = "INT",
            ["FLOAT"] = "FLOAT",
            ["STRING"] = "String",
            ["STR"] = "String",
        },
    },
    {
        ["symbol"] = "Ros2Rmi_msgsMsgCartesian",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/msg/Cartesian",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2a0e1fff119007499a63d55c9722f666be1436a9212d9e43b556af347e8e4b40",
        ["minimum"] = 45,
        ["maximum"] = 45,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "utool",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 1,
            },
            {
                ["name"] = "uframe",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 0,
            },
            {
                ["name"] = "front",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 1,
            },
            {
                ["name"] = "up",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 1,
            },
            {
                ["name"] = "left",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 0,
            },
            {
                ["name"] = "flip",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 0,
            },
            {
                ["name"] = "turn4",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 0,
            },
            {
                ["name"] = "turn5",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 0,
            },
            {
                ["name"] = "turn6",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 0,
            },
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
                ["name"] = "w",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "p",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "r",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ext1",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ext2",
                ["type"] = "float32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "ext3",
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
        ["symbol"] = "Ros2Rmi_msgsMsgCommand",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/msg/Command",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d2741856b8cdf57aa716566edfc705957611557b7da5b6099b173903bdd9960c",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "type",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["INITIAZLIE"] = "INITIALIZE",
            ["INIT"] = "INITIALIZE",
            ["ABORT"] = "ABORT",
            ["PAUSE"] = "PAUSE",
            ["RESUME"] = "RESUME",
        },
    },
    {
        ["symbol"] = "Ros2Rmi_msgsMsgCommandOptions",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/msg/CommandOptions",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0be0c508035725bf9686807cb8b5267e23f709b7aa34b0910a44ff3604670147",
        ["minimum"] = 12,
        ["maximum"] = 1036,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "use_group_mask",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "group_mask",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = 1,
            },
            {
                ["name"] = "use_rtsa",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["default"] = "ON",
["name"] = "rtsa",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "use_pltzmode",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["default"] = "ZERODN",
["name"] = "pltzmode",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["RTSA_ON"] = "ON",
            ["RTSA_OFF"] = "OFF",
            ["PLTZ_ZERODN"] = "ZERODN",
            ["PLTZ_ZEROUP"] = "ZEROUP",
            ["PLTZ_PSPIDN"] = "PSPIDN",
            ["PLTZ_PSPIUP"] = "PSPIUP",
            ["PLTZ_MSPIDN"] = "MSPIDN",
            ["PLTZ_MSPIUP"] = "MSPIUP",
        },
    },
    {
        ["symbol"] = "Ros2Rmi_msgsMsgJoint",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/msg/Joint",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0ba90adf6cc287bc306fd2a77c52c2e4d62731cfac37bb2cc116ee846249a42d",
        ["minimum"] = 36,
        ["maximum"] = 36,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "positions",
                ["type"] = "float32",
                ["array"] = "array",
                ["count"] = 9,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rmi_msgsMsgMotionInstructionOptions",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/msg/MotionInstructionOptions",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f8d9ed2e083c577b0cae8965df71aa99643d12ce5a5a6ce558894edfb756bcc6",
        ["minimum"] = 52,
        ["maximum"] = 2612,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "use_acc",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "acc",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "use_offset_pr_number",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "offset_pr_number",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "use_vision_pr_number",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "vision_pr_number",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "use_wrist_joint",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["default"] = "ON",
["name"] = "wrist_joint",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "use_mrot",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["default"] = "ON",
["name"] = "mrot",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "use_lcb_type",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "lcb_type",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "use_lcb_value",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "lcb_value",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "use_port_type",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "port_type",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "use_port_number",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "port_number",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "use_port_value",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "port_value",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "use_tool_offset_pr_number",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "tool_offset_pr_number",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "use_alim",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "alim",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "use_alim_reg",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "alim_reg",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "use_no_blend",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["default"] = "ON",
["name"] = "no_blend",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["LCB_TYPE_TB"] = "TB",
            ["LCB_TYPE_TA"] = "TA",
            ["LCB_TYPE_DB"] = "DB",
            ["PORT_TYPE_DOUT"] = 1,
            ["PORT_TYPE_DO"] = 1,
            ["PORT_TYPE_ROUT"] = 2,
            ["PORT_TYPE_RO"] = 2,
        },
    },
    {
        ["symbol"] = "Ros2Rmi_msgsMsgMotionType",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/msg/MotionType",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c51cc7a32f6853d13bedaf3306dd79e445de6c0d16ae0ec39034ce0ae6d19c8a",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["default"] = "J",
["name"] = "type",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["J"] = "J",
            ["JOINT"] = "J",
            ["L"] = "L",
            ["LINEAR"] = "L",
            ["C"] = "C",
            ["CIRCULAR"] = "C",
            ["S"] = "S",
            ["SPLINE"] = "S",
        },
    },
    {
        ["symbol"] = "Ros2Rmi_msgsMsgRepresentation",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/msg/Representation",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b439506f2dc2135bb484b3abb308dfdf5c07367af5a4d6d0f5435ad9bba8ea6f",
        ["minimum"] = 4,
        ["maximum"] = 516,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["default"] = "JOINT",
["name"] = "representation",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["JOINT"] = "JOINT",
            ["J"] = "JOINT",
            ["CARTESIAN"] = "CARTESIAN",
            ["CART"] = "CARTESIAN",
            ["C"] = "CARTESIAN",
        },
    },
    {
        ["symbol"] = "Ros2Rmi_msgsMsgSpeedType",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/msg/SpeedType",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e4f4dbda84d8d8cd4d026b0beb52005663c7c4ee602c8d1e4d5853589777c282",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["default"] = "Percent",
["name"] = "type",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["PERCENT"] = "Percent",
            ["PERCENTAGE"] = "Percent",
            ["MMSEC"] = "mmSec",
            ["INCHMIN"] = "InchMin",
            ["TIME"] = "Time",
            ["SECONDS"] = "Time",
            ["SEC"] = "Time",
            ["MSEC"] = "mSec",
        },
    },
    {
        ["symbol"] = "Ros2Rmi_msgsMsgTermType",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/msg/TermType",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_5ddbb483126e0ab5799ed865480da457179d83a271581c1471aec940bedc4535",
        ["minimum"] = 4,
        ["maximum"] = 68,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["default"] = "FINE",
["name"] = "type",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["FINE"] = "FINE",
            ["CNT"] = "CNT",
            ["CR"] = "CR",
            ["CD"] = "CD",
        },
    },
    {
        ["symbol"] = "Ros2Rmi_msgsSrvAddCall_Request",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddCall_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4d652cfbaef29487a0a688932ee926d7a4026c5e7ac8a0eace583b503c37bcd8",
        ["minimum"] = 8,
        ["maximum"] = 9992,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "program_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "params",
                ["type"] = "Ros2Rmi_msgsMsgCallParam",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rmi_msgsSrvAddCall_Response",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddCall_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4f8495dfc3c69ec640444fd24843a7bb3e30008d90945bdd64817d8acb7964e1",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sequence_id",
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
        ["symbol"] = "Ros2Rmi_msgsSrvAddMotionInstruction_Request",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddMotionInstruction_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3f22c49cb2d32e6a8f3954f3d3cbf0021c87e0363b1f2ded4ac20a97a5b59391",
        ["minimum"] = 238,
        ["maximum"] = 4014,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "motion_type",
                ["type"] = "Ros2Rmi_msgsMsgMotionType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "incremental",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
                ["default"] = false,
            },
            {
                ["name"] = "representation",
                ["type"] = "Ros2Rmi_msgsMsgRepresentation",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "joint",
                ["type"] = "Ros2Rmi_msgsMsgJoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 36,
            },
            {
                ["name"] = "cartesian",
                ["type"] = "Ros2Rmi_msgsMsgCartesian",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 45,
            },
            {
                ["name"] = "speed_type",
                ["type"] = "Ros2Rmi_msgsMsgSpeedType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "speed_value",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "term_type",
                ["type"] = "Ros2Rmi_msgsMsgTermType",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "term_value",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "via_representation",
                ["type"] = "Ros2Rmi_msgsMsgRepresentation",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "via_joint",
                ["type"] = "Ros2Rmi_msgsMsgJoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 36,
            },
            {
                ["name"] = "via_cartesian",
                ["type"] = "Ros2Rmi_msgsMsgCartesian",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 45,
            },
            {
                ["name"] = "options",
                ["type"] = "Ros2Rmi_msgsMsgMotionInstructionOptions",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 52,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Rmi_msgsSrvAddMotionInstruction_Response",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddMotionInstruction_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_79fee3e965fda63c3a53ad2178ff48614878acc9f6af74cc27a8c2812b68ac6b",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sequence_id",
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
        ["symbol"] = "Ros2Rmi_msgsSrvAddSetPayload_Request",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddSetPayload_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_45da9f81e8c26f49490a4e6eba5c8be0ee67285124540eb1c3e1f2c3e0fd821b",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "schedule_number",
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
        ["symbol"] = "Ros2Rmi_msgsSrvAddSetPayload_Response",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddSetPayload_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bfc5bc7b92f292c2980496cb18fbe953ea1b49d45f7950f0125bbbf880bdf72a",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sequence_id",
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
        ["symbol"] = "Ros2Rmi_msgsSrvAddSetUFrame_Request",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddSetUFrame_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_64c83dd2be89b4b6dcf3b3c2ea70184971e6a359914ff1a5cd26d4b114d35475",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "frame_number",
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
        ["symbol"] = "Ros2Rmi_msgsSrvAddSetUFrame_Response",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddSetUFrame_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e344ef6efacc8d569111d1c6ef4028e1a5bb54af49d3e8f486ae89b83c674647",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sequence_id",
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
        ["symbol"] = "Ros2Rmi_msgsSrvAddSetUTool_Request",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddSetUTool_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d1327022326cd41caed6001449517a41f589e148c38d6db30923922175f05c46",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "tool_number",
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
        ["symbol"] = "Ros2Rmi_msgsSrvAddSetUTool_Response",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddSetUTool_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dd4c36458027b87559200cf5f6aa72a60af2d103f663f2fa9daca47ce8020ff6",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sequence_id",
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
        ["symbol"] = "Ros2Rmi_msgsSrvAddWaitDIN_Request",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddWaitDIN_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c32214f1ff1b0b6980583fc3088f412e856efb5eaa9c336cf798ef8ad85c61ab",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "port_number",
                ["type"] = "uint16",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 2,
            },
            {
                ["name"] = "port_value",
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
        ["symbol"] = "Ros2Rmi_msgsSrvAddWaitDIN_Response",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddWaitDIN_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7d3933f573619ba49f19df7c11f1d73ef211c17581f660f8c0fbcc152cd519d4",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sequence_id",
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
        ["symbol"] = "Ros2Rmi_msgsSrvAddWaitTime_Request",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddWaitTime_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8487f4b7dcfb044c72f7fb62a31ffe9cdc4321a9ebdaa0550a363e32acbadc46",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "time",
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
        ["symbol"] = "Ros2Rmi_msgsSrvAddWaitTime_Response",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/AddWaitTime_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f9578c08b971f32f91d1c94b8713cafe648e25147394e20c85bb335254fa20c8",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sequence_id",
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
        ["symbol"] = "Ros2Rmi_msgsSrvCallCommand_Request",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/CallCommand_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d1f890a2beec0ca9294ff4f641d1738855d576a917ed05eb34517886c73f381c",
        ["minimum"] = 16,
        ["maximum"] = 1104,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "command",
                ["type"] = "Ros2Rmi_msgsMsgCommand",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "options",
                ["type"] = "Ros2Rmi_msgsMsgCommandOptions",
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
        ["symbol"] = "Ros2Rmi_msgsSrvCallCommand_Response",
        ["ros_version"] = 2,
        ["native_type"] = "rmi_msgs/srv/CallCommand_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_64d92e6fadc651073469318ad15d2e98ec3d059c629838cefc5820b17ab6f1bc",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result",
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
local Ros2Control_msgsActionFollowJointTrajectory_Feedback = classes["Ros2Control_msgsActionFollowJointTrajectory_Feedback"]

--- @class Ros2Fanuc_msgsMsgIOType
--- @brief Complete ROS2 fanuc_msgs/msg/IOType value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field type string Strict UTF-8 without NUL; length0..64 bytes.
--- @brief Ros2Fanuc_msgsMsgIOType.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOType.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgIOType.NATIVE_TYPE: Exact normalized native type name fanuc_msgs/msg/IOType.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOType.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/IOType.
--- @brief Ros2Fanuc_msgsMsgIOType.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOType.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgIOType.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOType.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgIOType.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOType.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsMsgIOType.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOType.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.AI.
--- @details Original string literal AI; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field AI integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.AO.
--- @details Original string literal AO; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field AO integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.DI.
--- @details Original string literal DI; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field DI integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.DO.
--- @details Original string literal DO; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field DO integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.RI.
--- @details Original string literal RI; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field RI integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.RO.
--- @details Original string literal RO; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field RO integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.SI.
--- @details Original string literal SI; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field SI integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.SO.
--- @details Original string literal SO; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field SO integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.WI.
--- @details Original string literal WI; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field WI integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.WO.
--- @details Original string literal WO; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field WO integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.UI.
--- @details Original string literal UI; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field UI integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.UO.
--- @details Original string literal UO; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field UO integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.WSI.
--- @details Original string literal WSI; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field WSI integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.WSO.
--- @details Original string literal WSO; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field WSO integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.F.
--- @details Original string literal F; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field F integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.M.
--- @details Original string literal M; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field M integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.GI.
--- @details Original string literal GI; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field GI integer
--- @brief Native class constant Ros2Fanuc_msgsMsgIOType.GO.
--- @details Original string literal GO; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgIOType.new
--- @field GO integer
--- @brief Construct Ros2Fanuc_msgsMsgIOType with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgIOType value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgIOType.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgIOType
--- @brief Encode a complete Ros2Fanuc_msgsMsgIOType value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgIOType [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros2Fanuc_msgsMsgIOType.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgIOType): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgIOType canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgIOType value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgIOType.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgIOType
local Ros2Fanuc_msgsMsgIOType = classes["Ros2Fanuc_msgsMsgIOType"]

--- @class Ros2Fanuc_msgsMsgAnalogIO
--- @brief Complete ROS2 fanuc_msgs/msg/AnalogIO value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field io_type table Complete nested fanuc_msgs/msg/IOType value; no native fields are projected away.
--- @field index integer Exact uint16 range 0..65535.
--- @field value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Fanuc_msgsMsgAnalogIO.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIO.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgAnalogIO.NATIVE_TYPE: Exact normalized native type name fanuc_msgs/msg/AnalogIO.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIO.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/AnalogIO.
--- @brief Ros2Fanuc_msgsMsgAnalogIO.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIO.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgAnalogIO.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIO.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgAnalogIO.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIO.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Fanuc_msgsMsgAnalogIO.MAX_WIRE_BYTES: Inclusive complete maximum 74 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIO.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 74 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgAnalogIO with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgAnalogIO value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgAnalogIO.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgAnalogIO
--- @brief Encode a complete Ros2Fanuc_msgsMsgAnalogIO value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgAnalogIO [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..74 bytes.
--- @see Ros2Fanuc_msgsMsgAnalogIO.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgAnalogIO): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgAnalogIO canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgAnalogIO value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgAnalogIO.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgAnalogIO
local Ros2Fanuc_msgsMsgAnalogIO = classes["Ros2Fanuc_msgsMsgAnalogIO"]

--- @class Ros2Fanuc_msgsMsgAnalogIOCmd
--- @brief Complete ROS2 fanuc_msgs/msg/AnalogIOCmd value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field values table[] Complete nested fanuc_msgs/msg/AnalogIO value; no native fields are projected away. At
--most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Fanuc_msgsMsgAnalogIOCmd.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIOCmd.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgAnalogIOCmd.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/msg/AnalogIOCmd.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIOCmd.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/AnalogIOCmd.
--- @brief Ros2Fanuc_msgsMsgAnalogIOCmd.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIOCmd.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgAnalogIOCmd.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIOCmd.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgAnalogIOCmd.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIOCmd.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsMsgAnalogIOCmd.MAX_WIRE_BYTES: Inclusive complete maximum 2372 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIOCmd.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2372 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgAnalogIOCmd with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgAnalogIOCmd value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgAnalogIOCmd.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgAnalogIOCmd
--- @brief Encode a complete Ros2Fanuc_msgsMsgAnalogIOCmd value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgAnalogIOCmd [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..2372 bytes.
--- @see Ros2Fanuc_msgsMsgAnalogIOCmd.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgAnalogIOCmd): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgAnalogIOCmd canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgAnalogIOCmd value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgAnalogIOCmd.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgAnalogIOCmd
local Ros2Fanuc_msgsMsgAnalogIOCmd = classes["Ros2Fanuc_msgsMsgAnalogIOCmd"]

--- @class Ros2Fanuc_msgsMsgAnalogIOState
--- @brief Complete ROS2 fanuc_msgs/msg/AnalogIOState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field values table[] Complete nested fanuc_msgs/msg/AnalogIO value; no native fields are projected away. At
--most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Fanuc_msgsMsgAnalogIOState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIOState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgAnalogIOState.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/msg/AnalogIOState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIOState.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/AnalogIOState.
--- @brief Ros2Fanuc_msgsMsgAnalogIOState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIOState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgAnalogIOState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIOState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgAnalogIOState.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIOState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsMsgAnalogIOState.MAX_WIRE_BYTES: Inclusive complete maximum 2372 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgAnalogIOState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2372 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgAnalogIOState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgAnalogIOState value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgAnalogIOState.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgAnalogIOState
--- @brief Encode a complete Ros2Fanuc_msgsMsgAnalogIOState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgAnalogIOState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..2372 bytes.
--- @see Ros2Fanuc_msgsMsgAnalogIOState.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgAnalogIOState): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgAnalogIOState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgAnalogIOState value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgAnalogIOState.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgAnalogIOState
local Ros2Fanuc_msgsMsgAnalogIOState = classes["Ros2Fanuc_msgsMsgAnalogIOState"]

--- @class Ros2Fanuc_msgsMsgBoolIO
--- @brief Complete ROS2 fanuc_msgs/msg/BoolIO value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field io_type table Complete nested fanuc_msgs/msg/IOType value; no native fields are projected away.
--- @field index integer Exact uint16 range 0..65535.
--- @field value boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Fanuc_msgsMsgBoolIO.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgBoolIO.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgBoolIO.NATIVE_TYPE: Exact normalized native type name fanuc_msgs/msg/BoolIO.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgBoolIO.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/BoolIO.
--- @brief Ros2Fanuc_msgsMsgBoolIO.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgBoolIO.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgBoolIO.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgBoolIO.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgBoolIO.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgBoolIO.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros2Fanuc_msgsMsgBoolIO.MAX_WIRE_BYTES: Inclusive complete maximum 71 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgBoolIO.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 71 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgBoolIO with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgBoolIO value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgBoolIO.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgBoolIO
--- @brief Encode a complete Ros2Fanuc_msgsMsgBoolIO value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgBoolIO [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..71 bytes.
--- @see Ros2Fanuc_msgsMsgBoolIO.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgBoolIO): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgBoolIO canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgBoolIO value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgBoolIO.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgBoolIO
local Ros2Fanuc_msgsMsgBoolIO = classes["Ros2Fanuc_msgsMsgBoolIO"]

--- @class Ros2Fanuc_msgsMsgCollaborativeSpeedScaling
--- @brief Complete ROS2 fanuc_msgs/msg/CollaborativeSpeedScaling value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field collaborative_speed_scaling number Finite IEEE float64.
--- @brief Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/msg/CollaborativeSpeedScaling.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/CollaborativeSpeedScaling.
--- @brief Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgCollaborativeSpeedScaling with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgCollaborativeSpeedScaling value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgCollaborativeSpeedScaling
--- @brief Encode a complete Ros2Fanuc_msgsMsgCollaborativeSpeedScaling value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgCollaborativeSpeedScaling [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgCollaborativeSpeedScaling): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgCollaborativeSpeedScaling canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgCollaborativeSpeedScaling value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgCollaborativeSpeedScaling.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgCollaborativeSpeedScaling
local Ros2Fanuc_msgsMsgCollaborativeSpeedScaling = classes["Ros2Fanuc_msgsMsgCollaborativeSpeedScaling"]

--- @class Ros2Fanuc_msgsMsgConnectionStatus
--- @brief Complete ROS2 fanuc_msgs/msg/ConnectionStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field is_connected boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Fanuc_msgsMsgConnectionStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgConnectionStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgConnectionStatus.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/msg/ConnectionStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgConnectionStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/ConnectionStatus.
--- @brief Ros2Fanuc_msgsMsgConnectionStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgConnectionStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgConnectionStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgConnectionStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgConnectionStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgConnectionStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Fanuc_msgsMsgConnectionStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgConnectionStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgConnectionStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgConnectionStatus value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgConnectionStatus.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgConnectionStatus
--- @brief Encode a complete Ros2Fanuc_msgsMsgConnectionStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgConnectionStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Fanuc_msgsMsgConnectionStatus.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgConnectionStatus): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgConnectionStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgConnectionStatus value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgConnectionStatus.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgConnectionStatus
local Ros2Fanuc_msgsMsgConnectionStatus = classes["Ros2Fanuc_msgsMsgConnectionStatus"]

--- @class Ros2Fanuc_msgsMsgForceSensor
--- @brief Complete ROS2 fanuc_msgs/msg/ForceSensor value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field force_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field force_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field force_z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field moment_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field moment_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field moment_z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field fs_type integer Exact uint32 range 0..4294967295.
--- @brief Ros2Fanuc_msgsMsgForceSensor.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgForceSensor.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgForceSensor.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/msg/ForceSensor.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgForceSensor.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/ForceSensor.
--- @brief Ros2Fanuc_msgsMsgForceSensor.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgForceSensor.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgForceSensor.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgForceSensor.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgForceSensor.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgForceSensor.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2Fanuc_msgsMsgForceSensor.MAX_WIRE_BYTES: Inclusive complete maximum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgForceSensor.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 28 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgForceSensor with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgForceSensor value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgForceSensor.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgForceSensor
--- @brief Encode a complete Ros2Fanuc_msgsMsgForceSensor value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgForceSensor [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..28 bytes.
--- @see Ros2Fanuc_msgsMsgForceSensor.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgForceSensor): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgForceSensor canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgForceSensor value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgForceSensor.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgForceSensor
local Ros2Fanuc_msgsMsgForceSensor = classes["Ros2Fanuc_msgsMsgForceSensor"]

--- @class Ros2Fanuc_msgsMsgFrame
--- @brief Complete ROS2 fanuc_msgs/msg/Frame value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field w number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field p number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field r number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Fanuc_msgsMsgFrame.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgFrame.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgFrame.NATIVE_TYPE: Exact normalized native type name fanuc_msgs/msg/Frame.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgFrame.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/Frame.
--- @brief Ros2Fanuc_msgsMsgFrame.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgFrame.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgFrame.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgFrame.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgFrame.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgFrame.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Fanuc_msgsMsgFrame.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgFrame.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgFrame with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgFrame value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgFrame.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgFrame
--- @brief Encode a complete Ros2Fanuc_msgsMsgFrame value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgFrame [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros2Fanuc_msgsMsgFrame.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgFrame): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgFrame canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgFrame value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgFrame.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgFrame
local Ros2Fanuc_msgsMsgFrame = classes["Ros2Fanuc_msgsMsgFrame"]

--- @class Ros2Fanuc_msgsMsgIOCmd
--- @brief Complete ROS2 fanuc_msgs/msg/IOCmd value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field values table[] Complete nested fanuc_msgs/msg/BoolIO value; no native fields are projected away. At
--most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Fanuc_msgsMsgIOCmd.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOCmd.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgIOCmd.NATIVE_TYPE: Exact normalized native type name fanuc_msgs/msg/IOCmd.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOCmd.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/IOCmd.
--- @brief Ros2Fanuc_msgsMsgIOCmd.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOCmd.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgIOCmd.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOCmd.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgIOCmd.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOCmd.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsMsgIOCmd.MAX_WIRE_BYTES: Inclusive complete maximum 2276 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOCmd.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2276 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgIOCmd with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgIOCmd value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgIOCmd.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgIOCmd
--- @brief Encode a complete Ros2Fanuc_msgsMsgIOCmd value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgIOCmd [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..2276 bytes.
--- @see Ros2Fanuc_msgsMsgIOCmd.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgIOCmd): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgIOCmd canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgIOCmd value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgIOCmd.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgIOCmd
local Ros2Fanuc_msgsMsgIOCmd = classes["Ros2Fanuc_msgsMsgIOCmd"]

--- @class Ros2Fanuc_msgsMsgIOState
--- @brief Complete ROS2 fanuc_msgs/msg/IOState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field values table[] Complete nested fanuc_msgs/msg/BoolIO value; no native fields are projected away. At
--most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Fanuc_msgsMsgIOState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgIOState.NATIVE_TYPE: Exact normalized native type name fanuc_msgs/msg/IOState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOState.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/IOState.
--- @brief Ros2Fanuc_msgsMsgIOState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgIOState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgIOState.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsMsgIOState.MAX_WIRE_BYTES: Inclusive complete maximum 2276 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgIOState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2276 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgIOState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgIOState value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgIOState.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgIOState
--- @brief Encode a complete Ros2Fanuc_msgsMsgIOState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgIOState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..2276 bytes.
--- @see Ros2Fanuc_msgsMsgIOState.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgIOState): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgIOState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgIOState value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgIOState.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgIOState
local Ros2Fanuc_msgsMsgIOState = classes["Ros2Fanuc_msgsMsgIOState"]

--- @class Ros2Fanuc_msgsMsgNumReg
--- @brief Complete ROS2 fanuc_msgs/msg/NumReg value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field index integer Exact uint16 range 0..65535.
--- @field value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Fanuc_msgsMsgNumReg.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumReg.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgNumReg.NATIVE_TYPE: Exact normalized native type name fanuc_msgs/msg/NumReg.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumReg.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/NumReg.
--- @brief Ros2Fanuc_msgsMsgNumReg.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumReg.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgNumReg.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumReg.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgNumReg.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumReg.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Fanuc_msgsMsgNumReg.MAX_WIRE_BYTES: Inclusive complete maximum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumReg.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 6 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgNumReg with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgNumReg value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgNumReg.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgNumReg
--- @brief Encode a complete Ros2Fanuc_msgsMsgNumReg value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgNumReg [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..6 bytes.
--- @see Ros2Fanuc_msgsMsgNumReg.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgNumReg): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgNumReg canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgNumReg value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgNumReg.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgNumReg
local Ros2Fanuc_msgsMsgNumReg = classes["Ros2Fanuc_msgsMsgNumReg"]

--- @class Ros2Fanuc_msgsMsgNumRegCmd
--- @brief Complete ROS2 fanuc_msgs/msg/NumRegCmd value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field values table[] Complete nested fanuc_msgs/msg/NumReg value; no native fields are projected away. At
--most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Fanuc_msgsMsgNumRegCmd.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumRegCmd.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgNumRegCmd.NATIVE_TYPE: Exact normalized native type name fanuc_msgs/msg/NumRegCmd.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumRegCmd.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/NumRegCmd.
--- @brief Ros2Fanuc_msgsMsgNumRegCmd.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumRegCmd.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgNumRegCmd.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumRegCmd.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgNumRegCmd.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumRegCmd.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsMsgNumRegCmd.MAX_WIRE_BYTES: Inclusive complete maximum 196 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumRegCmd.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 196 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgNumRegCmd with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgNumRegCmd value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgNumRegCmd.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgNumRegCmd
--- @brief Encode a complete Ros2Fanuc_msgsMsgNumRegCmd value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgNumRegCmd [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..196 bytes.
--- @see Ros2Fanuc_msgsMsgNumRegCmd.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgNumRegCmd): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgNumRegCmd canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgNumRegCmd value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgNumRegCmd.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgNumRegCmd
local Ros2Fanuc_msgsMsgNumRegCmd = classes["Ros2Fanuc_msgsMsgNumRegCmd"]

--- @class Ros2Fanuc_msgsMsgNumRegState
--- @brief Complete ROS2 fanuc_msgs/msg/NumRegState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field values table[] Complete nested fanuc_msgs/msg/NumReg value; no native fields are projected away. At
--most 32 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Fanuc_msgsMsgNumRegState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumRegState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgNumRegState.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/msg/NumRegState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumRegState.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/NumRegState.
--- @brief Ros2Fanuc_msgsMsgNumRegState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumRegState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgNumRegState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumRegState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgNumRegState.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumRegState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsMsgNumRegState.MAX_WIRE_BYTES: Inclusive complete maximum 196 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgNumRegState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 196 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgNumRegState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgNumRegState value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgNumRegState.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgNumRegState
--- @brief Encode a complete Ros2Fanuc_msgsMsgNumRegState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgNumRegState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..196 bytes.
--- @see Ros2Fanuc_msgsMsgNumRegState.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgNumRegState): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgNumRegState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgNumRegState value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgNumRegState.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgNumRegState
local Ros2Fanuc_msgsMsgNumRegState = classes["Ros2Fanuc_msgsMsgNumRegState"]

--- @class Ros2Fanuc_msgsMsgRMIStatus
--- @brief Complete ROS2 fanuc_msgs/msg/RMIStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field program_status integer Exact uint32 range 0..4294967295.
--- @field next_sequence integer Exact uint32 range 0..4294967295.
--- @field last_sequence integer Exact uint32 range 0..4294967295.
--- @field last_sequence_error integer Exact int32 range -2147483648..2147483647.
--- @field last_sequence_instruction string Strict UTF-8 without NUL; length0..512 bytes.
--- @field last_sequence_error_message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Fanuc_msgsMsgRMIStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRMIStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgRMIStatus.NATIVE_TYPE: Exact normalized native type name fanuc_msgs/msg/RMIStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRMIStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/RMIStatus.
--- @brief Ros2Fanuc_msgsMsgRMIStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRMIStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgRMIStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRMIStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgRMIStatus.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRMIStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Fanuc_msgsMsgRMIStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1048 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRMIStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1048 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgRMIStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgRMIStatus value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgRMIStatus.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgRMIStatus
--- @brief Encode a complete Ros2Fanuc_msgsMsgRMIStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgRMIStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..1048 bytes.
--- @see Ros2Fanuc_msgsMsgRMIStatus.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgRMIStatus): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgRMIStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgRMIStatus value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgRMIStatus.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgRMIStatus
local Ros2Fanuc_msgsMsgRMIStatus = classes["Ros2Fanuc_msgsMsgRMIStatus"]

--- @class Ros2Fanuc_msgsMsgRobotStatus
--- @brief Complete ROS2 fanuc_msgs/msg/RobotStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field in_error boolean Exact boolean; encoded as one byte0/1.
--- @field tp_enabled boolean Exact boolean; encoded as one byte0/1.
--- @field e_stopped boolean Exact boolean; encoded as one byte0/1.
--- @field motion_possible boolean Exact boolean; encoded as one byte0/1.
--- @field contact_stop_mode integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsMsgRobotStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRobotStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgRobotStatus.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/msg/RobotStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRobotStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/RobotStatus.
--- @brief Ros2Fanuc_msgsMsgRobotStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRobotStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgRobotStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRobotStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgRobotStatus.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRobotStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Fanuc_msgsMsgRobotStatus.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRobotStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Native class constant Ros2Fanuc_msgsMsgRobotStatus.CONTACT_STOP_MODE_NONE.
--- @details Original uint8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgRobotStatus.new
--- @field CONTACT_STOP_MODE_NONE integer
--- @brief Native class constant Ros2Fanuc_msgsMsgRobotStatus.CONTACT_STOP_MODE_SAFE.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgRobotStatus.new
--- @field CONTACT_STOP_MODE_SAFE integer
--- @brief Native class constant Ros2Fanuc_msgsMsgRobotStatus.CONTACT_STOP_MODE_STOP.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgRobotStatus.new
--- @field CONTACT_STOP_MODE_STOP integer
--- @brief Native class constant Ros2Fanuc_msgsMsgRobotStatus.CONTACT_STOP_MODE_DSBL.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgRobotStatus.new
--- @field CONTACT_STOP_MODE_DSBL integer
--- @brief Native class constant Ros2Fanuc_msgsMsgRobotStatus.CONTACT_STOP_MODE_ESCP.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsMsgRobotStatus.new
--- @field CONTACT_STOP_MODE_ESCP integer
--- @brief Construct Ros2Fanuc_msgsMsgRobotStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgRobotStatus value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgRobotStatus.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgRobotStatus
--- @brief Encode a complete Ros2Fanuc_msgsMsgRobotStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgRobotStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Fanuc_msgsMsgRobotStatus.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgRobotStatus): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgRobotStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgRobotStatus value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgRobotStatus.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgRobotStatus
local Ros2Fanuc_msgsMsgRobotStatus = classes["Ros2Fanuc_msgsMsgRobotStatus"]

--- @class Ros2Fanuc_msgsMsgRobotStatusExt
--- @brief Complete ROS2 fanuc_msgs/msg/RobotStatusExt value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field error_code string Strict UTF-8 without NUL; length0..512 bytes.
--- @field in_motion boolean Exact boolean; encoded as one byte0/1.
--- @field drives_powered boolean Exact boolean; encoded as one byte0/1.
--- @field gen_override integer Exact int32 range -2147483648..2147483647.
--- @field speed_clamp_limit number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field control_mode string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Fanuc_msgsMsgRobotStatusExt.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRobotStatusExt.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsMsgRobotStatusExt.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/msg/RobotStatusExt.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRobotStatusExt.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/msg/RobotStatusExt.
--- @brief Ros2Fanuc_msgsMsgRobotStatusExt.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRobotStatusExt.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsMsgRobotStatusExt.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRobotStatusExt.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsMsgRobotStatusExt.MIN_WIRE_BYTES: Inclusive complete minimum 18 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRobotStatusExt.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 18 bytes.
--- @brief Ros2Fanuc_msgsMsgRobotStatusExt.MAX_WIRE_BYTES: Inclusive complete maximum 1042 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsMsgRobotStatusExt.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1042 bytes.
--- @brief Construct Ros2Fanuc_msgsMsgRobotStatusExt with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsMsgRobotStatusExt value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsMsgRobotStatusExt.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsMsgRobotStatusExt
--- @brief Encode a complete Ros2Fanuc_msgsMsgRobotStatusExt value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsMsgRobotStatusExt [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 18..1042 bytes.
--- @see Ros2Fanuc_msgsMsgRobotStatusExt.decode
--- @field encode fun(value: Ros2Fanuc_msgsMsgRobotStatusExt): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsMsgRobotStatusExt canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsMsgRobotStatusExt value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsMsgRobotStatusExt.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsMsgRobotStatusExt
local Ros2Fanuc_msgsMsgRobotStatusExt = classes["Ros2Fanuc_msgsMsgRobotStatusExt"]

--- @class Ros2Fanuc_msgsSrvCfgForceSensor_Request
--- @brief Complete ROS2 fanuc_msgs/srv/CfgForceSensor_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field do_reset integer Exact uint32 range 0..4294967295.
--- @field fs_type integer Exact uint32 range 0..4294967295.
--- @brief Ros2Fanuc_msgsSrvCfgForceSensor_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvCfgForceSensor_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/CfgForceSensor_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/CfgForceSensor_Request.
--- @brief Ros2Fanuc_msgsSrvCfgForceSensor_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvCfgForceSensor_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvCfgForceSensor_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Fanuc_msgsSrvCfgForceSensor_Request.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvCfgForceSensor_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvCfgForceSensor_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvCfgForceSensor_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvCfgForceSensor_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvCfgForceSensor_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvCfgForceSensor_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvCfgForceSensor_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvCfgForceSensor_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvCfgForceSensor_Request
local Ros2Fanuc_msgsSrvCfgForceSensor_Request = classes["Ros2Fanuc_msgsSrvCfgForceSensor_Request"]

--- @class Ros2Fanuc_msgsSrvCfgForceSensor_Response
--- @brief Complete ROS2 fanuc_msgs/srv/CfgForceSensor_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvCfgForceSensor_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvCfgForceSensor_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/CfgForceSensor_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/CfgForceSensor_Response.
--- @brief Ros2Fanuc_msgsSrvCfgForceSensor_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvCfgForceSensor_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvCfgForceSensor_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvCfgForceSensor_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvCfgForceSensor_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvCfgForceSensor_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvCfgForceSensor_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvCfgForceSensor_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvCfgForceSensor_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvCfgForceSensor_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvCfgForceSensor_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvCfgForceSensor_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvCfgForceSensor_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvCfgForceSensor_Response
local Ros2Fanuc_msgsSrvCfgForceSensor_Response = classes["Ros2Fanuc_msgsSrvCfgForceSensor_Response"]

--- @class Ros2Fanuc_msgsSrvGetAnalogIO_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetAnalogIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field io_type table Complete nested fanuc_msgs/msg/IOType value; no native fields are projected away.
--- @field index integer Exact uint16 range 0..65535.
--- @brief Ros2Fanuc_msgsSrvGetAnalogIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetAnalogIO_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetAnalogIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetAnalogIO_Request.
--- @brief Ros2Fanuc_msgsSrvGetAnalogIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetAnalogIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetAnalogIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Fanuc_msgsSrvGetAnalogIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 70 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 70 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetAnalogIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetAnalogIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetAnalogIO_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetAnalogIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetAnalogIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..70 bytes.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetAnalogIO_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetAnalogIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetAnalogIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetAnalogIO_Request
local Ros2Fanuc_msgsSrvGetAnalogIO_Request = classes["Ros2Fanuc_msgsSrvGetAnalogIO_Request"]

--- @class Ros2Fanuc_msgsSrvGetAnalogIO_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetAnalogIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Fanuc_msgsSrvGetAnalogIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetAnalogIO_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetAnalogIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetAnalogIO_Response.
--- @brief Ros2Fanuc_msgsSrvGetAnalogIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetAnalogIO_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetAnalogIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Fanuc_msgsSrvGetAnalogIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetAnalogIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetAnalogIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetAnalogIO_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetAnalogIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetAnalogIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetAnalogIO_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetAnalogIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetAnalogIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetAnalogIO_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetAnalogIO_Response
local Ros2Fanuc_msgsSrvGetAnalogIO_Response = classes["Ros2Fanuc_msgsSrvGetAnalogIO_Response"]

--- @class Ros2Fanuc_msgsSrvGetBoolIO_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetBoolIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field io_type table Complete nested fanuc_msgs/msg/IOType value; no native fields are projected away.
--- @field index integer Exact uint16 range 0..65535.
--- @brief Ros2Fanuc_msgsSrvGetBoolIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetBoolIO_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetBoolIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetBoolIO_Request.
--- @brief Ros2Fanuc_msgsSrvGetBoolIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetBoolIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetBoolIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Fanuc_msgsSrvGetBoolIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 70 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 70 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetBoolIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetBoolIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetBoolIO_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetBoolIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetBoolIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..70 bytes.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetBoolIO_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetBoolIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetBoolIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetBoolIO_Request
local Ros2Fanuc_msgsSrvGetBoolIO_Request = classes["Ros2Fanuc_msgsSrvGetBoolIO_Request"]

--- @class Ros2Fanuc_msgsSrvGetBoolIO_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetBoolIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field value boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Fanuc_msgsSrvGetBoolIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetBoolIO_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetBoolIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetBoolIO_Response.
--- @brief Ros2Fanuc_msgsSrvGetBoolIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetBoolIO_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetBoolIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Fanuc_msgsSrvGetBoolIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetBoolIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetBoolIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetBoolIO_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetBoolIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetBoolIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetBoolIO_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetBoolIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetBoolIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetBoolIO_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetBoolIO_Response
local Ros2Fanuc_msgsSrvGetBoolIO_Response = classes["Ros2Fanuc_msgsSrvGetBoolIO_Response"]

--- @class Ros2Fanuc_msgsSrvGetCartesianPosition_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetCartesianPosition_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvGetCartesianPosition_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetCartesianPosition_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetCartesianPosition_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetCartesianPosition_Request.
--- @brief Ros2Fanuc_msgsSrvGetCartesianPosition_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetCartesianPosition_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetCartesianPosition_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Fanuc_msgsSrvGetCartesianPosition_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetCartesianPosition_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetCartesianPosition_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetCartesianPosition_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetCartesianPosition_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetCartesianPosition_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetCartesianPosition_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetCartesianPosition_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetCartesianPosition_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetCartesianPosition_Request
local Ros2Fanuc_msgsSrvGetCartesianPosition_Request = classes["Ros2Fanuc_msgsSrvGetCartesianPosition_Request"]

--- @class Ros2Fanuc_msgsSrvGetCartesianPosition_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetCartesianPosition_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field timetag integer Exact int32 range -2147483648..2147483647.
--- @field utool integer Exact uint8 range 0..255.
--- @field uframe integer Exact uint8 range 0..255.
--- @field front integer Exact uint8 range 0..255.
--- @field up integer Exact uint8 range 0..255.
--- @field left integer Exact uint8 range 0..255.
--- @field flip integer Exact uint8 range 0..255.
--- @field turn4 integer Exact int8 range -128..127.
--- @field turn5 integer Exact int8 range -128..127.
--- @field turn6 integer Exact int8 range -128..127.
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field w number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field p number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field r number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ext1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ext2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ext3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvGetCartesianPosition_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetCartesianPosition_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetCartesianPosition_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetCartesianPosition_Response.
--- @brief Ros2Fanuc_msgsSrvGetCartesianPosition_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetCartesianPosition_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetCartesianPosition_Response.MIN_WIRE_BYTES: Inclusive complete minimum 54 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 54 bytes.
--- @brief Ros2Fanuc_msgsSrvGetCartesianPosition_Response.MAX_WIRE_BYTES: Inclusive complete maximum 54 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 54 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetCartesianPosition_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetCartesianPosition_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetCartesianPosition_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetCartesianPosition_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetCartesianPosition_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 54..54 bytes.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetCartesianPosition_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetCartesianPosition_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetCartesianPosition_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetCartesianPosition_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetCartesianPosition_Response
local Ros2Fanuc_msgsSrvGetCartesianPosition_Response = classes["Ros2Fanuc_msgsSrvGetCartesianPosition_Response"]

--- @class Ros2Fanuc_msgsSrvGetGroupIO_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetGroupIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field io_type table Complete nested fanuc_msgs/msg/IOType value; no native fields are projected away.
--- @field index integer Exact uint16 range 0..65535.
--- @brief Ros2Fanuc_msgsSrvGetGroupIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetGroupIO_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetGroupIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetGroupIO_Request.
--- @brief Ros2Fanuc_msgsSrvGetGroupIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetGroupIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetGroupIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Fanuc_msgsSrvGetGroupIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 70 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 70 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetGroupIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetGroupIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetGroupIO_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetGroupIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetGroupIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..70 bytes.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetGroupIO_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetGroupIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetGroupIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetGroupIO_Request
local Ros2Fanuc_msgsSrvGetGroupIO_Request = classes["Ros2Fanuc_msgsSrvGetGroupIO_Request"]

--- @class Ros2Fanuc_msgsSrvGetGroupIO_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetGroupIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field value integer Exact uint16 range 0..65535.
--- @brief Ros2Fanuc_msgsSrvGetGroupIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetGroupIO_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetGroupIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetGroupIO_Response.
--- @brief Ros2Fanuc_msgsSrvGetGroupIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetGroupIO_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetGroupIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Fanuc_msgsSrvGetGroupIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 6 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetGroupIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetGroupIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetGroupIO_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetGroupIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetGroupIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..6 bytes.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetGroupIO_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetGroupIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetGroupIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetGroupIO_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetGroupIO_Response
local Ros2Fanuc_msgsSrvGetGroupIO_Response = classes["Ros2Fanuc_msgsSrvGetGroupIO_Response"]

--- @class Ros2Fanuc_msgsSrvGetNumReg_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetNumReg_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field index integer Exact uint16 range 0..65535.
--- @brief Ros2Fanuc_msgsSrvGetNumReg_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetNumReg_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetNumReg_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetNumReg_Request.
--- @brief Ros2Fanuc_msgsSrvGetNumReg_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetNumReg_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetNumReg_Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Fanuc_msgsSrvGetNumReg_Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetNumReg_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetNumReg_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetNumReg_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetNumReg_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetNumReg_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetNumReg_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetNumReg_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetNumReg_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetNumReg_Request
local Ros2Fanuc_msgsSrvGetNumReg_Request = classes["Ros2Fanuc_msgsSrvGetNumReg_Request"]

--- @class Ros2Fanuc_msgsSrvGetNumReg_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetNumReg_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Fanuc_msgsSrvGetNumReg_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetNumReg_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetNumReg_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetNumReg_Response.
--- @brief Ros2Fanuc_msgsSrvGetNumReg_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetNumReg_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetNumReg_Response.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Fanuc_msgsSrvGetNumReg_Response.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetNumReg_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetNumReg_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetNumReg_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetNumReg_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetNumReg_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetNumReg_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetNumReg_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetNumReg_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetNumReg_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetNumReg_Response
local Ros2Fanuc_msgsSrvGetNumReg_Response = classes["Ros2Fanuc_msgsSrvGetNumReg_Response"]

--- @class Ros2Fanuc_msgsSrvGetPayloadComp_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetPayloadComp_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field payload_schedule_id integer Exact uint16 range 0..65535.
--- @brief Ros2Fanuc_msgsSrvGetPayloadComp_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetPayloadComp_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetPayloadComp_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetPayloadComp_Request.
--- @brief Ros2Fanuc_msgsSrvGetPayloadComp_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetPayloadComp_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetPayloadComp_Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Fanuc_msgsSrvGetPayloadComp_Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetPayloadComp_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetPayloadComp_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetPayloadComp_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetPayloadComp_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetPayloadComp_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetPayloadComp_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetPayloadComp_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetPayloadComp_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetPayloadComp_Request
local Ros2Fanuc_msgsSrvGetPayloadComp_Request = classes["Ros2Fanuc_msgsSrvGetPayloadComp_Request"]

--- @class Ros2Fanuc_msgsSrvGetPayloadComp_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetPayloadComp_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mass number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cg_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cg_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cg_z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field in_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field in_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field in_z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvGetPayloadComp_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetPayloadComp_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetPayloadComp_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetPayloadComp_Response.
--- @brief Ros2Fanuc_msgsSrvGetPayloadComp_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetPayloadComp_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetPayloadComp_Response.MIN_WIRE_BYTES: Inclusive complete minimum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 32 bytes.
--- @brief Ros2Fanuc_msgsSrvGetPayloadComp_Response.MAX_WIRE_BYTES: Inclusive complete maximum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 32 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetPayloadComp_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetPayloadComp_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetPayloadComp_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetPayloadComp_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetPayloadComp_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 32..32 bytes.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetPayloadComp_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetPayloadComp_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetPayloadComp_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetPayloadComp_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetPayloadComp_Response
local Ros2Fanuc_msgsSrvGetPayloadComp_Response = classes["Ros2Fanuc_msgsSrvGetPayloadComp_Response"]

--- @class Ros2Fanuc_msgsSrvGetPayloadID_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetPayloadID_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Fanuc_msgsSrvGetPayloadID_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetPayloadID_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetPayloadID_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetPayloadID_Request.
--- @brief Ros2Fanuc_msgsSrvGetPayloadID_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetPayloadID_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetPayloadID_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Fanuc_msgsSrvGetPayloadID_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetPayloadID_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetPayloadID_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetPayloadID_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetPayloadID_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetPayloadID_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetPayloadID_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetPayloadID_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetPayloadID_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetPayloadID_Request
local Ros2Fanuc_msgsSrvGetPayloadID_Request = classes["Ros2Fanuc_msgsSrvGetPayloadID_Request"]

--- @class Ros2Fanuc_msgsSrvGetPayloadID_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetPayloadID_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field payload_schedule_id integer Exact uint16 range 0..65535.
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvGetPayloadID_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetPayloadID_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetPayloadID_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetPayloadID_Response.
--- @brief Ros2Fanuc_msgsSrvGetPayloadID_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetPayloadID_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetPayloadID_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Fanuc_msgsSrvGetPayloadID_Response.MAX_WIRE_BYTES: Inclusive complete maximum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 6 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetPayloadID_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetPayloadID_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetPayloadID_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetPayloadID_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetPayloadID_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..6 bytes.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetPayloadID_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetPayloadID_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetPayloadID_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetPayloadID_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetPayloadID_Response
local Ros2Fanuc_msgsSrvGetPayloadID_Response = classes["Ros2Fanuc_msgsSrvGetPayloadID_Response"]

--- @class Ros2Fanuc_msgsSrvGetPayloadValue_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetPayloadValue_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field payload_schedule_id integer Exact uint16 range 0..65535.
--- @brief Ros2Fanuc_msgsSrvGetPayloadValue_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetPayloadValue_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetPayloadValue_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetPayloadValue_Request.
--- @brief Ros2Fanuc_msgsSrvGetPayloadValue_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetPayloadValue_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetPayloadValue_Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Fanuc_msgsSrvGetPayloadValue_Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetPayloadValue_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetPayloadValue_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetPayloadValue_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetPayloadValue_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetPayloadValue_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetPayloadValue_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetPayloadValue_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetPayloadValue_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetPayloadValue_Request
local Ros2Fanuc_msgsSrvGetPayloadValue_Request = classes["Ros2Fanuc_msgsSrvGetPayloadValue_Request"]

--- @class Ros2Fanuc_msgsSrvGetPayloadValue_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetPayloadValue_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mass number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cg_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cg_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cg_z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field in_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field in_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field in_z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvGetPayloadValue_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetPayloadValue_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetPayloadValue_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetPayloadValue_Response.
--- @brief Ros2Fanuc_msgsSrvGetPayloadValue_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetPayloadValue_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetPayloadValue_Response.MIN_WIRE_BYTES: Inclusive complete minimum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 32 bytes.
--- @brief Ros2Fanuc_msgsSrvGetPayloadValue_Response.MAX_WIRE_BYTES: Inclusive complete maximum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 32 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetPayloadValue_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetPayloadValue_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetPayloadValue_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetPayloadValue_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetPayloadValue_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 32..32 bytes.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetPayloadValue_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetPayloadValue_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetPayloadValue_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetPayloadValue_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetPayloadValue_Response
local Ros2Fanuc_msgsSrvGetPayloadValue_Response = classes["Ros2Fanuc_msgsSrvGetPayloadValue_Response"]

--- @class Ros2Fanuc_msgsSrvGetPosReg_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetPosReg_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field index integer Exact uint16 range 0..65535.
--- @brief Ros2Fanuc_msgsSrvGetPosReg_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetPosReg_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetPosReg_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetPosReg_Request.
--- @brief Ros2Fanuc_msgsSrvGetPosReg_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetPosReg_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetPosReg_Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Fanuc_msgsSrvGetPosReg_Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetPosReg_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetPosReg_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetPosReg_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetPosReg_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetPosReg_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetPosReg_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetPosReg_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetPosReg_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetPosReg_Request
local Ros2Fanuc_msgsSrvGetPosReg_Request = classes["Ros2Fanuc_msgsSrvGetPosReg_Request"]

--- @class Ros2Fanuc_msgsSrvGetPosReg_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetPosReg_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field representation string Strict UTF-8 without NUL; length0..512 bytes.
--- @field utool integer Exact uint8 range 0..255.
--- @field uframe integer Exact uint8 range 0..255.
--- @field front integer Exact uint8 range 0..255.
--- @field up integer Exact uint8 range 0..255.
--- @field left integer Exact uint8 range 0..255.
--- @field flip integer Exact uint8 range 0..255.
--- @field turn4 integer Exact int8 range -128..127.
--- @field turn5 integer Exact int8 range -128..127.
--- @field turn6 integer Exact int8 range -128..127.
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field w number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field p number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field r number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ext1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ext2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ext3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j7 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j8 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j9 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Fanuc_msgsSrvGetPosReg_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetPosReg_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetPosReg_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetPosReg_Response.
--- @brief Ros2Fanuc_msgsSrvGetPosReg_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetPosReg_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetPosReg_Response.MIN_WIRE_BYTES: Inclusive complete minimum 89 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 89 bytes.
--- @brief Ros2Fanuc_msgsSrvGetPosReg_Response.MAX_WIRE_BYTES: Inclusive complete maximum 601 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 601 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetPosReg_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetPosReg_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetPosReg_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetPosReg_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetPosReg_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 89..601 bytes.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetPosReg_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetPosReg_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetPosReg_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetPosReg_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetPosReg_Response
local Ros2Fanuc_msgsSrvGetPosReg_Response = classes["Ros2Fanuc_msgsSrvGetPosReg_Response"]

--- @class Ros2Fanuc_msgsSrvGetTCPSpeed_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetTCPSpeed_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvGetTCPSpeed_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetTCPSpeed_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetTCPSpeed_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetTCPSpeed_Request.
--- @brief Ros2Fanuc_msgsSrvGetTCPSpeed_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetTCPSpeed_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetTCPSpeed_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Fanuc_msgsSrvGetTCPSpeed_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetTCPSpeed_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetTCPSpeed_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetTCPSpeed_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetTCPSpeed_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetTCPSpeed_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetTCPSpeed_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetTCPSpeed_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetTCPSpeed_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetTCPSpeed_Request
local Ros2Fanuc_msgsSrvGetTCPSpeed_Request = classes["Ros2Fanuc_msgsSrvGetTCPSpeed_Request"]

--- @class Ros2Fanuc_msgsSrvGetTCPSpeed_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetTCPSpeed_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field timetag integer Exact int32 range -2147483648..2147483647.
--- @field speed number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvGetTCPSpeed_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetTCPSpeed_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetTCPSpeed_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetTCPSpeed_Response.
--- @brief Ros2Fanuc_msgsSrvGetTCPSpeed_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetTCPSpeed_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetTCPSpeed_Response.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros2Fanuc_msgsSrvGetTCPSpeed_Response.MAX_WIRE_BYTES: Inclusive complete maximum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 13 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetTCPSpeed_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetTCPSpeed_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetTCPSpeed_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetTCPSpeed_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetTCPSpeed_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..13 bytes.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetTCPSpeed_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetTCPSpeed_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetTCPSpeed_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetTCPSpeed_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetTCPSpeed_Response
local Ros2Fanuc_msgsSrvGetTCPSpeed_Response = classes["Ros2Fanuc_msgsSrvGetTCPSpeed_Response"]

--- @class Ros2Fanuc_msgsSrvGetUFrameData_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetUFrameData_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field uframe_number integer Exact uint8 range 0..255.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvGetUFrameData_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetUFrameData_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetUFrameData_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetUFrameData_Request.
--- @brief Ros2Fanuc_msgsSrvGetUFrameData_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetUFrameData_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetUFrameData_Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Fanuc_msgsSrvGetUFrameData_Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetUFrameData_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetUFrameData_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetUFrameData_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetUFrameData_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetUFrameData_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetUFrameData_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetUFrameData_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetUFrameData_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetUFrameData_Request
local Ros2Fanuc_msgsSrvGetUFrameData_Request = classes["Ros2Fanuc_msgsSrvGetUFrameData_Request"]

--- @class Ros2Fanuc_msgsSrvGetUFrameData_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetUFrameData_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field uframe_number integer Exact uint8 range 0..255.
--- @field frame table Complete nested fanuc_msgs/msg/Frame value; no native fields are projected away.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvGetUFrameData_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetUFrameData_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetUFrameData_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetUFrameData_Response.
--- @brief Ros2Fanuc_msgsSrvGetUFrameData_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetUFrameData_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetUFrameData_Response.MIN_WIRE_BYTES: Inclusive complete minimum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 30 bytes.
--- @brief Ros2Fanuc_msgsSrvGetUFrameData_Response.MAX_WIRE_BYTES: Inclusive complete maximum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 30 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetUFrameData_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetUFrameData_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetUFrameData_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetUFrameData_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetUFrameData_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 30..30 bytes.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetUFrameData_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetUFrameData_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetUFrameData_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetUFrameData_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetUFrameData_Response
local Ros2Fanuc_msgsSrvGetUFrameData_Response = classes["Ros2Fanuc_msgsSrvGetUFrameData_Response"]

--- @class Ros2Fanuc_msgsSrvGetUFrameUTool_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetUFrameUTool_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvGetUFrameUTool_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetUFrameUTool_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetUFrameUTool_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetUFrameUTool_Request.
--- @brief Ros2Fanuc_msgsSrvGetUFrameUTool_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetUFrameUTool_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetUFrameUTool_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Fanuc_msgsSrvGetUFrameUTool_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetUFrameUTool_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetUFrameUTool_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetUFrameUTool_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetUFrameUTool_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetUFrameUTool_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetUFrameUTool_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetUFrameUTool_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetUFrameUTool_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetUFrameUTool_Request
local Ros2Fanuc_msgsSrvGetUFrameUTool_Request = classes["Ros2Fanuc_msgsSrvGetUFrameUTool_Request"]

--- @class Ros2Fanuc_msgsSrvGetUFrameUTool_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetUFrameUTool_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field uframe_number integer Exact uint8 range 0..255.
--- @field utool_number integer Exact uint8 range 0..255.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvGetUFrameUTool_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetUFrameUTool_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetUFrameUTool_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetUFrameUTool_Response.
--- @brief Ros2Fanuc_msgsSrvGetUFrameUTool_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetUFrameUTool_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetUFrameUTool_Response.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros2Fanuc_msgsSrvGetUFrameUTool_Response.MAX_WIRE_BYTES: Inclusive complete maximum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 7 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetUFrameUTool_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetUFrameUTool_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetUFrameUTool_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetUFrameUTool_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetUFrameUTool_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..7 bytes.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetUFrameUTool_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetUFrameUTool_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetUFrameUTool_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetUFrameUTool_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetUFrameUTool_Response
local Ros2Fanuc_msgsSrvGetUFrameUTool_Response = classes["Ros2Fanuc_msgsSrvGetUFrameUTool_Response"]

--- @class Ros2Fanuc_msgsSrvGetUToolData_Request
--- @brief Complete ROS2 fanuc_msgs/srv/GetUToolData_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field utool_number integer Exact uint8 range 0..255.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvGetUToolData_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetUToolData_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetUToolData_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetUToolData_Request.
--- @brief Ros2Fanuc_msgsSrvGetUToolData_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetUToolData_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetUToolData_Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Fanuc_msgsSrvGetUToolData_Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetUToolData_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetUToolData_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetUToolData_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetUToolData_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetUToolData_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetUToolData_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetUToolData_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetUToolData_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetUToolData_Request
local Ros2Fanuc_msgsSrvGetUToolData_Request = classes["Ros2Fanuc_msgsSrvGetUToolData_Request"]

--- @class Ros2Fanuc_msgsSrvGetUToolData_Response
--- @brief Complete ROS2 fanuc_msgs/srv/GetUToolData_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field utool_number integer Exact uint8 range 0..255.
--- @field frame table Complete nested fanuc_msgs/msg/Frame value; no native fields are projected away.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvGetUToolData_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvGetUToolData_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/GetUToolData_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/GetUToolData_Response.
--- @brief Ros2Fanuc_msgsSrvGetUToolData_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvGetUToolData_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvGetUToolData_Response.MIN_WIRE_BYTES: Inclusive complete minimum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 30 bytes.
--- @brief Ros2Fanuc_msgsSrvGetUToolData_Response.MAX_WIRE_BYTES: Inclusive complete maximum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 30 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvGetUToolData_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvGetUToolData_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvGetUToolData_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvGetUToolData_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvGetUToolData_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 30..30 bytes.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvGetUToolData_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvGetUToolData_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvGetUToolData_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvGetUToolData_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvGetUToolData_Response
local Ros2Fanuc_msgsSrvGetUToolData_Response = classes["Ros2Fanuc_msgsSrvGetUToolData_Response"]

--- @class Ros2Fanuc_msgsSrvReadError_Request
--- @brief Complete ROS2 fanuc_msgs/srv/ReadError_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field count integer Exact uint8 range 0..255. Declared native scalar default: 1.
--- @brief Ros2Fanuc_msgsSrvReadError_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReadError_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvReadError_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/ReadError_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReadError_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/ReadError_Request.
--- @brief Ros2Fanuc_msgsSrvReadError_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReadError_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvReadError_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReadError_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvReadError_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReadError_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Fanuc_msgsSrvReadError_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReadError_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvReadError_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvReadError_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvReadError_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvReadError_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvReadError_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvReadError_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Fanuc_msgsSrvReadError_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvReadError_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvReadError_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvReadError_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvReadError_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvReadError_Request
local Ros2Fanuc_msgsSrvReadError_Request = classes["Ros2Fanuc_msgsSrvReadError_Request"]

--- @class Ros2Fanuc_msgsSrvReadError_Response
--- @brief Complete ROS2 fanuc_msgs/srv/ReadError_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field count integer Exact uint8 range 0..255.
--- @field error_data string[] Strict UTF-8 without NUL; length0..512 bytes. Exactly 5 contiguous elements;
--holes and extra array keys are rejected.
--- @brief Ros2Fanuc_msgsSrvReadError_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReadError_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvReadError_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/ReadError_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReadError_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/ReadError_Response.
--- @brief Ros2Fanuc_msgsSrvReadError_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReadError_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvReadError_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReadError_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvReadError_Response.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReadError_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Fanuc_msgsSrvReadError_Response.MAX_WIRE_BYTES: Inclusive complete maximum 2585 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReadError_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2585 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvReadError_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvReadError_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvReadError_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvReadError_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvReadError_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvReadError_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..2585 bytes.
--- @see Ros2Fanuc_msgsSrvReadError_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvReadError_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvReadError_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvReadError_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvReadError_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvReadError_Response
local Ros2Fanuc_msgsSrvReadError_Response = classes["Ros2Fanuc_msgsSrvReadError_Response"]

--- @class Ros2Fanuc_msgsSrvReset_Request
--- @brief Complete ROS2 fanuc_msgs/srv/Reset_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Fanuc_msgsSrvReset_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReset_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvReset_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/Reset_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReset_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/Reset_Request.
--- @brief Ros2Fanuc_msgsSrvReset_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReset_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvReset_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReset_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvReset_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReset_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Fanuc_msgsSrvReset_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReset_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvReset_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvReset_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvReset_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvReset_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvReset_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvReset_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Fanuc_msgsSrvReset_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvReset_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvReset_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvReset_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvReset_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvReset_Request
local Ros2Fanuc_msgsSrvReset_Request = classes["Ros2Fanuc_msgsSrvReset_Request"]

--- @class Ros2Fanuc_msgsSrvReset_Response
--- @brief Complete ROS2 fanuc_msgs/srv/Reset_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvReset_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReset_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvReset_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/Reset_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReset_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/Reset_Response.
--- @brief Ros2Fanuc_msgsSrvReset_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReset_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvReset_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReset_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvReset_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReset_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvReset_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvReset_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvReset_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvReset_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvReset_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvReset_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvReset_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvReset_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvReset_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvReset_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvReset_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvReset_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvReset_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvReset_Response
local Ros2Fanuc_msgsSrvReset_Response = classes["Ros2Fanuc_msgsSrvReset_Response"]

--- @class Ros2Fanuc_msgsSrvSetAnalogIO_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SetAnalogIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field io_type table Complete nested fanuc_msgs/msg/IOType value; no native fields are projected away.
--- @field index integer Exact uint16 range 0..65535.
--- @field value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Fanuc_msgsSrvSetAnalogIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetAnalogIO_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetAnalogIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetAnalogIO_Request.
--- @brief Ros2Fanuc_msgsSrvSetAnalogIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetAnalogIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetAnalogIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Fanuc_msgsSrvSetAnalogIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 74 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 74 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetAnalogIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetAnalogIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetAnalogIO_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetAnalogIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetAnalogIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..74 bytes.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetAnalogIO_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetAnalogIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetAnalogIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetAnalogIO_Request
local Ros2Fanuc_msgsSrvSetAnalogIO_Request = classes["Ros2Fanuc_msgsSrvSetAnalogIO_Request"]

--- @class Ros2Fanuc_msgsSrvSetAnalogIO_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SetAnalogIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvSetAnalogIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetAnalogIO_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetAnalogIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetAnalogIO_Response.
--- @brief Ros2Fanuc_msgsSrvSetAnalogIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetAnalogIO_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetAnalogIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvSetAnalogIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetAnalogIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetAnalogIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetAnalogIO_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetAnalogIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetAnalogIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetAnalogIO_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetAnalogIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetAnalogIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetAnalogIO_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetAnalogIO_Response
local Ros2Fanuc_msgsSrvSetAnalogIO_Response = classes["Ros2Fanuc_msgsSrvSetAnalogIO_Response"]

--- @class Ros2Fanuc_msgsSrvSetBoolIO_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SetBoolIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field io_type table Complete nested fanuc_msgs/msg/IOType value; no native fields are projected away.
--- @field index integer Exact uint16 range 0..65535.
--- @field value boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Fanuc_msgsSrvSetBoolIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetBoolIO_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetBoolIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetBoolIO_Request.
--- @brief Ros2Fanuc_msgsSrvSetBoolIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetBoolIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetBoolIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 7 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 7 bytes.
--- @brief Ros2Fanuc_msgsSrvSetBoolIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 71 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 71 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetBoolIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetBoolIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetBoolIO_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetBoolIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetBoolIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 7..71 bytes.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetBoolIO_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetBoolIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetBoolIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetBoolIO_Request
local Ros2Fanuc_msgsSrvSetBoolIO_Request = classes["Ros2Fanuc_msgsSrvSetBoolIO_Request"]

--- @class Ros2Fanuc_msgsSrvSetBoolIO_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SetBoolIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvSetBoolIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetBoolIO_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetBoolIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetBoolIO_Response.
--- @brief Ros2Fanuc_msgsSrvSetBoolIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetBoolIO_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetBoolIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvSetBoolIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetBoolIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetBoolIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetBoolIO_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetBoolIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetBoolIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetBoolIO_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetBoolIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetBoolIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetBoolIO_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetBoolIO_Response
local Ros2Fanuc_msgsSrvSetBoolIO_Response = classes["Ros2Fanuc_msgsSrvSetBoolIO_Response"]

--- @class Ros2Fanuc_msgsSrvSetGenOverride_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SetGenOverride_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value integer Exact int8 range -128..127.
--- @brief Ros2Fanuc_msgsSrvSetGenOverride_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetGenOverride_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetGenOverride_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetGenOverride_Request.
--- @brief Ros2Fanuc_msgsSrvSetGenOverride_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetGenOverride_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetGenOverride_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Fanuc_msgsSrvSetGenOverride_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetGenOverride_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetGenOverride_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetGenOverride_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetGenOverride_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetGenOverride_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetGenOverride_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetGenOverride_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetGenOverride_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetGenOverride_Request
local Ros2Fanuc_msgsSrvSetGenOverride_Request = classes["Ros2Fanuc_msgsSrvSetGenOverride_Request"]

--- @class Ros2Fanuc_msgsSrvSetGenOverride_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SetGenOverride_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvSetGenOverride_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetGenOverride_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetGenOverride_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetGenOverride_Response.
--- @brief Ros2Fanuc_msgsSrvSetGenOverride_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetGenOverride_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetGenOverride_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvSetGenOverride_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetGenOverride_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetGenOverride_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetGenOverride_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetGenOverride_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetGenOverride_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetGenOverride_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetGenOverride_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetGenOverride_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetGenOverride_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetGenOverride_Response
local Ros2Fanuc_msgsSrvSetGenOverride_Response = classes["Ros2Fanuc_msgsSrvSetGenOverride_Response"]

--- @class Ros2Fanuc_msgsSrvSetGroupIO_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SetGroupIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field io_type table Complete nested fanuc_msgs/msg/IOType value; no native fields are projected away.
--- @field index integer Exact uint16 range 0..65535.
--- @field value integer Exact uint16 range 0..65535.
--- @brief Ros2Fanuc_msgsSrvSetGroupIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetGroupIO_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetGroupIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetGroupIO_Request.
--- @brief Ros2Fanuc_msgsSrvSetGroupIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetGroupIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetGroupIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Fanuc_msgsSrvSetGroupIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 72 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 72 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetGroupIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetGroupIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetGroupIO_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetGroupIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetGroupIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..72 bytes.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetGroupIO_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetGroupIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetGroupIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetGroupIO_Request
local Ros2Fanuc_msgsSrvSetGroupIO_Request = classes["Ros2Fanuc_msgsSrvSetGroupIO_Request"]

--- @class Ros2Fanuc_msgsSrvSetGroupIO_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SetGroupIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvSetGroupIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetGroupIO_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetGroupIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetGroupIO_Response.
--- @brief Ros2Fanuc_msgsSrvSetGroupIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetGroupIO_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetGroupIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvSetGroupIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetGroupIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetGroupIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetGroupIO_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetGroupIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetGroupIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetGroupIO_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetGroupIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetGroupIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetGroupIO_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetGroupIO_Response
local Ros2Fanuc_msgsSrvSetGroupIO_Response = classes["Ros2Fanuc_msgsSrvSetGroupIO_Response"]

--- @class Ros2Fanuc_msgsSrvSetNumReg_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SetNumReg_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field index integer Exact uint16 range 0..65535.
--- @field value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Fanuc_msgsSrvSetNumReg_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetNumReg_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetNumReg_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetNumReg_Request.
--- @brief Ros2Fanuc_msgsSrvSetNumReg_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetNumReg_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetNumReg_Request.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Fanuc_msgsSrvSetNumReg_Request.MAX_WIRE_BYTES: Inclusive complete maximum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 6 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetNumReg_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetNumReg_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetNumReg_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetNumReg_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetNumReg_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..6 bytes.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetNumReg_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetNumReg_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetNumReg_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetNumReg_Request
local Ros2Fanuc_msgsSrvSetNumReg_Request = classes["Ros2Fanuc_msgsSrvSetNumReg_Request"]

--- @class Ros2Fanuc_msgsSrvSetNumReg_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SetNumReg_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvSetNumReg_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetNumReg_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetNumReg_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetNumReg_Response.
--- @brief Ros2Fanuc_msgsSrvSetNumReg_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetNumReg_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetNumReg_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvSetNumReg_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetNumReg_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetNumReg_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetNumReg_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetNumReg_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetNumReg_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetNumReg_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetNumReg_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetNumReg_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetNumReg_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetNumReg_Response
local Ros2Fanuc_msgsSrvSetNumReg_Response = classes["Ros2Fanuc_msgsSrvSetNumReg_Response"]

--- @class Ros2Fanuc_msgsSrvSetPayloadComp_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SetPayloadComp_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field payload_schedule_id integer Exact uint16 range 0..65535.
--- @field mass number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cg_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cg_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cg_z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field in_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field in_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field in_z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Fanuc_msgsSrvSetPayloadComp_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetPayloadComp_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetPayloadComp_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetPayloadComp_Request.
--- @brief Ros2Fanuc_msgsSrvSetPayloadComp_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetPayloadComp_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetPayloadComp_Request.MIN_WIRE_BYTES: Inclusive complete minimum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 30 bytes.
--- @brief Ros2Fanuc_msgsSrvSetPayloadComp_Request.MAX_WIRE_BYTES: Inclusive complete maximum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 30 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetPayloadComp_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetPayloadComp_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetPayloadComp_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetPayloadComp_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetPayloadComp_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 30..30 bytes.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetPayloadComp_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetPayloadComp_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetPayloadComp_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetPayloadComp_Request
local Ros2Fanuc_msgsSrvSetPayloadComp_Request = classes["Ros2Fanuc_msgsSrvSetPayloadComp_Request"]

--- @class Ros2Fanuc_msgsSrvSetPayloadComp_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SetPayloadComp_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvSetPayloadComp_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetPayloadComp_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetPayloadComp_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetPayloadComp_Response.
--- @brief Ros2Fanuc_msgsSrvSetPayloadComp_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetPayloadComp_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetPayloadComp_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvSetPayloadComp_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetPayloadComp_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetPayloadComp_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetPayloadComp_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetPayloadComp_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetPayloadComp_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetPayloadComp_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetPayloadComp_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetPayloadComp_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetPayloadComp_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetPayloadComp_Response
local Ros2Fanuc_msgsSrvSetPayloadComp_Response = classes["Ros2Fanuc_msgsSrvSetPayloadComp_Response"]

--- @class Ros2Fanuc_msgsSrvSetPayloadID_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SetPayloadID_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field payload_schedule_id integer Exact uint16 range 0..65535.
--- @brief Ros2Fanuc_msgsSrvSetPayloadID_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetPayloadID_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetPayloadID_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetPayloadID_Request.
--- @brief Ros2Fanuc_msgsSrvSetPayloadID_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetPayloadID_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetPayloadID_Request.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Fanuc_msgsSrvSetPayloadID_Request.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetPayloadID_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetPayloadID_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetPayloadID_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetPayloadID_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetPayloadID_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetPayloadID_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetPayloadID_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetPayloadID_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetPayloadID_Request
local Ros2Fanuc_msgsSrvSetPayloadID_Request = classes["Ros2Fanuc_msgsSrvSetPayloadID_Request"]

--- @class Ros2Fanuc_msgsSrvSetPayloadID_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SetPayloadID_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvSetPayloadID_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetPayloadID_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetPayloadID_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetPayloadID_Response.
--- @brief Ros2Fanuc_msgsSrvSetPayloadID_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetPayloadID_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetPayloadID_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvSetPayloadID_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetPayloadID_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetPayloadID_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetPayloadID_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetPayloadID_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetPayloadID_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetPayloadID_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetPayloadID_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetPayloadID_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetPayloadID_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetPayloadID_Response
local Ros2Fanuc_msgsSrvSetPayloadID_Response = classes["Ros2Fanuc_msgsSrvSetPayloadID_Response"]

--- @class Ros2Fanuc_msgsSrvSetPayloadValue_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SetPayloadValue_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field payload_schedule_id integer Exact uint16 range 0..65535.
--- @field mass number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cg_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cg_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field cg_z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field use_in boolean Exact boolean; encoded as one byte0/1.
--- @field in_x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field in_y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field in_z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Fanuc_msgsSrvSetPayloadValue_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetPayloadValue_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetPayloadValue_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetPayloadValue_Request.
--- @brief Ros2Fanuc_msgsSrvSetPayloadValue_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetPayloadValue_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetPayloadValue_Request.MIN_WIRE_BYTES: Inclusive complete minimum 31 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 31 bytes.
--- @brief Ros2Fanuc_msgsSrvSetPayloadValue_Request.MAX_WIRE_BYTES: Inclusive complete maximum 31 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 31 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetPayloadValue_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetPayloadValue_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetPayloadValue_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetPayloadValue_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetPayloadValue_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 31..31 bytes.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetPayloadValue_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetPayloadValue_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetPayloadValue_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetPayloadValue_Request
local Ros2Fanuc_msgsSrvSetPayloadValue_Request = classes["Ros2Fanuc_msgsSrvSetPayloadValue_Request"]

--- @class Ros2Fanuc_msgsSrvSetPayloadValue_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SetPayloadValue_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvSetPayloadValue_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetPayloadValue_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetPayloadValue_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetPayloadValue_Response.
--- @brief Ros2Fanuc_msgsSrvSetPayloadValue_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetPayloadValue_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetPayloadValue_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvSetPayloadValue_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetPayloadValue_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetPayloadValue_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetPayloadValue_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetPayloadValue_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetPayloadValue_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetPayloadValue_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetPayloadValue_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetPayloadValue_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetPayloadValue_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetPayloadValue_Response
local Ros2Fanuc_msgsSrvSetPayloadValue_Response = classes["Ros2Fanuc_msgsSrvSetPayloadValue_Response"]

--- @class Ros2Fanuc_msgsSrvSetPosReg_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SetPosReg_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field index integer Exact uint16 range 0..65535.
--- @field representation string Strict UTF-8 without NUL; length0..512 bytes.
--- @field utool integer Exact uint8 range 0..255.
--- @field uframe integer Exact uint8 range 0..255.
--- @field front integer Exact uint8 range 0..255.
--- @field up integer Exact uint8 range 0..255.
--- @field left integer Exact uint8 range 0..255.
--- @field flip integer Exact uint8 range 0..255.
--- @field turn4 integer Exact int8 range -128..127.
--- @field turn5 integer Exact int8 range -128..127.
--- @field turn6 integer Exact int8 range -128..127.
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field w number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field p number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field r number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ext1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ext2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ext3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j4 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j5 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j6 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j7 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j8 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field j9 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Fanuc_msgsSrvSetPosReg_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetPosReg_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetPosReg_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetPosReg_Request.
--- @brief Ros2Fanuc_msgsSrvSetPosReg_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetPosReg_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetPosReg_Request.MIN_WIRE_BYTES: Inclusive complete minimum 87 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 87 bytes.
--- @brief Ros2Fanuc_msgsSrvSetPosReg_Request.MAX_WIRE_BYTES: Inclusive complete maximum 599 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 599 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetPosReg_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetPosReg_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetPosReg_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetPosReg_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetPosReg_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 87..599 bytes.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetPosReg_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetPosReg_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetPosReg_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetPosReg_Request
local Ros2Fanuc_msgsSrvSetPosReg_Request = classes["Ros2Fanuc_msgsSrvSetPosReg_Request"]

--- @class Ros2Fanuc_msgsSrvSetPosReg_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SetPosReg_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvSetPosReg_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetPosReg_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetPosReg_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetPosReg_Response.
--- @brief Ros2Fanuc_msgsSrvSetPosReg_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetPosReg_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetPosReg_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvSetPosReg_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetPosReg_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetPosReg_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetPosReg_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetPosReg_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetPosReg_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetPosReg_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetPosReg_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetPosReg_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetPosReg_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetPosReg_Response
local Ros2Fanuc_msgsSrvSetPosReg_Response = classes["Ros2Fanuc_msgsSrvSetPosReg_Response"]

--- @class Ros2Fanuc_msgsSrvSetUFrameData_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SetUFrameData_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field uframe_number integer Exact uint8 range 0..255.
--- @field frame table Complete nested fanuc_msgs/msg/Frame value; no native fields are projected away.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvSetUFrameData_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetUFrameData_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetUFrameData_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetUFrameData_Request.
--- @brief Ros2Fanuc_msgsSrvSetUFrameData_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetUFrameData_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetUFrameData_Request.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros2Fanuc_msgsSrvSetUFrameData_Request.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetUFrameData_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetUFrameData_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetUFrameData_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetUFrameData_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetUFrameData_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetUFrameData_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetUFrameData_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetUFrameData_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetUFrameData_Request
local Ros2Fanuc_msgsSrvSetUFrameData_Request = classes["Ros2Fanuc_msgsSrvSetUFrameData_Request"]

--- @class Ros2Fanuc_msgsSrvSetUFrameData_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SetUFrameData_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvSetUFrameData_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetUFrameData_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetUFrameData_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetUFrameData_Response.
--- @brief Ros2Fanuc_msgsSrvSetUFrameData_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetUFrameData_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetUFrameData_Response.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Fanuc_msgsSrvSetUFrameData_Response.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetUFrameData_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetUFrameData_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetUFrameData_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetUFrameData_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetUFrameData_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetUFrameData_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetUFrameData_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetUFrameData_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetUFrameData_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetUFrameData_Response
local Ros2Fanuc_msgsSrvSetUFrameData_Response = classes["Ros2Fanuc_msgsSrvSetUFrameData_Response"]

--- @class Ros2Fanuc_msgsSrvSetUFrameUTool_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SetUFrameUTool_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field uframe_number integer Exact uint8 range 0..255.
--- @field utool_number integer Exact uint8 range 0..255.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvSetUFrameUTool_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetUFrameUTool_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetUFrameUTool_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetUFrameUTool_Request.
--- @brief Ros2Fanuc_msgsSrvSetUFrameUTool_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetUFrameUTool_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetUFrameUTool_Request.MIN_WIRE_BYTES: Inclusive complete minimum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 3 bytes.
--- @brief Ros2Fanuc_msgsSrvSetUFrameUTool_Request.MAX_WIRE_BYTES: Inclusive complete maximum 3 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 3 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetUFrameUTool_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetUFrameUTool_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetUFrameUTool_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetUFrameUTool_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetUFrameUTool_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 3..3 bytes.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetUFrameUTool_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetUFrameUTool_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetUFrameUTool_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetUFrameUTool_Request
local Ros2Fanuc_msgsSrvSetUFrameUTool_Request = classes["Ros2Fanuc_msgsSrvSetUFrameUTool_Request"]

--- @class Ros2Fanuc_msgsSrvSetUFrameUTool_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SetUFrameUTool_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvSetUFrameUTool_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetUFrameUTool_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetUFrameUTool_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetUFrameUTool_Response.
--- @brief Ros2Fanuc_msgsSrvSetUFrameUTool_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetUFrameUTool_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetUFrameUTool_Response.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Fanuc_msgsSrvSetUFrameUTool_Response.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetUFrameUTool_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetUFrameUTool_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetUFrameUTool_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetUFrameUTool_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetUFrameUTool_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetUFrameUTool_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetUFrameUTool_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetUFrameUTool_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetUFrameUTool_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetUFrameUTool_Response
local Ros2Fanuc_msgsSrvSetUFrameUTool_Response = classes["Ros2Fanuc_msgsSrvSetUFrameUTool_Response"]

--- @class Ros2Fanuc_msgsSrvSetUToolData_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SetUToolData_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field utool_number integer Exact uint8 range 0..255.
--- @field frame table Complete nested fanuc_msgs/msg/Frame value; no native fields are projected away.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvSetUToolData_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetUToolData_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetUToolData_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetUToolData_Request.
--- @brief Ros2Fanuc_msgsSrvSetUToolData_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetUToolData_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetUToolData_Request.MIN_WIRE_BYTES: Inclusive complete minimum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 26 bytes.
--- @brief Ros2Fanuc_msgsSrvSetUToolData_Request.MAX_WIRE_BYTES: Inclusive complete maximum 26 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 26 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetUToolData_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetUToolData_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetUToolData_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetUToolData_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetUToolData_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 26..26 bytes.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetUToolData_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetUToolData_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetUToolData_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetUToolData_Request
local Ros2Fanuc_msgsSrvSetUToolData_Request = classes["Ros2Fanuc_msgsSrvSetUToolData_Request"]

--- @class Ros2Fanuc_msgsSrvSetUToolData_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SetUToolData_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field group integer Exact uint8 range 0..255.
--- @brief Ros2Fanuc_msgsSrvSetUToolData_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSetUToolData_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SetUToolData_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SetUToolData_Response.
--- @brief Ros2Fanuc_msgsSrvSetUToolData_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSetUToolData_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSetUToolData_Response.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Fanuc_msgsSrvSetUToolData_Response.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSetUToolData_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSetUToolData_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSetUToolData_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSetUToolData_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSetUToolData_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSetUToolData_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSetUToolData_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSetUToolData_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSetUToolData_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSetUToolData_Response
local Ros2Fanuc_msgsSrvSetUToolData_Response = classes["Ros2Fanuc_msgsSrvSetUToolData_Response"]

--- @class Ros2Fanuc_msgsSrvSwitchControlState_Request
--- @brief Complete ROS2 fanuc_msgs/srv/SwitchControlState_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status integer Exact uint32 range 0..4294967295.
--- @brief Ros2Fanuc_msgsSrvSwitchControlState_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSwitchControlState_Request.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SwitchControlState_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SwitchControlState_Request.
--- @brief Ros2Fanuc_msgsSrvSwitchControlState_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSwitchControlState_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSwitchControlState_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvSwitchControlState_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Native class constant Ros2Fanuc_msgsSrvSwitchControlState_Request.STOP.
--- @details Original uint32 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Request.new
--- @field STOP integer
--- @brief Native class constant Ros2Fanuc_msgsSrvSwitchControlState_Request.START.
--- @details Original uint32 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Request.new
--- @field START integer
--- @brief Construct Ros2Fanuc_msgsSrvSwitchControlState_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSwitchControlState_Request value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Request.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSwitchControlState_Request
--- @brief Encode a complete Ros2Fanuc_msgsSrvSwitchControlState_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSwitchControlState_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Request.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSwitchControlState_Request): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSwitchControlState_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSwitchControlState_Request value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Request.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSwitchControlState_Request
local Ros2Fanuc_msgsSrvSwitchControlState_Request = classes["Ros2Fanuc_msgsSrvSwitchControlState_Request"]

--- @class Ros2Fanuc_msgsSrvSwitchControlState_Response
--- @brief Complete ROS2 fanuc_msgs/srv/SwitchControlState_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Fanuc_msgsSrvSwitchControlState_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Fanuc_msgsSrvSwitchControlState_Response.NATIVE_TYPE: Exact normalized native type name
--fanuc_msgs/srv/SwitchControlState_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name fanuc_msgs/srv/SwitchControlState_Response.
--- @brief Ros2Fanuc_msgsSrvSwitchControlState_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Fanuc_msgsSrvSwitchControlState_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Fanuc_msgsSrvSwitchControlState_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Fanuc_msgsSrvSwitchControlState_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Fanuc_msgsSrvSwitchControlState_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Fanuc_msgsSrvSwitchControlState_Response value New mutable complete value; no ROS resource.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Response.encode
--- @field new fun(values?: table): Ros2Fanuc_msgsSrvSwitchControlState_Response
--- @brief Encode a complete Ros2Fanuc_msgsSrvSwitchControlState_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Fanuc_msgsSrvSwitchControlState_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Response.decode
--- @field encode fun(value: Ros2Fanuc_msgsSrvSwitchControlState_Response): string
--- @brief Decode exactly one complete Ros2Fanuc_msgsSrvSwitchControlState_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Fanuc_msgsSrvSwitchControlState_Response value New complete value; failures raise Lua errors.
--- @see Ros2Fanuc_msgsSrvSwitchControlState_Response.encode
--- @field decode fun(bytes: string): Ros2Fanuc_msgsSrvSwitchControlState_Response
local Ros2Fanuc_msgsSrvSwitchControlState_Response = classes["Ros2Fanuc_msgsSrvSwitchControlState_Response"]

--- @class Ros2Rmi_msgsMsgCallParam
--- @brief Complete ROS2 rmi_msgs/msg/CallParam value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field type string Strict UTF-8 without NUL; length0..64 bytes.
--- @field int_value integer Exact int32 range -2147483648..2147483647.
--- @field float_value number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field string_value string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Rmi_msgsMsgCallParam.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCallParam.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsMsgCallParam.NATIVE_TYPE: Exact normalized native type name rmi_msgs/msg/CallParam.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCallParam.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/msg/CallParam.
--- @brief Ros2Rmi_msgsMsgCallParam.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCallParam.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsMsgCallParam.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCallParam.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsMsgCallParam.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCallParam.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Rmi_msgsMsgCallParam.MAX_WIRE_BYTES: Inclusive complete maximum 592 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCallParam.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 592 bytes.
--- @brief Native class constant Ros2Rmi_msgsMsgCallParam.AR.
--- @details Original string literal AR; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCallParam.new
--- @field AR integer
--- @brief Native class constant Ros2Rmi_msgsMsgCallParam.PR.
--- @details Original string literal PR; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCallParam.new
--- @field PR integer
--- @brief Native class constant Ros2Rmi_msgsMsgCallParam.SR.
--- @details Original string literal SR; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCallParam.new
--- @field SR integer
--- @brief Native class constant Ros2Rmi_msgsMsgCallParam.R.
--- @details Original string literal R; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCallParam.new
--- @field R integer
--- @brief Native class constant Ros2Rmi_msgsMsgCallParam.P.
--- @details Original string literal P; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCallParam.new
--- @field P integer
--- @brief Native class constant Ros2Rmi_msgsMsgCallParam.INT.
--- @details Original string literal INT; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCallParam.new
--- @field INT integer
--- @brief Native class constant Ros2Rmi_msgsMsgCallParam.INTEGER.
--- @details Original string literal INT; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCallParam.new
--- @field INTEGER integer
--- @brief Native class constant Ros2Rmi_msgsMsgCallParam.FLOAT.
--- @details Original string literal FLOAT; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCallParam.new
--- @field FLOAT integer
--- @brief Native class constant Ros2Rmi_msgsMsgCallParam.STRING.
--- @details Original string literal String; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCallParam.new
--- @field STRING integer
--- @brief Native class constant Ros2Rmi_msgsMsgCallParam.STR.
--- @details Original string literal String; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCallParam.new
--- @field STR integer
--- @brief Construct Ros2Rmi_msgsMsgCallParam with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsMsgCallParam value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsMsgCallParam.encode
--- @field new fun(values?: table): Ros2Rmi_msgsMsgCallParam
--- @brief Encode a complete Ros2Rmi_msgsMsgCallParam value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsMsgCallParam [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..592 bytes.
--- @see Ros2Rmi_msgsMsgCallParam.decode
--- @field encode fun(value: Ros2Rmi_msgsMsgCallParam): string
--- @brief Decode exactly one complete Ros2Rmi_msgsMsgCallParam canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsMsgCallParam value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsMsgCallParam.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsMsgCallParam
local Ros2Rmi_msgsMsgCallParam = classes["Ros2Rmi_msgsMsgCallParam"]

--- @class Ros2Rmi_msgsMsgCartesian
--- @brief Complete ROS2 rmi_msgs/msg/Cartesian value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field utool integer Exact int8 range -128..127. Declared native scalar default: 1.
--- @field uframe integer Exact int8 range -128..127. Declared native scalar default: 0.
--- @field front integer Exact uint8 range 0..255. Declared native scalar default: 1.
--- @field up integer Exact uint8 range 0..255. Declared native scalar default: 1.
--- @field left integer Exact uint8 range 0..255. Declared native scalar default: 0.
--- @field flip integer Exact uint8 range 0..255. Declared native scalar default: 0.
--- @field turn4 integer Exact int8 range -128..127. Declared native scalar default: 0.
--- @field turn5 integer Exact int8 range -128..127. Declared native scalar default: 0.
--- @field turn6 integer Exact int8 range -128..127. Declared native scalar default: 0.
--- @field x number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field y number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field z number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field w number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field p number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field r number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ext1 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ext2 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @field ext3 number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Rmi_msgsMsgCartesian.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCartesian.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsMsgCartesian.NATIVE_TYPE: Exact normalized native type name rmi_msgs/msg/Cartesian.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCartesian.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/msg/Cartesian.
--- @brief Ros2Rmi_msgsMsgCartesian.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCartesian.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsMsgCartesian.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCartesian.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsMsgCartesian.MIN_WIRE_BYTES: Inclusive complete minimum 45 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCartesian.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 45 bytes.
--- @brief Ros2Rmi_msgsMsgCartesian.MAX_WIRE_BYTES: Inclusive complete maximum 45 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCartesian.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 45 bytes.
--- @brief Construct Ros2Rmi_msgsMsgCartesian with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsMsgCartesian value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsMsgCartesian.encode
--- @field new fun(values?: table): Ros2Rmi_msgsMsgCartesian
--- @brief Encode a complete Ros2Rmi_msgsMsgCartesian value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsMsgCartesian [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 45..45 bytes.
--- @see Ros2Rmi_msgsMsgCartesian.decode
--- @field encode fun(value: Ros2Rmi_msgsMsgCartesian): string
--- @brief Decode exactly one complete Ros2Rmi_msgsMsgCartesian canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsMsgCartesian value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsMsgCartesian.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsMsgCartesian
local Ros2Rmi_msgsMsgCartesian = classes["Ros2Rmi_msgsMsgCartesian"]

--- @class Ros2Rmi_msgsMsgCommand
--- @brief Complete ROS2 rmi_msgs/msg/Command value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field type string Strict UTF-8 without NUL; length0..64 bytes.
--- @brief Ros2Rmi_msgsMsgCommand.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCommand.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsMsgCommand.NATIVE_TYPE: Exact normalized native type name rmi_msgs/msg/Command.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCommand.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/msg/Command.
--- @brief Ros2Rmi_msgsMsgCommand.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCommand.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsMsgCommand.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCommand.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsMsgCommand.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCommand.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rmi_msgsMsgCommand.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCommand.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Native class constant Ros2Rmi_msgsMsgCommand.INITIAZLIE.
--- @details Original string literal INITIALIZE; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommand.new
--- @field INITIAZLIE integer
--- @brief Native class constant Ros2Rmi_msgsMsgCommand.INIT.
--- @details Original string literal INITIALIZE; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommand.new
--- @field INIT integer
--- @brief Native class constant Ros2Rmi_msgsMsgCommand.ABORT.
--- @details Original string literal ABORT; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommand.new
--- @field ABORT integer
--- @brief Native class constant Ros2Rmi_msgsMsgCommand.PAUSE.
--- @details Original string literal PAUSE; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommand.new
--- @field PAUSE integer
--- @brief Native class constant Ros2Rmi_msgsMsgCommand.RESUME.
--- @details Original string literal RESUME; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommand.new
--- @field RESUME integer
--- @brief Construct Ros2Rmi_msgsMsgCommand with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsMsgCommand value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsMsgCommand.encode
--- @field new fun(values?: table): Ros2Rmi_msgsMsgCommand
--- @brief Encode a complete Ros2Rmi_msgsMsgCommand value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsMsgCommand [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros2Rmi_msgsMsgCommand.decode
--- @field encode fun(value: Ros2Rmi_msgsMsgCommand): string
--- @brief Decode exactly one complete Ros2Rmi_msgsMsgCommand canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsMsgCommand value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsMsgCommand.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsMsgCommand
local Ros2Rmi_msgsMsgCommand = classes["Ros2Rmi_msgsMsgCommand"]

--- @class Ros2Rmi_msgsMsgCommandOptions
--- @brief Complete ROS2 rmi_msgs/msg/CommandOptions value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field use_group_mask boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field group_mask integer Exact uint8 range 0..255. Declared native scalar default: 1.
--- @field use_rtsa boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field rtsa string Strict UTF-8 without NUL; length0..512 bytes.
--- @field use_pltzmode boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field pltzmode string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Rmi_msgsMsgCommandOptions.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCommandOptions.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsMsgCommandOptions.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/msg/CommandOptions.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCommandOptions.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/msg/CommandOptions.
--- @brief Ros2Rmi_msgsMsgCommandOptions.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCommandOptions.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsMsgCommandOptions.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCommandOptions.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsMsgCommandOptions.MIN_WIRE_BYTES: Inclusive complete minimum 12 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCommandOptions.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Rmi_msgsMsgCommandOptions.MAX_WIRE_BYTES: Inclusive complete maximum 1036 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgCommandOptions.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1036 bytes.
--- @brief Native class constant Ros2Rmi_msgsMsgCommandOptions.RTSA_ON.
--- @details Original string literal ON; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommandOptions.new
--- @field RTSA_ON integer
--- @brief Native class constant Ros2Rmi_msgsMsgCommandOptions.RTSA_OFF.
--- @details Original string literal OFF; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommandOptions.new
--- @field RTSA_OFF integer
--- @brief Native class constant Ros2Rmi_msgsMsgCommandOptions.PLTZ_ZERODN.
--- @details Original string literal ZERODN; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommandOptions.new
--- @field PLTZ_ZERODN integer
--- @brief Native class constant Ros2Rmi_msgsMsgCommandOptions.PLTZ_ZEROUP.
--- @details Original string literal ZEROUP; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommandOptions.new
--- @field PLTZ_ZEROUP integer
--- @brief Native class constant Ros2Rmi_msgsMsgCommandOptions.PLTZ_PSPIDN.
--- @details Original string literal PSPIDN; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommandOptions.new
--- @field PLTZ_PSPIDN integer
--- @brief Native class constant Ros2Rmi_msgsMsgCommandOptions.PLTZ_PSPIUP.
--- @details Original string literal PSPIUP; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommandOptions.new
--- @field PLTZ_PSPIUP integer
--- @brief Native class constant Ros2Rmi_msgsMsgCommandOptions.PLTZ_MSPIDN.
--- @details Original string literal MSPIDN; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommandOptions.new
--- @field PLTZ_MSPIDN integer
--- @brief Native class constant Ros2Rmi_msgsMsgCommandOptions.PLTZ_MSPIUP.
--- @details Original string literal MSPIUP; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgCommandOptions.new
--- @field PLTZ_MSPIUP integer
--- @brief Construct Ros2Rmi_msgsMsgCommandOptions with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsMsgCommandOptions value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsMsgCommandOptions.encode
--- @field new fun(values?: table): Ros2Rmi_msgsMsgCommandOptions
--- @brief Encode a complete Ros2Rmi_msgsMsgCommandOptions value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsMsgCommandOptions [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..1036 bytes.
--- @see Ros2Rmi_msgsMsgCommandOptions.decode
--- @field encode fun(value: Ros2Rmi_msgsMsgCommandOptions): string
--- @brief Decode exactly one complete Ros2Rmi_msgsMsgCommandOptions canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsMsgCommandOptions value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsMsgCommandOptions.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsMsgCommandOptions
local Ros2Rmi_msgsMsgCommandOptions = classes["Ros2Rmi_msgsMsgCommandOptions"]

--- @class Ros2Rmi_msgsMsgJoint
--- @brief Complete ROS2 rmi_msgs/msg/Joint value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field positions number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. Exactly 9 contiguous
--elements; holes and extra array keys are rejected.
--- @brief Ros2Rmi_msgsMsgJoint.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgJoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsMsgJoint.NATIVE_TYPE: Exact normalized native type name rmi_msgs/msg/Joint.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgJoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/msg/Joint.
--- @brief Ros2Rmi_msgsMsgJoint.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgJoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsMsgJoint.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgJoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsMsgJoint.MIN_WIRE_BYTES: Inclusive complete minimum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgJoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 36 bytes.
--- @brief Ros2Rmi_msgsMsgJoint.MAX_WIRE_BYTES: Inclusive complete maximum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgJoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 36 bytes.
--- @brief Construct Ros2Rmi_msgsMsgJoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsMsgJoint value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsMsgJoint.encode
--- @field new fun(values?: table): Ros2Rmi_msgsMsgJoint
--- @brief Encode a complete Ros2Rmi_msgsMsgJoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsMsgJoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 36..36 bytes.
--- @see Ros2Rmi_msgsMsgJoint.decode
--- @field encode fun(value: Ros2Rmi_msgsMsgJoint): string
--- @brief Decode exactly one complete Ros2Rmi_msgsMsgJoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsMsgJoint value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsMsgJoint.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsMsgJoint
local Ros2Rmi_msgsMsgJoint = classes["Ros2Rmi_msgsMsgJoint"]

--- @class Ros2Rmi_msgsMsgMotionInstructionOptions
--- @brief Complete ROS2 rmi_msgs/msg/MotionInstructionOptions value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field use_acc boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field acc integer Exact uint8 range 0..255.
--- @field use_offset_pr_number boolean Exact boolean; encoded as one byte0/1. Declared native scalar default:
--False.
--- @field offset_pr_number integer Exact uint16 range 0..65535.
--- @field use_vision_pr_number boolean Exact boolean; encoded as one byte0/1. Declared native scalar default:
--False.
--- @field vision_pr_number integer Exact uint16 range 0..65535.
--- @field use_wrist_joint boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field wrist_joint string Strict UTF-8 without NUL; length0..512 bytes.
--- @field use_mrot boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field mrot string Strict UTF-8 without NUL; length0..512 bytes.
--- @field use_lcb_type boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field lcb_type string Strict UTF-8 without NUL; length0..512 bytes.
--- @field use_lcb_value boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field lcb_value integer Exact uint16 range 0..65535.
--- @field use_port_type boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field port_type integer Exact uint8 range 0..255.
--- @field use_port_number boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field port_number integer Exact uint16 range 0..65535.
--- @field use_port_value boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field port_value string Strict UTF-8 without NUL; length0..512 bytes.
--- @field use_tool_offset_pr_number boolean Exact boolean; encoded as one byte0/1. Declared native scalar
--default: False.
--- @field tool_offset_pr_number integer Exact uint16 range 0..65535.
--- @field use_alim boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field alim integer Exact int32 range -2147483648..2147483647.
--- @field use_alim_reg boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field alim_reg integer Exact uint16 range 0..65535.
--- @field use_no_blend boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field no_blend string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Rmi_msgsMsgMotionInstructionOptions.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsMsgMotionInstructionOptions.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/msg/MotionInstructionOptions.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/msg/MotionInstructionOptions.
--- @brief Ros2Rmi_msgsMsgMotionInstructionOptions.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsMsgMotionInstructionOptions.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsMsgMotionInstructionOptions.MIN_WIRE_BYTES: Inclusive complete minimum 52 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 52 bytes.
--- @brief Ros2Rmi_msgsMsgMotionInstructionOptions.MAX_WIRE_BYTES: Inclusive complete maximum 2612 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2612 bytes.
--- @brief Native class constant Ros2Rmi_msgsMsgMotionInstructionOptions.LCB_TYPE_TB.
--- @details Original string literal TB; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.new
--- @field LCB_TYPE_TB integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionInstructionOptions.LCB_TYPE_TA.
--- @details Original string literal TA; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.new
--- @field LCB_TYPE_TA integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionInstructionOptions.LCB_TYPE_DB.
--- @details Original string literal DB; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.new
--- @field LCB_TYPE_DB integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionInstructionOptions.PORT_TYPE_DOUT.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.new
--- @field PORT_TYPE_DOUT integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionInstructionOptions.PORT_TYPE_DO.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.new
--- @field PORT_TYPE_DO integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionInstructionOptions.PORT_TYPE_ROUT.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.new
--- @field PORT_TYPE_ROUT integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionInstructionOptions.PORT_TYPE_RO.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.new
--- @field PORT_TYPE_RO integer
--- @brief Construct Ros2Rmi_msgsMsgMotionInstructionOptions with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsMsgMotionInstructionOptions value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.encode
--- @field new fun(values?: table): Ros2Rmi_msgsMsgMotionInstructionOptions
--- @brief Encode a complete Ros2Rmi_msgsMsgMotionInstructionOptions value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsMsgMotionInstructionOptions [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 52..2612 bytes.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.decode
--- @field encode fun(value: Ros2Rmi_msgsMsgMotionInstructionOptions): string
--- @brief Decode exactly one complete Ros2Rmi_msgsMsgMotionInstructionOptions canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsMsgMotionInstructionOptions value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsMsgMotionInstructionOptions.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsMsgMotionInstructionOptions
local Ros2Rmi_msgsMsgMotionInstructionOptions = classes["Ros2Rmi_msgsMsgMotionInstructionOptions"]

--- @class Ros2Rmi_msgsMsgMotionType
--- @brief Complete ROS2 rmi_msgs/msg/MotionType value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field type string Strict UTF-8 without NUL; length0..64 bytes.
--- @brief Ros2Rmi_msgsMsgMotionType.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgMotionType.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsMsgMotionType.NATIVE_TYPE: Exact normalized native type name rmi_msgs/msg/MotionType.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgMotionType.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/msg/MotionType.
--- @brief Ros2Rmi_msgsMsgMotionType.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgMotionType.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsMsgMotionType.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgMotionType.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsMsgMotionType.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgMotionType.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rmi_msgsMsgMotionType.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgMotionType.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Native class constant Ros2Rmi_msgsMsgMotionType.J.
--- @details Original string literal J; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionType.new
--- @field J integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionType.JOINT.
--- @details Original string literal J; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionType.new
--- @field JOINT integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionType.L.
--- @details Original string literal L; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionType.new
--- @field L integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionType.LINEAR.
--- @details Original string literal L; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionType.new
--- @field LINEAR integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionType.C.
--- @details Original string literal C; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionType.new
--- @field C integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionType.CIRCULAR.
--- @details Original string literal C; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionType.new
--- @field CIRCULAR integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionType.S.
--- @details Original string literal S; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionType.new
--- @field S integer
--- @brief Native class constant Ros2Rmi_msgsMsgMotionType.SPLINE.
--- @details Original string literal S; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgMotionType.new
--- @field SPLINE integer
--- @brief Construct Ros2Rmi_msgsMsgMotionType with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsMsgMotionType value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsMsgMotionType.encode
--- @field new fun(values?: table): Ros2Rmi_msgsMsgMotionType
--- @brief Encode a complete Ros2Rmi_msgsMsgMotionType value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsMsgMotionType [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros2Rmi_msgsMsgMotionType.decode
--- @field encode fun(value: Ros2Rmi_msgsMsgMotionType): string
--- @brief Decode exactly one complete Ros2Rmi_msgsMsgMotionType canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsMsgMotionType value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsMsgMotionType.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsMsgMotionType
local Ros2Rmi_msgsMsgMotionType = classes["Ros2Rmi_msgsMsgMotionType"]

--- @class Ros2Rmi_msgsMsgRepresentation
--- @brief Complete ROS2 rmi_msgs/msg/Representation value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field representation string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Rmi_msgsMsgRepresentation.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgRepresentation.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsMsgRepresentation.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/msg/Representation.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgRepresentation.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/msg/Representation.
--- @brief Ros2Rmi_msgsMsgRepresentation.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgRepresentation.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsMsgRepresentation.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgRepresentation.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsMsgRepresentation.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgRepresentation.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rmi_msgsMsgRepresentation.MAX_WIRE_BYTES: Inclusive complete maximum 516 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgRepresentation.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 516 bytes.
--- @brief Native class constant Ros2Rmi_msgsMsgRepresentation.JOINT.
--- @details Original string literal JOINT; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgRepresentation.new
--- @field JOINT integer
--- @brief Native class constant Ros2Rmi_msgsMsgRepresentation.J.
--- @details Original string literal JOINT; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgRepresentation.new
--- @field J integer
--- @brief Native class constant Ros2Rmi_msgsMsgRepresentation.CARTESIAN.
--- @details Original string literal CARTESIAN; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgRepresentation.new
--- @field CARTESIAN integer
--- @brief Native class constant Ros2Rmi_msgsMsgRepresentation.CART.
--- @details Original string literal CARTESIAN; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgRepresentation.new
--- @field CART integer
--- @brief Native class constant Ros2Rmi_msgsMsgRepresentation.C.
--- @details Original string literal CARTESIAN; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgRepresentation.new
--- @field C integer
--- @brief Construct Ros2Rmi_msgsMsgRepresentation with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsMsgRepresentation value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsMsgRepresentation.encode
--- @field new fun(values?: table): Ros2Rmi_msgsMsgRepresentation
--- @brief Encode a complete Ros2Rmi_msgsMsgRepresentation value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsMsgRepresentation [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..516 bytes.
--- @see Ros2Rmi_msgsMsgRepresentation.decode
--- @field encode fun(value: Ros2Rmi_msgsMsgRepresentation): string
--- @brief Decode exactly one complete Ros2Rmi_msgsMsgRepresentation canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsMsgRepresentation value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsMsgRepresentation.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsMsgRepresentation
local Ros2Rmi_msgsMsgRepresentation = classes["Ros2Rmi_msgsMsgRepresentation"]

--- @class Ros2Rmi_msgsMsgSpeedType
--- @brief Complete ROS2 rmi_msgs/msg/SpeedType value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field type string Strict UTF-8 without NUL; length0..64 bytes.
--- @brief Ros2Rmi_msgsMsgSpeedType.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgSpeedType.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsMsgSpeedType.NATIVE_TYPE: Exact normalized native type name rmi_msgs/msg/SpeedType.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgSpeedType.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/msg/SpeedType.
--- @brief Ros2Rmi_msgsMsgSpeedType.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgSpeedType.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsMsgSpeedType.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgSpeedType.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsMsgSpeedType.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgSpeedType.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rmi_msgsMsgSpeedType.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgSpeedType.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Native class constant Ros2Rmi_msgsMsgSpeedType.PERCENT.
--- @details Original string literal Percent; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgSpeedType.new
--- @field PERCENT integer
--- @brief Native class constant Ros2Rmi_msgsMsgSpeedType.PERCENTAGE.
--- @details Original string literal Percent; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgSpeedType.new
--- @field PERCENTAGE integer
--- @brief Native class constant Ros2Rmi_msgsMsgSpeedType.MMSEC.
--- @details Original string literal mmSec; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgSpeedType.new
--- @field MMSEC integer
--- @brief Native class constant Ros2Rmi_msgsMsgSpeedType.INCHMIN.
--- @details Original string literal InchMin; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgSpeedType.new
--- @field INCHMIN integer
--- @brief Native class constant Ros2Rmi_msgsMsgSpeedType.TIME.
--- @details Original string literal Time; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgSpeedType.new
--- @field TIME integer
--- @brief Native class constant Ros2Rmi_msgsMsgSpeedType.SECONDS.
--- @details Original string literal Time; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgSpeedType.new
--- @field SECONDS integer
--- @brief Native class constant Ros2Rmi_msgsMsgSpeedType.SEC.
--- @details Original string literal Time; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgSpeedType.new
--- @field SEC integer
--- @brief Native class constant Ros2Rmi_msgsMsgSpeedType.MSEC.
--- @details Original string literal mSec; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgSpeedType.new
--- @field MSEC integer
--- @brief Construct Ros2Rmi_msgsMsgSpeedType with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsMsgSpeedType value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsMsgSpeedType.encode
--- @field new fun(values?: table): Ros2Rmi_msgsMsgSpeedType
--- @brief Encode a complete Ros2Rmi_msgsMsgSpeedType value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsMsgSpeedType [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros2Rmi_msgsMsgSpeedType.decode
--- @field encode fun(value: Ros2Rmi_msgsMsgSpeedType): string
--- @brief Decode exactly one complete Ros2Rmi_msgsMsgSpeedType canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsMsgSpeedType value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsMsgSpeedType.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsMsgSpeedType
local Ros2Rmi_msgsMsgSpeedType = classes["Ros2Rmi_msgsMsgSpeedType"]

--- @class Ros2Rmi_msgsMsgTermType
--- @brief Complete ROS2 rmi_msgs/msg/TermType value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field type string Strict UTF-8 without NUL; length0..64 bytes.
--- @brief Ros2Rmi_msgsMsgTermType.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgTermType.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsMsgTermType.NATIVE_TYPE: Exact normalized native type name rmi_msgs/msg/TermType.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgTermType.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/msg/TermType.
--- @brief Ros2Rmi_msgsMsgTermType.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgTermType.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsMsgTermType.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgTermType.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsMsgTermType.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgTermType.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rmi_msgsMsgTermType.MAX_WIRE_BYTES: Inclusive complete maximum 68 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsMsgTermType.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 68 bytes.
--- @brief Native class constant Ros2Rmi_msgsMsgTermType.FINE.
--- @details Original string literal FINE; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgTermType.new
--- @field FINE integer
--- @brief Native class constant Ros2Rmi_msgsMsgTermType.CNT.
--- @details Original string literal CNT; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgTermType.new
--- @field CNT integer
--- @brief Native class constant Ros2Rmi_msgsMsgTermType.CR.
--- @details Original string literal CR; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgTermType.new
--- @field CR integer
--- @brief Native class constant Ros2Rmi_msgsMsgTermType.CD.
--- @details Original string literal CD; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Rmi_msgsMsgTermType.new
--- @field CD integer
--- @brief Construct Ros2Rmi_msgsMsgTermType with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsMsgTermType value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsMsgTermType.encode
--- @field new fun(values?: table): Ros2Rmi_msgsMsgTermType
--- @brief Encode a complete Ros2Rmi_msgsMsgTermType value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsMsgTermType [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..68 bytes.
--- @see Ros2Rmi_msgsMsgTermType.decode
--- @field encode fun(value: Ros2Rmi_msgsMsgTermType): string
--- @brief Decode exactly one complete Ros2Rmi_msgsMsgTermType canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsMsgTermType value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsMsgTermType.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsMsgTermType
local Ros2Rmi_msgsMsgTermType = classes["Ros2Rmi_msgsMsgTermType"]

--- @class Ros2Rmi_msgsSrvAddCall_Request
--- @brief Complete ROS2 rmi_msgs/srv/AddCall_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field program_name string Strict UTF-8 without NUL; length0..512 bytes.
--- @field params table[] Complete nested rmi_msgs/msg/CallParam value; no native fields are projected away. At
--most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Rmi_msgsSrvAddCall_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddCall_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddCall_Request.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddCall_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddCall_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddCall_Request.
--- @brief Ros2Rmi_msgsSrvAddCall_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddCall_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddCall_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddCall_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddCall_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddCall_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Rmi_msgsSrvAddCall_Request.MAX_WIRE_BYTES: Inclusive complete maximum 9992 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddCall_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 9992 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddCall_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddCall_Request value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddCall_Request.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddCall_Request
--- @brief Encode a complete Ros2Rmi_msgsSrvAddCall_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddCall_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..9992 bytes.
--- @see Ros2Rmi_msgsSrvAddCall_Request.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddCall_Request): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddCall_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddCall_Request value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddCall_Request.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddCall_Request
local Ros2Rmi_msgsSrvAddCall_Request = classes["Ros2Rmi_msgsSrvAddCall_Request"]

--- @class Ros2Rmi_msgsSrvAddCall_Response
--- @brief Complete ROS2 rmi_msgs/srv/AddCall_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field sequence_id integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Rmi_msgsSrvAddCall_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddCall_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddCall_Response.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddCall_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddCall_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddCall_Response.
--- @brief Ros2Rmi_msgsSrvAddCall_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddCall_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddCall_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddCall_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddCall_Response.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddCall_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Rmi_msgsSrvAddCall_Response.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddCall_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddCall_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddCall_Response value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddCall_Response.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddCall_Response
--- @brief Encode a complete Ros2Rmi_msgsSrvAddCall_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddCall_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Rmi_msgsSrvAddCall_Response.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddCall_Response): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddCall_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddCall_Response value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddCall_Response.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddCall_Response
local Ros2Rmi_msgsSrvAddCall_Response = classes["Ros2Rmi_msgsSrvAddCall_Response"]

--- @class Ros2Rmi_msgsSrvAddMotionInstruction_Request
--- @brief Complete ROS2 rmi_msgs/srv/AddMotionInstruction_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field motion_type table Complete nested rmi_msgs/msg/MotionType value; no native fields are projected away.
--- @field incremental boolean Exact boolean; encoded as one byte0/1. Declared native scalar default: False.
--- @field representation table Complete nested rmi_msgs/msg/Representation value; no native fields are
--projected away.
--- @field joint table Complete nested rmi_msgs/msg/Joint value; no native fields are projected away.
--- @field cartesian table Complete nested rmi_msgs/msg/Cartesian value; no native fields are projected away.
--- @field speed_type table Complete nested rmi_msgs/msg/SpeedType value; no native fields are projected away.
--- @field speed_value integer Exact uint16 range 0..65535.
--- @field term_type table Complete nested rmi_msgs/msg/TermType value; no native fields are projected away.
--- @field term_value integer Exact uint8 range 0..255.
--- @field via_representation table Complete nested rmi_msgs/msg/Representation value; no native fields are
--projected away.
--- @field via_joint table Complete nested rmi_msgs/msg/Joint value; no native fields are projected away.
--- @field via_cartesian table Complete nested rmi_msgs/msg/Cartesian value; no native fields are projected
--away.
--- @field options table Complete nested rmi_msgs/msg/MotionInstructionOptions value; no native fields are
--projected away.
--- @brief Ros2Rmi_msgsSrvAddMotionInstruction_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddMotionInstruction_Request.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddMotionInstruction_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddMotionInstruction_Request.
--- @brief Ros2Rmi_msgsSrvAddMotionInstruction_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddMotionInstruction_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddMotionInstruction_Request.MIN_WIRE_BYTES: Inclusive complete minimum 238 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 238 bytes.
--- @brief Ros2Rmi_msgsSrvAddMotionInstruction_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4014 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4014 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddMotionInstruction_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddMotionInstruction_Request value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Request.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddMotionInstruction_Request
--- @brief Encode a complete Ros2Rmi_msgsSrvAddMotionInstruction_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddMotionInstruction_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 238..4014 bytes.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Request.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddMotionInstruction_Request): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddMotionInstruction_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddMotionInstruction_Request value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Request.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddMotionInstruction_Request
local Ros2Rmi_msgsSrvAddMotionInstruction_Request = classes["Ros2Rmi_msgsSrvAddMotionInstruction_Request"]

--- @class Ros2Rmi_msgsSrvAddMotionInstruction_Response
--- @brief Complete ROS2 rmi_msgs/srv/AddMotionInstruction_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field sequence_id integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Rmi_msgsSrvAddMotionInstruction_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddMotionInstruction_Response.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddMotionInstruction_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddMotionInstruction_Response.
--- @brief Ros2Rmi_msgsSrvAddMotionInstruction_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddMotionInstruction_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddMotionInstruction_Response.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Rmi_msgsSrvAddMotionInstruction_Response.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddMotionInstruction_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddMotionInstruction_Response value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Response.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddMotionInstruction_Response
--- @brief Encode a complete Ros2Rmi_msgsSrvAddMotionInstruction_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddMotionInstruction_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Response.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddMotionInstruction_Response): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddMotionInstruction_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddMotionInstruction_Response value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddMotionInstruction_Response.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddMotionInstruction_Response
local Ros2Rmi_msgsSrvAddMotionInstruction_Response = classes["Ros2Rmi_msgsSrvAddMotionInstruction_Response"]

--- @class Ros2Rmi_msgsSrvAddSetPayload_Request
--- @brief Complete ROS2 rmi_msgs/srv/AddSetPayload_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field schedule_number integer Exact uint8 range 0..255.
--- @brief Ros2Rmi_msgsSrvAddSetPayload_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddSetPayload_Request.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddSetPayload_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddSetPayload_Request.
--- @brief Ros2Rmi_msgsSrvAddSetPayload_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddSetPayload_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddSetPayload_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Rmi_msgsSrvAddSetPayload_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddSetPayload_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddSetPayload_Request value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Request.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddSetPayload_Request
--- @brief Encode a complete Ros2Rmi_msgsSrvAddSetPayload_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddSetPayload_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Request.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddSetPayload_Request): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddSetPayload_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddSetPayload_Request value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Request.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddSetPayload_Request
local Ros2Rmi_msgsSrvAddSetPayload_Request = classes["Ros2Rmi_msgsSrvAddSetPayload_Request"]

--- @class Ros2Rmi_msgsSrvAddSetPayload_Response
--- @brief Complete ROS2 rmi_msgs/srv/AddSetPayload_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field sequence_id integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Rmi_msgsSrvAddSetPayload_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddSetPayload_Response.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddSetPayload_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddSetPayload_Response.
--- @brief Ros2Rmi_msgsSrvAddSetPayload_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddSetPayload_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddSetPayload_Response.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Rmi_msgsSrvAddSetPayload_Response.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddSetPayload_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddSetPayload_Response value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Response.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddSetPayload_Response
--- @brief Encode a complete Ros2Rmi_msgsSrvAddSetPayload_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddSetPayload_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Response.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddSetPayload_Response): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddSetPayload_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddSetPayload_Response value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddSetPayload_Response.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddSetPayload_Response
local Ros2Rmi_msgsSrvAddSetPayload_Response = classes["Ros2Rmi_msgsSrvAddSetPayload_Response"]

--- @class Ros2Rmi_msgsSrvAddSetUFrame_Request
--- @brief Complete ROS2 rmi_msgs/srv/AddSetUFrame_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field frame_number integer Exact uint8 range 0..255.
--- @brief Ros2Rmi_msgsSrvAddSetUFrame_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddSetUFrame_Request.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddSetUFrame_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddSetUFrame_Request.
--- @brief Ros2Rmi_msgsSrvAddSetUFrame_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddSetUFrame_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddSetUFrame_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Rmi_msgsSrvAddSetUFrame_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddSetUFrame_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddSetUFrame_Request value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Request.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddSetUFrame_Request
--- @brief Encode a complete Ros2Rmi_msgsSrvAddSetUFrame_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddSetUFrame_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Request.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddSetUFrame_Request): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddSetUFrame_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddSetUFrame_Request value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Request.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddSetUFrame_Request
local Ros2Rmi_msgsSrvAddSetUFrame_Request = classes["Ros2Rmi_msgsSrvAddSetUFrame_Request"]

--- @class Ros2Rmi_msgsSrvAddSetUFrame_Response
--- @brief Complete ROS2 rmi_msgs/srv/AddSetUFrame_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field sequence_id integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Rmi_msgsSrvAddSetUFrame_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddSetUFrame_Response.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddSetUFrame_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddSetUFrame_Response.
--- @brief Ros2Rmi_msgsSrvAddSetUFrame_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddSetUFrame_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddSetUFrame_Response.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Rmi_msgsSrvAddSetUFrame_Response.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddSetUFrame_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddSetUFrame_Response value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Response.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddSetUFrame_Response
--- @brief Encode a complete Ros2Rmi_msgsSrvAddSetUFrame_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddSetUFrame_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Response.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddSetUFrame_Response): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddSetUFrame_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddSetUFrame_Response value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddSetUFrame_Response.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddSetUFrame_Response
local Ros2Rmi_msgsSrvAddSetUFrame_Response = classes["Ros2Rmi_msgsSrvAddSetUFrame_Response"]

--- @class Ros2Rmi_msgsSrvAddSetUTool_Request
--- @brief Complete ROS2 rmi_msgs/srv/AddSetUTool_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field tool_number integer Exact uint8 range 0..255.
--- @brief Ros2Rmi_msgsSrvAddSetUTool_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddSetUTool_Request.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddSetUTool_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddSetUTool_Request.
--- @brief Ros2Rmi_msgsSrvAddSetUTool_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddSetUTool_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddSetUTool_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Rmi_msgsSrvAddSetUTool_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddSetUTool_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddSetUTool_Request value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Request.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddSetUTool_Request
--- @brief Encode a complete Ros2Rmi_msgsSrvAddSetUTool_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddSetUTool_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Request.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddSetUTool_Request): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddSetUTool_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddSetUTool_Request value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Request.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddSetUTool_Request
local Ros2Rmi_msgsSrvAddSetUTool_Request = classes["Ros2Rmi_msgsSrvAddSetUTool_Request"]

--- @class Ros2Rmi_msgsSrvAddSetUTool_Response
--- @brief Complete ROS2 rmi_msgs/srv/AddSetUTool_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field sequence_id integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Rmi_msgsSrvAddSetUTool_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddSetUTool_Response.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddSetUTool_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddSetUTool_Response.
--- @brief Ros2Rmi_msgsSrvAddSetUTool_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddSetUTool_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddSetUTool_Response.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Rmi_msgsSrvAddSetUTool_Response.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddSetUTool_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddSetUTool_Response value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Response.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddSetUTool_Response
--- @brief Encode a complete Ros2Rmi_msgsSrvAddSetUTool_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddSetUTool_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Response.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddSetUTool_Response): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddSetUTool_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddSetUTool_Response value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddSetUTool_Response.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddSetUTool_Response
local Ros2Rmi_msgsSrvAddSetUTool_Response = classes["Ros2Rmi_msgsSrvAddSetUTool_Response"]

--- @class Ros2Rmi_msgsSrvAddWaitDIN_Request
--- @brief Complete ROS2 rmi_msgs/srv/AddWaitDIN_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field port_number integer Exact uint16 range 0..65535.
--- @field port_value string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Rmi_msgsSrvAddWaitDIN_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddWaitDIN_Request.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddWaitDIN_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddWaitDIN_Request.
--- @brief Ros2Rmi_msgsSrvAddWaitDIN_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddWaitDIN_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddWaitDIN_Request.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Rmi_msgsSrvAddWaitDIN_Request.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddWaitDIN_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddWaitDIN_Request value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Request.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddWaitDIN_Request
--- @brief Encode a complete Ros2Rmi_msgsSrvAddWaitDIN_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddWaitDIN_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Request.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddWaitDIN_Request): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddWaitDIN_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddWaitDIN_Request value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Request.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddWaitDIN_Request
local Ros2Rmi_msgsSrvAddWaitDIN_Request = classes["Ros2Rmi_msgsSrvAddWaitDIN_Request"]

--- @class Ros2Rmi_msgsSrvAddWaitDIN_Response
--- @brief Complete ROS2 rmi_msgs/srv/AddWaitDIN_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field sequence_id integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Rmi_msgsSrvAddWaitDIN_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddWaitDIN_Response.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddWaitDIN_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddWaitDIN_Response.
--- @brief Ros2Rmi_msgsSrvAddWaitDIN_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddWaitDIN_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddWaitDIN_Response.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Rmi_msgsSrvAddWaitDIN_Response.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddWaitDIN_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddWaitDIN_Response value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Response.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddWaitDIN_Response
--- @brief Encode a complete Ros2Rmi_msgsSrvAddWaitDIN_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddWaitDIN_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Response.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddWaitDIN_Response): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddWaitDIN_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddWaitDIN_Response value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddWaitDIN_Response.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddWaitDIN_Response
local Ros2Rmi_msgsSrvAddWaitDIN_Response = classes["Ros2Rmi_msgsSrvAddWaitDIN_Response"]

--- @class Ros2Rmi_msgsSrvAddWaitTime_Request
--- @brief Complete ROS2 rmi_msgs/srv/AddWaitTime_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field time number Finite IEEE float32. Rounds to binary32 and rejects overflow.
--- @brief Ros2Rmi_msgsSrvAddWaitTime_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddWaitTime_Request.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddWaitTime_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddWaitTime_Request.
--- @brief Ros2Rmi_msgsSrvAddWaitTime_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddWaitTime_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddWaitTime_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rmi_msgsSrvAddWaitTime_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddWaitTime_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddWaitTime_Request value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Request.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddWaitTime_Request
--- @brief Encode a complete Ros2Rmi_msgsSrvAddWaitTime_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddWaitTime_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Request.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddWaitTime_Request): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddWaitTime_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddWaitTime_Request value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Request.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddWaitTime_Request
local Ros2Rmi_msgsSrvAddWaitTime_Request = classes["Ros2Rmi_msgsSrvAddWaitTime_Request"]

--- @class Ros2Rmi_msgsSrvAddWaitTime_Response
--- @brief Complete ROS2 rmi_msgs/srv/AddWaitTime_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @field sequence_id integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Rmi_msgsSrvAddWaitTime_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvAddWaitTime_Response.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/AddWaitTime_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/AddWaitTime_Response.
--- @brief Ros2Rmi_msgsSrvAddWaitTime_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvAddWaitTime_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvAddWaitTime_Response.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Rmi_msgsSrvAddWaitTime_Response.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Rmi_msgsSrvAddWaitTime_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvAddWaitTime_Response value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Response.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvAddWaitTime_Response
--- @brief Encode a complete Ros2Rmi_msgsSrvAddWaitTime_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvAddWaitTime_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Response.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvAddWaitTime_Response): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvAddWaitTime_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvAddWaitTime_Response value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvAddWaitTime_Response.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvAddWaitTime_Response
local Ros2Rmi_msgsSrvAddWaitTime_Response = classes["Ros2Rmi_msgsSrvAddWaitTime_Response"]

--- @class Ros2Rmi_msgsSrvCallCommand_Request
--- @brief Complete ROS2 rmi_msgs/srv/CallCommand_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field command table Complete nested rmi_msgs/msg/Command value; no native fields are projected away.
--- @field options table Complete nested rmi_msgs/msg/CommandOptions value; no native fields are projected away.
--- @brief Ros2Rmi_msgsSrvCallCommand_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvCallCommand_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvCallCommand_Request.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/CallCommand_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvCallCommand_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/CallCommand_Request.
--- @brief Ros2Rmi_msgsSrvCallCommand_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvCallCommand_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvCallCommand_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvCallCommand_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvCallCommand_Request.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvCallCommand_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Rmi_msgsSrvCallCommand_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1104 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvCallCommand_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1104 bytes.
--- @brief Construct Ros2Rmi_msgsSrvCallCommand_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvCallCommand_Request value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvCallCommand_Request.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvCallCommand_Request
--- @brief Encode a complete Ros2Rmi_msgsSrvCallCommand_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvCallCommand_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..1104 bytes.
--- @see Ros2Rmi_msgsSrvCallCommand_Request.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvCallCommand_Request): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvCallCommand_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvCallCommand_Request value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvCallCommand_Request.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvCallCommand_Request
local Ros2Rmi_msgsSrvCallCommand_Request = classes["Ros2Rmi_msgsSrvCallCommand_Request"]

--- @class Ros2Rmi_msgsSrvCallCommand_Response
--- @brief Complete ROS2 rmi_msgs/srv/CallCommand_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Rmi_msgsSrvCallCommand_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvCallCommand_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Rmi_msgsSrvCallCommand_Response.NATIVE_TYPE: Exact normalized native type name
--rmi_msgs/srv/CallCommand_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvCallCommand_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name rmi_msgs/srv/CallCommand_Response.
--- @brief Ros2Rmi_msgsSrvCallCommand_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvCallCommand_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Rmi_msgsSrvCallCommand_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvCallCommand_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Rmi_msgsSrvCallCommand_Response.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvCallCommand_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Rmi_msgsSrvCallCommand_Response.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Rmi_msgsSrvCallCommand_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Rmi_msgsSrvCallCommand_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Rmi_msgsSrvCallCommand_Response value New mutable complete value; no ROS resource.
--- @see Ros2Rmi_msgsSrvCallCommand_Response.encode
--- @field new fun(values?: table): Ros2Rmi_msgsSrvCallCommand_Response
--- @brief Encode a complete Ros2Rmi_msgsSrvCallCommand_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Rmi_msgsSrvCallCommand_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Rmi_msgsSrvCallCommand_Response.decode
--- @field encode fun(value: Ros2Rmi_msgsSrvCallCommand_Response): string
--- @brief Decode exactly one complete Ros2Rmi_msgsSrvCallCommand_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Rmi_msgsSrvCallCommand_Response value New complete value; failures raise Lua errors.
--- @see Ros2Rmi_msgsSrvCallCommand_Response.encode
--- @field decode fun(bytes: string): Ros2Rmi_msgsSrvCallCommand_Response
local Ros2Rmi_msgsSrvCallCommand_Response = classes["Ros2Rmi_msgsSrvCallCommand_Response"]

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
