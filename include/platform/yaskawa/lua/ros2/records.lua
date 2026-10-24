-- @file records.lua
-- @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
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
        ["symbol"] = "Ros2Geometry_msgsMsgTransformStamped",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/TransformStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792",
        ["minimum"] = 72,
        ["maximum"] = 648,
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
                ["name"] = "child_frame_id",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "transform",
                ["type"] = "Ros2Geometry_msgsMsgTransform",
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
        ["symbol"] = "Ros2Industrial_msgsMsgDebugLevel",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/msg/DebugLevel",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "val",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {
            ["DEBUG"] = 5,
            ["INFO"] = 4,
            ["WARN"] = 3,
            ["ERROR"] = 2,
            ["FATAL"] = 1,
            ["NONE"] = 0,
        },
    },
    {
        ["symbol"] = "Ros2Industrial_msgsMsgDeviceInfo",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/msg/DeviceInfo",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b",
        ["minimum"] = 20,
        ["maximum"] = 2580,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "model",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "serial_number",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "hw_version",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sw_version",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "address",
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
        ["symbol"] = "Ros2Industrial_msgsMsgRobotMode",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/msg/RobotMode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "val",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {
            ["UNKNOWN"] = -1,
            ["MANUAL"] = 1,
            ["AUTO"] = 2,
        },
    },
    {
        ["symbol"] = "Ros2Industrial_msgsMsgTriState",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/msg/TriState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "val",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {
            ["UNKNOWN"] = -1,
            ["TRUE"] = 1,
            ["ON"] = 1,
            ["ENABLED"] = 1,
            ["HIGH"] = 1,
            ["CLOSED"] = 1,
            ["FALSE"] = 0,
            ["OFF"] = 0,
            ["DISABLED"] = 0,
            ["LOW"] = 0,
            ["OPEN"] = 0,
        },
    },
    {
        ["symbol"] = "Ros2Industrial_msgsMsgRobotStatus",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/msg/RobotStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba",
        ["minimum"] = 22,
        ["maximum"] = 150,
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
                ["name"] = "mode",
                ["type"] = "Ros2Industrial_msgsMsgRobotMode",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "e_stopped",
                ["type"] = "Ros2Industrial_msgsMsgTriState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "drives_powered",
                ["type"] = "Ros2Industrial_msgsMsgTriState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "motion_possible",
                ["type"] = "Ros2Industrial_msgsMsgTriState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "in_motion",
                ["type"] = "Ros2Industrial_msgsMsgTriState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "in_error",
                ["type"] = "Ros2Industrial_msgsMsgTriState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "error_codes",
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
        ["symbol"] = "Ros2Industrial_msgsMsgServiceReturnCode",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/msg/ServiceReturnCode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "val",
                ["type"] = "int8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {
            ["SUCCESS"] = 1,
            ["FAILURE"] = -1,
        },
    },
    {
        ["symbol"] = "Ros2Industrial_msgsSrvCmdJointTrajectory_Request",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/srv/CmdJointTrajectory_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1def3934b243546a4591b7be1ef2eb27002fbd9d3725302016e3b1846805149d",
        ["minimum"] = 20,
        ["maximum"] = 4164,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Industrial_msgsSrvCmdJointTrajectory_Response",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/srv/CmdJointTrajectory_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1e4d064ef659e5d1cc73bdd90f82657a16087c96e0f75b632e2be2be884bca8b",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "code",
                ["type"] = "Ros2Industrial_msgsMsgServiceReturnCode",
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
        ["symbol"] = "Ros2Industrial_msgsSrvGetRobotInfo_Request",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/srv/GetRobotInfo_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_688a272f6ee39921013c6c39a7b0b0c4e2cda5119787088234103518ba25c1d2",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Industrial_msgsSrvGetRobotInfo_Response",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/srv/GetRobotInfo_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6d37cdcd8afc918329d7856e682d7fcdae2931832474a9194143c21079ed4152",
        ["minimum"] = 25,
        ["maximum"] = 32768,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "controller",
                ["type"] = "Ros2Industrial_msgsMsgDeviceInfo",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 20,
            },
            {
                ["name"] = "robots",
                ["type"] = "Ros2Industrial_msgsMsgDeviceInfo",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 20,
            },
            {
                ["name"] = "code",
                ["type"] = "Ros2Industrial_msgsMsgServiceReturnCode",
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
        ["symbol"] = "Ros2Industrial_msgsSrvSetDrivePower_Request",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/srv/SetDrivePower_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b4fc5e109e131a97820ab5856b34839c572ac0b0c256d70457c176e401844f96",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "drive_power",
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
        ["symbol"] = "Ros2Industrial_msgsSrvSetDrivePower_Response",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/srv/SetDrivePower_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_050fb9a727ebedd240e9023b9a2379a5d72e0d9fa335bead0c40d783abb22cff",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "code",
                ["type"] = "Ros2Industrial_msgsMsgServiceReturnCode",
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
        ["symbol"] = "Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/srv/SetRemoteLoggerLevel_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bbadd39c05cab90b14f4b1fad23ff05ac83325f6cc57810cd649e04fa29fe014",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "level",
                ["type"] = "Ros2Industrial_msgsMsgDebugLevel",
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
        ["symbol"] = "Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/srv/SetRemoteLoggerLevel_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b8681d031a4bb5a67b842277af2e2156e8339bdef23be88d2b64e296a7e3d63b",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "code",
                ["type"] = "Ros2Industrial_msgsMsgServiceReturnCode",
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
        ["symbol"] = "Ros2Industrial_msgsSrvStartMotion_Request",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/srv/StartMotion_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0a96fb9489f863612a91bf82f995f2f28bcb7fb403bde74c617925c789e4dcd8",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Industrial_msgsSrvStartMotion_Response",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/srv/StartMotion_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3bb3650fbe638a6d300bcd9fcd5acf574bd54d00a7368edd3014bf44dcf66c16",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "code",
                ["type"] = "Ros2Industrial_msgsMsgServiceReturnCode",
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
        ["symbol"] = "Ros2Industrial_msgsSrvStopMotion_Request",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/srv/StopMotion_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_fe5a7cf0da30270eab5cfb1ab8c1fbd37d2b4c4f91ef29662a0ddcac39e6ef49",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Industrial_msgsSrvStopMotion_Response",
        ["ros_version"] = 2,
        ["native_type"] = "industrial_msgs/srv/StopMotion_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c26bda240d86becc5b8b4ea80380eba3602092a5ec4a06818dbfbd38c24015b5",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "code",
                ["type"] = "Ros2Industrial_msgsMsgServiceReturnCode",
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
        ["symbol"] = "Ros2Motoros2_interfacesMsgAlarmCauseRemedy",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/msg/AlarmCauseRemedy",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5",
        ["minimum"] = 8,
        ["maximum"] = 1032,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "cause",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "remedy",
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
        ["symbol"] = "Ros2Motoros2_interfacesMsgAlarmInfo",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/msg/AlarmInfo",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f",
        ["minimum"] = 32,
        ["maximum"] = 25248,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "number",
                ["type"] = "uint32",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sub_code",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "datetime",
                ["type"] = "Ros2Builtin_interfacesMsgTime",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
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
                ["name"] = "help",
                ["type"] = "Ros2Motoros2_interfacesMsgAlarmCauseRemedy",
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
        ["symbol"] = "Ros2Motoros2_interfacesMsgErrorInfo",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/msg/ErrorInfo",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67",
        ["minimum"] = 20,
        ["maximum"] = 532,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "number",
                ["type"] = "uint32",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "sub_code",
                ["type"] = "int32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "datetime",
                ["type"] = "Ros2Builtin_interfacesMsgTime",
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
        ["symbol"] = "Ros2Motoros2_interfacesMsgInformJobCrudResultCodes",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/msg/InformJobCrudResultCodes",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {
            ["RC_OK"] = 1,
            ["STR_OK"] = "Success",
            ["RC_ERR_REFRESHING_JOB_LIST"] = 10,
            ["STR_ERR_REFRESHING_JOB_LIST"] = "Error refreshing job list",
            ["RC_ERR_RETRIEVING_FILE_COUNT"] = 11,
            ["STR_ERR_RETRIEVING_FILE_COUNT"] = "Error retrieving file count",
            ["RC_ERR_TOO_MANY_JOBS"] = 12,
            ["STR_ERR_TOO_MANY_JOBS"] = "Too many jobs",
            ["RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST"] = 13,
            ["STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST"] = "Failed retrieving job name from list",
            ["RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE"] = 14,
            ["STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE"] = "Error adding job name to service response",
        },
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesMsgInitTrajEnum",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/msg/InitTrajEnum",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
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
        ["constants"] = {
            ["INIT_TRAJ_OK"] = 0,
            ["INIT_TRAJ_OK_STR"] = "OK",
            ["INIT_TRAJ_UNSPECIFIED"] = 200,
            ["INIT_TRAJ_UNSPECIFIED_STR"] = "Unspecified failure",
            ["INIT_TRAJ_TOO_SMALL"] = 201,
            ["INIT_TRAJ_TOO_SMALL_STR"] = "Trajectory must contain at least two points.",
            ["INIT_TRAJ_TOO_BIG"] = 202,
            ["INIT_TRAJ_TOO_BIG_STR"] = "Trajectory contains too many points (Not enough memory).",
            ["INIT_TRAJ_ALREADY_IN_MOTION"] = 203,
            ["INIT_TRAJ_ALREADY_IN_MOTION_STR"] = "Already running a trajectory.",
            ["INIT_TRAJ_INVALID_STARTING_POS"] = 204,
            ["INIT_TRAJ_INVALID_STARTING_POS_STR"] = "The first point must match the robot's current position.",
            ["INIT_TRAJ_INVALID_VELOCITY"] = 205,
            ["INIT_TRAJ_INVALID_VELOCITY_STR"] = "The commanded velocity is too high.",
            ["INIT_TRAJ_INVALID_JOINTNAME"] = 206,
            ["INIT_TRAJ_INVALID_JOINTNAME_STR"] = "Invalid joint name specified. Check motoros2_config.yaml.",
            ["INIT_TRAJ_INCOMPLETE_JOINTLIST"] = 207,
            ["INIT_TRAJ_INCOMPLETE_JOINTLIST_STR"] = "Trajectory must contain data for all joints.",
            ["INIT_TRAJ_INVALID_TIME"] = 208,
            ["INIT_TRAJ_INVALID_TIME_STR"] = "Invalid time in trajectory.",
            ["INIT_TRAJ_WRONG_MODE"] = 209,
            ["INIT_TRAJ_WRONG_MODE_STR"] = "Must call start_traj_mode service",
            ["INIT_TRAJ_BACKWARD_TIME"] = 210,
            ["INIT_TRAJ_BACKWARD_TIME_STR"] = "Trajectory message contains waypoints that are not strictly increasing in time.",
            ["INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS"] = 211,
            ["INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR"] = "Trajectory did not contain position data for all axes.",
            ["INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES"] = 212,
            ["INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR"] = "Trajectory did not contain velocity data for all axes.",
            ["INIT_TRAJ_INVALID_ENDING_VELOCITY"] = 213,
            ["INIT_TRAJ_INVALID_ENDING_VELOCITY_STR"] = "The final point in the trajectory must have zero velocity.",
            ["INIT_TRAJ_INVALID_ENDING_ACCELERATION"] = 214,
            ["INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR"] = "The final point in the trajectory must have zero acceleration.",
            ["INIT_TRAJ_DUPLICATE_JOINT_NAME"] = 215,
            ["INIT_TRAJ_DUPLICATE_JOINT_NAME_STR"] = "The trajectory contains duplicate joint names.",
        },
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesMsgIoResultCodes",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/msg/IoResultCodes",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {
            ["OK"] = 0,
            ["OK_STR"] = "Success",
            ["READ_ADDRESS_INVALID"] = 1001,
            ["READ_ADDRESS_INVALID_STR"] = "Address cannot be read from (out of readable range)",
            ["WRITE_ADDRESS_INVALID"] = 1002,
            ["WRITE_ADDRESS_INVALID_STR"] = "Address cannot be written to (out of writable range)",
            ["WRITE_VALUE_INVALID"] = 1003,
            ["WRITE_VALUE_INVALID_STR"] = "Illegal value for the type of IO element addressed",
            ["READ_API_ERROR"] = 1004,
            ["READ_API_ERROR_STR"] = "The MotoPlus function mpReadIO returned -1. No further information is available",
            ["WRITE_API_ERROR"] = 1005,
            ["WRITE_API_ERROR_STR"] = "The MotoPlus function mpWriteIO returned -1. No further information is available",
            ["UNKNOWN_API_ERROR_STR"] = "Unknown error accessing I/O. No further information is available",
        },
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesMsgMotionReadyEnum",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/msg/MotionReadyEnum",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
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
        ["constants"] = {
            ["READY"] = 1,
            ["READY_STR"] = "Ready",
            ["NOT_READY_UNSPECIFIED"] = 100,
            ["NOT_READY_UNSPECIFIED_STR"] = "Unspecified",
            ["NOT_READY_ALARM"] = 101,
            ["NOT_READY_ALARM_STR"] = "The controller has an active Alarm",
            ["NOT_READY_ERROR"] = 102,
            ["NOT_READY_ERROR_STR"] = "The controller has an active Error",
            ["NOT_READY_ESTOP"] = 103,
            ["NOT_READY_ESTOP_STR"] = "The controller is in E-Stop",
            ["NOT_READY_NOT_PLAY"] = 104,
            ["NOT_READY_NOT_PLAY_STR"] = "The teach pendant must not be in TEACH mode",
            ["NOT_READY_NOT_REMOTE"] = 105,
            ["NOT_READY_NOT_REMOTE_STR"] = "The teach pendant must be in REMOTE mode",
            ["NOT_READY_SERVO_OFF"] = 106,
            ["NOT_READY_SERVO_OFF_STR"] = "Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service",
            ["NOT_READY_HOLD"] = 107,
            ["NOT_READY_HOLD_STR"] = "The controller is in HOLD",
            ["NOT_READY_JOB_NOT_STARTED"] = 108,
            ["NOT_READY_JOB_NOT_STARTED_STR"] = "The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service",
            ["NOT_READY_NOT_ON_WAIT_CMD"] = 109,
            ["NOT_READY_NOT_ON_WAIT_CMD_STR"] = "INFORM job is not on a WAIT command. Check the format of INIT_ROS",
            ["NOT_READY_PFL_ACTIVE"] = 111,
            ["NOT_READY_PFL_ACTIVE_STR"] = "A PFL event has occurred. Please return the robot to a safe state",
            ["NOT_READY_INC_MOVE_ERROR"] = 112,
            ["NOT_READY_INC_MOVE_ERROR_STR"] = "The controller is in an error state. Please call reset_error to attempt to clear the error",
            ["NOT_READY_OTHER_PROGRAM_RUNNING"] = 113,
            ["NOT_READY_OTHER_PROGRAM_RUNNING_STR"] = "Controller is running another job",
            ["NOT_READY_OTHER_TRAJ_MODE_ACTIVE"] = 114,
            ["NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR"] = "Another trajectory mode is already active. Please call stop_traj_mode service",
            ["NOT_READY_NOT_CONT_CYCLE_MODE"] = 115,
            ["NOT_READY_NOT_CONT_CYCLE_MODE_STR"] = "AUTO cycle mode not set. Please set the cycle mode to AUTO",
            ["NOT_READY_MAJOR_ALARM"] = 116,
            ["NOT_READY_MAJOR_ALARM_STR"] = "Major Alarms can't be reset. Please check the teach pendant",
            ["NOT_READY_ECO_MODE"] = 117,
            ["NOT_READY_ECO_MODE_STR"] = "Couldn't disable eco mode",
            ["NOT_READY_SERVO_ON_TIMEOUT"] = 118,
            ["NOT_READY_SERVO_ON_TIMEOUT_STR"] = "Timed out while waiting for servo on",
        },
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesMsgQueueResultEnum",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/msg/QueueResultEnum",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23",
        ["minimum"] = 2,
        ["maximum"] = 2,
        ["semantics"] = "",
        ["fields"] = {
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
        ["constants"] = {
            ["SUCCESS"] = 1,
            ["SUCCESS_STR"] = "",
            ["WRONG_MODE"] = 2,
            ["WRONG_MODE_STR"] = "Must call start_point_queue_mode service",
            ["INIT_FAILURE"] = 3,
            ["INIT_FAILURE_STR"] = "Failed to initialize the streaming trajectory",
            ["BUSY"] = 4,
            ["BUSY_STR"] = "Busy processing the previous trajectory point. Please resend the next point shortly",
            ["INVALID_JOINT_LIST"] = 5,
            ["INVALID_JOINT_LIST_STR"] = "Point must contain data for all joints",
            ["UNABLE_TO_PROCESS_POINT"] = 6,
            ["UNABLE_TO_PROCESS_POINT_STR"] = "Error while processing the trajectory point. Check debug log for more details",
        },
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesMsgSelectionResultCodes",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/msg/SelectionResultCodes",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "value",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {
            ["OK"] = 0,
            ["OK_STR"] = "",
            ["INVALID_CONTROLLER_STATE"] = 400,
            ["INVALID_CONTROLLER_STATE_STR"] = "Pendant is not in REMOTE mode",
            ["INVALID_CONTROL_GROUP"] = 401,
            ["INVALID_CONTROL_GROUP_STR"] = "Invalid control group",
            ["INVALID_SELECTION_INDEX"] = 402,
            ["INVALID_SELECTION_INDEX_STR"] = "Invalid tool selection",
        },
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/GetActiveAlarmInfo_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_aadcd63f3bc47424c38767afdc1589561e3c90e8aeae9bdceef88b1033d57a7e",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/GetActiveAlarmInfo_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e11bdbb95b6ded88d035696260c58dad32bcf3604aa4e89dd41c0dab26541567",
        ["minimum"] = 16,
        ["maximum"] = 32768,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "result_message",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "alarms",
                ["type"] = "Ros2Motoros2_interfacesMsgAlarmInfo",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 32,
            },
            {
                ["name"] = "errors",
                ["type"] = "Ros2Motoros2_interfacesMsgErrorInfo",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 20,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesSrvListInformJobs_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/ListInformJobs_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e77eedadef98d98321b1757b88284022afcdb1ffef52b98820b0c4ba596d643c",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesSrvListInformJobs_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/ListInformJobs_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_49021f0abc00f8df1ef49605a244cb6bba8d8b45ece5365ae35d747d2506eadc",
        ["minimum"] = 12,
        ["maximum"] = 8780,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint32",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesSrvQueueTrajPoint_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/QueueTrajPoint_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3d37f9981d6abaca33ec0b5378fa3a1ac301791cc9be94d5bdcf4ea6aa81b8d0",
        ["minimum"] = 28,
        ["maximum"] = 1228,
        ["semantics"] = "",
        ["fields"] = {
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
                ["name"] = "point",
                ["type"] = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvQueueTrajPoint_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/QueueTrajPoint_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d4887ed24d39332a5ccfd4a3d072004dd8f314fe5c166bf0bd57520a826cbccd",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "Ros2Motoros2_interfacesMsgQueueResultEnum",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvReadGroupIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/ReadGroupIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6ee09ac379e169fc23b81a551e9a9ed21c3f82b5010859984e911b17152beb7f",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "address",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvReadGroupIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/ReadGroupIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_292fcf6e8c46a2509ee4cc5238d443157f37fed0de898367248b967e9001ea0d",
        ["minimum"] = 10,
        ["maximum"] = 522,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint32",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
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
                ["name"] = "value",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvReadMRegister_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/ReadMRegister_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f31f0983466054f5ac5dcb2ab80ab7721d606a681b833ebb376cc87f96054f6f",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "address",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvReadMRegister_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/ReadMRegister_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8d6ded2876adfa2079711205cb0110a82ead6f51db05f266bf285308cd815a04",
        ["minimum"] = 11,
        ["maximum"] = 523,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint32",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvReadSingleIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/ReadSingleIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_30e28db303b772f26b2b3cf6165a0ff79037d037d60e8115b4ee8e177f17e8bb",
        ["minimum"] = 4,
        ["maximum"] = 4,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "address",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvReadSingleIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/ReadSingleIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b42013571274e85769ffac4d47129de8b76e4a675bdef3efefebc9ee19e92082",
        ["minimum"] = 13,
        ["maximum"] = 525,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint32",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
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
                ["name"] = "value",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvResetError_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/ResetError_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2737855d0608478946e2d9ab7f06c92585199c1082ec8406a012f50ad56beae3",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesSrvResetError_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/ResetError_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0af14ee02c157ecc39b143225a580e475473306389ccc3ba198cf22ca47d82f3",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "Ros2Motoros2_interfacesMsgMotionReadyEnum",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvSelectMotionTool_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/SelectMotionTool_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e6c884ae0a97337c1e441efe099b7869dc95205fcbca0a8082d4d9b06f5b438c",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "group_number",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tool_number",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvSelectMotionTool_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/SelectMotionTool_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_088349a49c14c52282c25b428628462c48618c3b5202df560dcc5c9bed742640",
        ["minimum"] = 9,
        ["maximum"] = 521,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "Ros2Motoros2_interfacesMsgSelectionResultCodes",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvStartPointQueueMode_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/StartPointQueueMode_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_58a4827fc6535ef0ffc64ee25c5c4af75aa0fe199fa0350a88a95d2e991164a1",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesSrvStartPointQueueMode_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/StartPointQueueMode_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_bc553d5640e1c4644a5d5bdc2dfcefc9dbe789ef1e2a23dd620f08963467b6ff",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "Ros2Motoros2_interfacesMsgMotionReadyEnum",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvStartTrajMode_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/StartTrajMode_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0b8b2ad5db5901047035e1070b675618afc516a1ae8c3308cfdcad1174d34789",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Motoros2_interfacesSrvStartTrajMode_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/StartTrajMode_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_170e25737e6a2b06f5d5d9f331d748c97cf0306284271757953a4a801c722939",
        ["minimum"] = 6,
        ["maximum"] = 518,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "Ros2Motoros2_interfacesMsgMotionReadyEnum",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvWriteGroupIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/WriteGroupIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2d348ed71408a0dd1dd28ee2ed2ca1db56bb07a14546d0fe13ccf64e8553d52c",
        ["minimum"] = 5,
        ["maximum"] = 5,
        ["semantics"] = "",
        ["fields"] = {
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
                ["name"] = "value",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvWriteGroupIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/WriteGroupIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_06769934711b27fd32cdcbf849504e160189ee82ea32e0e71a2903af47c5d766",
        ["minimum"] = 9,
        ["maximum"] = 521,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint32",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvWriteMRegister_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/WriteMRegister_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8df4536be27f0632052725d5616fd5b047f49fc306fc7735854d9de4fb15d4ef",
        ["minimum"] = 6,
        ["maximum"] = 6,
        ["semantics"] = "",
        ["fields"] = {
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvWriteMRegister_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/WriteMRegister_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a61cc0596a7545ef4836bdc64dc9d6b4ed99b0abd18a726eb37e6215f51c729a",
        ["minimum"] = 9,
        ["maximum"] = 521,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint32",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvWriteSingleIO_Request",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/WriteSingleIO_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6361affcd8b7ebaaa1fe6b5806e64a7c18f7a96a1178614cfce487de813a6392",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
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
                ["name"] = "value",
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
        ["symbol"] = "Ros2Motoros2_interfacesSrvWriteSingleIO_Response",
        ["ros_version"] = 2,
        ["native_type"] = "motoros2_interfaces/srv/WriteSingleIO_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_12328db372a572fe9b0c7207331a7971d5d7c9033376e3be410db579b85fb794",
        ["minimum"] = 9,
        ["maximum"] = 521,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "result_code",
                ["type"] = "uint32",
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
                ["string_bound"] = 512,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
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
    {
        ["symbol"] = "Ros2Tf2_msgsMsgTFMessage",
        ["ros_version"] = 2,
        ["native_type"] = "tf2_msgs/msg/TFMessage",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a",
        ["minimum"] = 4,
        ["maximum"] = 10372,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "transforms",
                ["type"] = "Ros2Geometry_msgsMsgTransformStamped",
                ["array"] = "sequence",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 72,
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

--- @class Ros2Geometry_msgsMsgTransformStamped
--- @brief Complete ROS2 geometry_msgs/msg/TransformStamped value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field child_frame_id string Strict UTF-8 without NUL; length0..512 bytes.
--- @field transform table Complete nested geometry_msgs/msg/Transform value; no native fields are projected
--away.
--- @brief Ros2Geometry_msgsMsgTransformStamped.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransformStamped.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgTransformStamped.NATIVE_TYPE: Exact normalized native type name
--geometry_msgs/msg/TransformStamped.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransformStamped.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/TransformStamped.
--- @brief Ros2Geometry_msgsMsgTransformStamped.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransformStamped.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Geometry_msgsMsgTransformStamped.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransformStamped.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgTransformStamped.MIN_WIRE_BYTES: Inclusive complete minimum 72 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransformStamped.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 72 bytes.
--- @brief Ros2Geometry_msgsMsgTransformStamped.MAX_WIRE_BYTES: Inclusive complete maximum 648 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransformStamped.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 648 bytes.
--- @brief Construct Ros2Geometry_msgsMsgTransformStamped with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgTransformStamped value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgTransformStamped.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgTransformStamped
--- @brief Encode a complete Ros2Geometry_msgsMsgTransformStamped value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgTransformStamped [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 72..648 bytes.
--- @see Ros2Geometry_msgsMsgTransformStamped.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgTransformStamped): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgTransformStamped canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgTransformStamped value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgTransformStamped.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgTransformStamped
local Ros2Geometry_msgsMsgTransformStamped = classes["Ros2Geometry_msgsMsgTransformStamped"]

--- @class Ros2Industrial_msgsMsgDebugLevel
--- @brief Complete ROS2 industrial_msgs/msg/DebugLevel value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field val integer Exact uint8 range 0..255.
--- @brief Ros2Industrial_msgsMsgDebugLevel.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgDebugLevel.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsMsgDebugLevel.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/msg/DebugLevel.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgDebugLevel.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/msg/DebugLevel.
--- @brief Ros2Industrial_msgsMsgDebugLevel.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgDebugLevel.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsMsgDebugLevel.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgDebugLevel.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsMsgDebugLevel.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgDebugLevel.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Industrial_msgsMsgDebugLevel.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgDebugLevel.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Native class constant Ros2Industrial_msgsMsgDebugLevel.DEBUG.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgDebugLevel.new
--- @field DEBUG integer
--- @brief Native class constant Ros2Industrial_msgsMsgDebugLevel.INFO.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgDebugLevel.new
--- @field INFO integer
--- @brief Native class constant Ros2Industrial_msgsMsgDebugLevel.WARN.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgDebugLevel.new
--- @field WARN integer
--- @brief Native class constant Ros2Industrial_msgsMsgDebugLevel.ERROR.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgDebugLevel.new
--- @field ERROR integer
--- @brief Native class constant Ros2Industrial_msgsMsgDebugLevel.FATAL.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgDebugLevel.new
--- @field FATAL integer
--- @brief Native class constant Ros2Industrial_msgsMsgDebugLevel.NONE.
--- @details Original uint8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgDebugLevel.new
--- @field NONE integer
--- @brief Construct Ros2Industrial_msgsMsgDebugLevel with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsMsgDebugLevel value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsMsgDebugLevel.encode
--- @field new fun(values?: table): Ros2Industrial_msgsMsgDebugLevel
--- @brief Encode a complete Ros2Industrial_msgsMsgDebugLevel value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsMsgDebugLevel [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Industrial_msgsMsgDebugLevel.decode
--- @field encode fun(value: Ros2Industrial_msgsMsgDebugLevel): string
--- @brief Decode exactly one complete Ros2Industrial_msgsMsgDebugLevel canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsMsgDebugLevel value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsMsgDebugLevel.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsMsgDebugLevel
local Ros2Industrial_msgsMsgDebugLevel = classes["Ros2Industrial_msgsMsgDebugLevel"]

--- @class Ros2Industrial_msgsMsgDeviceInfo
--- @brief Complete ROS2 industrial_msgs/msg/DeviceInfo value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field model string Strict UTF-8 without NUL; length0..512 bytes.
--- @field serial_number string Strict UTF-8 without NUL; length0..512 bytes.
--- @field hw_version string Strict UTF-8 without NUL; length0..512 bytes.
--- @field sw_version string Strict UTF-8 without NUL; length0..512 bytes.
--- @field address string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Industrial_msgsMsgDeviceInfo.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgDeviceInfo.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsMsgDeviceInfo.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/msg/DeviceInfo.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgDeviceInfo.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/msg/DeviceInfo.
--- @brief Ros2Industrial_msgsMsgDeviceInfo.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgDeviceInfo.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsMsgDeviceInfo.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgDeviceInfo.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsMsgDeviceInfo.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgDeviceInfo.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Industrial_msgsMsgDeviceInfo.MAX_WIRE_BYTES: Inclusive complete maximum 2580 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgDeviceInfo.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2580 bytes.
--- @brief Construct Ros2Industrial_msgsMsgDeviceInfo with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsMsgDeviceInfo value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsMsgDeviceInfo.encode
--- @field new fun(values?: table): Ros2Industrial_msgsMsgDeviceInfo
--- @brief Encode a complete Ros2Industrial_msgsMsgDeviceInfo value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsMsgDeviceInfo [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..2580 bytes.
--- @see Ros2Industrial_msgsMsgDeviceInfo.decode
--- @field encode fun(value: Ros2Industrial_msgsMsgDeviceInfo): string
--- @brief Decode exactly one complete Ros2Industrial_msgsMsgDeviceInfo canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsMsgDeviceInfo value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsMsgDeviceInfo.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsMsgDeviceInfo
local Ros2Industrial_msgsMsgDeviceInfo = classes["Ros2Industrial_msgsMsgDeviceInfo"]

--- @class Ros2Industrial_msgsMsgRobotMode
--- @brief Complete ROS2 industrial_msgs/msg/RobotMode value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field val integer Exact int8 range -128..127.
--- @brief Ros2Industrial_msgsMsgRobotMode.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgRobotMode.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsMsgRobotMode.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/msg/RobotMode.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgRobotMode.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/msg/RobotMode.
--- @brief Ros2Industrial_msgsMsgRobotMode.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgRobotMode.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsMsgRobotMode.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgRobotMode.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsMsgRobotMode.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgRobotMode.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Industrial_msgsMsgRobotMode.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgRobotMode.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Native class constant Ros2Industrial_msgsMsgRobotMode.UNKNOWN.
--- @details Original int8 literal -1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgRobotMode.new
--- @field UNKNOWN integer
--- @brief Native class constant Ros2Industrial_msgsMsgRobotMode.MANUAL.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgRobotMode.new
--- @field MANUAL integer
--- @brief Native class constant Ros2Industrial_msgsMsgRobotMode.AUTO.
--- @details Original int8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgRobotMode.new
--- @field AUTO integer
--- @brief Construct Ros2Industrial_msgsMsgRobotMode with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsMsgRobotMode value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsMsgRobotMode.encode
--- @field new fun(values?: table): Ros2Industrial_msgsMsgRobotMode
--- @brief Encode a complete Ros2Industrial_msgsMsgRobotMode value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsMsgRobotMode [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Industrial_msgsMsgRobotMode.decode
--- @field encode fun(value: Ros2Industrial_msgsMsgRobotMode): string
--- @brief Decode exactly one complete Ros2Industrial_msgsMsgRobotMode canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsMsgRobotMode value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsMsgRobotMode.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsMsgRobotMode
local Ros2Industrial_msgsMsgRobotMode = classes["Ros2Industrial_msgsMsgRobotMode"]

--- @class Ros2Industrial_msgsMsgTriState
--- @brief Complete ROS2 industrial_msgs/msg/TriState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field val integer Exact int8 range -128..127.
--- @brief Ros2Industrial_msgsMsgTriState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgTriState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsMsgTriState.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/msg/TriState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgTriState.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/msg/TriState.
--- @brief Ros2Industrial_msgsMsgTriState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgTriState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsMsgTriState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgTriState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsMsgTriState.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgTriState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Industrial_msgsMsgTriState.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgTriState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Native class constant Ros2Industrial_msgsMsgTriState.UNKNOWN.
--- @details Original int8 literal -1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgTriState.new
--- @field UNKNOWN integer
--- @brief Native class constant Ros2Industrial_msgsMsgTriState.TRUE.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgTriState.new
--- @field TRUE integer
--- @brief Native class constant Ros2Industrial_msgsMsgTriState.ON.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgTriState.new
--- @field ON integer
--- @brief Native class constant Ros2Industrial_msgsMsgTriState.ENABLED.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgTriState.new
--- @field ENABLED integer
--- @brief Native class constant Ros2Industrial_msgsMsgTriState.HIGH.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgTriState.new
--- @field HIGH integer
--- @brief Native class constant Ros2Industrial_msgsMsgTriState.CLOSED.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgTriState.new
--- @field CLOSED integer
--- @brief Native class constant Ros2Industrial_msgsMsgTriState.FALSE.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgTriState.new
--- @field FALSE integer
--- @brief Native class constant Ros2Industrial_msgsMsgTriState.OFF.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgTriState.new
--- @field OFF integer
--- @brief Native class constant Ros2Industrial_msgsMsgTriState.DISABLED.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgTriState.new
--- @field DISABLED integer
--- @brief Native class constant Ros2Industrial_msgsMsgTriState.LOW.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgTriState.new
--- @field LOW integer
--- @brief Native class constant Ros2Industrial_msgsMsgTriState.OPEN.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgTriState.new
--- @field OPEN integer
--- @brief Construct Ros2Industrial_msgsMsgTriState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsMsgTriState value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsMsgTriState.encode
--- @field new fun(values?: table): Ros2Industrial_msgsMsgTriState
--- @brief Encode a complete Ros2Industrial_msgsMsgTriState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsMsgTriState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Industrial_msgsMsgTriState.decode
--- @field encode fun(value: Ros2Industrial_msgsMsgTriState): string
--- @brief Decode exactly one complete Ros2Industrial_msgsMsgTriState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsMsgTriState value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsMsgTriState.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsMsgTriState
local Ros2Industrial_msgsMsgTriState = classes["Ros2Industrial_msgsMsgTriState"]

--- @class Ros2Industrial_msgsMsgRobotStatus
--- @brief Complete ROS2 industrial_msgs/msg/RobotStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field mode table Complete nested industrial_msgs/msg/RobotMode value; no native fields are projected away.
--- @field e_stopped table Complete nested industrial_msgs/msg/TriState value; no native fields are projected
--away.
--- @field drives_powered table Complete nested industrial_msgs/msg/TriState value; no native fields are
--projected away.
--- @field motion_possible table Complete nested industrial_msgs/msg/TriState value; no native fields are
--projected away.
--- @field in_motion table Complete nested industrial_msgs/msg/TriState value; no native fields are projected
--away.
--- @field in_error table Complete nested industrial_msgs/msg/TriState value; no native fields are projected
--away.
--- @field error_codes integer[] Exact int32 range -2147483648..2147483647. At most 16 contiguous elements;
--holes and extra array keys are rejected.
--- @brief Ros2Industrial_msgsMsgRobotStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgRobotStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsMsgRobotStatus.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/msg/RobotStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgRobotStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/msg/RobotStatus.
--- @brief Ros2Industrial_msgsMsgRobotStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgRobotStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsMsgRobotStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgRobotStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsMsgRobotStatus.MIN_WIRE_BYTES: Inclusive complete minimum 22 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgRobotStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 22 bytes.
--- @brief Ros2Industrial_msgsMsgRobotStatus.MAX_WIRE_BYTES: Inclusive complete maximum 150 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgRobotStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 150 bytes.
--- @brief Construct Ros2Industrial_msgsMsgRobotStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsMsgRobotStatus value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsMsgRobotStatus.encode
--- @field new fun(values?: table): Ros2Industrial_msgsMsgRobotStatus
--- @brief Encode a complete Ros2Industrial_msgsMsgRobotStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsMsgRobotStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 22..150 bytes.
--- @see Ros2Industrial_msgsMsgRobotStatus.decode
--- @field encode fun(value: Ros2Industrial_msgsMsgRobotStatus): string
--- @brief Decode exactly one complete Ros2Industrial_msgsMsgRobotStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsMsgRobotStatus value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsMsgRobotStatus.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsMsgRobotStatus
local Ros2Industrial_msgsMsgRobotStatus = classes["Ros2Industrial_msgsMsgRobotStatus"]

--- @class Ros2Industrial_msgsMsgServiceReturnCode
--- @brief Complete ROS2 industrial_msgs/msg/ServiceReturnCode value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field val integer Exact int8 range -128..127.
--- @brief Ros2Industrial_msgsMsgServiceReturnCode.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgServiceReturnCode.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsMsgServiceReturnCode.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/msg/ServiceReturnCode.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgServiceReturnCode.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/msg/ServiceReturnCode.
--- @brief Ros2Industrial_msgsMsgServiceReturnCode.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgServiceReturnCode.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsMsgServiceReturnCode.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgServiceReturnCode.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsMsgServiceReturnCode.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgServiceReturnCode.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Industrial_msgsMsgServiceReturnCode.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsMsgServiceReturnCode.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Native class constant Ros2Industrial_msgsMsgServiceReturnCode.SUCCESS.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgServiceReturnCode.new
--- @field SUCCESS integer
--- @brief Native class constant Ros2Industrial_msgsMsgServiceReturnCode.FAILURE.
--- @details Original int8 literal -1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Industrial_msgsMsgServiceReturnCode.new
--- @field FAILURE integer
--- @brief Construct Ros2Industrial_msgsMsgServiceReturnCode with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsMsgServiceReturnCode value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsMsgServiceReturnCode.encode
--- @field new fun(values?: table): Ros2Industrial_msgsMsgServiceReturnCode
--- @brief Encode a complete Ros2Industrial_msgsMsgServiceReturnCode value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsMsgServiceReturnCode [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Industrial_msgsMsgServiceReturnCode.decode
--- @field encode fun(value: Ros2Industrial_msgsMsgServiceReturnCode): string
--- @brief Decode exactly one complete Ros2Industrial_msgsMsgServiceReturnCode canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsMsgServiceReturnCode value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsMsgServiceReturnCode.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsMsgServiceReturnCode
local Ros2Industrial_msgsMsgServiceReturnCode = classes["Ros2Industrial_msgsMsgServiceReturnCode"]

--- @class Ros2Industrial_msgsSrvCmdJointTrajectory_Request
--- @brief Complete ROS2 industrial_msgs/srv/CmdJointTrajectory_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field trajectory table Complete nested trajectory_msgs/msg/JointTrajectory value; no native fields are
--projected away.
--- @brief Ros2Industrial_msgsSrvCmdJointTrajectory_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsSrvCmdJointTrajectory_Request.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/srv/CmdJointTrajectory_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/srv/CmdJointTrajectory_Request.
--- @brief Ros2Industrial_msgsSrvCmdJointTrajectory_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsSrvCmdJointTrajectory_Request.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsSrvCmdJointTrajectory_Request.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Industrial_msgsSrvCmdJointTrajectory_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4164
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4164 bytes.
--- @brief Construct Ros2Industrial_msgsSrvCmdJointTrajectory_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsSrvCmdJointTrajectory_Request value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Request.encode
--- @field new fun(values?: table): Ros2Industrial_msgsSrvCmdJointTrajectory_Request
--- @brief Encode a complete Ros2Industrial_msgsSrvCmdJointTrajectory_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsSrvCmdJointTrajectory_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..4164 bytes.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Request.decode
--- @field encode fun(value: Ros2Industrial_msgsSrvCmdJointTrajectory_Request): string
--- @brief Decode exactly one complete Ros2Industrial_msgsSrvCmdJointTrajectory_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsSrvCmdJointTrajectory_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Request.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsSrvCmdJointTrajectory_Request
local Ros2Industrial_msgsSrvCmdJointTrajectory_Request = classes["Ros2Industrial_msgsSrvCmdJointTrajectory_Request"]

--- @class Ros2Industrial_msgsSrvCmdJointTrajectory_Response
--- @brief Complete ROS2 industrial_msgs/srv/CmdJointTrajectory_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field code table Complete nested industrial_msgs/msg/ServiceReturnCode value; no native fields are
--projected away.
--- @brief Ros2Industrial_msgsSrvCmdJointTrajectory_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsSrvCmdJointTrajectory_Response.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/srv/CmdJointTrajectory_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/srv/CmdJointTrajectory_Response.
--- @brief Ros2Industrial_msgsSrvCmdJointTrajectory_Response.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsSrvCmdJointTrajectory_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsSrvCmdJointTrajectory_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Industrial_msgsSrvCmdJointTrajectory_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Industrial_msgsSrvCmdJointTrajectory_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsSrvCmdJointTrajectory_Response value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Response.encode
--- @field new fun(values?: table): Ros2Industrial_msgsSrvCmdJointTrajectory_Response
--- @brief Encode a complete Ros2Industrial_msgsSrvCmdJointTrajectory_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsSrvCmdJointTrajectory_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Response.decode
--- @field encode fun(value: Ros2Industrial_msgsSrvCmdJointTrajectory_Response): string
--- @brief Decode exactly one complete Ros2Industrial_msgsSrvCmdJointTrajectory_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsSrvCmdJointTrajectory_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Industrial_msgsSrvCmdJointTrajectory_Response.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsSrvCmdJointTrajectory_Response
local Ros2Industrial_msgsSrvCmdJointTrajectory_Response = classes["Ros2Industrial_msgsSrvCmdJointTrajectory_Response"]

--- @class Ros2Industrial_msgsSrvGetRobotInfo_Request
--- @brief Complete ROS2 industrial_msgs/srv/GetRobotInfo_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Industrial_msgsSrvGetRobotInfo_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsSrvGetRobotInfo_Request.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/srv/GetRobotInfo_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/srv/GetRobotInfo_Request.
--- @brief Ros2Industrial_msgsSrvGetRobotInfo_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsSrvGetRobotInfo_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsSrvGetRobotInfo_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Industrial_msgsSrvGetRobotInfo_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Industrial_msgsSrvGetRobotInfo_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsSrvGetRobotInfo_Request value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Request.encode
--- @field new fun(values?: table): Ros2Industrial_msgsSrvGetRobotInfo_Request
--- @brief Encode a complete Ros2Industrial_msgsSrvGetRobotInfo_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsSrvGetRobotInfo_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Request.decode
--- @field encode fun(value: Ros2Industrial_msgsSrvGetRobotInfo_Request): string
--- @brief Decode exactly one complete Ros2Industrial_msgsSrvGetRobotInfo_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsSrvGetRobotInfo_Request value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Request.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsSrvGetRobotInfo_Request
local Ros2Industrial_msgsSrvGetRobotInfo_Request = classes["Ros2Industrial_msgsSrvGetRobotInfo_Request"]

--- @class Ros2Industrial_msgsSrvGetRobotInfo_Response
--- @brief Complete ROS2 industrial_msgs/srv/GetRobotInfo_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field controller table Complete nested industrial_msgs/msg/DeviceInfo value; no native fields are projected
--away.
--- @field robots table[] Complete nested industrial_msgs/msg/DeviceInfo value; no native fields are projected
--away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field code table Complete nested industrial_msgs/msg/ServiceReturnCode value; no native fields are
--projected away.
--- @brief Ros2Industrial_msgsSrvGetRobotInfo_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsSrvGetRobotInfo_Response.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/srv/GetRobotInfo_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/srv/GetRobotInfo_Response.
--- @brief Ros2Industrial_msgsSrvGetRobotInfo_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsSrvGetRobotInfo_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsSrvGetRobotInfo_Response.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Industrial_msgsSrvGetRobotInfo_Response.MAX_WIRE_BYTES: Inclusive complete maximum 32768 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 32768 bytes.
--- @brief Construct Ros2Industrial_msgsSrvGetRobotInfo_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsSrvGetRobotInfo_Response value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Response.encode
--- @field new fun(values?: table): Ros2Industrial_msgsSrvGetRobotInfo_Response
--- @brief Encode a complete Ros2Industrial_msgsSrvGetRobotInfo_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsSrvGetRobotInfo_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..32768 bytes.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Response.decode
--- @field encode fun(value: Ros2Industrial_msgsSrvGetRobotInfo_Response): string
--- @brief Decode exactly one complete Ros2Industrial_msgsSrvGetRobotInfo_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsSrvGetRobotInfo_Response value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsSrvGetRobotInfo_Response.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsSrvGetRobotInfo_Response
local Ros2Industrial_msgsSrvGetRobotInfo_Response = classes["Ros2Industrial_msgsSrvGetRobotInfo_Response"]

--- @class Ros2Industrial_msgsSrvSetDrivePower_Request
--- @brief Complete ROS2 industrial_msgs/srv/SetDrivePower_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field drive_power boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Industrial_msgsSrvSetDrivePower_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsSrvSetDrivePower_Request.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/srv/SetDrivePower_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/srv/SetDrivePower_Request.
--- @brief Ros2Industrial_msgsSrvSetDrivePower_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsSrvSetDrivePower_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsSrvSetDrivePower_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Industrial_msgsSrvSetDrivePower_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Industrial_msgsSrvSetDrivePower_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsSrvSetDrivePower_Request value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Request.encode
--- @field new fun(values?: table): Ros2Industrial_msgsSrvSetDrivePower_Request
--- @brief Encode a complete Ros2Industrial_msgsSrvSetDrivePower_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsSrvSetDrivePower_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Request.decode
--- @field encode fun(value: Ros2Industrial_msgsSrvSetDrivePower_Request): string
--- @brief Decode exactly one complete Ros2Industrial_msgsSrvSetDrivePower_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsSrvSetDrivePower_Request value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Request.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsSrvSetDrivePower_Request
local Ros2Industrial_msgsSrvSetDrivePower_Request = classes["Ros2Industrial_msgsSrvSetDrivePower_Request"]

--- @class Ros2Industrial_msgsSrvSetDrivePower_Response
--- @brief Complete ROS2 industrial_msgs/srv/SetDrivePower_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field code table Complete nested industrial_msgs/msg/ServiceReturnCode value; no native fields are
--projected away.
--- @brief Ros2Industrial_msgsSrvSetDrivePower_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsSrvSetDrivePower_Response.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/srv/SetDrivePower_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/srv/SetDrivePower_Response.
--- @brief Ros2Industrial_msgsSrvSetDrivePower_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsSrvSetDrivePower_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsSrvSetDrivePower_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Industrial_msgsSrvSetDrivePower_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Industrial_msgsSrvSetDrivePower_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsSrvSetDrivePower_Response value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Response.encode
--- @field new fun(values?: table): Ros2Industrial_msgsSrvSetDrivePower_Response
--- @brief Encode a complete Ros2Industrial_msgsSrvSetDrivePower_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsSrvSetDrivePower_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Response.decode
--- @field encode fun(value: Ros2Industrial_msgsSrvSetDrivePower_Response): string
--- @brief Decode exactly one complete Ros2Industrial_msgsSrvSetDrivePower_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsSrvSetDrivePower_Response value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsSrvSetDrivePower_Response.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsSrvSetDrivePower_Response
local Ros2Industrial_msgsSrvSetDrivePower_Response = classes["Ros2Industrial_msgsSrvSetDrivePower_Response"]

--- @class Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request
--- @brief Complete ROS2 industrial_msgs/srv/SetRemoteLoggerLevel_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field level table Complete nested industrial_msgs/msg/DebugLevel value; no native fields are projected
--away.
--- @brief Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/srv/SetRemoteLoggerLevel_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--industrial_msgs/srv/SetRemoteLoggerLevel_Request.
--- @brief Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.MIN_WIRE_BYTES: Inclusive complete minimum 1
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request value New mutable complete value; no ROS
--resource.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.encode
--- @field new fun(values?: table): Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request
--- @brief Encode a complete Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.decode
--- @field encode fun(value: Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request): string
--- @brief Decode exactly one complete Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request
local Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request = classes["Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request"]

--- @class Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response
--- @brief Complete ROS2 industrial_msgs/srv/SetRemoteLoggerLevel_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field code table Complete nested industrial_msgs/msg/ServiceReturnCode value; no native fields are
--projected away.
--- @brief Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/srv/SetRemoteLoggerLevel_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--industrial_msgs/srv/SetRemoteLoggerLevel_Response.
--- @brief Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response value New mutable complete value; no ROS
--resource.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.encode
--- @field new fun(values?: table): Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response
--- @brief Encode a complete Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.decode
--- @field encode fun(value: Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response): string
--- @brief Decode exactly one complete Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response
local Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response = classes["Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response"]

--- @class Ros2Industrial_msgsSrvStartMotion_Request
--- @brief Complete ROS2 industrial_msgs/srv/StartMotion_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Industrial_msgsSrvStartMotion_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStartMotion_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsSrvStartMotion_Request.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/srv/StartMotion_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStartMotion_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/srv/StartMotion_Request.
--- @brief Ros2Industrial_msgsSrvStartMotion_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStartMotion_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsSrvStartMotion_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStartMotion_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsSrvStartMotion_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStartMotion_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Industrial_msgsSrvStartMotion_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStartMotion_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Industrial_msgsSrvStartMotion_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsSrvStartMotion_Request value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsSrvStartMotion_Request.encode
--- @field new fun(values?: table): Ros2Industrial_msgsSrvStartMotion_Request
--- @brief Encode a complete Ros2Industrial_msgsSrvStartMotion_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsSrvStartMotion_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Industrial_msgsSrvStartMotion_Request.decode
--- @field encode fun(value: Ros2Industrial_msgsSrvStartMotion_Request): string
--- @brief Decode exactly one complete Ros2Industrial_msgsSrvStartMotion_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsSrvStartMotion_Request value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsSrvStartMotion_Request.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsSrvStartMotion_Request
local Ros2Industrial_msgsSrvStartMotion_Request = classes["Ros2Industrial_msgsSrvStartMotion_Request"]

--- @class Ros2Industrial_msgsSrvStartMotion_Response
--- @brief Complete ROS2 industrial_msgs/srv/StartMotion_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field code table Complete nested industrial_msgs/msg/ServiceReturnCode value; no native fields are
--projected away.
--- @brief Ros2Industrial_msgsSrvStartMotion_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStartMotion_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsSrvStartMotion_Response.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/srv/StartMotion_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStartMotion_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/srv/StartMotion_Response.
--- @brief Ros2Industrial_msgsSrvStartMotion_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStartMotion_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsSrvStartMotion_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStartMotion_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsSrvStartMotion_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStartMotion_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Industrial_msgsSrvStartMotion_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStartMotion_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Industrial_msgsSrvStartMotion_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsSrvStartMotion_Response value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsSrvStartMotion_Response.encode
--- @field new fun(values?: table): Ros2Industrial_msgsSrvStartMotion_Response
--- @brief Encode a complete Ros2Industrial_msgsSrvStartMotion_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsSrvStartMotion_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Industrial_msgsSrvStartMotion_Response.decode
--- @field encode fun(value: Ros2Industrial_msgsSrvStartMotion_Response): string
--- @brief Decode exactly one complete Ros2Industrial_msgsSrvStartMotion_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsSrvStartMotion_Response value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsSrvStartMotion_Response.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsSrvStartMotion_Response
local Ros2Industrial_msgsSrvStartMotion_Response = classes["Ros2Industrial_msgsSrvStartMotion_Response"]

--- @class Ros2Industrial_msgsSrvStopMotion_Request
--- @brief Complete ROS2 industrial_msgs/srv/StopMotion_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Industrial_msgsSrvStopMotion_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStopMotion_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsSrvStopMotion_Request.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/srv/StopMotion_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStopMotion_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/srv/StopMotion_Request.
--- @brief Ros2Industrial_msgsSrvStopMotion_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStopMotion_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsSrvStopMotion_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStopMotion_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsSrvStopMotion_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStopMotion_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Industrial_msgsSrvStopMotion_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStopMotion_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Industrial_msgsSrvStopMotion_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsSrvStopMotion_Request value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsSrvStopMotion_Request.encode
--- @field new fun(values?: table): Ros2Industrial_msgsSrvStopMotion_Request
--- @brief Encode a complete Ros2Industrial_msgsSrvStopMotion_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsSrvStopMotion_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Industrial_msgsSrvStopMotion_Request.decode
--- @field encode fun(value: Ros2Industrial_msgsSrvStopMotion_Request): string
--- @brief Decode exactly one complete Ros2Industrial_msgsSrvStopMotion_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsSrvStopMotion_Request value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsSrvStopMotion_Request.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsSrvStopMotion_Request
local Ros2Industrial_msgsSrvStopMotion_Request = classes["Ros2Industrial_msgsSrvStopMotion_Request"]

--- @class Ros2Industrial_msgsSrvStopMotion_Response
--- @brief Complete ROS2 industrial_msgs/srv/StopMotion_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field code table Complete nested industrial_msgs/msg/ServiceReturnCode value; no native fields are
--projected away.
--- @brief Ros2Industrial_msgsSrvStopMotion_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStopMotion_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Industrial_msgsSrvStopMotion_Response.NATIVE_TYPE: Exact normalized native type name
--industrial_msgs/srv/StopMotion_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStopMotion_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name industrial_msgs/srv/StopMotion_Response.
--- @brief Ros2Industrial_msgsSrvStopMotion_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStopMotion_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Industrial_msgsSrvStopMotion_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStopMotion_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Industrial_msgsSrvStopMotion_Response.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStopMotion_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Industrial_msgsSrvStopMotion_Response.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Industrial_msgsSrvStopMotion_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Industrial_msgsSrvStopMotion_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Industrial_msgsSrvStopMotion_Response value New mutable complete value; no ROS resource.
--- @see Ros2Industrial_msgsSrvStopMotion_Response.encode
--- @field new fun(values?: table): Ros2Industrial_msgsSrvStopMotion_Response
--- @brief Encode a complete Ros2Industrial_msgsSrvStopMotion_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Industrial_msgsSrvStopMotion_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Industrial_msgsSrvStopMotion_Response.decode
--- @field encode fun(value: Ros2Industrial_msgsSrvStopMotion_Response): string
--- @brief Decode exactly one complete Ros2Industrial_msgsSrvStopMotion_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Industrial_msgsSrvStopMotion_Response value New complete value; failures raise Lua errors.
--- @see Ros2Industrial_msgsSrvStopMotion_Response.encode
--- @field decode fun(bytes: string): Ros2Industrial_msgsSrvStopMotion_Response
local Ros2Industrial_msgsSrvStopMotion_Response = classes["Ros2Industrial_msgsSrvStopMotion_Response"]

--- @class Ros2Motoros2_interfacesMsgAlarmCauseRemedy
--- @brief Complete ROS2 motoros2_interfaces/msg/AlarmCauseRemedy value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field cause string Strict UTF-8 without NUL; length0..512 bytes.
--- @field remedy string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Motoros2_interfacesMsgAlarmCauseRemedy.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgAlarmCauseRemedy.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesMsgAlarmCauseRemedy.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/msg/AlarmCauseRemedy.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgAlarmCauseRemedy.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/msg/AlarmCauseRemedy.
--- @brief Ros2Motoros2_interfacesMsgAlarmCauseRemedy.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgAlarmCauseRemedy.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesMsgAlarmCauseRemedy.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgAlarmCauseRemedy.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesMsgAlarmCauseRemedy.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgAlarmCauseRemedy.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Motoros2_interfacesMsgAlarmCauseRemedy.MAX_WIRE_BYTES: Inclusive complete maximum 1032 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgAlarmCauseRemedy.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1032 bytes.
--- @brief Construct Ros2Motoros2_interfacesMsgAlarmCauseRemedy with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesMsgAlarmCauseRemedy value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesMsgAlarmCauseRemedy.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesMsgAlarmCauseRemedy
--- @brief Encode a complete Ros2Motoros2_interfacesMsgAlarmCauseRemedy value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesMsgAlarmCauseRemedy [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..1032 bytes.
--- @see Ros2Motoros2_interfacesMsgAlarmCauseRemedy.decode
--- @field encode fun(value: Ros2Motoros2_interfacesMsgAlarmCauseRemedy): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesMsgAlarmCauseRemedy canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesMsgAlarmCauseRemedy value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesMsgAlarmCauseRemedy.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesMsgAlarmCauseRemedy
local Ros2Motoros2_interfacesMsgAlarmCauseRemedy = classes["Ros2Motoros2_interfacesMsgAlarmCauseRemedy"]

--- @class Ros2Motoros2_interfacesMsgAlarmInfo
--- @brief Complete ROS2 motoros2_interfaces/msg/AlarmInfo value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field number integer Exact uint32 range 0..4294967295.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @field sub_code integer Exact int32 range -2147483648..2147483647.
--- @field datetime table Complete nested builtin_interfaces/msg/Time value; no native fields are projected
--away.
--- @field contents string Strict UTF-8 without NUL; length0..4096 bytes.
--- @field description string Strict UTF-8 without NUL; length0..4096 bytes.
--- @field help table[] Complete nested motoros2_interfaces/msg/AlarmCauseRemedy value; no native fields are
--projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Motoros2_interfacesMsgAlarmInfo.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgAlarmInfo.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesMsgAlarmInfo.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/msg/AlarmInfo.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgAlarmInfo.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/msg/AlarmInfo.
--- @brief Ros2Motoros2_interfacesMsgAlarmInfo.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgAlarmInfo.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesMsgAlarmInfo.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgAlarmInfo.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesMsgAlarmInfo.MIN_WIRE_BYTES: Inclusive complete minimum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgAlarmInfo.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 32 bytes.
--- @brief Ros2Motoros2_interfacesMsgAlarmInfo.MAX_WIRE_BYTES: Inclusive complete maximum 25248 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgAlarmInfo.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 25248 bytes.
--- @brief Construct Ros2Motoros2_interfacesMsgAlarmInfo with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesMsgAlarmInfo value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesMsgAlarmInfo.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesMsgAlarmInfo
--- @brief Encode a complete Ros2Motoros2_interfacesMsgAlarmInfo value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesMsgAlarmInfo [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 32..25248 bytes.
--- @see Ros2Motoros2_interfacesMsgAlarmInfo.decode
--- @field encode fun(value: Ros2Motoros2_interfacesMsgAlarmInfo): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesMsgAlarmInfo canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesMsgAlarmInfo value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesMsgAlarmInfo.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesMsgAlarmInfo
local Ros2Motoros2_interfacesMsgAlarmInfo = classes["Ros2Motoros2_interfacesMsgAlarmInfo"]

--- @class Ros2Motoros2_interfacesMsgErrorInfo
--- @brief Complete ROS2 motoros2_interfaces/msg/ErrorInfo value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field number integer Exact uint32 range 0..4294967295.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @field sub_code integer Exact int32 range -2147483648..2147483647.
--- @field datetime table Complete nested builtin_interfaces/msg/Time value; no native fields are projected
--away.
--- @brief Ros2Motoros2_interfacesMsgErrorInfo.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgErrorInfo.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesMsgErrorInfo.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/msg/ErrorInfo.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgErrorInfo.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/msg/ErrorInfo.
--- @brief Ros2Motoros2_interfacesMsgErrorInfo.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgErrorInfo.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesMsgErrorInfo.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgErrorInfo.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesMsgErrorInfo.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgErrorInfo.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Motoros2_interfacesMsgErrorInfo.MAX_WIRE_BYTES: Inclusive complete maximum 532 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgErrorInfo.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 532 bytes.
--- @brief Construct Ros2Motoros2_interfacesMsgErrorInfo with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesMsgErrorInfo value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesMsgErrorInfo.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesMsgErrorInfo
--- @brief Encode a complete Ros2Motoros2_interfacesMsgErrorInfo value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesMsgErrorInfo [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..532 bytes.
--- @see Ros2Motoros2_interfacesMsgErrorInfo.decode
--- @field encode fun(value: Ros2Motoros2_interfacesMsgErrorInfo): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesMsgErrorInfo canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesMsgErrorInfo value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesMsgErrorInfo.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesMsgErrorInfo
local Ros2Motoros2_interfacesMsgErrorInfo = classes["Ros2Motoros2_interfacesMsgErrorInfo"]

--- @class Ros2Motoros2_interfacesMsgInformJobCrudResultCodes
--- @brief Complete ROS2 motoros2_interfaces/msg/InformJobCrudResultCodes value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/msg/InformJobCrudResultCodes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--motoros2_interfaces/msg/InformJobCrudResultCodes.
--- @brief Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.MIN_WIRE_BYTES: Inclusive complete minimum 0
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.MAX_WIRE_BYTES: Inclusive complete maximum 0
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Native class constant Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.RC_OK.
--- @details Original uint32 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.new
--- @field RC_OK integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.STR_OK.
--- @details Original string literal Success; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.new
--- @field STR_OK integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.RC_ERR_REFRESHING_JOB_LIST.
--- @details Original uint32 literal 10; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.new
--- @field RC_ERR_REFRESHING_JOB_LIST integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.STR_ERR_REFRESHING_JOB_LIST.
--- @details Original string literal Error refreshing job list; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.new
--- @field STR_ERR_REFRESHING_JOB_LIST integer
--- @brief Native class constant
--Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.RC_ERR_RETRIEVING_FILE_COUNT.
--- @details Original uint32 literal 11; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.new
--- @field RC_ERR_RETRIEVING_FILE_COUNT integer
--- @brief Native class constant
--Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.STR_ERR_RETRIEVING_FILE_COUNT.
--- @details Original string literal Error retrieving file count; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.new
--- @field STR_ERR_RETRIEVING_FILE_COUNT integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.RC_ERR_TOO_MANY_JOBS.
--- @details Original uint32 literal 12; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.new
--- @field RC_ERR_TOO_MANY_JOBS integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.STR_ERR_TOO_MANY_JOBS.
--- @details Original string literal Too many jobs; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.new
--- @field STR_ERR_TOO_MANY_JOBS integer
--- @brief Native class constant
--Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST.
--- @details Original uint32 literal 13; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.new
--- @field RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST integer
--- @brief Native class constant
--Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST.
--- @details Original string literal Failed retrieving job name from list; consumes no instance wire bytes.
--Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.new
--- @field STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST integer
--- @brief Native class constant
--Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE.
--- @details Original uint32 literal 14; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.new
--- @field RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE integer
--- @brief Native class constant
--Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE.
--- @details Original string literal Error adding job name to service response; consumes no instance wire bytes.
--Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.new
--- @field STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE integer
--- @brief Construct Ros2Motoros2_interfacesMsgInformJobCrudResultCodes with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesMsgInformJobCrudResultCodes value New mutable complete value; no ROS
--resource.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesMsgInformJobCrudResultCodes
--- @brief Encode a complete Ros2Motoros2_interfacesMsgInformJobCrudResultCodes value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesMsgInformJobCrudResultCodes [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.decode
--- @field encode fun(value: Ros2Motoros2_interfacesMsgInformJobCrudResultCodes): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesMsgInformJobCrudResultCodes canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesMsgInformJobCrudResultCodes value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesMsgInformJobCrudResultCodes.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesMsgInformJobCrudResultCodes
local Ros2Motoros2_interfacesMsgInformJobCrudResultCodes = classes["Ros2Motoros2_interfacesMsgInformJobCrudResultCodes"]

--- @class Ros2Motoros2_interfacesMsgInitTrajEnum
--- @brief Complete ROS2 motoros2_interfaces/msg/InitTrajEnum value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value integer Exact uint16 range 0..65535.
--- @brief Ros2Motoros2_interfacesMsgInitTrajEnum.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesMsgInitTrajEnum.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/msg/InitTrajEnum.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/msg/InitTrajEnum.
--- @brief Ros2Motoros2_interfacesMsgInitTrajEnum.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesMsgInitTrajEnum.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesMsgInitTrajEnum.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Motoros2_interfacesMsgInitTrajEnum.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_OK.
--- @details Original uint16 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_OK integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_OK_STR.
--- @details Original string literal OK; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_OK_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_UNSPECIFIED.
--- @details Original uint16 literal 200; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_UNSPECIFIED integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_UNSPECIFIED_STR.
--- @details Original string literal Unspecified failure; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_UNSPECIFIED_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_TOO_SMALL.
--- @details Original uint16 literal 201; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_TOO_SMALL integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_TOO_SMALL_STR.
--- @details Original string literal Trajectory must contain at least two points.; consumes no instance wire
--bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_TOO_SMALL_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_TOO_BIG.
--- @details Original uint16 literal 202; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_TOO_BIG integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_TOO_BIG_STR.
--- @details Original string literal Trajectory contains too many points (Not enough memory).; consumes no
--instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_TOO_BIG_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION.
--- @details Original uint16 literal 203; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_ALREADY_IN_MOTION integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION_STR.
--- @details Original string literal Already running a trajectory.; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_ALREADY_IN_MOTION_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS.
--- @details Original uint16 literal 204; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INVALID_STARTING_POS integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS_STR.
--- @details Original string literal The first point must match the robot's current position.; consumes no
--instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INVALID_STARTING_POS_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INVALID_VELOCITY.
--- @details Original uint16 literal 205; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INVALID_VELOCITY integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INVALID_VELOCITY_STR.
--- @details Original string literal The commanded velocity is too high.; consumes no instance wire bytes. Treat
--as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INVALID_VELOCITY_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME.
--- @details Original uint16 literal 206; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INVALID_JOINTNAME integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME_STR.
--- @details Original string literal Invalid joint name specified. Check motoros2_config.yaml.; consumes no
--instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INVALID_JOINTNAME_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST.
--- @details Original uint16 literal 207; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INCOMPLETE_JOINTLIST integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST_STR.
--- @details Original string literal Trajectory must contain data for all joints.; consumes no instance wire
--bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INCOMPLETE_JOINTLIST_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INVALID_TIME.
--- @details Original uint16 literal 208; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INVALID_TIME integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INVALID_TIME_STR.
--- @details Original string literal Invalid time in trajectory.; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INVALID_TIME_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_WRONG_MODE.
--- @details Original uint16 literal 209; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_WRONG_MODE integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_WRONG_MODE_STR.
--- @details Original string literal Must call start_traj_mode service; consumes no instance wire bytes. Treat
--as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_WRONG_MODE_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_BACKWARD_TIME.
--- @details Original uint16 literal 210; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_BACKWARD_TIME integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_BACKWARD_TIME_STR.
--- @details Original string literal Trajectory message contains waypoints that are not strictly increasing in
--time.; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_BACKWARD_TIME_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS.
--- @details Original uint16 literal 211; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR.
--- @details Original string literal Trajectory did not contain position data for all axes.; consumes no
--instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES.
--- @details Original uint16 literal 212; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES integer
--- @brief Native class constant
--Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR.
--- @details Original string literal Trajectory did not contain velocity data for all axes.; consumes no
--instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY.
--- @details Original uint16 literal 213; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INVALID_ENDING_VELOCITY integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY_STR.
--- @details Original string literal The final point in the trajectory must have zero velocity.; consumes no
--instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INVALID_ENDING_VELOCITY_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION.
--- @details Original uint16 literal 214; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INVALID_ENDING_ACCELERATION integer
--- @brief Native class constant
--Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR.
--- @details Original string literal The final point in the trajectory must have zero acceleration.; consumes no
--instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME.
--- @details Original uint16 literal 215; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_DUPLICATE_JOINT_NAME integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgInitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME_STR.
--- @details Original string literal The trajectory contains duplicate joint names.; consumes no instance wire
--bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.new
--- @field INIT_TRAJ_DUPLICATE_JOINT_NAME_STR integer
--- @brief Construct Ros2Motoros2_interfacesMsgInitTrajEnum with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesMsgInitTrajEnum value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesMsgInitTrajEnum
--- @brief Encode a complete Ros2Motoros2_interfacesMsgInitTrajEnum value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesMsgInitTrajEnum [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.decode
--- @field encode fun(value: Ros2Motoros2_interfacesMsgInitTrajEnum): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesMsgInitTrajEnum canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesMsgInitTrajEnum value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesMsgInitTrajEnum.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesMsgInitTrajEnum
local Ros2Motoros2_interfacesMsgInitTrajEnum = classes["Ros2Motoros2_interfacesMsgInitTrajEnum"]

--- @class Ros2Motoros2_interfacesMsgIoResultCodes
--- @brief Complete ROS2 motoros2_interfaces/msg/IoResultCodes value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Motoros2_interfacesMsgIoResultCodes.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesMsgIoResultCodes.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/msg/IoResultCodes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/msg/IoResultCodes.
--- @brief Ros2Motoros2_interfacesMsgIoResultCodes.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesMsgIoResultCodes.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesMsgIoResultCodes.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Motoros2_interfacesMsgIoResultCodes.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.OK.
--- @details Original uint32 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field OK integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.OK_STR.
--- @details Original string literal Success; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field OK_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.READ_ADDRESS_INVALID.
--- @details Original uint32 literal 1001; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field READ_ADDRESS_INVALID integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.READ_ADDRESS_INVALID_STR.
--- @details Original string literal Address cannot be read from (out of readable range); consumes no instance
--wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field READ_ADDRESS_INVALID_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.WRITE_ADDRESS_INVALID.
--- @details Original uint32 literal 1002; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field WRITE_ADDRESS_INVALID integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.WRITE_ADDRESS_INVALID_STR.
--- @details Original string literal Address cannot be written to (out of writable range); consumes no instance
--wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field WRITE_ADDRESS_INVALID_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.WRITE_VALUE_INVALID.
--- @details Original uint32 literal 1003; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field WRITE_VALUE_INVALID integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.WRITE_VALUE_INVALID_STR.
--- @details Original string literal Illegal value for the type of IO element addressed; consumes no instance
--wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field WRITE_VALUE_INVALID_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.READ_API_ERROR.
--- @details Original uint32 literal 1004; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field READ_API_ERROR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.READ_API_ERROR_STR.
--- @details Original string literal The MotoPlus function mpReadIO returned -1. No further information is
--available; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field READ_API_ERROR_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.WRITE_API_ERROR.
--- @details Original uint32 literal 1005; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field WRITE_API_ERROR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.WRITE_API_ERROR_STR.
--- @details Original string literal The MotoPlus function mpWriteIO returned -1. No further information is
--available; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field WRITE_API_ERROR_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgIoResultCodes.UNKNOWN_API_ERROR_STR.
--- @details Original string literal Unknown error accessing I/O. No further information is available; consumes
--no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.new
--- @field UNKNOWN_API_ERROR_STR integer
--- @brief Construct Ros2Motoros2_interfacesMsgIoResultCodes with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesMsgIoResultCodes value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesMsgIoResultCodes
--- @brief Encode a complete Ros2Motoros2_interfacesMsgIoResultCodes value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesMsgIoResultCodes [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.decode
--- @field encode fun(value: Ros2Motoros2_interfacesMsgIoResultCodes): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesMsgIoResultCodes canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesMsgIoResultCodes value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesMsgIoResultCodes.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesMsgIoResultCodes
local Ros2Motoros2_interfacesMsgIoResultCodes = classes["Ros2Motoros2_interfacesMsgIoResultCodes"]

--- @class Ros2Motoros2_interfacesMsgMotionReadyEnum
--- @brief Complete ROS2 motoros2_interfaces/msg/MotionReadyEnum value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value integer Exact uint16 range 0..65535.
--- @brief Ros2Motoros2_interfacesMsgMotionReadyEnum.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesMsgMotionReadyEnum.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/msg/MotionReadyEnum.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/msg/MotionReadyEnum.
--- @brief Ros2Motoros2_interfacesMsgMotionReadyEnum.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesMsgMotionReadyEnum.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesMsgMotionReadyEnum.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Motoros2_interfacesMsgMotionReadyEnum.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.READY.
--- @details Original uint16 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field READY integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.READY_STR.
--- @details Original string literal Ready; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field READY_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_UNSPECIFIED.
--- @details Original uint16 literal 100; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_UNSPECIFIED integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_UNSPECIFIED_STR.
--- @details Original string literal Unspecified; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_UNSPECIFIED_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_ALARM.
--- @details Original uint16 literal 101; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_ALARM integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_ALARM_STR.
--- @details Original string literal The controller has an active Alarm; consumes no instance wire bytes. Treat
--as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_ALARM_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_ERROR.
--- @details Original uint16 literal 102; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_ERROR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_ERROR_STR.
--- @details Original string literal The controller has an active Error; consumes no instance wire bytes. Treat
--as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_ERROR_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_ESTOP.
--- @details Original uint16 literal 103; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_ESTOP integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_ESTOP_STR.
--- @details Original string literal The controller is in E-Stop; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_ESTOP_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_NOT_PLAY.
--- @details Original uint16 literal 104; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_NOT_PLAY integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_NOT_PLAY_STR.
--- @details Original string literal The teach pendant must not be in TEACH mode; consumes no instance wire
--bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_NOT_PLAY_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_NOT_REMOTE.
--- @details Original uint16 literal 105; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_NOT_REMOTE integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_NOT_REMOTE_STR.
--- @details Original string literal The teach pendant must be in REMOTE mode; consumes no instance wire bytes.
--Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_NOT_REMOTE_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_SERVO_OFF.
--- @details Original uint16 literal 106; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_SERVO_OFF integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_SERVO_OFF_STR.
--- @details Original string literal Servo power is OFF. Please call start_traj_mode or start_point_queue_mode
--service; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_SERVO_OFF_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_HOLD.
--- @details Original uint16 literal 107; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_HOLD integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_HOLD_STR.
--- @details Original string literal The controller is in HOLD; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_HOLD_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_JOB_NOT_STARTED.
--- @details Original uint16 literal 108; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_JOB_NOT_STARTED integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_JOB_NOT_STARTED_STR.
--- @details Original string literal The INIT_ROS job has not started. Please call start_traj_mode or
--start_point_queue_mode service; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_JOB_NOT_STARTED_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD.
--- @details Original uint16 literal 109; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_NOT_ON_WAIT_CMD integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD_STR.
--- @details Original string literal INFORM job is not on a WAIT command. Check the format of INIT_ROS; consumes
--no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_NOT_ON_WAIT_CMD_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_PFL_ACTIVE.
--- @details Original uint16 literal 111; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_PFL_ACTIVE integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_PFL_ACTIVE_STR.
--- @details Original string literal A PFL event has occurred. Please return the robot to a safe state; consumes
--no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_PFL_ACTIVE_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_INC_MOVE_ERROR.
--- @details Original uint16 literal 112; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_INC_MOVE_ERROR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_INC_MOVE_ERROR_STR.
--- @details Original string literal The controller is in an error state. Please call reset_error to attempt to
--clear the error; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_INC_MOVE_ERROR_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING.
--- @details Original uint16 literal 113; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_OTHER_PROGRAM_RUNNING integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING_STR.
--- @details Original string literal Controller is running another job; consumes no instance wire bytes. Treat
--as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_OTHER_PROGRAM_RUNNING_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE.
--- @details Original uint16 literal 114; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_OTHER_TRAJ_MODE_ACTIVE integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR.
--- @details Original string literal Another trajectory mode is already active. Please call stop_traj_mode
--service; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE.
--- @details Original uint16 literal 115; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_NOT_CONT_CYCLE_MODE integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE_STR.
--- @details Original string literal AUTO cycle mode not set. Please set the cycle mode to AUTO; consumes no
--instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_NOT_CONT_CYCLE_MODE_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_MAJOR_ALARM.
--- @details Original uint16 literal 116; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_MAJOR_ALARM integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_MAJOR_ALARM_STR.
--- @details Original string literal Major Alarms can't be reset. Please check the teach pendant; consumes no
--instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_MAJOR_ALARM_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_ECO_MODE.
--- @details Original uint16 literal 117; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_ECO_MODE integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_ECO_MODE_STR.
--- @details Original string literal Couldn't disable eco mode; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_ECO_MODE_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT.
--- @details Original uint16 literal 118; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_SERVO_ON_TIMEOUT integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgMotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT_STR.
--- @details Original string literal Timed out while waiting for servo on; consumes no instance wire bytes.
--Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.new
--- @field NOT_READY_SERVO_ON_TIMEOUT_STR integer
--- @brief Construct Ros2Motoros2_interfacesMsgMotionReadyEnum with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesMsgMotionReadyEnum value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesMsgMotionReadyEnum
--- @brief Encode a complete Ros2Motoros2_interfacesMsgMotionReadyEnum value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesMsgMotionReadyEnum [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.decode
--- @field encode fun(value: Ros2Motoros2_interfacesMsgMotionReadyEnum): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesMsgMotionReadyEnum canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesMsgMotionReadyEnum value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesMsgMotionReadyEnum.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesMsgMotionReadyEnum
local Ros2Motoros2_interfacesMsgMotionReadyEnum = classes["Ros2Motoros2_interfacesMsgMotionReadyEnum"]

--- @class Ros2Motoros2_interfacesMsgQueueResultEnum
--- @brief Complete ROS2 motoros2_interfaces/msg/QueueResultEnum value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value integer Exact uint16 range 0..65535.
--- @brief Ros2Motoros2_interfacesMsgQueueResultEnum.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesMsgQueueResultEnum.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/msg/QueueResultEnum.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/msg/QueueResultEnum.
--- @brief Ros2Motoros2_interfacesMsgQueueResultEnum.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesMsgQueueResultEnum.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesMsgQueueResultEnum.MIN_WIRE_BYTES: Inclusive complete minimum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2 bytes.
--- @brief Ros2Motoros2_interfacesMsgQueueResultEnum.MAX_WIRE_BYTES: Inclusive complete maximum 2 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2 bytes.
--- @brief Native class constant Ros2Motoros2_interfacesMsgQueueResultEnum.SUCCESS.
--- @details Original uint16 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.new
--- @field SUCCESS integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgQueueResultEnum.SUCCESS_STR.
--- @details Original string literal ; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.new
--- @field SUCCESS_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgQueueResultEnum.WRONG_MODE.
--- @details Original uint16 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.new
--- @field WRONG_MODE integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgQueueResultEnum.WRONG_MODE_STR.
--- @details Original string literal Must call start_point_queue_mode service; consumes no instance wire bytes.
--Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.new
--- @field WRONG_MODE_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgQueueResultEnum.INIT_FAILURE.
--- @details Original uint16 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.new
--- @field INIT_FAILURE integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgQueueResultEnum.INIT_FAILURE_STR.
--- @details Original string literal Failed to initialize the streaming trajectory; consumes no instance wire
--bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.new
--- @field INIT_FAILURE_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgQueueResultEnum.BUSY.
--- @details Original uint16 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.new
--- @field BUSY integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgQueueResultEnum.BUSY_STR.
--- @details Original string literal Busy processing the previous trajectory point. Please resend the next point
--shortly; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.new
--- @field BUSY_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgQueueResultEnum.INVALID_JOINT_LIST.
--- @details Original uint16 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.new
--- @field INVALID_JOINT_LIST integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgQueueResultEnum.INVALID_JOINT_LIST_STR.
--- @details Original string literal Point must contain data for all joints; consumes no instance wire bytes.
--Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.new
--- @field INVALID_JOINT_LIST_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgQueueResultEnum.UNABLE_TO_PROCESS_POINT.
--- @details Original uint16 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.new
--- @field UNABLE_TO_PROCESS_POINT integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgQueueResultEnum.UNABLE_TO_PROCESS_POINT_STR.
--- @details Original string literal Error while processing the trajectory point. Check debug log for more
--details; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.new
--- @field UNABLE_TO_PROCESS_POINT_STR integer
--- @brief Construct Ros2Motoros2_interfacesMsgQueueResultEnum with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesMsgQueueResultEnum value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesMsgQueueResultEnum
--- @brief Encode a complete Ros2Motoros2_interfacesMsgQueueResultEnum value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesMsgQueueResultEnum [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2..2 bytes.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.decode
--- @field encode fun(value: Ros2Motoros2_interfacesMsgQueueResultEnum): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesMsgQueueResultEnum canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesMsgQueueResultEnum value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesMsgQueueResultEnum.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesMsgQueueResultEnum
local Ros2Motoros2_interfacesMsgQueueResultEnum = classes["Ros2Motoros2_interfacesMsgQueueResultEnum"]

--- @class Ros2Motoros2_interfacesMsgSelectionResultCodes
--- @brief Complete ROS2 motoros2_interfaces/msg/SelectionResultCodes value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field value integer Exact uint32 range 0..4294967295.
--- @brief Ros2Motoros2_interfacesMsgSelectionResultCodes.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesMsgSelectionResultCodes.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/msg/SelectionResultCodes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/msg/SelectionResultCodes.
--- @brief Ros2Motoros2_interfacesMsgSelectionResultCodes.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesMsgSelectionResultCodes.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesMsgSelectionResultCodes.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Motoros2_interfacesMsgSelectionResultCodes.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Native class constant Ros2Motoros2_interfacesMsgSelectionResultCodes.OK.
--- @details Original uint32 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.new
--- @field OK integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgSelectionResultCodes.OK_STR.
--- @details Original string literal ; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.new
--- @field OK_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgSelectionResultCodes.INVALID_CONTROLLER_STATE.
--- @details Original uint32 literal 400; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.new
--- @field INVALID_CONTROLLER_STATE integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgSelectionResultCodes.INVALID_CONTROLLER_STATE_STR.
--- @details Original string literal Pendant is not in REMOTE mode; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.new
--- @field INVALID_CONTROLLER_STATE_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgSelectionResultCodes.INVALID_CONTROL_GROUP.
--- @details Original uint32 literal 401; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.new
--- @field INVALID_CONTROL_GROUP integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgSelectionResultCodes.INVALID_CONTROL_GROUP_STR.
--- @details Original string literal Invalid control group; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.new
--- @field INVALID_CONTROL_GROUP_STR integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgSelectionResultCodes.INVALID_SELECTION_INDEX.
--- @details Original uint32 literal 402; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.new
--- @field INVALID_SELECTION_INDEX integer
--- @brief Native class constant Ros2Motoros2_interfacesMsgSelectionResultCodes.INVALID_SELECTION_INDEX_STR.
--- @details Original string literal Invalid tool selection; consumes no instance wire bytes. Treat as
--read-only.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.new
--- @field INVALID_SELECTION_INDEX_STR integer
--- @brief Construct Ros2Motoros2_interfacesMsgSelectionResultCodes with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesMsgSelectionResultCodes value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesMsgSelectionResultCodes
--- @brief Encode a complete Ros2Motoros2_interfacesMsgSelectionResultCodes value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesMsgSelectionResultCodes [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.decode
--- @field encode fun(value: Ros2Motoros2_interfacesMsgSelectionResultCodes): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesMsgSelectionResultCodes canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesMsgSelectionResultCodes value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesMsgSelectionResultCodes.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesMsgSelectionResultCodes
local Ros2Motoros2_interfacesMsgSelectionResultCodes = classes["Ros2Motoros2_interfacesMsgSelectionResultCodes"]

--- @class Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/GetActiveAlarmInfo_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/GetActiveAlarmInfo_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--motoros2_interfaces/srv/GetActiveAlarmInfo_Request.
--- @brief Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request value New mutable complete value; no ROS
--resource.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request
local Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request = classes["Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request"]

--- @class Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/GetActiveAlarmInfo_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint32 range 0..4294967295.
--- @field result_message string Strict UTF-8 without NUL; length0..512 bytes.
--- @field alarms table[] Complete nested motoros2_interfaces/msg/AlarmInfo value; no native fields are
--projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @field errors table[] Complete nested motoros2_interfaces/msg/ErrorInfo value; no native fields are
--projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.ROS_VERSION: Read-only-by-contract backend
--value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/GetActiveAlarmInfo_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--motoros2_interfaces/srv/GetActiveAlarmInfo_Response.
--- @brief Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.NATIVE_IDENTITY: Exact supplied native
--identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.MIN_WIRE_BYTES: Inclusive complete minimum 16
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.MAX_WIRE_BYTES: Inclusive complete maximum
--32768 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 32768 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value New mutable complete value; no ROS
--resource.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 16..32768 bytes.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response
local Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response = classes["Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response"]

--- @class Ros2Motoros2_interfacesSrvListInformJobs_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/ListInformJobs_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Motoros2_interfacesSrvListInformJobs_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvListInformJobs_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/ListInformJobs_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/ListInformJobs_Request.
--- @brief Ros2Motoros2_interfacesSrvListInformJobs_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvListInformJobs_Request.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvListInformJobs_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Motoros2_interfacesSrvListInformJobs_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvListInformJobs_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvListInformJobs_Request value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvListInformJobs_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvListInformJobs_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvListInformJobs_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvListInformJobs_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvListInformJobs_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvListInformJobs_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvListInformJobs_Request
local Ros2Motoros2_interfacesSrvListInformJobs_Request = classes["Ros2Motoros2_interfacesSrvListInformJobs_Request"]

--- @class Ros2Motoros2_interfacesSrvListInformJobs_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/ListInformJobs_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint32 range 0..4294967295.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @field names string[] Strict UTF-8 without NUL; length0..512 bytes. At most 16 contiguous elements; holes
--and extra array keys are rejected.
--- @brief Ros2Motoros2_interfacesSrvListInformJobs_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvListInformJobs_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/ListInformJobs_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/ListInformJobs_Response.
--- @brief Ros2Motoros2_interfacesSrvListInformJobs_Response.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvListInformJobs_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvListInformJobs_Response.MIN_WIRE_BYTES: Inclusive complete minimum 12
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 12 bytes.
--- @brief Ros2Motoros2_interfacesSrvListInformJobs_Response.MAX_WIRE_BYTES: Inclusive complete maximum 8780
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8780 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvListInformJobs_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvListInformJobs_Response value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvListInformJobs_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvListInformJobs_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvListInformJobs_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 12..8780 bytes.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvListInformJobs_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvListInformJobs_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvListInformJobs_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvListInformJobs_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvListInformJobs_Response
local Ros2Motoros2_interfacesSrvListInformJobs_Response = classes["Ros2Motoros2_interfacesSrvListInformJobs_Response"]

--- @class Ros2Motoros2_interfacesSrvQueueTrajPoint_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/QueueTrajPoint_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_names string[] Strict UTF-8 without NUL; length0..64 bytes. At most 12 contiguous elements;
--holes and extra array keys are rejected.
--- @field point table Complete nested trajectory_msgs/msg/JointTrajectoryPoint value; no native fields are
--projected away.
--- @brief Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/QueueTrajPoint_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/QueueTrajPoint_Request.
--- @brief Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.MAX_WIRE_BYTES: Inclusive complete maximum 1228
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1228 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvQueueTrajPoint_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvQueueTrajPoint_Request value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvQueueTrajPoint_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvQueueTrajPoint_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvQueueTrajPoint_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 28..1228 bytes.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvQueueTrajPoint_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvQueueTrajPoint_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvQueueTrajPoint_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvQueueTrajPoint_Request
local Ros2Motoros2_interfacesSrvQueueTrajPoint_Request = classes["Ros2Motoros2_interfacesSrvQueueTrajPoint_Request"]

--- @class Ros2Motoros2_interfacesSrvQueueTrajPoint_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/QueueTrajPoint_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code table Complete nested motoros2_interfaces/msg/QueueResultEnum value; no native fields are
--projected away.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/QueueTrajPoint_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/QueueTrajPoint_Response.
--- @brief Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvQueueTrajPoint_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvQueueTrajPoint_Response value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvQueueTrajPoint_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvQueueTrajPoint_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvQueueTrajPoint_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvQueueTrajPoint_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvQueueTrajPoint_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvQueueTrajPoint_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvQueueTrajPoint_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvQueueTrajPoint_Response
local Ros2Motoros2_interfacesSrvQueueTrajPoint_Response = classes["Ros2Motoros2_interfacesSrvQueueTrajPoint_Response"]

--- @class Ros2Motoros2_interfacesSrvReadGroupIO_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/ReadGroupIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact uint32 range 0..4294967295.
--- @brief Ros2Motoros2_interfacesSrvReadGroupIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvReadGroupIO_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/ReadGroupIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/ReadGroupIO_Request.
--- @brief Ros2Motoros2_interfacesSrvReadGroupIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvReadGroupIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvReadGroupIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Motoros2_interfacesSrvReadGroupIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvReadGroupIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvReadGroupIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvReadGroupIO_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvReadGroupIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvReadGroupIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvReadGroupIO_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvReadGroupIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvReadGroupIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvReadGroupIO_Request
local Ros2Motoros2_interfacesSrvReadGroupIO_Request = classes["Ros2Motoros2_interfacesSrvReadGroupIO_Request"]

--- @class Ros2Motoros2_interfacesSrvReadGroupIO_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/ReadGroupIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint32 range 0..4294967295.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field value integer Exact uint8 range 0..255.
--- @brief Ros2Motoros2_interfacesSrvReadGroupIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvReadGroupIO_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/ReadGroupIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/ReadGroupIO_Response.
--- @brief Ros2Motoros2_interfacesSrvReadGroupIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvReadGroupIO_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvReadGroupIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 10 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 10 bytes.
--- @brief Ros2Motoros2_interfacesSrvReadGroupIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 522 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 522 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvReadGroupIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvReadGroupIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvReadGroupIO_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvReadGroupIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvReadGroupIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 10..522 bytes.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvReadGroupIO_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvReadGroupIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvReadGroupIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesSrvReadGroupIO_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvReadGroupIO_Response
local Ros2Motoros2_interfacesSrvReadGroupIO_Response = classes["Ros2Motoros2_interfacesSrvReadGroupIO_Response"]

--- @class Ros2Motoros2_interfacesSrvReadMRegister_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/ReadMRegister_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact uint32 range 0..4294967295.
--- @brief Ros2Motoros2_interfacesSrvReadMRegister_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvReadMRegister_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/ReadMRegister_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/ReadMRegister_Request.
--- @brief Ros2Motoros2_interfacesSrvReadMRegister_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvReadMRegister_Request.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvReadMRegister_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Motoros2_interfacesSrvReadMRegister_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvReadMRegister_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvReadMRegister_Request value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvReadMRegister_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvReadMRegister_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvReadMRegister_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvReadMRegister_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvReadMRegister_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvReadMRegister_Request value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvReadMRegister_Request
local Ros2Motoros2_interfacesSrvReadMRegister_Request = classes["Ros2Motoros2_interfacesSrvReadMRegister_Request"]

--- @class Ros2Motoros2_interfacesSrvReadMRegister_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/ReadMRegister_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint32 range 0..4294967295.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field value integer Exact uint16 range 0..65535.
--- @brief Ros2Motoros2_interfacesSrvReadMRegister_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvReadMRegister_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/ReadMRegister_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/ReadMRegister_Response.
--- @brief Ros2Motoros2_interfacesSrvReadMRegister_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvReadMRegister_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvReadMRegister_Response.MIN_WIRE_BYTES: Inclusive complete minimum 11 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 11 bytes.
--- @brief Ros2Motoros2_interfacesSrvReadMRegister_Response.MAX_WIRE_BYTES: Inclusive complete maximum 523
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 523 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvReadMRegister_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvReadMRegister_Response value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvReadMRegister_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvReadMRegister_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvReadMRegister_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 11..523 bytes.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvReadMRegister_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvReadMRegister_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvReadMRegister_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvReadMRegister_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvReadMRegister_Response
local Ros2Motoros2_interfacesSrvReadMRegister_Response = classes["Ros2Motoros2_interfacesSrvReadMRegister_Response"]

--- @class Ros2Motoros2_interfacesSrvReadSingleIO_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/ReadSingleIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact uint32 range 0..4294967295.
--- @brief Ros2Motoros2_interfacesSrvReadSingleIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvReadSingleIO_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/ReadSingleIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/ReadSingleIO_Request.
--- @brief Ros2Motoros2_interfacesSrvReadSingleIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvReadSingleIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvReadSingleIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Motoros2_interfacesSrvReadSingleIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvReadSingleIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvReadSingleIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvReadSingleIO_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvReadSingleIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvReadSingleIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..4 bytes.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvReadSingleIO_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvReadSingleIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvReadSingleIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvReadSingleIO_Request
local Ros2Motoros2_interfacesSrvReadSingleIO_Request = classes["Ros2Motoros2_interfacesSrvReadSingleIO_Request"]

--- @class Ros2Motoros2_interfacesSrvReadSingleIO_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/ReadSingleIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint32 range 0..4294967295.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field value integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Motoros2_interfacesSrvReadSingleIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvReadSingleIO_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/ReadSingleIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/ReadSingleIO_Response.
--- @brief Ros2Motoros2_interfacesSrvReadSingleIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvReadSingleIO_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvReadSingleIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros2Motoros2_interfacesSrvReadSingleIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 525 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 525 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvReadSingleIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvReadSingleIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvReadSingleIO_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvReadSingleIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvReadSingleIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..525 bytes.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvReadSingleIO_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvReadSingleIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvReadSingleIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesSrvReadSingleIO_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvReadSingleIO_Response
local Ros2Motoros2_interfacesSrvReadSingleIO_Response = classes["Ros2Motoros2_interfacesSrvReadSingleIO_Response"]

--- @class Ros2Motoros2_interfacesSrvResetError_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/ResetError_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Motoros2_interfacesSrvResetError_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvResetError_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvResetError_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/ResetError_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvResetError_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/ResetError_Request.
--- @brief Ros2Motoros2_interfacesSrvResetError_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvResetError_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvResetError_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvResetError_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvResetError_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvResetError_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Motoros2_interfacesSrvResetError_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvResetError_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvResetError_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvResetError_Request value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvResetError_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvResetError_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvResetError_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvResetError_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Motoros2_interfacesSrvResetError_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvResetError_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvResetError_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvResetError_Request value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesSrvResetError_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvResetError_Request
local Ros2Motoros2_interfacesSrvResetError_Request = classes["Ros2Motoros2_interfacesSrvResetError_Request"]

--- @class Ros2Motoros2_interfacesSrvResetError_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/ResetError_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code table Complete nested motoros2_interfaces/msg/MotionReadyEnum value; no native fields are
--projected away.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Motoros2_interfacesSrvResetError_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvResetError_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvResetError_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/ResetError_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvResetError_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/ResetError_Response.
--- @brief Ros2Motoros2_interfacesSrvResetError_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvResetError_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvResetError_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvResetError_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvResetError_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvResetError_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Motoros2_interfacesSrvResetError_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvResetError_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvResetError_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvResetError_Response value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvResetError_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvResetError_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvResetError_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvResetError_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Motoros2_interfacesSrvResetError_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvResetError_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvResetError_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvResetError_Response value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesSrvResetError_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvResetError_Response
local Ros2Motoros2_interfacesSrvResetError_Response = classes["Ros2Motoros2_interfacesSrvResetError_Response"]

--- @class Ros2Motoros2_interfacesSrvSelectMotionTool_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/SelectMotionTool_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field group_number integer Exact uint32 range 0..4294967295.
--- @field tool_number integer Exact uint32 range 0..4294967295.
--- @brief Ros2Motoros2_interfacesSrvSelectMotionTool_Request.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvSelectMotionTool_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/SelectMotionTool_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--motoros2_interfaces/srv/SelectMotionTool_Request.
--- @brief Ros2Motoros2_interfacesSrvSelectMotionTool_Request.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvSelectMotionTool_Request.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvSelectMotionTool_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Motoros2_interfacesSrvSelectMotionTool_Request.MAX_WIRE_BYTES: Inclusive complete maximum 8
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvSelectMotionTool_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvSelectMotionTool_Request value New mutable complete value; no ROS
--resource.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvSelectMotionTool_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvSelectMotionTool_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvSelectMotionTool_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvSelectMotionTool_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvSelectMotionTool_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvSelectMotionTool_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvSelectMotionTool_Request
local Ros2Motoros2_interfacesSrvSelectMotionTool_Request = classes["Ros2Motoros2_interfacesSrvSelectMotionTool_Request"]

--- @class Ros2Motoros2_interfacesSrvSelectMotionTool_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/SelectMotionTool_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code table Complete nested motoros2_interfaces/msg/SelectionResultCodes value; no native
--fields are projected away.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Motoros2_interfacesSrvSelectMotionTool_Response.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvSelectMotionTool_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/SelectMotionTool_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--motoros2_interfaces/srv/SelectMotionTool_Response.
--- @brief Ros2Motoros2_interfacesSrvSelectMotionTool_Response.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvSelectMotionTool_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvSelectMotionTool_Response.MIN_WIRE_BYTES: Inclusive complete minimum 9
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Motoros2_interfacesSrvSelectMotionTool_Response.MAX_WIRE_BYTES: Inclusive complete maximum 521
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 521 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvSelectMotionTool_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvSelectMotionTool_Response value New mutable complete value; no ROS
--resource.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvSelectMotionTool_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvSelectMotionTool_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvSelectMotionTool_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..521 bytes.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvSelectMotionTool_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvSelectMotionTool_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvSelectMotionTool_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvSelectMotionTool_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvSelectMotionTool_Response
local Ros2Motoros2_interfacesSrvSelectMotionTool_Response = classes["Ros2Motoros2_interfacesSrvSelectMotionTool_Response"]

--- @class Ros2Motoros2_interfacesSrvStartPointQueueMode_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/StartPointQueueMode_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.ROS_VERSION: Read-only-by-contract backend
--value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/StartPointQueueMode_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--motoros2_interfaces/srv/StartPointQueueMode_Request.
--- @brief Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.NATIVE_IDENTITY: Exact supplied native
--identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvStartPointQueueMode_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvStartPointQueueMode_Request value New mutable complete value; no ROS
--resource.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvStartPointQueueMode_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvStartPointQueueMode_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvStartPointQueueMode_Request [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvStartPointQueueMode_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvStartPointQueueMode_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvStartPointQueueMode_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvStartPointQueueMode_Request
local Ros2Motoros2_interfacesSrvStartPointQueueMode_Request = classes["Ros2Motoros2_interfacesSrvStartPointQueueMode_Request"]

--- @class Ros2Motoros2_interfacesSrvStartPointQueueMode_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/StartPointQueueMode_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code table Complete nested motoros2_interfaces/msg/MotionReadyEnum value; no native fields are
--projected away.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.ROS_VERSION: Read-only-by-contract backend
--value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/StartPointQueueMode_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--motoros2_interfaces/srv/StartPointQueueMode_Response.
--- @brief Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.NATIVE_IDENTITY: Exact supplied native
--identity; nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.CODEC_IDENTITY: Finite canonical schema
--identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvStartPointQueueMode_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvStartPointQueueMode_Response value New mutable complete value; no ROS
--resource.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvStartPointQueueMode_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvStartPointQueueMode_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvStartPointQueueMode_Response [in] Complete value borrowed
--synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvStartPointQueueMode_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvStartPointQueueMode_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvStartPointQueueMode_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvStartPointQueueMode_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvStartPointQueueMode_Response
local Ros2Motoros2_interfacesSrvStartPointQueueMode_Response = classes["Ros2Motoros2_interfacesSrvStartPointQueueMode_Response"]

--- @class Ros2Motoros2_interfacesSrvStartTrajMode_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/StartTrajMode_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Motoros2_interfacesSrvStartTrajMode_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvStartTrajMode_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/StartTrajMode_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/StartTrajMode_Request.
--- @brief Ros2Motoros2_interfacesSrvStartTrajMode_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvStartTrajMode_Request.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvStartTrajMode_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Motoros2_interfacesSrvStartTrajMode_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvStartTrajMode_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvStartTrajMode_Request value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvStartTrajMode_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvStartTrajMode_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvStartTrajMode_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvStartTrajMode_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvStartTrajMode_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvStartTrajMode_Request value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvStartTrajMode_Request
local Ros2Motoros2_interfacesSrvStartTrajMode_Request = classes["Ros2Motoros2_interfacesSrvStartTrajMode_Request"]

--- @class Ros2Motoros2_interfacesSrvStartTrajMode_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/StartTrajMode_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code table Complete nested motoros2_interfaces/msg/MotionReadyEnum value; no native fields are
--projected away.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @brief Ros2Motoros2_interfacesSrvStartTrajMode_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvStartTrajMode_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/StartTrajMode_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/StartTrajMode_Response.
--- @brief Ros2Motoros2_interfacesSrvStartTrajMode_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvStartTrajMode_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvStartTrajMode_Response.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Motoros2_interfacesSrvStartTrajMode_Response.MAX_WIRE_BYTES: Inclusive complete maximum 518
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 518 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvStartTrajMode_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvStartTrajMode_Response value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvStartTrajMode_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvStartTrajMode_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvStartTrajMode_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..518 bytes.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvStartTrajMode_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvStartTrajMode_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvStartTrajMode_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvStartTrajMode_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvStartTrajMode_Response
local Ros2Motoros2_interfacesSrvStartTrajMode_Response = classes["Ros2Motoros2_interfacesSrvStartTrajMode_Response"]

--- @class Ros2Motoros2_interfacesSrvWriteGroupIO_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/WriteGroupIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact uint32 range 0..4294967295.
--- @field value integer Exact uint8 range 0..255.
--- @brief Ros2Motoros2_interfacesSrvWriteGroupIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvWriteGroupIO_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/WriteGroupIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/WriteGroupIO_Request.
--- @brief Ros2Motoros2_interfacesSrvWriteGroupIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvWriteGroupIO_Request.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvWriteGroupIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Motoros2_interfacesSrvWriteGroupIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvWriteGroupIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvWriteGroupIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvWriteGroupIO_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvWriteGroupIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvWriteGroupIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..5 bytes.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvWriteGroupIO_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvWriteGroupIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvWriteGroupIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvWriteGroupIO_Request
local Ros2Motoros2_interfacesSrvWriteGroupIO_Request = classes["Ros2Motoros2_interfacesSrvWriteGroupIO_Request"]

--- @class Ros2Motoros2_interfacesSrvWriteGroupIO_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/WriteGroupIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint32 range 0..4294967295.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Motoros2_interfacesSrvWriteGroupIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvWriteGroupIO_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/WriteGroupIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/WriteGroupIO_Response.
--- @brief Ros2Motoros2_interfacesSrvWriteGroupIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvWriteGroupIO_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvWriteGroupIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Motoros2_interfacesSrvWriteGroupIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 521 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 521 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvWriteGroupIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvWriteGroupIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvWriteGroupIO_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvWriteGroupIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvWriteGroupIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..521 bytes.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvWriteGroupIO_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvWriteGroupIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvWriteGroupIO_Response value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesSrvWriteGroupIO_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvWriteGroupIO_Response
local Ros2Motoros2_interfacesSrvWriteGroupIO_Response = classes["Ros2Motoros2_interfacesSrvWriteGroupIO_Response"]

--- @class Ros2Motoros2_interfacesSrvWriteMRegister_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/WriteMRegister_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact uint32 range 0..4294967295.
--- @field value integer Exact uint16 range 0..65535.
--- @brief Ros2Motoros2_interfacesSrvWriteMRegister_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvWriteMRegister_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/WriteMRegister_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/WriteMRegister_Request.
--- @brief Ros2Motoros2_interfacesSrvWriteMRegister_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvWriteMRegister_Request.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvWriteMRegister_Request.MIN_WIRE_BYTES: Inclusive complete minimum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 6 bytes.
--- @brief Ros2Motoros2_interfacesSrvWriteMRegister_Request.MAX_WIRE_BYTES: Inclusive complete maximum 6 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 6 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvWriteMRegister_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvWriteMRegister_Request value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvWriteMRegister_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvWriteMRegister_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvWriteMRegister_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 6..6 bytes.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvWriteMRegister_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvWriteMRegister_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvWriteMRegister_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvWriteMRegister_Request
local Ros2Motoros2_interfacesSrvWriteMRegister_Request = classes["Ros2Motoros2_interfacesSrvWriteMRegister_Request"]

--- @class Ros2Motoros2_interfacesSrvWriteMRegister_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/WriteMRegister_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint32 range 0..4294967295.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Motoros2_interfacesSrvWriteMRegister_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvWriteMRegister_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/WriteMRegister_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/WriteMRegister_Response.
--- @brief Ros2Motoros2_interfacesSrvWriteMRegister_Response.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvWriteMRegister_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvWriteMRegister_Response.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Motoros2_interfacesSrvWriteMRegister_Response.MAX_WIRE_BYTES: Inclusive complete maximum 521
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 521 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvWriteMRegister_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvWriteMRegister_Response value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvWriteMRegister_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvWriteMRegister_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvWriteMRegister_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..521 bytes.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvWriteMRegister_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvWriteMRegister_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvWriteMRegister_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvWriteMRegister_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvWriteMRegister_Response
local Ros2Motoros2_interfacesSrvWriteMRegister_Response = classes["Ros2Motoros2_interfacesSrvWriteMRegister_Response"]

--- @class Ros2Motoros2_interfacesSrvWriteSingleIO_Request
--- @brief Complete ROS2 motoros2_interfaces/srv/WriteSingleIO_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field address integer Exact uint32 range 0..4294967295.
--- @field value integer Exact int32 range -2147483648..2147483647.
--- @brief Ros2Motoros2_interfacesSrvWriteSingleIO_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvWriteSingleIO_Request.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/WriteSingleIO_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/WriteSingleIO_Request.
--- @brief Ros2Motoros2_interfacesSrvWriteSingleIO_Request.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvWriteSingleIO_Request.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvWriteSingleIO_Request.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Motoros2_interfacesSrvWriteSingleIO_Request.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvWriteSingleIO_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvWriteSingleIO_Request value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Request.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvWriteSingleIO_Request
--- @brief Encode a complete Ros2Motoros2_interfacesSrvWriteSingleIO_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvWriteSingleIO_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Request.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvWriteSingleIO_Request): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvWriteSingleIO_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvWriteSingleIO_Request value New complete value; failures raise Lua errors.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Request.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvWriteSingleIO_Request
local Ros2Motoros2_interfacesSrvWriteSingleIO_Request = classes["Ros2Motoros2_interfacesSrvWriteSingleIO_Request"]

--- @class Ros2Motoros2_interfacesSrvWriteSingleIO_Response
--- @brief Complete ROS2 motoros2_interfaces/srv/WriteSingleIO_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field result_code integer Exact uint32 range 0..4294967295.
--- @field message string Strict UTF-8 without NUL; length0..512 bytes.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Motoros2_interfacesSrvWriteSingleIO_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Motoros2_interfacesSrvWriteSingleIO_Response.NATIVE_TYPE: Exact normalized native type name
--motoros2_interfaces/srv/WriteSingleIO_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name motoros2_interfaces/srv/WriteSingleIO_Response.
--- @brief Ros2Motoros2_interfacesSrvWriteSingleIO_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Motoros2_interfacesSrvWriteSingleIO_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Motoros2_interfacesSrvWriteSingleIO_Response.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Motoros2_interfacesSrvWriteSingleIO_Response.MAX_WIRE_BYTES: Inclusive complete maximum 521
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 521 bytes.
--- @brief Construct Ros2Motoros2_interfacesSrvWriteSingleIO_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Motoros2_interfacesSrvWriteSingleIO_Response value New mutable complete value; no ROS resource.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Response.encode
--- @field new fun(values?: table): Ros2Motoros2_interfacesSrvWriteSingleIO_Response
--- @brief Encode a complete Ros2Motoros2_interfacesSrvWriteSingleIO_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Motoros2_interfacesSrvWriteSingleIO_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..521 bytes.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Response.decode
--- @field encode fun(value: Ros2Motoros2_interfacesSrvWriteSingleIO_Response): string
--- @brief Decode exactly one complete Ros2Motoros2_interfacesSrvWriteSingleIO_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Motoros2_interfacesSrvWriteSingleIO_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Motoros2_interfacesSrvWriteSingleIO_Response.encode
--- @field decode fun(bytes: string): Ros2Motoros2_interfacesSrvWriteSingleIO_Response
local Ros2Motoros2_interfacesSrvWriteSingleIO_Response = classes["Ros2Motoros2_interfacesSrvWriteSingleIO_Response"]

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

--- @class Ros2Tf2_msgsMsgTFMessage
--- @brief Complete ROS2 tf2_msgs/msg/TFMessage value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field transforms table[] Complete nested geometry_msgs/msg/TransformStamped value; no native fields are
--projected away. At most 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Tf2_msgsMsgTFMessage.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Tf2_msgsMsgTFMessage.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Tf2_msgsMsgTFMessage.NATIVE_TYPE: Exact normalized native type name tf2_msgs/msg/TFMessage.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Tf2_msgsMsgTFMessage.encode
--- @field NATIVE_TYPE string Exact normalized native type name tf2_msgs/msg/TFMessage.
--- @brief Ros2Tf2_msgsMsgTFMessage.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Tf2_msgsMsgTFMessage.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @brief Ros2Tf2_msgsMsgTFMessage.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Tf2_msgsMsgTFMessage.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Tf2_msgsMsgTFMessage.MIN_WIRE_BYTES: Inclusive complete minimum 4 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Tf2_msgsMsgTFMessage.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 4 bytes.
--- @brief Ros2Tf2_msgsMsgTFMessage.MAX_WIRE_BYTES: Inclusive complete maximum 10372 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Tf2_msgsMsgTFMessage.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 10372 bytes.
--- @brief Construct Ros2Tf2_msgsMsgTFMessage with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Tf2_msgsMsgTFMessage value New mutable complete value; no ROS resource.
--- @see Ros2Tf2_msgsMsgTFMessage.encode
--- @field new fun(values?: table): Ros2Tf2_msgsMsgTFMessage
--- @brief Encode a complete Ros2Tf2_msgsMsgTFMessage value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Tf2_msgsMsgTFMessage [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 4..10372 bytes.
--- @see Ros2Tf2_msgsMsgTFMessage.decode
--- @field encode fun(value: Ros2Tf2_msgsMsgTFMessage): string
--- @brief Decode exactly one complete Ros2Tf2_msgsMsgTFMessage canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Tf2_msgsMsgTFMessage value New complete value; failures raise Lua errors.
--- @see Ros2Tf2_msgsMsgTFMessage.encode
--- @field decode fun(bytes: string): Ros2Tf2_msgsMsgTFMessage
local Ros2Tf2_msgsMsgTFMessage = classes["Ros2Tf2_msgsMsgTFMessage"]

return classes, by_name
