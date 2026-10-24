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
        ["codec_identity"] = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
        ["minimum"] = 12,
        ["maximum"] = 140,
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
                ["string_bound"] = 128,
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
        ["codec_identity"] = "UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1",
        ["minimum"] = 24,
        ["maximum"] = 280,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "positions",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 8,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "velocities",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 8,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "accelerations",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 8,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "effort",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 8,
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
        ["codec_identity"] = "UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77",
        ["minimum"] = 20,
        ["maximum"] = 1484,
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
                ["count"] = 8,
                ["string_bound"] = 128,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "points",
                ["type"] = "Ros2Trajectory_msgsMsgJointTrajectoryPoint",
                ["array"] = "sequence",
                ["count"] = 1,
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
        ["codec_identity"] = "UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf",
        ["minimum"] = 20,
        ["maximum"] = 844,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "transforms",
                ["type"] = "Ros2Geometry_msgsMsgTransform",
                ["array"] = "sequence",
                ["count"] = 1,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "velocities",
                ["type"] = "Ros2Geometry_msgsMsgTwist",
                ["array"] = "sequence",
                ["count"] = 8,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 48,
            },
            {
                ["name"] = "accelerations",
                ["type"] = "Ros2Geometry_msgsMsgTwist",
                ["array"] = "sequence",
                ["count"] = 8,
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
        ["codec_identity"] = "UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5",
        ["minimum"] = 20,
        ["maximum"] = 2048,
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
                ["count"] = 8,
                ["string_bound"] = 128,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "points",
                ["type"] = "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint",
                ["array"] = "sequence",
                ["count"] = 1,
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
        ["codec_identity"] = "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a",
        ["minimum"] = 28,
        ["maximum"] = 156,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
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
        ["codec_identity"] = "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb",
        ["minimum"] = 30,
        ["maximum"] = 158,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_name",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 128,
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
        ["codec_identity"] = "UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018",
        ["minimum"] = 64,
        ["maximum"] = 8580,
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
                ["count"] = 8,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "component_path_tolerance",
                ["type"] = "Ros2Control_msgsMsgJointComponentTolerance",
                ["array"] = "sequence",
                ["count"] = 8,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 30,
            },
            {
                ["name"] = "goal_tolerance",
                ["type"] = "Ros2Control_msgsMsgJointTolerance",
                ["array"] = "sequence",
                ["count"] = 8,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "component_goal_tolerance",
                ["type"] = "Ros2Control_msgsMsgJointComponentTolerance",
                ["array"] = "sequence",
                ["count"] = 8,
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
        ["codec_identity"] = "UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649",
        ["minimum"] = 8,
        ["maximum"] = 264,
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
                ["string_bound"] = 256,
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
        ["codec_identity"] = "UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529",
        ["minimum"] = 152,
        ["maximum"] = 4708,
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
                ["count"] = 8,
                ["string_bound"] = 128,
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
                ["count"] = 1,
                ["string_bound"] = 128,
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
        ["codec_identity"] = "UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11",
        ["minimum"] = 28,
        ["maximum"] = 1404,
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
                ["count"] = 8,
                ["string_bound"] = 128,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "position",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 8,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "velocity",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 8,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "effort",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 8,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
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
--- @field sec integer Exact int32 range -2147483648..2147483647. Whole seconds; signedness/range follow the native
--scalar above.
--- @field nanosec integer Exact uint32 range 0..4294967295. Normalized fractional nanoseconds, inclusive0..999999999.
--- @brief Ros2Builtin_interfacesMsgDuration.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgDuration.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Builtin_interfacesMsgDuration.NATIVE_TYPE: Exact normalized native type name
--builtin_interfaces/msg/Duration.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgDuration.encode
--- @field NATIVE_TYPE string Exact normalized native type name builtin_interfaces/msg/Duration.
--- @brief Ros2Builtin_interfacesMsgDuration.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Builtin_interfacesMsgDuration.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Builtin_interfacesMsgDuration.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
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

--- @class Ros2Std_msgsMsgHeader
--- @brief Complete ROS2 std_msgs/msg/Header value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field stamp table Complete nested builtin_interfaces/msg/Time value; no native fields are projected away.
--- @field frame_id string Strict UTF-8 without NUL; length0..128 bytes.
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
--- @brief Ros2Std_msgsMsgHeader.MAX_WIRE_BYTES: Inclusive complete maximum 140 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Std_msgsMsgHeader.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 140 bytes.
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
--- @return string bytes New immutable string, 12..140 bytes.
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
--- @field positions number[] Finite IEEE float64. At most 8 contiguous elements; holes and extra array keys are
--rejected.
--- @field velocities number[] Finite IEEE float64. At most 8 contiguous elements; holes and extra array keys are
--rejected.
--- @field accelerations number[] Finite IEEE float64. At most 8 contiguous elements; holes and extra array keys are
--rejected.
--- @field effort number[] Finite IEEE float64. At most 8 contiguous elements; holes and extra array keys are rejected.
--- @field time_from_start table Complete nested builtin_interfaces/msg/Duration value; no native fields are projected
--away.
--- @brief Ros2Trajectory_msgsMsgJointTrajectoryPoint.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Trajectory_msgsMsgJointTrajectoryPoint.NATIVE_TYPE: Exact normalized native type name
--trajectory_msgs/msg/JointTrajectoryPoint.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name trajectory_msgs/msg/JointTrajectoryPoint.
--- @brief Ros2Trajectory_msgsMsgJointTrajectoryPoint.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Trajectory_msgsMsgJointTrajectoryPoint.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Trajectory_msgsMsgJointTrajectoryPoint.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros2Trajectory_msgsMsgJointTrajectoryPoint.MAX_WIRE_BYTES: Inclusive complete maximum 280 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectoryPoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 280 bytes.
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
--- @return string bytes New immutable string, 24..280 bytes.
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
--- @field joint_names string[] Strict UTF-8 without NUL; length0..128 bytes. At most 8 contiguous elements; holes and
--extra array keys are rejected.
--- @field points table[] Complete nested trajectory_msgs/msg/JointTrajectoryPoint value; no native fields are projected
--away. At most 1 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Trajectory_msgsMsgJointTrajectory.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Trajectory_msgsMsgJointTrajectory.NATIVE_TYPE: Exact normalized native type name
--trajectory_msgs/msg/JointTrajectory.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field NATIVE_TYPE string Exact normalized native type name trajectory_msgs/msg/JointTrajectory.
--- @brief Ros2Trajectory_msgsMsgJointTrajectory.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Trajectory_msgsMsgJointTrajectory.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Trajectory_msgsMsgJointTrajectory.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Trajectory_msgsMsgJointTrajectory.MAX_WIRE_BYTES: Inclusive complete maximum 1484 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgJointTrajectory.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1484 bytes.
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
--- @return string bytes New immutable string, 20..1484 bytes.
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

--- @class Ros2Geometry_msgsMsgTransform
--- @brief Complete ROS2 geometry_msgs/msg/Transform value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field translation table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected away.
--- @field rotation table Complete nested geometry_msgs/msg/Quaternion value; no native fields are projected away.
--- @brief Ros2Geometry_msgsMsgTransform.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransform.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgTransform.NATIVE_TYPE: Exact normalized native type name geometry_msgs/msg/Transform.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransform.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Transform.
--- @brief Ros2Geometry_msgsMsgTransform.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTransform.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgTransform.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
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

--- @class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
--- @brief Complete ROS2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field transforms table[] Complete nested geometry_msgs/msg/Transform value; no native fields are projected away. At
--most 1 contiguous elements; holes and extra array keys are rejected.
--- @field velocities table[] Complete nested geometry_msgs/msg/Twist value; no native fields are projected away. At
--most 8 contiguous elements; holes and extra array keys are rejected.
--- @field accelerations table[] Complete nested geometry_msgs/msg/Twist value; no native fields are projected away. At
--most 8 contiguous elements; holes and extra array keys are rejected.
--- @field time_from_start table Complete nested builtin_interfaces/msg/Duration value; no native fields are projected
--away.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.NATIVE_TYPE: Exact normalized native type name
--trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.MAX_WIRE_BYTES: Inclusive complete maximum 844 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 844 bytes.
--- @brief Construct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value New mutable complete value; no ROS resource.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.encode
--- @field new fun(values?: table): Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
--- @brief Encode a complete Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 20..844 bytes.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint.decode
--- @field encode fun(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint): string
--- @brief Decode exactly one complete Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value New complete value; failures raise Lua errors.
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
--- @field joint_names string[] Strict UTF-8 without NUL; length0..128 bytes. At most 8 contiguous elements; holes and
--extra array keys are rejected.
--- @field points table[] Complete nested trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value; no native fields are
--projected away. At most 1 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.NATIVE_TYPE: Exact normalized native type name
--trajectory_msgs/msg/MultiDOFJointTrajectory.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field NATIVE_TYPE string Exact normalized native type name trajectory_msgs/msg/MultiDOFJointTrajectory.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.MIN_WIRE_BYTES: Inclusive complete minimum 20 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 20 bytes.
--- @brief Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.MAX_WIRE_BYTES: Inclusive complete maximum 2048 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2048 bytes.
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
--- @return string bytes New immutable string, 20..2048 bytes.
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
--- @field name string Strict UTF-8 without NUL; length0..128 bytes.
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
--- @brief Ros2Control_msgsMsgJointTolerance.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointTolerance.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Control_msgsMsgJointTolerance.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointTolerance.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Control_msgsMsgJointTolerance.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointTolerance.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2Control_msgsMsgJointTolerance.MAX_WIRE_BYTES: Inclusive complete maximum 156 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointTolerance.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 156 bytes.
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
--- @return string bytes New immutable string, 28..156 bytes.
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
--- @field joint_name string Strict UTF-8 without NUL; length0..128 bytes.
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
--- @brief Ros2Control_msgsMsgJointComponentTolerance.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointComponentTolerance.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Control_msgsMsgJointComponentTolerance.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointComponentTolerance.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Control_msgsMsgJointComponentTolerance.MIN_WIRE_BYTES: Inclusive complete minimum 30 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointComponentTolerance.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 30 bytes.
--- @brief Ros2Control_msgsMsgJointComponentTolerance.MAX_WIRE_BYTES: Inclusive complete maximum 158 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsMsgJointComponentTolerance.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 158 bytes.
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
--- @return string bytes New immutable string, 30..158 bytes.
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
--- @field trajectory table Complete nested trajectory_msgs/msg/JointTrajectory value; no native fields are projected
--away.
--- @field multi_dof_trajectory table Complete nested trajectory_msgs/msg/MultiDOFJointTrajectory value; no native
--fields are projected away.
--- @field path_tolerance table[] Complete nested control_msgs/msg/JointTolerance value; no native fields are projected
--away. At most 8 contiguous elements; holes and extra array keys are rejected.
--- @field component_path_tolerance table[] Complete nested control_msgs/msg/JointComponentTolerance value; no native
--fields are projected away. At most 8 contiguous elements; holes and extra array keys are rejected.
--- @field goal_tolerance table[] Complete nested control_msgs/msg/JointTolerance value; no native fields are projected
--away. At most 8 contiguous elements; holes and extra array keys are rejected.
--- @field component_goal_tolerance table[] Complete nested control_msgs/msg/JointComponentTolerance value; no native
--fields are projected away. At most 8 contiguous elements; holes and extra array keys are rejected.
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
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Goal.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Goal.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Goal.MIN_WIRE_BYTES: Inclusive complete minimum 64 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 64 bytes.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Goal.MAX_WIRE_BYTES: Inclusive complete maximum 8580 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8580 bytes.
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
--- @return string bytes New immutable string, 64..8580 bytes.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Goal.decode
--- @field encode fun(value: Ros2Control_msgsActionFollowJointTrajectory_Goal): string
--- @brief Decode exactly one complete Ros2Control_msgsActionFollowJointTrajectory_Goal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Control_msgsActionFollowJointTrajectory_Goal value New complete value; failures raise Lua errors.
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
--- @field error_string string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Result.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Result.NATIVE_TYPE: Exact normalized native type name
--control_msgs/action/FollowJointTrajectory_Result.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field NATIVE_TYPE string Exact normalized native type name control_msgs/action/FollowJointTrajectory_Result.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Result.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Result.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Result.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Result.MAX_WIRE_BYTES: Inclusive complete maximum 264 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 264 bytes.
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
--- @return Ros2Control_msgsActionFollowJointTrajectory_Result value New mutable complete value; no ROS resource.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.encode
--- @field new fun(values?: table): Ros2Control_msgsActionFollowJointTrajectory_Result
--- @brief Encode a complete Ros2Control_msgsActionFollowJointTrajectory_Result value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Control_msgsActionFollowJointTrajectory_Result [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..264 bytes.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Result.decode
--- @field encode fun(value: Ros2Control_msgsActionFollowJointTrajectory_Result): string
--- @brief Decode exactly one complete Ros2Control_msgsActionFollowJointTrajectory_Result canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Control_msgsActionFollowJointTrajectory_Result value New complete value; failures raise Lua errors.
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
--- @field joint_names string[] Strict UTF-8 without NUL; length0..128 bytes. At most 8 contiguous elements; holes and
--extra array keys are rejected.
--- @field desired table Complete nested trajectory_msgs/msg/JointTrajectoryPoint value; no native fields are projected
--away.
--- @field actual table Complete nested trajectory_msgs/msg/JointTrajectoryPoint value; no native fields are projected
--away.
--- @field error table Complete nested trajectory_msgs/msg/JointTrajectoryPoint value; no native fields are projected
--away.
--- @field multi_dof_joint_names string[] Strict UTF-8 without NUL; length0..128 bytes. At most 1 contiguous elements;
--holes and extra array keys are rejected.
--- @field multi_dof_desired table Complete nested trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value; no native
--fields are projected away.
--- @field multi_dof_actual table Complete nested trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value; no native
--fields are projected away.
--- @field multi_dof_error table Complete nested trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value; no native
--fields are projected away.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Feedback.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Feedback.NATIVE_TYPE: Exact normalized native type name
--control_msgs/action/FollowJointTrajectory_Feedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name control_msgs/action/FollowJointTrajectory_Feedback.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Feedback.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Feedback.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Feedback.MIN_WIRE_BYTES: Inclusive complete minimum 152 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 152 bytes.
--- @brief Ros2Control_msgsActionFollowJointTrajectory_Feedback.MAX_WIRE_BYTES: Inclusive complete maximum 4708 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 4708 bytes.
--- @brief Construct Ros2Control_msgsActionFollowJointTrajectory_Feedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Control_msgsActionFollowJointTrajectory_Feedback value New mutable complete value; no ROS resource.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field new fun(values?: table): Ros2Control_msgsActionFollowJointTrajectory_Feedback
--- @brief Encode a complete Ros2Control_msgsActionFollowJointTrajectory_Feedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Control_msgsActionFollowJointTrajectory_Feedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 152..4708 bytes.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.decode
--- @field encode fun(value: Ros2Control_msgsActionFollowJointTrajectory_Feedback): string
--- @brief Decode exactly one complete Ros2Control_msgsActionFollowJointTrajectory_Feedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Control_msgsActionFollowJointTrajectory_Feedback value New complete value; failures raise Lua errors.
--- @see Ros2Control_msgsActionFollowJointTrajectory_Feedback.encode
--- @field decode fun(bytes: string): Ros2Control_msgsActionFollowJointTrajectory_Feedback
local Ros2Control_msgsActionFollowJointTrajectory_Feedback = classes["Ros2Control_msgsActionFollowJointTrajectory_Feedback"]

--- @class Ros2Sensor_msgsMsgJointState
--- @brief Complete ROS2 sensor_msgs/msg/JointState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field name string[] Strict UTF-8 without NUL; length0..128 bytes. At most 8 contiguous elements; holes and extra
--array keys are rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field position number[] Finite IEEE float64. At most 8 contiguous elements; holes and extra array keys are
--rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field velocity number[] Finite IEEE float64. At most 8 contiguous elements; holes and extra array keys are
--rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field effort number[] Finite IEEE float64. At most 8 contiguous elements; holes and extra array keys are rejected.
--Empty is permitted; all nonempty JointState arrays must have equal length.
--- @brief Ros2Sensor_msgsMsgJointState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Sensor_msgsMsgJointState.NATIVE_TYPE: Exact normalized native type name sensor_msgs/msg/JointState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field NATIVE_TYPE string Exact normalized native type name sensor_msgs/msg/JointState.
--- @brief Ros2Sensor_msgsMsgJointState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Sensor_msgsMsgJointState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Sensor_msgsMsgJointState.MIN_WIRE_BYTES: Inclusive complete minimum 28 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 28 bytes.
--- @brief Ros2Sensor_msgsMsgJointState.MAX_WIRE_BYTES: Inclusive complete maximum 1404 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1404 bytes.
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
--- @return string bytes New immutable string, 28..1404 bytes.
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

return classes, by_name
