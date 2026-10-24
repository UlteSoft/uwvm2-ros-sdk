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
        ["symbol"] = "Ros2Franka_msgsActionErrorRecovery_Goal",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/ErrorRecovery_Goal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsActionErrorRecovery_Result",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/ErrorRecovery_Result",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsActionErrorRecovery_Feedback",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/ErrorRecovery_Feedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsMsgGraspEpsilon",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/msg/GraspEpsilon",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "inner",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 0.005,
            },
            {
                ["name"] = "outer",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
                ["default"] = 0.005,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsActionGrasp_Goal",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/Grasp_Goal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f",
        ["minimum"] = 40,
        ["maximum"] = 40,
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
                ["name"] = "epsilon",
                ["type"] = "Ros2Franka_msgsMsgGraspEpsilon",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "speed",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
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
        ["symbol"] = "Ros2Franka_msgsActionGrasp_Result",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/Grasp_Result",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733",
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
        ["symbol"] = "Ros2Franka_msgsActionGrasp_Feedback",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/Grasp_Feedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe",
        ["minimum"] = 8,
        ["maximum"] = 8,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsActionHoming_Goal",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/Homing_Goal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsActionHoming_Result",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/Homing_Result",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c",
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
        ["symbol"] = "Ros2Franka_msgsActionHoming_Feedback",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/Homing_Feedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46",
        ["minimum"] = 8,
        ["maximum"] = 8,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsActionMove_Goal",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/Move_Goal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f",
        ["minimum"] = 16,
        ["maximum"] = 16,
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
                ["name"] = "speed",
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
        ["symbol"] = "Ros2Franka_msgsActionMove_Result",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/Move_Result",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266",
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
        ["symbol"] = "Ros2Franka_msgsActionMove_Feedback",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/Move_Feedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596",
        ["minimum"] = 8,
        ["maximum"] = 8,
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsActionPTPMotion_Goal",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/PTPMotion_Goal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc",
        ["minimum"] = 16,
        ["maximum"] = 128,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "goal_joint_configuration",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "maximum_joint_velocities",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "goal_tolerance",
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
        ["symbol"] = "Ros2Franka_msgsMsgTargetStatus",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/msg/TargetStatus",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "status",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {
            ["IDLE"] = 0,
            ["EXECUTING"] = 1,
            ["TARGET_REACHED"] = 2,
            ["ABORTED"] = 3,
        },
    },
    {
        ["symbol"] = "Ros2Franka_msgsActionPTPMotion_Result",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/PTPMotion_Result",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1",
        ["minimum"] = 5,
        ["maximum"] = 261,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "target_status",
                ["type"] = "Ros2Franka_msgsMsgTargetStatus",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "error_message",
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
        ["symbol"] = "Ros2Franka_msgsActionPTPMotion_Feedback",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/action/PTPMotion_Feedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300",
        ["minimum"] = 1,
        ["maximum"] = 1,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "target_status",
                ["type"] = "Ros2Franka_msgsMsgTargetStatus",
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
        ["symbol"] = "Ros2Franka_msgsMsgCollisionIndicators",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/msg/CollisionIndicators",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1",
        ["minimum"] = 208,
        ["maximum"] = 208,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "is_cartesian_linear_collision",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "is_cartesian_angular_collision",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "is_cartesian_linear_contact",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "is_cartesian_angular_contact",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "is_joint_collision",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "is_joint_contact",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsMsgElbow",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/msg/Elbow",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6",
        ["minimum"] = 80,
        ["maximum"] = 80,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "position",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "desired_position",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "commanded_position",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "commanded_velocity",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "commanded_acceleration",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsMsgErrors",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/msg/Errors",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c",
        ["minimum"] = 36,
        ["maximum"] = 36,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_position_limits_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_position_limits_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "self_collision_avoidance_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joint_velocity_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_velocity_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "force_control_safety_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joint_reflex",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_reflex",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "max_goal_pose_deviation_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "max_path_pose_deviation_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_velocity_profile_safety_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joint_position_motion_generator_start_pose_invalid",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joint_motion_generator_position_limits_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joint_motion_generator_velocity_limits_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joint_motion_generator_velocity_discontinuity",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joint_motion_generator_acceleration_discontinuity",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_position_motion_generator_start_pose_invalid",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_motion_generator_elbow_limit_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_motion_generator_velocity_limits_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_motion_generator_velocity_discontinuity",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_motion_generator_acceleration_discontinuity",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_motion_generator_elbow_sign_inconsistent",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_motion_generator_start_elbow_invalid",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_motion_generator_joint_position_limits_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_motion_generator_joint_velocity_limits_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_motion_generator_joint_velocity_discontinuity",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_motion_generator_joint_acceleration_discontinuity",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_position_motion_generator_invalid_frame",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "force_controller_desired_force_tolerance_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "controller_torque_discontinuity",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "start_elbow_sign_inconsistent",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "communication_constraints_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "power_limit_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joint_p2p_insufficient_torque_for_planning",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "tau_j_range_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "instability_detected",
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
        ["symbol"] = "Ros2Sensor_msgsMsgJointState",
        ["ros_version"] = 2,
        ["native_type"] = "sensor_msgs/msg/JointState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3",
        ["minimum"] = 28,
        ["maximum"] = 1248,
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
                ["count"] = 7,
                ["string_bound"] = 128,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "position",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "velocity",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "effort",
                ["type"] = "float64",
                ["array"] = "sequence",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
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
        ["codec_identity"] = "UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66",
        ["minimum"] = 60,
        ["maximum"] = 188,
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
        ["symbol"] = "Ros2Geometry_msgsMsgInertia",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Inertia",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a",
        ["minimum"] = 80,
        ["maximum"] = 80,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "m",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "com",
                ["type"] = "Ros2Geometry_msgsMsgVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "ixx",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "ixy",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "ixz",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "iyy",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "iyz",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "izz",
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
        ["symbol"] = "Ros2Geometry_msgsMsgInertiaStamped",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/InertiaStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576",
        ["minimum"] = 92,
        ["maximum"] = 220,
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
                ["name"] = "inertia",
                ["type"] = "Ros2Geometry_msgsMsgInertia",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 80,
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
        ["codec_identity"] = "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2",
        ["minimum"] = 68,
        ["maximum"] = 196,
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
        ["codec_identity"] = "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573",
        ["minimum"] = 60,
        ["maximum"] = 188,
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
        ["symbol"] = "Ros2Geometry_msgsMsgAccel",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Accel",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde",
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
        ["symbol"] = "Ros2Geometry_msgsMsgAccelStamped",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/AccelStamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899",
        ["minimum"] = 60,
        ["maximum"] = 188,
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
                ["name"] = "accel",
                ["type"] = "Ros2Geometry_msgsMsgAccel",
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
        ["symbol"] = "Ros2Geometry_msgsMsgVector3Stamped",
        ["ros_version"] = 2,
        ["native_type"] = "geometry_msgs/msg/Vector3Stamped",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b",
        ["minimum"] = 36,
        ["maximum"] = 164,
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
                ["name"] = "vector",
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
        ["symbol"] = "Ros2Franka_msgsMsgFrankaRobotState",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/msg/FrankaRobotState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282",
        ["minimum"] = 1961,
        ["maximum"] = 10169,
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
                ["name"] = "collision_indicators",
                ["type"] = "Ros2Franka_msgsMsgCollisionIndicators",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 208,
            },
            {
                ["name"] = "measured_joint_state",
                ["type"] = "Ros2Sensor_msgsMsgJointState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "desired_joint_state",
                ["type"] = "Ros2Sensor_msgsMsgJointState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "measured_joint_motor_state",
                ["type"] = "Ros2Sensor_msgsMsgJointState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "ddq_d",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "dtau_j",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_ext_hat_filtered",
                ["type"] = "Ros2Sensor_msgsMsgJointState",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 28,
            },
            {
                ["name"] = "elbow",
                ["type"] = "Ros2Franka_msgsMsgElbow",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 80,
            },
            {
                ["name"] = "k_f_ext_hat_k",
                ["type"] = "Ros2Geometry_msgsMsgWrenchStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 60,
            },
            {
                ["name"] = "o_f_ext_hat_k",
                ["type"] = "Ros2Geometry_msgsMsgWrenchStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 60,
            },
            {
                ["name"] = "inertia_ee",
                ["type"] = "Ros2Geometry_msgsMsgInertiaStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 92,
            },
            {
                ["name"] = "inertia_load",
                ["type"] = "Ros2Geometry_msgsMsgInertiaStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 92,
            },
            {
                ["name"] = "inertia_total",
                ["type"] = "Ros2Geometry_msgsMsgInertiaStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 92,
            },
            {
                ["name"] = "o_t_ee",
                ["type"] = "Ros2Geometry_msgsMsgPoseStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 68,
            },
            {
                ["name"] = "o_t_ee_d",
                ["type"] = "Ros2Geometry_msgsMsgPoseStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 68,
            },
            {
                ["name"] = "o_t_ee_c",
                ["type"] = "Ros2Geometry_msgsMsgPoseStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 68,
            },
            {
                ["name"] = "f_t_ee",
                ["type"] = "Ros2Geometry_msgsMsgPoseStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 68,
            },
            {
                ["name"] = "ee_t_k",
                ["type"] = "Ros2Geometry_msgsMsgPoseStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 68,
            },
            {
                ["name"] = "o_dp_ee_d",
                ["type"] = "Ros2Geometry_msgsMsgTwistStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 60,
            },
            {
                ["name"] = "o_dp_ee_c",
                ["type"] = "Ros2Geometry_msgsMsgTwistStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 60,
            },
            {
                ["name"] = "o_ddp_ee_c",
                ["type"] = "Ros2Geometry_msgsMsgAccelStamped",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 60,
            },
            {
                ["name"] = "time",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "control_command_success_rate",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "robot_mode",
                ["type"] = "uint8",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "current_errors",
                ["type"] = "Ros2Franka_msgsMsgErrors",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 36,
            },
            {
                ["name"] = "last_motion_errors",
                ["type"] = "Ros2Franka_msgsMsgErrors",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 36,
            },
            {
                ["name"] = "accelerometer_top",
                ["type"] = "Ros2Geometry_msgsMsgVector3Stamped",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 36,
            },
            {
                ["name"] = "accelerometer_bottom",
                ["type"] = "Ros2Geometry_msgsMsgVector3Stamped",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 36,
            },
        },
        ["constants"] = {
            ["ROBOT_MODE_OTHER"] = 0,
            ["ROBOT_MODE_IDLE"] = 1,
            ["ROBOT_MODE_MOVE"] = 2,
            ["ROBOT_MODE_GUIDING"] = 3,
            ["ROBOT_MODE_REFLEX"] = 4,
            ["ROBOT_MODE_USER_STOPPED"] = 5,
            ["ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY"] = 6,
        },
    },
    {
        ["symbol"] = "Ros2Franka_msgsSrvSetCartesianStiffness_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetCartesianStiffness_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260",
        ["minimum"] = 48,
        ["maximum"] = 48,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "cartesian_stiffness",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsSrvSetCartesianStiffness_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetCartesianStiffness_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa",
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
        ["symbol"] = "Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetForceTorqueCollisionBehavior_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c",
        ["minimum"] = 208,
        ["maximum"] = 208,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "lower_torque_thresholds_nominal",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "upper_torque_thresholds_nominal",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "lower_force_thresholds_nominal",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "upper_force_thresholds_nominal",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetForceTorqueCollisionBehavior_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a",
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
        ["symbol"] = "Ros2Franka_msgsSrvSetFullCollisionBehavior_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetFullCollisionBehavior_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824",
        ["minimum"] = 416,
        ["maximum"] = 416,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "lower_torque_thresholds_acceleration",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "upper_torque_thresholds_acceleration",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "lower_torque_thresholds_nominal",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "upper_torque_thresholds_nominal",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "lower_force_thresholds_acceleration",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "upper_force_thresholds_acceleration",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "lower_force_thresholds_nominal",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "upper_force_thresholds_nominal",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsSrvSetFullCollisionBehavior_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetFullCollisionBehavior_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300",
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
        ["symbol"] = "Ros2Franka_msgsSrvSetJointStiffness_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetJointStiffness_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "joint_stiffness",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsSrvSetJointStiffness_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetJointStiffness_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d",
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
        ["symbol"] = "Ros2Franka_msgsSrvSetLoad_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetLoad_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8",
        ["minimum"] = 104,
        ["maximum"] = 104,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "mass",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "center_of_mass",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "load_inertia",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 9,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsSrvSetLoad_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetLoad_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf",
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
        ["symbol"] = "Ros2Franka_msgsSrvSetStiffnessFrame_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetStiffnessFrame_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402",
        ["minimum"] = 128,
        ["maximum"] = 128,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "transformation",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsSrvSetStiffnessFrame_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetStiffnessFrame_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744",
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
        ["symbol"] = "Ros2Franka_msgsSrvSetTCPFrame_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetTCPFrame_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f",
        ["minimum"] = 128,
        ["maximum"] = 128,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "transformation",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_msgsSrvSetTCPFrame_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_msgs/srv/SetTCPFrame_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38",
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
        ["symbol"] = "Ros2Franka_spine_msgsActionMoveAbsolute_Goal",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/action/MoveAbsolute_Goal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13",
        ["minimum"] = 32,
        ["maximum"] = 32,
        ["semantics"] = "",
        ["fields"] = {
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
            {
                ["name"] = "deceleration",
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
        ["symbol"] = "Ros2Franka_spine_msgsActionMoveAbsolute_Result",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/action/MoveAbsolute_Result",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5",
        ["minimum"] = 9,
        ["maximum"] = 521,
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
                ["name"] = "stop_by",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
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
        ["symbol"] = "Ros2Franka_spine_msgsActionMoveAbsolute_Feedback",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/action/MoveAbsolute_Feedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929",
        ["minimum"] = 8,
        ["maximum"] = 8,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "current_position",
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
        ["symbol"] = "Ros2Franka_spine_msgsMsgUserLimits",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/msg/UserLimits",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "lower_limit",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "upper_limit",
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
        ["symbol"] = "Ros2Franka_spine_msgsMsgSpineParameters",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/msg/SpineParameters",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223",
        ["minimum"] = 16,
        ["maximum"] = 16,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "user_limits",
                ["type"] = "Ros2Franka_spine_msgsMsgUserLimits",
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
        ["symbol"] = "Ros2Franka_spine_msgsMsgSpinePosition",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/msg/SpinePosition",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775",
        ["minimum"] = 21,
        ["maximum"] = 149,
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
                ["name"] = "position",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "valid",
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
        ["symbol"] = "Ros2Franka_spine_msgsMsgSpineState",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/msg/SpineState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441",
        ["minimum"] = 25,
        ["maximum"] = 921,
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
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "error_code",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "error_description",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "valid",
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
        ["symbol"] = "Ros2Franka_spine_msgsSrvFaultReset_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/FaultReset_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_spine_msgsSrvFaultReset_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/FaultReset_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c",
        ["minimum"] = 9,
        ["maximum"] = 521,
        ["semantics"] = "",
        ["fields"] = {
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_spine_msgsSrvGetParameters_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/GetParameters_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_spine_msgsSrvGetParameters_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/GetParameters_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed",
        ["minimum"] = 21,
        ["maximum"] = 277,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "parameters",
                ["type"] = "Ros2Franka_spine_msgsMsgSpineParameters",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
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
        ["symbol"] = "Ros2Franka_spine_msgsSrvGetPosition_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/GetPosition_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_spine_msgsSrvGetPosition_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/GetPosition_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8",
        ["minimum"] = 9,
        ["maximum"] = 9,
        ["semantics"] = "",
        ["fields"] = {
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
        ["symbol"] = "Ros2Franka_spine_msgsSrvGetSpineState_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/GetSpineState_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_spine_msgsSrvGetSpineState_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/GetSpineState_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1",
        ["minimum"] = 13,
        ["maximum"] = 781,
        ["semantics"] = "",
        ["fields"] = {
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
                ["name"] = "error_code",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "error_description",
                ["type"] = "string",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 256,
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
        ["symbol"] = "Ros2Franka_spine_msgsSrvHalt_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/Halt_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_spine_msgsSrvHalt_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/Halt_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77",
        ["minimum"] = 9,
        ["maximum"] = 521,
        ["semantics"] = "",
        ["fields"] = {
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_spine_msgsSrvSwitchOff_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/SwitchOff_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_spine_msgsSrvSwitchOff_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/SwitchOff_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad",
        ["minimum"] = 9,
        ["maximum"] = 521,
        ["semantics"] = "",
        ["fields"] = {
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
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_spine_msgsSrvSwitchOn_Request",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/SwitchOn_Request",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Franka_spine_msgsSrvSwitchOn_Response",
        ["ros_version"] = 2,
        ["native_type"] = "franka_spine_msgs/srv/SwitchOn_Response",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d",
        ["minimum"] = 9,
        ["maximum"] = 521,
        ["semantics"] = "",
        ["fields"] = {
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

--- @class Ros2Franka_msgsActionErrorRecovery_Goal
--- @brief Complete ROS2 franka_msgs/action/ErrorRecovery_Goal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Franka_msgsActionErrorRecovery_Goal.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Goal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionErrorRecovery_Goal.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/ErrorRecovery_Goal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Goal.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/ErrorRecovery_Goal.
--- @brief Ros2Franka_msgsActionErrorRecovery_Goal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Goal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionErrorRecovery_Goal.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Goal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionErrorRecovery_Goal.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Goal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Franka_msgsActionErrorRecovery_Goal.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Goal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Franka_msgsActionErrorRecovery_Goal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionErrorRecovery_Goal value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionErrorRecovery_Goal.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionErrorRecovery_Goal
--- @brief Encode a complete Ros2Franka_msgsActionErrorRecovery_Goal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionErrorRecovery_Goal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Franka_msgsActionErrorRecovery_Goal.decode
--- @field encode fun(value: Ros2Franka_msgsActionErrorRecovery_Goal): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionErrorRecovery_Goal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionErrorRecovery_Goal value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionErrorRecovery_Goal.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionErrorRecovery_Goal
local Ros2Franka_msgsActionErrorRecovery_Goal = classes["Ros2Franka_msgsActionErrorRecovery_Goal"]

--- @class Ros2Franka_msgsActionErrorRecovery_Result
--- @brief Complete ROS2 franka_msgs/action/ErrorRecovery_Result value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Franka_msgsActionErrorRecovery_Result.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Result.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionErrorRecovery_Result.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/ErrorRecovery_Result.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Result.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/ErrorRecovery_Result.
--- @brief Ros2Franka_msgsActionErrorRecovery_Result.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Result.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionErrorRecovery_Result.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Result.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionErrorRecovery_Result.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Result.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Franka_msgsActionErrorRecovery_Result.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Result.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Franka_msgsActionErrorRecovery_Result with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionErrorRecovery_Result value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionErrorRecovery_Result.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionErrorRecovery_Result
--- @brief Encode a complete Ros2Franka_msgsActionErrorRecovery_Result value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionErrorRecovery_Result [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Franka_msgsActionErrorRecovery_Result.decode
--- @field encode fun(value: Ros2Franka_msgsActionErrorRecovery_Result): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionErrorRecovery_Result canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionErrorRecovery_Result value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionErrorRecovery_Result.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionErrorRecovery_Result
local Ros2Franka_msgsActionErrorRecovery_Result = classes["Ros2Franka_msgsActionErrorRecovery_Result"]

--- @class Ros2Franka_msgsActionErrorRecovery_Feedback
--- @brief Complete ROS2 franka_msgs/action/ErrorRecovery_Feedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Franka_msgsActionErrorRecovery_Feedback.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Feedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionErrorRecovery_Feedback.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/ErrorRecovery_Feedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Feedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/ErrorRecovery_Feedback.
--- @brief Ros2Franka_msgsActionErrorRecovery_Feedback.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Feedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionErrorRecovery_Feedback.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Feedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionErrorRecovery_Feedback.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Feedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Franka_msgsActionErrorRecovery_Feedback.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionErrorRecovery_Feedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Franka_msgsActionErrorRecovery_Feedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionErrorRecovery_Feedback value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionErrorRecovery_Feedback.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionErrorRecovery_Feedback
--- @brief Encode a complete Ros2Franka_msgsActionErrorRecovery_Feedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionErrorRecovery_Feedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Franka_msgsActionErrorRecovery_Feedback.decode
--- @field encode fun(value: Ros2Franka_msgsActionErrorRecovery_Feedback): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionErrorRecovery_Feedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionErrorRecovery_Feedback value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionErrorRecovery_Feedback.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionErrorRecovery_Feedback
local Ros2Franka_msgsActionErrorRecovery_Feedback = classes["Ros2Franka_msgsActionErrorRecovery_Feedback"]

--- @class Ros2Franka_msgsMsgGraspEpsilon
--- @brief Complete ROS2 franka_msgs/msg/GraspEpsilon value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field inner number Finite IEEE float64. Declared native scalar default: 0.005.
--- @field outer number Finite IEEE float64. Declared native scalar default: 0.005.
--- @brief Ros2Franka_msgsMsgGraspEpsilon.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgGraspEpsilon.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsMsgGraspEpsilon.NATIVE_TYPE: Exact normalized native type name franka_msgs/msg/GraspEpsilon.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgGraspEpsilon.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/msg/GraspEpsilon.
--- @brief Ros2Franka_msgsMsgGraspEpsilon.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgGraspEpsilon.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsMsgGraspEpsilon.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgGraspEpsilon.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsMsgGraspEpsilon.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgGraspEpsilon.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Franka_msgsMsgGraspEpsilon.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgGraspEpsilon.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Franka_msgsMsgGraspEpsilon with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsMsgGraspEpsilon value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsMsgGraspEpsilon.encode
--- @field new fun(values?: table): Ros2Franka_msgsMsgGraspEpsilon
--- @brief Encode a complete Ros2Franka_msgsMsgGraspEpsilon value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsMsgGraspEpsilon [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Franka_msgsMsgGraspEpsilon.decode
--- @field encode fun(value: Ros2Franka_msgsMsgGraspEpsilon): string
--- @brief Decode exactly one complete Ros2Franka_msgsMsgGraspEpsilon canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsMsgGraspEpsilon value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsMsgGraspEpsilon.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsMsgGraspEpsilon
local Ros2Franka_msgsMsgGraspEpsilon = classes["Ros2Franka_msgsMsgGraspEpsilon"]

--- @class Ros2Franka_msgsActionGrasp_Goal
--- @brief Complete ROS2 franka_msgs/action/Grasp_Goal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field width number Finite IEEE float64.
--- @field epsilon table Complete nested franka_msgs/msg/GraspEpsilon value; no native fields are projected away.
--- @field speed number Finite IEEE float64.
--- @field force number Finite IEEE float64.
--- @brief Ros2Franka_msgsActionGrasp_Goal.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Goal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionGrasp_Goal.NATIVE_TYPE: Exact normalized native type name franka_msgs/action/Grasp_Goal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Goal.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/Grasp_Goal.
--- @brief Ros2Franka_msgsActionGrasp_Goal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Goal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionGrasp_Goal.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Goal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionGrasp_Goal.MIN_WIRE_BYTES: Inclusive complete minimum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Goal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 40 bytes.
--- @brief Ros2Franka_msgsActionGrasp_Goal.MAX_WIRE_BYTES: Inclusive complete maximum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Goal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 40 bytes.
--- @brief Construct Ros2Franka_msgsActionGrasp_Goal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionGrasp_Goal value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionGrasp_Goal.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionGrasp_Goal
--- @brief Encode a complete Ros2Franka_msgsActionGrasp_Goal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionGrasp_Goal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 40..40 bytes.
--- @see Ros2Franka_msgsActionGrasp_Goal.decode
--- @field encode fun(value: Ros2Franka_msgsActionGrasp_Goal): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionGrasp_Goal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionGrasp_Goal value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionGrasp_Goal.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionGrasp_Goal
local Ros2Franka_msgsActionGrasp_Goal = classes["Ros2Franka_msgsActionGrasp_Goal"]

--- @class Ros2Franka_msgsActionGrasp_Result
--- @brief Complete ROS2 franka_msgs/action/Grasp_Result value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_msgsActionGrasp_Result.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Result.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionGrasp_Result.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/Grasp_Result.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Result.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/Grasp_Result.
--- @brief Ros2Franka_msgsActionGrasp_Result.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Result.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionGrasp_Result.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Result.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionGrasp_Result.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Result.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Franka_msgsActionGrasp_Result.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Result.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Franka_msgsActionGrasp_Result with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionGrasp_Result value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionGrasp_Result.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionGrasp_Result
--- @brief Encode a complete Ros2Franka_msgsActionGrasp_Result value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionGrasp_Result [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Franka_msgsActionGrasp_Result.decode
--- @field encode fun(value: Ros2Franka_msgsActionGrasp_Result): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionGrasp_Result canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionGrasp_Result value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionGrasp_Result.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionGrasp_Result
local Ros2Franka_msgsActionGrasp_Result = classes["Ros2Franka_msgsActionGrasp_Result"]

--- @class Ros2Franka_msgsActionGrasp_Feedback
--- @brief Complete ROS2 franka_msgs/action/Grasp_Feedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field current_width number Finite IEEE float64.
--- @brief Ros2Franka_msgsActionGrasp_Feedback.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Feedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionGrasp_Feedback.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/Grasp_Feedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Feedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/Grasp_Feedback.
--- @brief Ros2Franka_msgsActionGrasp_Feedback.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Feedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionGrasp_Feedback.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Feedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionGrasp_Feedback.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Feedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Franka_msgsActionGrasp_Feedback.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionGrasp_Feedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Franka_msgsActionGrasp_Feedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionGrasp_Feedback value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionGrasp_Feedback.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionGrasp_Feedback
--- @brief Encode a complete Ros2Franka_msgsActionGrasp_Feedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionGrasp_Feedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Franka_msgsActionGrasp_Feedback.decode
--- @field encode fun(value: Ros2Franka_msgsActionGrasp_Feedback): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionGrasp_Feedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionGrasp_Feedback value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionGrasp_Feedback.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionGrasp_Feedback
local Ros2Franka_msgsActionGrasp_Feedback = classes["Ros2Franka_msgsActionGrasp_Feedback"]

--- @class Ros2Franka_msgsActionHoming_Goal
--- @brief Complete ROS2 franka_msgs/action/Homing_Goal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Franka_msgsActionHoming_Goal.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Goal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionHoming_Goal.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/Homing_Goal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Goal.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/Homing_Goal.
--- @brief Ros2Franka_msgsActionHoming_Goal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Goal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionHoming_Goal.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Goal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionHoming_Goal.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Goal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Franka_msgsActionHoming_Goal.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Goal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Franka_msgsActionHoming_Goal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionHoming_Goal value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionHoming_Goal.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionHoming_Goal
--- @brief Encode a complete Ros2Franka_msgsActionHoming_Goal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionHoming_Goal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Franka_msgsActionHoming_Goal.decode
--- @field encode fun(value: Ros2Franka_msgsActionHoming_Goal): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionHoming_Goal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionHoming_Goal value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionHoming_Goal.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionHoming_Goal
local Ros2Franka_msgsActionHoming_Goal = classes["Ros2Franka_msgsActionHoming_Goal"]

--- @class Ros2Franka_msgsActionHoming_Result
--- @brief Complete ROS2 franka_msgs/action/Homing_Result value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_msgsActionHoming_Result.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Result.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionHoming_Result.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/Homing_Result.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Result.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/Homing_Result.
--- @brief Ros2Franka_msgsActionHoming_Result.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Result.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionHoming_Result.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Result.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionHoming_Result.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Result.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Franka_msgsActionHoming_Result.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Result.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Franka_msgsActionHoming_Result with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionHoming_Result value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionHoming_Result.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionHoming_Result
--- @brief Encode a complete Ros2Franka_msgsActionHoming_Result value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionHoming_Result [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Franka_msgsActionHoming_Result.decode
--- @field encode fun(value: Ros2Franka_msgsActionHoming_Result): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionHoming_Result canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionHoming_Result value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionHoming_Result.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionHoming_Result
local Ros2Franka_msgsActionHoming_Result = classes["Ros2Franka_msgsActionHoming_Result"]

--- @class Ros2Franka_msgsActionHoming_Feedback
--- @brief Complete ROS2 franka_msgs/action/Homing_Feedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field current_width number Finite IEEE float64.
--- @brief Ros2Franka_msgsActionHoming_Feedback.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Feedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionHoming_Feedback.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/Homing_Feedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Feedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/Homing_Feedback.
--- @brief Ros2Franka_msgsActionHoming_Feedback.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Feedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionHoming_Feedback.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Feedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionHoming_Feedback.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Feedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Franka_msgsActionHoming_Feedback.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionHoming_Feedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Franka_msgsActionHoming_Feedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionHoming_Feedback value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionHoming_Feedback.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionHoming_Feedback
--- @brief Encode a complete Ros2Franka_msgsActionHoming_Feedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionHoming_Feedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Franka_msgsActionHoming_Feedback.decode
--- @field encode fun(value: Ros2Franka_msgsActionHoming_Feedback): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionHoming_Feedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionHoming_Feedback value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionHoming_Feedback.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionHoming_Feedback
local Ros2Franka_msgsActionHoming_Feedback = classes["Ros2Franka_msgsActionHoming_Feedback"]

--- @class Ros2Franka_msgsActionMove_Goal
--- @brief Complete ROS2 franka_msgs/action/Move_Goal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field width number Finite IEEE float64.
--- @field speed number Finite IEEE float64.
--- @brief Ros2Franka_msgsActionMove_Goal.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Goal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionMove_Goal.NATIVE_TYPE: Exact normalized native type name franka_msgs/action/Move_Goal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Goal.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/Move_Goal.
--- @brief Ros2Franka_msgsActionMove_Goal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Goal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionMove_Goal.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Goal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionMove_Goal.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Goal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Franka_msgsActionMove_Goal.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Goal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Franka_msgsActionMove_Goal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionMove_Goal value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionMove_Goal.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionMove_Goal
--- @brief Encode a complete Ros2Franka_msgsActionMove_Goal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionMove_Goal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Franka_msgsActionMove_Goal.decode
--- @field encode fun(value: Ros2Franka_msgsActionMove_Goal): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionMove_Goal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionMove_Goal value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionMove_Goal.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionMove_Goal
local Ros2Franka_msgsActionMove_Goal = classes["Ros2Franka_msgsActionMove_Goal"]

--- @class Ros2Franka_msgsActionMove_Result
--- @brief Complete ROS2 franka_msgs/action/Move_Result value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_msgsActionMove_Result.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Result.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionMove_Result.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/Move_Result.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Result.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/Move_Result.
--- @brief Ros2Franka_msgsActionMove_Result.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Result.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionMove_Result.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Result.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionMove_Result.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Result.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Franka_msgsActionMove_Result.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Result.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Franka_msgsActionMove_Result with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionMove_Result value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionMove_Result.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionMove_Result
--- @brief Encode a complete Ros2Franka_msgsActionMove_Result value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionMove_Result [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Franka_msgsActionMove_Result.decode
--- @field encode fun(value: Ros2Franka_msgsActionMove_Result): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionMove_Result canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionMove_Result value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionMove_Result.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionMove_Result
local Ros2Franka_msgsActionMove_Result = classes["Ros2Franka_msgsActionMove_Result"]

--- @class Ros2Franka_msgsActionMove_Feedback
--- @brief Complete ROS2 franka_msgs/action/Move_Feedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field current_width number Finite IEEE float64.
--- @brief Ros2Franka_msgsActionMove_Feedback.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Feedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionMove_Feedback.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/Move_Feedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Feedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/Move_Feedback.
--- @brief Ros2Franka_msgsActionMove_Feedback.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Feedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionMove_Feedback.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Feedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionMove_Feedback.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Feedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Franka_msgsActionMove_Feedback.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionMove_Feedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Franka_msgsActionMove_Feedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionMove_Feedback value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionMove_Feedback.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionMove_Feedback
--- @brief Encode a complete Ros2Franka_msgsActionMove_Feedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionMove_Feedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Franka_msgsActionMove_Feedback.decode
--- @field encode fun(value: Ros2Franka_msgsActionMove_Feedback): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionMove_Feedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionMove_Feedback value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionMove_Feedback.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionMove_Feedback
local Ros2Franka_msgsActionMove_Feedback = classes["Ros2Franka_msgsActionMove_Feedback"]

--- @class Ros2Franka_msgsActionPTPMotion_Goal
--- @brief Complete ROS2 franka_msgs/action/PTPMotion_Goal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field goal_joint_configuration number[] Finite IEEE float64. At most 7 contiguous elements; holes and extra array
--keys are rejected.
--- @field maximum_joint_velocities number[] Finite IEEE float64. At most 7 contiguous elements; holes and extra array
--keys are rejected.
--- @field goal_tolerance number Finite IEEE float64.
--- @brief Ros2Franka_msgsActionPTPMotion_Goal.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Goal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionPTPMotion_Goal.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/PTPMotion_Goal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Goal.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/PTPMotion_Goal.
--- @brief Ros2Franka_msgsActionPTPMotion_Goal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Goal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionPTPMotion_Goal.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Goal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionPTPMotion_Goal.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Goal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Franka_msgsActionPTPMotion_Goal.MAX_WIRE_BYTES: Inclusive complete maximum 128 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Goal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 128 bytes.
--- @brief Construct Ros2Franka_msgsActionPTPMotion_Goal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionPTPMotion_Goal value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionPTPMotion_Goal.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionPTPMotion_Goal
--- @brief Encode a complete Ros2Franka_msgsActionPTPMotion_Goal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionPTPMotion_Goal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..128 bytes.
--- @see Ros2Franka_msgsActionPTPMotion_Goal.decode
--- @field encode fun(value: Ros2Franka_msgsActionPTPMotion_Goal): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionPTPMotion_Goal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionPTPMotion_Goal value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionPTPMotion_Goal.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionPTPMotion_Goal
local Ros2Franka_msgsActionPTPMotion_Goal = classes["Ros2Franka_msgsActionPTPMotion_Goal"]

--- @class Ros2Franka_msgsMsgTargetStatus
--- @brief Complete ROS2 franka_msgs/msg/TargetStatus value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field status integer Exact uint8 range 0..255.
--- @brief Ros2Franka_msgsMsgTargetStatus.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgTargetStatus.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsMsgTargetStatus.NATIVE_TYPE: Exact normalized native type name franka_msgs/msg/TargetStatus.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgTargetStatus.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/msg/TargetStatus.
--- @brief Ros2Franka_msgsMsgTargetStatus.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgTargetStatus.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsMsgTargetStatus.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgTargetStatus.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsMsgTargetStatus.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgTargetStatus.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Franka_msgsMsgTargetStatus.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgTargetStatus.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Native class constant Ros2Franka_msgsMsgTargetStatus.IDLE.
--- @details Original uint8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Franka_msgsMsgTargetStatus.new
--- @field IDLE integer
--- @brief Native class constant Ros2Franka_msgsMsgTargetStatus.EXECUTING.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Franka_msgsMsgTargetStatus.new
--- @field EXECUTING integer
--- @brief Native class constant Ros2Franka_msgsMsgTargetStatus.TARGET_REACHED.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Franka_msgsMsgTargetStatus.new
--- @field TARGET_REACHED integer
--- @brief Native class constant Ros2Franka_msgsMsgTargetStatus.ABORTED.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Franka_msgsMsgTargetStatus.new
--- @field ABORTED integer
--- @brief Construct Ros2Franka_msgsMsgTargetStatus with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsMsgTargetStatus value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsMsgTargetStatus.encode
--- @field new fun(values?: table): Ros2Franka_msgsMsgTargetStatus
--- @brief Encode a complete Ros2Franka_msgsMsgTargetStatus value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsMsgTargetStatus [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Franka_msgsMsgTargetStatus.decode
--- @field encode fun(value: Ros2Franka_msgsMsgTargetStatus): string
--- @brief Decode exactly one complete Ros2Franka_msgsMsgTargetStatus canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsMsgTargetStatus value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsMsgTargetStatus.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsMsgTargetStatus
local Ros2Franka_msgsMsgTargetStatus = classes["Ros2Franka_msgsMsgTargetStatus"]

--- @class Ros2Franka_msgsActionPTPMotion_Result
--- @brief Complete ROS2 franka_msgs/action/PTPMotion_Result value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field target_status table Complete nested franka_msgs/msg/TargetStatus value; no native fields are projected away.
--- @field error_message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_msgsActionPTPMotion_Result.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Result.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionPTPMotion_Result.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/PTPMotion_Result.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Result.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/PTPMotion_Result.
--- @brief Ros2Franka_msgsActionPTPMotion_Result.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Result.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionPTPMotion_Result.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Result.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionPTPMotion_Result.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Result.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Franka_msgsActionPTPMotion_Result.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Result.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Franka_msgsActionPTPMotion_Result with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionPTPMotion_Result value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionPTPMotion_Result.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionPTPMotion_Result
--- @brief Encode a complete Ros2Franka_msgsActionPTPMotion_Result value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionPTPMotion_Result [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Franka_msgsActionPTPMotion_Result.decode
--- @field encode fun(value: Ros2Franka_msgsActionPTPMotion_Result): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionPTPMotion_Result canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionPTPMotion_Result value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionPTPMotion_Result.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionPTPMotion_Result
local Ros2Franka_msgsActionPTPMotion_Result = classes["Ros2Franka_msgsActionPTPMotion_Result"]

--- @class Ros2Franka_msgsActionPTPMotion_Feedback
--- @brief Complete ROS2 franka_msgs/action/PTPMotion_Feedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field target_status table Complete nested franka_msgs/msg/TargetStatus value; no native fields are projected away.
--- @brief Ros2Franka_msgsActionPTPMotion_Feedback.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Feedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsActionPTPMotion_Feedback.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/action/PTPMotion_Feedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Feedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/action/PTPMotion_Feedback.
--- @brief Ros2Franka_msgsActionPTPMotion_Feedback.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Feedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsActionPTPMotion_Feedback.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Feedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsActionPTPMotion_Feedback.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Feedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros2Franka_msgsActionPTPMotion_Feedback.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsActionPTPMotion_Feedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Construct Ros2Franka_msgsActionPTPMotion_Feedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsActionPTPMotion_Feedback value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsActionPTPMotion_Feedback.encode
--- @field new fun(values?: table): Ros2Franka_msgsActionPTPMotion_Feedback
--- @brief Encode a complete Ros2Franka_msgsActionPTPMotion_Feedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsActionPTPMotion_Feedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros2Franka_msgsActionPTPMotion_Feedback.decode
--- @field encode fun(value: Ros2Franka_msgsActionPTPMotion_Feedback): string
--- @brief Decode exactly one complete Ros2Franka_msgsActionPTPMotion_Feedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsActionPTPMotion_Feedback value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsActionPTPMotion_Feedback.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsActionPTPMotion_Feedback
local Ros2Franka_msgsActionPTPMotion_Feedback = classes["Ros2Franka_msgsActionPTPMotion_Feedback"]

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

--- @class Ros2Franka_msgsMsgCollisionIndicators
--- @brief Complete ROS2 franka_msgs/msg/CollisionIndicators value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field is_cartesian_linear_collision table Complete nested geometry_msgs/msg/Vector3 value; no native fields are
--projected away.
--- @field is_cartesian_angular_collision table Complete nested geometry_msgs/msg/Vector3 value; no native fields are
--projected away.
--- @field is_cartesian_linear_contact table Complete nested geometry_msgs/msg/Vector3 value; no native fields are
--projected away.
--- @field is_cartesian_angular_contact table Complete nested geometry_msgs/msg/Vector3 value; no native fields are
--projected away.
--- @field is_joint_collision number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys
--are rejected.
--- @field is_joint_contact number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are
--rejected.
--- @brief Ros2Franka_msgsMsgCollisionIndicators.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgCollisionIndicators.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsMsgCollisionIndicators.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/msg/CollisionIndicators.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgCollisionIndicators.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/msg/CollisionIndicators.
--- @brief Ros2Franka_msgsMsgCollisionIndicators.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgCollisionIndicators.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsMsgCollisionIndicators.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgCollisionIndicators.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsMsgCollisionIndicators.MIN_WIRE_BYTES: Inclusive complete minimum 208 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgCollisionIndicators.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 208 bytes.
--- @brief Ros2Franka_msgsMsgCollisionIndicators.MAX_WIRE_BYTES: Inclusive complete maximum 208 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgCollisionIndicators.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 208 bytes.
--- @brief Construct Ros2Franka_msgsMsgCollisionIndicators with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsMsgCollisionIndicators value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsMsgCollisionIndicators.encode
--- @field new fun(values?: table): Ros2Franka_msgsMsgCollisionIndicators
--- @brief Encode a complete Ros2Franka_msgsMsgCollisionIndicators value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsMsgCollisionIndicators [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 208..208 bytes.
--- @see Ros2Franka_msgsMsgCollisionIndicators.decode
--- @field encode fun(value: Ros2Franka_msgsMsgCollisionIndicators): string
--- @brief Decode exactly one complete Ros2Franka_msgsMsgCollisionIndicators canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsMsgCollisionIndicators value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsMsgCollisionIndicators.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsMsgCollisionIndicators
local Ros2Franka_msgsMsgCollisionIndicators = classes["Ros2Franka_msgsMsgCollisionIndicators"]

--- @class Ros2Franka_msgsMsgElbow
--- @brief Complete ROS2 franka_msgs/msg/Elbow value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field position number[] Finite IEEE float64. Exactly 2 contiguous elements; holes and extra array keys are
--rejected.
--- @field desired_position number[] Finite IEEE float64. Exactly 2 contiguous elements; holes and extra array keys are
--rejected.
--- @field commanded_position number[] Finite IEEE float64. Exactly 2 contiguous elements; holes and extra array keys
--are rejected.
--- @field commanded_velocity number[] Finite IEEE float64. Exactly 2 contiguous elements; holes and extra array keys
--are rejected.
--- @field commanded_acceleration number[] Finite IEEE float64. Exactly 2 contiguous elements; holes and extra array
--keys are rejected.
--- @brief Ros2Franka_msgsMsgElbow.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgElbow.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsMsgElbow.NATIVE_TYPE: Exact normalized native type name franka_msgs/msg/Elbow.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgElbow.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/msg/Elbow.
--- @brief Ros2Franka_msgsMsgElbow.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgElbow.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsMsgElbow.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgElbow.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsMsgElbow.MIN_WIRE_BYTES: Inclusive complete minimum 80 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgElbow.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 80 bytes.
--- @brief Ros2Franka_msgsMsgElbow.MAX_WIRE_BYTES: Inclusive complete maximum 80 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgElbow.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 80 bytes.
--- @brief Construct Ros2Franka_msgsMsgElbow with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsMsgElbow value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsMsgElbow.encode
--- @field new fun(values?: table): Ros2Franka_msgsMsgElbow
--- @brief Encode a complete Ros2Franka_msgsMsgElbow value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsMsgElbow [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 80..80 bytes.
--- @see Ros2Franka_msgsMsgElbow.decode
--- @field encode fun(value: Ros2Franka_msgsMsgElbow): string
--- @brief Decode exactly one complete Ros2Franka_msgsMsgElbow canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsMsgElbow value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsMsgElbow.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsMsgElbow
local Ros2Franka_msgsMsgElbow = classes["Ros2Franka_msgsMsgElbow"]

--- @class Ros2Franka_msgsMsgErrors
--- @brief Complete ROS2 franka_msgs/msg/Errors value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_position_limits_violation boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_position_limits_violation boolean Exact boolean; encoded as one byte0/1.
--- @field self_collision_avoidance_violation boolean Exact boolean; encoded as one byte0/1.
--- @field joint_velocity_violation boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_velocity_violation boolean Exact boolean; encoded as one byte0/1.
--- @field force_control_safety_violation boolean Exact boolean; encoded as one byte0/1.
--- @field joint_reflex boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_reflex boolean Exact boolean; encoded as one byte0/1.
--- @field max_goal_pose_deviation_violation boolean Exact boolean; encoded as one byte0/1.
--- @field max_path_pose_deviation_violation boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_velocity_profile_safety_violation boolean Exact boolean; encoded as one byte0/1.
--- @field joint_position_motion_generator_start_pose_invalid boolean Exact boolean; encoded as one byte0/1.
--- @field joint_motion_generator_position_limits_violation boolean Exact boolean; encoded as one byte0/1.
--- @field joint_motion_generator_velocity_limits_violation boolean Exact boolean; encoded as one byte0/1.
--- @field joint_motion_generator_velocity_discontinuity boolean Exact boolean; encoded as one byte0/1.
--- @field joint_motion_generator_acceleration_discontinuity boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_position_motion_generator_start_pose_invalid boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_motion_generator_elbow_limit_violation boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_motion_generator_velocity_limits_violation boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_motion_generator_velocity_discontinuity boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_motion_generator_acceleration_discontinuity boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_motion_generator_elbow_sign_inconsistent boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_motion_generator_start_elbow_invalid boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_motion_generator_joint_position_limits_violation boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_motion_generator_joint_velocity_limits_violation boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_motion_generator_joint_velocity_discontinuity boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_motion_generator_joint_acceleration_discontinuity boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_position_motion_generator_invalid_frame boolean Exact boolean; encoded as one byte0/1.
--- @field force_controller_desired_force_tolerance_violation boolean Exact boolean; encoded as one byte0/1.
--- @field controller_torque_discontinuity boolean Exact boolean; encoded as one byte0/1.
--- @field start_elbow_sign_inconsistent boolean Exact boolean; encoded as one byte0/1.
--- @field communication_constraints_violation boolean Exact boolean; encoded as one byte0/1.
--- @field power_limit_violation boolean Exact boolean; encoded as one byte0/1.
--- @field joint_p2p_insufficient_torque_for_planning boolean Exact boolean; encoded as one byte0/1.
--- @field tau_j_range_violation boolean Exact boolean; encoded as one byte0/1.
--- @field instability_detected boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Franka_msgsMsgErrors.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgErrors.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsMsgErrors.NATIVE_TYPE: Exact normalized native type name franka_msgs/msg/Errors.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgErrors.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/msg/Errors.
--- @brief Ros2Franka_msgsMsgErrors.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgErrors.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsMsgErrors.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgErrors.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsMsgErrors.MIN_WIRE_BYTES: Inclusive complete minimum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgErrors.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 36 bytes.
--- @brief Ros2Franka_msgsMsgErrors.MAX_WIRE_BYTES: Inclusive complete maximum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgErrors.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 36 bytes.
--- @brief Construct Ros2Franka_msgsMsgErrors with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsMsgErrors value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsMsgErrors.encode
--- @field new fun(values?: table): Ros2Franka_msgsMsgErrors
--- @brief Encode a complete Ros2Franka_msgsMsgErrors value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsMsgErrors [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 36..36 bytes.
--- @see Ros2Franka_msgsMsgErrors.decode
--- @field encode fun(value: Ros2Franka_msgsMsgErrors): string
--- @brief Decode exactly one complete Ros2Franka_msgsMsgErrors canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsMsgErrors value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsMsgErrors.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsMsgErrors
local Ros2Franka_msgsMsgErrors = classes["Ros2Franka_msgsMsgErrors"]

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

--- @class Ros2Sensor_msgsMsgJointState
--- @brief Complete ROS2 sensor_msgs/msg/JointState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field name string[] Strict UTF-8 without NUL; length0..128 bytes. At most 7 contiguous elements; holes and extra
--array keys are rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field position number[] Finite IEEE float64. At most 7 contiguous elements; holes and extra array keys are
--rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field velocity number[] Finite IEEE float64. At most 7 contiguous elements; holes and extra array keys are
--rejected. Empty is permitted; all nonempty JointState arrays must have equal length.
--- @field effort number[] Finite IEEE float64. At most 7 contiguous elements; holes and extra array keys are rejected.
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
--- @brief Ros2Sensor_msgsMsgJointState.MAX_WIRE_BYTES: Inclusive complete maximum 1248 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Sensor_msgsMsgJointState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1248 bytes.
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
--- @return string bytes New immutable string, 28..1248 bytes.
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
--- @brief Ros2Geometry_msgsMsgWrenchStamped.MAX_WIRE_BYTES: Inclusive complete maximum 188 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgWrenchStamped.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 188 bytes.
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
--- @return string bytes New immutable string, 60..188 bytes.
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

--- @class Ros2Geometry_msgsMsgInertia
--- @brief Complete ROS2 geometry_msgs/msg/Inertia value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field m number Finite IEEE float64.
--- @field com table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected away.
--- @field ixx number Finite IEEE float64.
--- @field ixy number Finite IEEE float64.
--- @field ixz number Finite IEEE float64.
--- @field iyy number Finite IEEE float64.
--- @field iyz number Finite IEEE float64.
--- @field izz number Finite IEEE float64.
--- @brief Ros2Geometry_msgsMsgInertia.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgInertia.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgInertia.NATIVE_TYPE: Exact normalized native type name geometry_msgs/msg/Inertia.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgInertia.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Inertia.
--- @brief Ros2Geometry_msgsMsgInertia.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgInertia.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgInertia.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgInertia.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgInertia.MIN_WIRE_BYTES: Inclusive complete minimum 80 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgInertia.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 80 bytes.
--- @brief Ros2Geometry_msgsMsgInertia.MAX_WIRE_BYTES: Inclusive complete maximum 80 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgInertia.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 80 bytes.
--- @brief Construct Ros2Geometry_msgsMsgInertia with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgInertia value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgInertia.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgInertia
--- @brief Encode a complete Ros2Geometry_msgsMsgInertia value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgInertia [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 80..80 bytes.
--- @see Ros2Geometry_msgsMsgInertia.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgInertia): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgInertia canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgInertia value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgInertia.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgInertia
local Ros2Geometry_msgsMsgInertia = classes["Ros2Geometry_msgsMsgInertia"]

--- @class Ros2Geometry_msgsMsgInertiaStamped
--- @brief Complete ROS2 geometry_msgs/msg/InertiaStamped value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field inertia table Complete nested geometry_msgs/msg/Inertia value; no native fields are projected away.
--- @brief Ros2Geometry_msgsMsgInertiaStamped.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgInertiaStamped.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgInertiaStamped.NATIVE_TYPE: Exact normalized native type name
--geometry_msgs/msg/InertiaStamped.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgInertiaStamped.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/InertiaStamped.
--- @brief Ros2Geometry_msgsMsgInertiaStamped.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgInertiaStamped.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgInertiaStamped.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgInertiaStamped.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgInertiaStamped.MIN_WIRE_BYTES: Inclusive complete minimum 92 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgInertiaStamped.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 92 bytes.
--- @brief Ros2Geometry_msgsMsgInertiaStamped.MAX_WIRE_BYTES: Inclusive complete maximum 220 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgInertiaStamped.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 220 bytes.
--- @brief Construct Ros2Geometry_msgsMsgInertiaStamped with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgInertiaStamped value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgInertiaStamped.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgInertiaStamped
--- @brief Encode a complete Ros2Geometry_msgsMsgInertiaStamped value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgInertiaStamped [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 92..220 bytes.
--- @see Ros2Geometry_msgsMsgInertiaStamped.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgInertiaStamped): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgInertiaStamped canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgInertiaStamped value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgInertiaStamped.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgInertiaStamped
local Ros2Geometry_msgsMsgInertiaStamped = classes["Ros2Geometry_msgsMsgInertiaStamped"]

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
--- @brief Ros2Geometry_msgsMsgPoseStamped.MAX_WIRE_BYTES: Inclusive complete maximum 196 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgPoseStamped.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 196 bytes.
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
--- @return string bytes New immutable string, 68..196 bytes.
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
--- @brief Ros2Geometry_msgsMsgTwistStamped.MAX_WIRE_BYTES: Inclusive complete maximum 188 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgTwistStamped.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 188 bytes.
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
--- @return string bytes New immutable string, 60..188 bytes.
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

--- @class Ros2Geometry_msgsMsgAccel
--- @brief Complete ROS2 geometry_msgs/msg/Accel value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field linear table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected away.
--- @field angular table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected away.
--- @brief Ros2Geometry_msgsMsgAccel.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgAccel.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgAccel.NATIVE_TYPE: Exact normalized native type name geometry_msgs/msg/Accel.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgAccel.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Accel.
--- @brief Ros2Geometry_msgsMsgAccel.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgAccel.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgAccel.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgAccel.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgAccel.MIN_WIRE_BYTES: Inclusive complete minimum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgAccel.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 48 bytes.
--- @brief Ros2Geometry_msgsMsgAccel.MAX_WIRE_BYTES: Inclusive complete maximum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgAccel.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 48 bytes.
--- @brief Construct Ros2Geometry_msgsMsgAccel with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgAccel value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgAccel.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgAccel
--- @brief Encode a complete Ros2Geometry_msgsMsgAccel value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgAccel [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 48..48 bytes.
--- @see Ros2Geometry_msgsMsgAccel.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgAccel): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgAccel canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgAccel value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgAccel.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgAccel
local Ros2Geometry_msgsMsgAccel = classes["Ros2Geometry_msgsMsgAccel"]

--- @class Ros2Geometry_msgsMsgAccelStamped
--- @brief Complete ROS2 geometry_msgs/msg/AccelStamped value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field accel table Complete nested geometry_msgs/msg/Accel value; no native fields are projected away.
--- @brief Ros2Geometry_msgsMsgAccelStamped.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgAccelStamped.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgAccelStamped.NATIVE_TYPE: Exact normalized native type name
--geometry_msgs/msg/AccelStamped.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgAccelStamped.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/AccelStamped.
--- @brief Ros2Geometry_msgsMsgAccelStamped.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgAccelStamped.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgAccelStamped.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgAccelStamped.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgAccelStamped.MIN_WIRE_BYTES: Inclusive complete minimum 60 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgAccelStamped.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 60 bytes.
--- @brief Ros2Geometry_msgsMsgAccelStamped.MAX_WIRE_BYTES: Inclusive complete maximum 188 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgAccelStamped.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 188 bytes.
--- @brief Construct Ros2Geometry_msgsMsgAccelStamped with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgAccelStamped value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgAccelStamped.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgAccelStamped
--- @brief Encode a complete Ros2Geometry_msgsMsgAccelStamped value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgAccelStamped [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 60..188 bytes.
--- @see Ros2Geometry_msgsMsgAccelStamped.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgAccelStamped): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgAccelStamped canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgAccelStamped value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgAccelStamped.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgAccelStamped
local Ros2Geometry_msgsMsgAccelStamped = classes["Ros2Geometry_msgsMsgAccelStamped"]

--- @class Ros2Geometry_msgsMsgVector3Stamped
--- @brief Complete ROS2 geometry_msgs/msg/Vector3Stamped value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field vector table Complete nested geometry_msgs/msg/Vector3 value; no native fields are projected away.
--- @brief Ros2Geometry_msgsMsgVector3Stamped.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3Stamped.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Geometry_msgsMsgVector3Stamped.NATIVE_TYPE: Exact normalized native type name
--geometry_msgs/msg/Vector3Stamped.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3Stamped.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/msg/Vector3Stamped.
--- @brief Ros2Geometry_msgsMsgVector3Stamped.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3Stamped.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Geometry_msgsMsgVector3Stamped.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3Stamped.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Geometry_msgsMsgVector3Stamped.MIN_WIRE_BYTES: Inclusive complete minimum 36 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3Stamped.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 36 bytes.
--- @brief Ros2Geometry_msgsMsgVector3Stamped.MAX_WIRE_BYTES: Inclusive complete maximum 164 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Geometry_msgsMsgVector3Stamped.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 164 bytes.
--- @brief Construct Ros2Geometry_msgsMsgVector3Stamped with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Geometry_msgsMsgVector3Stamped value New mutable complete value; no ROS resource.
--- @see Ros2Geometry_msgsMsgVector3Stamped.encode
--- @field new fun(values?: table): Ros2Geometry_msgsMsgVector3Stamped
--- @brief Encode a complete Ros2Geometry_msgsMsgVector3Stamped value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Geometry_msgsMsgVector3Stamped [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 36..164 bytes.
--- @see Ros2Geometry_msgsMsgVector3Stamped.decode
--- @field encode fun(value: Ros2Geometry_msgsMsgVector3Stamped): string
--- @brief Decode exactly one complete Ros2Geometry_msgsMsgVector3Stamped canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Geometry_msgsMsgVector3Stamped value New complete value; failures raise Lua errors.
--- @see Ros2Geometry_msgsMsgVector3Stamped.encode
--- @field decode fun(bytes: string): Ros2Geometry_msgsMsgVector3Stamped
local Ros2Geometry_msgsMsgVector3Stamped = classes["Ros2Geometry_msgsMsgVector3Stamped"]

--- @class Ros2Franka_msgsMsgFrankaRobotState
--- @brief Complete ROS2 franka_msgs/msg/FrankaRobotState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field collision_indicators table Complete nested franka_msgs/msg/CollisionIndicators value; no native fields are
--projected away.
--- @field measured_joint_state table Complete nested sensor_msgs/msg/JointState value; no native fields are projected
--away.
--- @field desired_joint_state table Complete nested sensor_msgs/msg/JointState value; no native fields are projected
--away.
--- @field measured_joint_motor_state table Complete nested sensor_msgs/msg/JointState value; no native fields are
--projected away.
--- @field ddq_d number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field dtau_j number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field tau_ext_hat_filtered table Complete nested sensor_msgs/msg/JointState value; no native fields are projected
--away.
--- @field elbow table Complete nested franka_msgs/msg/Elbow value; no native fields are projected away.
--- @field k_f_ext_hat_k table Complete nested geometry_msgs/msg/WrenchStamped value; no native fields are projected
--away.
--- @field o_f_ext_hat_k table Complete nested geometry_msgs/msg/WrenchStamped value; no native fields are projected
--away.
--- @field inertia_ee table Complete nested geometry_msgs/msg/InertiaStamped value; no native fields are projected away.
--- @field inertia_load table Complete nested geometry_msgs/msg/InertiaStamped value; no native fields are projected
--away.
--- @field inertia_total table Complete nested geometry_msgs/msg/InertiaStamped value; no native fields are projected
--away.
--- @field o_t_ee table Complete nested geometry_msgs/msg/PoseStamped value; no native fields are projected away.
--- @field o_t_ee_d table Complete nested geometry_msgs/msg/PoseStamped value; no native fields are projected away.
--- @field o_t_ee_c table Complete nested geometry_msgs/msg/PoseStamped value; no native fields are projected away.
--- @field f_t_ee table Complete nested geometry_msgs/msg/PoseStamped value; no native fields are projected away.
--- @field ee_t_k table Complete nested geometry_msgs/msg/PoseStamped value; no native fields are projected away.
--- @field o_dp_ee_d table Complete nested geometry_msgs/msg/TwistStamped value; no native fields are projected away.
--- @field o_dp_ee_c table Complete nested geometry_msgs/msg/TwistStamped value; no native fields are projected away.
--- @field o_ddp_ee_c table Complete nested geometry_msgs/msg/AccelStamped value; no native fields are projected away.
--- @field time number Finite IEEE float64.
--- @field control_command_success_rate number Finite IEEE float64.
--- @field robot_mode integer Exact uint8 range 0..255.
--- @field current_errors table Complete nested franka_msgs/msg/Errors value; no native fields are projected away.
--- @field last_motion_errors table Complete nested franka_msgs/msg/Errors value; no native fields are projected away.
--- @field accelerometer_top table[] Complete nested geometry_msgs/msg/Vector3Stamped value; no native fields are
--projected away. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @field accelerometer_bottom table[] Complete nested geometry_msgs/msg/Vector3Stamped value; no native fields are
--projected away. Exactly 6 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Franka_msgsMsgFrankaRobotState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgFrankaRobotState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsMsgFrankaRobotState.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/msg/FrankaRobotState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgFrankaRobotState.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/msg/FrankaRobotState.
--- @brief Ros2Franka_msgsMsgFrankaRobotState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgFrankaRobotState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsMsgFrankaRobotState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgFrankaRobotState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsMsgFrankaRobotState.MIN_WIRE_BYTES: Inclusive complete minimum 1961 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgFrankaRobotState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1961 bytes.
--- @brief Ros2Franka_msgsMsgFrankaRobotState.MAX_WIRE_BYTES: Inclusive complete maximum 10169 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsMsgFrankaRobotState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 10169 bytes.
--- @brief Native class constant Ros2Franka_msgsMsgFrankaRobotState.ROBOT_MODE_OTHER.
--- @details Original uint8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Franka_msgsMsgFrankaRobotState.new
--- @field ROBOT_MODE_OTHER integer
--- @brief Native class constant Ros2Franka_msgsMsgFrankaRobotState.ROBOT_MODE_IDLE.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Franka_msgsMsgFrankaRobotState.new
--- @field ROBOT_MODE_IDLE integer
--- @brief Native class constant Ros2Franka_msgsMsgFrankaRobotState.ROBOT_MODE_MOVE.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Franka_msgsMsgFrankaRobotState.new
--- @field ROBOT_MODE_MOVE integer
--- @brief Native class constant Ros2Franka_msgsMsgFrankaRobotState.ROBOT_MODE_GUIDING.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Franka_msgsMsgFrankaRobotState.new
--- @field ROBOT_MODE_GUIDING integer
--- @brief Native class constant Ros2Franka_msgsMsgFrankaRobotState.ROBOT_MODE_REFLEX.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Franka_msgsMsgFrankaRobotState.new
--- @field ROBOT_MODE_REFLEX integer
--- @brief Native class constant Ros2Franka_msgsMsgFrankaRobotState.ROBOT_MODE_USER_STOPPED.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Franka_msgsMsgFrankaRobotState.new
--- @field ROBOT_MODE_USER_STOPPED integer
--- @brief Native class constant Ros2Franka_msgsMsgFrankaRobotState.ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY.
--- @details Original uint8 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Franka_msgsMsgFrankaRobotState.new
--- @field ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY integer
--- @brief Construct Ros2Franka_msgsMsgFrankaRobotState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsMsgFrankaRobotState value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsMsgFrankaRobotState.encode
--- @field new fun(values?: table): Ros2Franka_msgsMsgFrankaRobotState
--- @brief Encode a complete Ros2Franka_msgsMsgFrankaRobotState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsMsgFrankaRobotState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1961..10169 bytes.
--- @see Ros2Franka_msgsMsgFrankaRobotState.decode
--- @field encode fun(value: Ros2Franka_msgsMsgFrankaRobotState): string
--- @brief Decode exactly one complete Ros2Franka_msgsMsgFrankaRobotState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsMsgFrankaRobotState value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsMsgFrankaRobotState.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsMsgFrankaRobotState
local Ros2Franka_msgsMsgFrankaRobotState = classes["Ros2Franka_msgsMsgFrankaRobotState"]

--- @class Ros2Franka_msgsSrvSetCartesianStiffness_Request
--- @brief Complete ROS2 franka_msgs/srv/SetCartesianStiffness_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field cartesian_stiffness number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra array keys
--are rejected.
--- @brief Ros2Franka_msgsSrvSetCartesianStiffness_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetCartesianStiffness_Request.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetCartesianStiffness_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetCartesianStiffness_Request.
--- @brief Ros2Franka_msgsSrvSetCartesianStiffness_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetCartesianStiffness_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetCartesianStiffness_Request.MIN_WIRE_BYTES: Inclusive complete minimum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 48 bytes.
--- @brief Ros2Franka_msgsSrvSetCartesianStiffness_Request.MAX_WIRE_BYTES: Inclusive complete maximum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 48 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetCartesianStiffness_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetCartesianStiffness_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Request.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetCartesianStiffness_Request
--- @brief Encode a complete Ros2Franka_msgsSrvSetCartesianStiffness_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetCartesianStiffness_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 48..48 bytes.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Request.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetCartesianStiffness_Request): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetCartesianStiffness_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetCartesianStiffness_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetCartesianStiffness_Request
local Ros2Franka_msgsSrvSetCartesianStiffness_Request = classes["Ros2Franka_msgsSrvSetCartesianStiffness_Request"]

--- @class Ros2Franka_msgsSrvSetCartesianStiffness_Response
--- @brief Complete ROS2 franka_msgs/srv/SetCartesianStiffness_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_msgsSrvSetCartesianStiffness_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetCartesianStiffness_Response.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetCartesianStiffness_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetCartesianStiffness_Response.
--- @brief Ros2Franka_msgsSrvSetCartesianStiffness_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetCartesianStiffness_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetCartesianStiffness_Response.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Franka_msgsSrvSetCartesianStiffness_Response.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetCartesianStiffness_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetCartesianStiffness_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Response.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetCartesianStiffness_Response
--- @brief Encode a complete Ros2Franka_msgsSrvSetCartesianStiffness_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetCartesianStiffness_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Response.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetCartesianStiffness_Response): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetCartesianStiffness_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetCartesianStiffness_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsSrvSetCartesianStiffness_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetCartesianStiffness_Response
local Ros2Franka_msgsSrvSetCartesianStiffness_Response = classes["Ros2Franka_msgsSrvSetCartesianStiffness_Response"]

--- @class Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
--- @brief Complete ROS2 franka_msgs/srv/SetForceTorqueCollisionBehavior_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field lower_torque_thresholds_nominal number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra
--array keys are rejected.
--- @field upper_torque_thresholds_nominal number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra
--array keys are rejected.
--- @field lower_force_thresholds_nominal number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra
--array keys are rejected.
--- @field upper_force_thresholds_nominal number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra
--array keys are rejected.
--- @brief Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
--- @brief Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.MIN_WIRE_BYTES: Inclusive complete minimum 208
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 208 bytes.
--- @brief Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.MAX_WIRE_BYTES: Inclusive complete maximum 208
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 208 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
--- @brief Encode a complete Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 208..208 bytes.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request value New complete value; failures raise Lua
--errors.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
local Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request =
        classes["Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request"]

--- @class Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
--- @brief Complete ROS2 franka_msgs/srv/SetForceTorqueCollisionBehavior_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.ROS_VERSION: Read-only-by-contract backend value
--2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name
--franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
--- @brief Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.NATIVE_IDENTITY: Exact supplied native identity;
--nil means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.CODEC_IDENTITY: Finite canonical schema identity;
--does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.MIN_WIRE_BYTES: Inclusive complete minimum 5
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.MAX_WIRE_BYTES: Inclusive complete maximum 261
--bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value New mutable complete value; no ROS
--resource.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
--- @brief Encode a complete Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response value New complete value; failures raise Lua
--errors.
--- @see Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response
local Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response =
        classes["Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response"]

--- @class Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
--- @brief Complete ROS2 franka_msgs/srv/SetFullCollisionBehavior_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field lower_torque_thresholds_acceleration number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and
--extra array keys are rejected.
--- @field upper_torque_thresholds_acceleration number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and
--extra array keys are rejected.
--- @field lower_torque_thresholds_nominal number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra
--array keys are rejected.
--- @field upper_torque_thresholds_nominal number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra
--array keys are rejected.
--- @field lower_force_thresholds_acceleration number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and
--extra array keys are rejected.
--- @field upper_force_thresholds_acceleration number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and
--extra array keys are rejected.
--- @field lower_force_thresholds_nominal number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra
--array keys are rejected.
--- @field upper_force_thresholds_nominal number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra
--array keys are rejected.
--- @brief Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetFullCollisionBehavior_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetFullCollisionBehavior_Request.
--- @brief Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.MIN_WIRE_BYTES: Inclusive complete minimum 416 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 416 bytes.
--- @brief Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.MAX_WIRE_BYTES: Inclusive complete maximum 416 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 416 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetFullCollisionBehavior_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetFullCollisionBehavior_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
--- @brief Encode a complete Ros2Franka_msgsSrvSetFullCollisionBehavior_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetFullCollisionBehavior_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 416..416 bytes.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetFullCollisionBehavior_Request): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetFullCollisionBehavior_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetFullCollisionBehavior_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetFullCollisionBehavior_Request
local Ros2Franka_msgsSrvSetFullCollisionBehavior_Request = classes["Ros2Franka_msgsSrvSetFullCollisionBehavior_Request"]

--- @class Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
--- @brief Complete ROS2 franka_msgs/srv/SetFullCollisionBehavior_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetFullCollisionBehavior_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetFullCollisionBehavior_Response.
--- @brief Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetFullCollisionBehavior_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetFullCollisionBehavior_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
--- @brief Encode a complete Ros2Franka_msgsSrvSetFullCollisionBehavior_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetFullCollisionBehavior_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetFullCollisionBehavior_Response): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetFullCollisionBehavior_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetFullCollisionBehavior_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsSrvSetFullCollisionBehavior_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetFullCollisionBehavior_Response
local Ros2Franka_msgsSrvSetFullCollisionBehavior_Response = classes["Ros2Franka_msgsSrvSetFullCollisionBehavior_Response"]

--- @class Ros2Franka_msgsSrvSetJointStiffness_Request
--- @brief Complete ROS2 franka_msgs/srv/SetJointStiffness_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_stiffness number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are
--rejected.
--- @brief Ros2Franka_msgsSrvSetJointStiffness_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetJointStiffness_Request.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetJointStiffness_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetJointStiffness_Request.
--- @brief Ros2Franka_msgsSrvSetJointStiffness_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetJointStiffness_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetJointStiffness_Request.MIN_WIRE_BYTES: Inclusive complete minimum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 56 bytes.
--- @brief Ros2Franka_msgsSrvSetJointStiffness_Request.MAX_WIRE_BYTES: Inclusive complete maximum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 56 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetJointStiffness_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetJointStiffness_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Request.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetJointStiffness_Request
--- @brief Encode a complete Ros2Franka_msgsSrvSetJointStiffness_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetJointStiffness_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 56..56 bytes.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Request.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetJointStiffness_Request): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetJointStiffness_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetJointStiffness_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetJointStiffness_Request
local Ros2Franka_msgsSrvSetJointStiffness_Request = classes["Ros2Franka_msgsSrvSetJointStiffness_Request"]

--- @class Ros2Franka_msgsSrvSetJointStiffness_Response
--- @brief Complete ROS2 franka_msgs/srv/SetJointStiffness_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_msgsSrvSetJointStiffness_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetJointStiffness_Response.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetJointStiffness_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetJointStiffness_Response.
--- @brief Ros2Franka_msgsSrvSetJointStiffness_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetJointStiffness_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetJointStiffness_Response.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Franka_msgsSrvSetJointStiffness_Response.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetJointStiffness_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetJointStiffness_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Response.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetJointStiffness_Response
--- @brief Encode a complete Ros2Franka_msgsSrvSetJointStiffness_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetJointStiffness_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Response.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetJointStiffness_Response): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetJointStiffness_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetJointStiffness_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsSrvSetJointStiffness_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetJointStiffness_Response
local Ros2Franka_msgsSrvSetJointStiffness_Response = classes["Ros2Franka_msgsSrvSetJointStiffness_Response"]

--- @class Ros2Franka_msgsSrvSetLoad_Request
--- @brief Complete ROS2 franka_msgs/srv/SetLoad_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mass number Finite IEEE float64.
--- @field center_of_mass number[] Finite IEEE float64. Exactly 3 contiguous elements; holes and extra array keys are
--rejected.
--- @field load_inertia number[] Finite IEEE float64. Exactly 9 contiguous elements; holes and extra array keys are
--rejected.
--- @brief Ros2Franka_msgsSrvSetLoad_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetLoad_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetLoad_Request.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetLoad_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetLoad_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetLoad_Request.
--- @brief Ros2Franka_msgsSrvSetLoad_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetLoad_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetLoad_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetLoad_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetLoad_Request.MIN_WIRE_BYTES: Inclusive complete minimum 104 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetLoad_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 104 bytes.
--- @brief Ros2Franka_msgsSrvSetLoad_Request.MAX_WIRE_BYTES: Inclusive complete maximum 104 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetLoad_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 104 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetLoad_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetLoad_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetLoad_Request.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetLoad_Request
--- @brief Encode a complete Ros2Franka_msgsSrvSetLoad_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetLoad_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 104..104 bytes.
--- @see Ros2Franka_msgsSrvSetLoad_Request.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetLoad_Request): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetLoad_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetLoad_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsSrvSetLoad_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetLoad_Request
local Ros2Franka_msgsSrvSetLoad_Request = classes["Ros2Franka_msgsSrvSetLoad_Request"]

--- @class Ros2Franka_msgsSrvSetLoad_Response
--- @brief Complete ROS2 franka_msgs/srv/SetLoad_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_msgsSrvSetLoad_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetLoad_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetLoad_Response.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetLoad_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetLoad_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetLoad_Response.
--- @brief Ros2Franka_msgsSrvSetLoad_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetLoad_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetLoad_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetLoad_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetLoad_Response.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetLoad_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Franka_msgsSrvSetLoad_Response.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetLoad_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetLoad_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetLoad_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetLoad_Response.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetLoad_Response
--- @brief Encode a complete Ros2Franka_msgsSrvSetLoad_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetLoad_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Franka_msgsSrvSetLoad_Response.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetLoad_Response): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetLoad_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetLoad_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsSrvSetLoad_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetLoad_Response
local Ros2Franka_msgsSrvSetLoad_Response = classes["Ros2Franka_msgsSrvSetLoad_Response"]

--- @class Ros2Franka_msgsSrvSetStiffnessFrame_Request
--- @brief Complete ROS2 franka_msgs/srv/SetStiffnessFrame_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field transformation number[] Finite IEEE float64. Exactly 16 contiguous elements; holes and extra array keys are
--rejected.
--- @brief Ros2Franka_msgsSrvSetStiffnessFrame_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetStiffnessFrame_Request.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetStiffnessFrame_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetStiffnessFrame_Request.
--- @brief Ros2Franka_msgsSrvSetStiffnessFrame_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetStiffnessFrame_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetStiffnessFrame_Request.MIN_WIRE_BYTES: Inclusive complete minimum 128 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 128 bytes.
--- @brief Ros2Franka_msgsSrvSetStiffnessFrame_Request.MAX_WIRE_BYTES: Inclusive complete maximum 128 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 128 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetStiffnessFrame_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetStiffnessFrame_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Request.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetStiffnessFrame_Request
--- @brief Encode a complete Ros2Franka_msgsSrvSetStiffnessFrame_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetStiffnessFrame_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 128..128 bytes.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Request.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetStiffnessFrame_Request): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetStiffnessFrame_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetStiffnessFrame_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetStiffnessFrame_Request
local Ros2Franka_msgsSrvSetStiffnessFrame_Request = classes["Ros2Franka_msgsSrvSetStiffnessFrame_Request"]

--- @class Ros2Franka_msgsSrvSetStiffnessFrame_Response
--- @brief Complete ROS2 franka_msgs/srv/SetStiffnessFrame_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_msgsSrvSetStiffnessFrame_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetStiffnessFrame_Response.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetStiffnessFrame_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetStiffnessFrame_Response.
--- @brief Ros2Franka_msgsSrvSetStiffnessFrame_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetStiffnessFrame_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetStiffnessFrame_Response.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Franka_msgsSrvSetStiffnessFrame_Response.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetStiffnessFrame_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetStiffnessFrame_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Response.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetStiffnessFrame_Response
--- @brief Encode a complete Ros2Franka_msgsSrvSetStiffnessFrame_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetStiffnessFrame_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Response.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetStiffnessFrame_Response): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetStiffnessFrame_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetStiffnessFrame_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsSrvSetStiffnessFrame_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetStiffnessFrame_Response
local Ros2Franka_msgsSrvSetStiffnessFrame_Response = classes["Ros2Franka_msgsSrvSetStiffnessFrame_Response"]

--- @class Ros2Franka_msgsSrvSetTCPFrame_Request
--- @brief Complete ROS2 franka_msgs/srv/SetTCPFrame_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field transformation number[] Finite IEEE float64. Exactly 16 contiguous elements; holes and extra array keys are
--rejected.
--- @brief Ros2Franka_msgsSrvSetTCPFrame_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetTCPFrame_Request.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetTCPFrame_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetTCPFrame_Request.
--- @brief Ros2Franka_msgsSrvSetTCPFrame_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetTCPFrame_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetTCPFrame_Request.MIN_WIRE_BYTES: Inclusive complete minimum 128 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 128 bytes.
--- @brief Ros2Franka_msgsSrvSetTCPFrame_Request.MAX_WIRE_BYTES: Inclusive complete maximum 128 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 128 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetTCPFrame_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetTCPFrame_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Request.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetTCPFrame_Request
--- @brief Encode a complete Ros2Franka_msgsSrvSetTCPFrame_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetTCPFrame_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 128..128 bytes.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Request.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetTCPFrame_Request): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetTCPFrame_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetTCPFrame_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetTCPFrame_Request
local Ros2Franka_msgsSrvSetTCPFrame_Request = classes["Ros2Franka_msgsSrvSetTCPFrame_Request"]

--- @class Ros2Franka_msgsSrvSetTCPFrame_Response
--- @brief Complete ROS2 franka_msgs/srv/SetTCPFrame_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_msgsSrvSetTCPFrame_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_msgsSrvSetTCPFrame_Response.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/srv/SetTCPFrame_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/srv/SetTCPFrame_Response.
--- @brief Ros2Franka_msgsSrvSetTCPFrame_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_msgsSrvSetTCPFrame_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_msgsSrvSetTCPFrame_Response.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros2Franka_msgsSrvSetTCPFrame_Response.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros2Franka_msgsSrvSetTCPFrame_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_msgsSrvSetTCPFrame_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Response.encode
--- @field new fun(values?: table): Ros2Franka_msgsSrvSetTCPFrame_Response
--- @brief Encode a complete Ros2Franka_msgsSrvSetTCPFrame_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_msgsSrvSetTCPFrame_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Response.decode
--- @field encode fun(value: Ros2Franka_msgsSrvSetTCPFrame_Response): string
--- @brief Decode exactly one complete Ros2Franka_msgsSrvSetTCPFrame_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_msgsSrvSetTCPFrame_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_msgsSrvSetTCPFrame_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_msgsSrvSetTCPFrame_Response
local Ros2Franka_msgsSrvSetTCPFrame_Response = classes["Ros2Franka_msgsSrvSetTCPFrame_Response"]

--- @class Ros2Franka_spine_msgsActionMoveAbsolute_Goal
--- @brief Complete ROS2 franka_spine_msgs/action/MoveAbsolute_Goal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field position number Finite IEEE float64.
--- @field velocity number Finite IEEE float64.
--- @field acceleration number Finite IEEE float64.
--- @field deceleration number Finite IEEE float64.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Goal.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Goal.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/action/MoveAbsolute_Goal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/action/MoveAbsolute_Goal.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Goal.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Goal.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Goal.MIN_WIRE_BYTES: Inclusive complete minimum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 32 bytes.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Goal.MAX_WIRE_BYTES: Inclusive complete maximum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 32 bytes.
--- @brief Construct Ros2Franka_spine_msgsActionMoveAbsolute_Goal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsActionMoveAbsolute_Goal value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsActionMoveAbsolute_Goal
--- @brief Encode a complete Ros2Franka_spine_msgsActionMoveAbsolute_Goal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsActionMoveAbsolute_Goal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 32..32 bytes.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal.decode
--- @field encode fun(value: Ros2Franka_spine_msgsActionMoveAbsolute_Goal): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsActionMoveAbsolute_Goal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsActionMoveAbsolute_Goal value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Goal.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsActionMoveAbsolute_Goal
local Ros2Franka_spine_msgsActionMoveAbsolute_Goal = classes["Ros2Franka_spine_msgsActionMoveAbsolute_Goal"]

--- @class Ros2Franka_spine_msgsActionMoveAbsolute_Result
--- @brief Complete ROS2 franka_spine_msgs/action/MoveAbsolute_Result value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field stop_by string Strict UTF-8 without NUL; length0..256 bytes.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Result.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Result.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Result.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/action/MoveAbsolute_Result.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Result.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/action/MoveAbsolute_Result.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Result.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Result.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Result.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Result.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Result.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Result.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Result.MAX_WIRE_BYTES: Inclusive complete maximum 521 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Result.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 521 bytes.
--- @brief Construct Ros2Franka_spine_msgsActionMoveAbsolute_Result with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsActionMoveAbsolute_Result value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Result.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsActionMoveAbsolute_Result
--- @brief Encode a complete Ros2Franka_spine_msgsActionMoveAbsolute_Result value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsActionMoveAbsolute_Result [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..521 bytes.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Result.decode
--- @field encode fun(value: Ros2Franka_spine_msgsActionMoveAbsolute_Result): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsActionMoveAbsolute_Result canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsActionMoveAbsolute_Result value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Result.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsActionMoveAbsolute_Result
local Ros2Franka_spine_msgsActionMoveAbsolute_Result = classes["Ros2Franka_spine_msgsActionMoveAbsolute_Result"]

--- @class Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
--- @brief Complete ROS2 franka_spine_msgs/action/MoveAbsolute_Feedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field current_position number Finite IEEE float64.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/action/MoveAbsolute_Feedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/action/MoveAbsolute_Feedback.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.MIN_WIRE_BYTES: Inclusive complete minimum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 8 bytes.
--- @brief Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.MAX_WIRE_BYTES: Inclusive complete maximum 8 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 8 bytes.
--- @brief Construct Ros2Franka_spine_msgsActionMoveAbsolute_Feedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsActionMoveAbsolute_Feedback value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
--- @brief Encode a complete Ros2Franka_spine_msgsActionMoveAbsolute_Feedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsActionMoveAbsolute_Feedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 8..8 bytes.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.decode
--- @field encode fun(value: Ros2Franka_spine_msgsActionMoveAbsolute_Feedback): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsActionMoveAbsolute_Feedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsActionMoveAbsolute_Feedback value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsActionMoveAbsolute_Feedback.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
local Ros2Franka_spine_msgsActionMoveAbsolute_Feedback = classes["Ros2Franka_spine_msgsActionMoveAbsolute_Feedback"]

--- @class Ros2Franka_spine_msgsMsgUserLimits
--- @brief Complete ROS2 franka_spine_msgs/msg/UserLimits value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field lower_limit number Finite IEEE float64.
--- @field upper_limit number Finite IEEE float64.
--- @brief Ros2Franka_spine_msgsMsgUserLimits.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgUserLimits.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsMsgUserLimits.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/msg/UserLimits.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgUserLimits.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/msg/UserLimits.
--- @brief Ros2Franka_spine_msgsMsgUserLimits.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgUserLimits.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsMsgUserLimits.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgUserLimits.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsMsgUserLimits.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgUserLimits.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Franka_spine_msgsMsgUserLimits.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgUserLimits.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Franka_spine_msgsMsgUserLimits with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsMsgUserLimits value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsMsgUserLimits.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsMsgUserLimits
--- @brief Encode a complete Ros2Franka_spine_msgsMsgUserLimits value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsMsgUserLimits [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Franka_spine_msgsMsgUserLimits.decode
--- @field encode fun(value: Ros2Franka_spine_msgsMsgUserLimits): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsMsgUserLimits canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsMsgUserLimits value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsMsgUserLimits.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsMsgUserLimits
local Ros2Franka_spine_msgsMsgUserLimits = classes["Ros2Franka_spine_msgsMsgUserLimits"]

--- @class Ros2Franka_spine_msgsMsgSpineParameters
--- @brief Complete ROS2 franka_spine_msgs/msg/SpineParameters value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field user_limits table Complete nested franka_spine_msgs/msg/UserLimits value; no native fields are projected
--away.
--- @brief Ros2Franka_spine_msgsMsgSpineParameters.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpineParameters.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsMsgSpineParameters.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/msg/SpineParameters.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpineParameters.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/msg/SpineParameters.
--- @brief Ros2Franka_spine_msgsMsgSpineParameters.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpineParameters.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsMsgSpineParameters.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpineParameters.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsMsgSpineParameters.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpineParameters.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Franka_spine_msgsMsgSpineParameters.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpineParameters.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros2Franka_spine_msgsMsgSpineParameters with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsMsgSpineParameters value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsMsgSpineParameters.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsMsgSpineParameters
--- @brief Encode a complete Ros2Franka_spine_msgsMsgSpineParameters value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsMsgSpineParameters [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros2Franka_spine_msgsMsgSpineParameters.decode
--- @field encode fun(value: Ros2Franka_spine_msgsMsgSpineParameters): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsMsgSpineParameters canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsMsgSpineParameters value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsMsgSpineParameters.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsMsgSpineParameters
local Ros2Franka_spine_msgsMsgSpineParameters = classes["Ros2Franka_spine_msgsMsgSpineParameters"]

--- @class Ros2Franka_spine_msgsMsgSpinePosition
--- @brief Complete ROS2 franka_spine_msgs/msg/SpinePosition value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field position number Finite IEEE float64.
--- @field valid boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Franka_spine_msgsMsgSpinePosition.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpinePosition.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsMsgSpinePosition.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/msg/SpinePosition.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpinePosition.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/msg/SpinePosition.
--- @brief Ros2Franka_spine_msgsMsgSpinePosition.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpinePosition.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsMsgSpinePosition.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpinePosition.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsMsgSpinePosition.MIN_WIRE_BYTES: Inclusive complete minimum 21 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpinePosition.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 21 bytes.
--- @brief Ros2Franka_spine_msgsMsgSpinePosition.MAX_WIRE_BYTES: Inclusive complete maximum 149 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpinePosition.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 149 bytes.
--- @brief Construct Ros2Franka_spine_msgsMsgSpinePosition with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsMsgSpinePosition value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsMsgSpinePosition.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsMsgSpinePosition
--- @brief Encode a complete Ros2Franka_spine_msgsMsgSpinePosition value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsMsgSpinePosition [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 21..149 bytes.
--- @see Ros2Franka_spine_msgsMsgSpinePosition.decode
--- @field encode fun(value: Ros2Franka_spine_msgsMsgSpinePosition): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsMsgSpinePosition canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsMsgSpinePosition value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsMsgSpinePosition.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsMsgSpinePosition
local Ros2Franka_spine_msgsMsgSpinePosition = classes["Ros2Franka_spine_msgsMsgSpinePosition"]

--- @class Ros2Franka_spine_msgsMsgSpineState
--- @brief Complete ROS2 franka_spine_msgs/msg/SpineState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/msg/Header value; no native fields are projected away.
--- @field state string Strict UTF-8 without NUL; length0..256 bytes.
--- @field error_code string Strict UTF-8 without NUL; length0..256 bytes.
--- @field error_description string Strict UTF-8 without NUL; length0..256 bytes.
--- @field valid boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Franka_spine_msgsMsgSpineState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpineState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsMsgSpineState.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/msg/SpineState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpineState.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/msg/SpineState.
--- @brief Ros2Franka_spine_msgsMsgSpineState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpineState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsMsgSpineState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpineState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsMsgSpineState.MIN_WIRE_BYTES: Inclusive complete minimum 25 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpineState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 25 bytes.
--- @brief Ros2Franka_spine_msgsMsgSpineState.MAX_WIRE_BYTES: Inclusive complete maximum 921 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsMsgSpineState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 921 bytes.
--- @brief Construct Ros2Franka_spine_msgsMsgSpineState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsMsgSpineState value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsMsgSpineState.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsMsgSpineState
--- @brief Encode a complete Ros2Franka_spine_msgsMsgSpineState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsMsgSpineState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 25..921 bytes.
--- @see Ros2Franka_spine_msgsMsgSpineState.decode
--- @field encode fun(value: Ros2Franka_spine_msgsMsgSpineState): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsMsgSpineState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsMsgSpineState value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsMsgSpineState.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsMsgSpineState
local Ros2Franka_spine_msgsMsgSpineState = classes["Ros2Franka_spine_msgsMsgSpineState"]

--- @class Ros2Franka_spine_msgsSrvFaultReset_Request
--- @brief Complete ROS2 franka_spine_msgs/srv/FaultReset_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Franka_spine_msgsSrvFaultReset_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvFaultReset_Request.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/FaultReset_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/FaultReset_Request.
--- @brief Ros2Franka_spine_msgsSrvFaultReset_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvFaultReset_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvFaultReset_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Franka_spine_msgsSrvFaultReset_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvFaultReset_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvFaultReset_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Request.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvFaultReset_Request
--- @brief Encode a complete Ros2Franka_spine_msgsSrvFaultReset_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvFaultReset_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Request.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvFaultReset_Request): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvFaultReset_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvFaultReset_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvFaultReset_Request
local Ros2Franka_spine_msgsSrvFaultReset_Request = classes["Ros2Franka_spine_msgsSrvFaultReset_Request"]

--- @class Ros2Franka_spine_msgsSrvFaultReset_Response
--- @brief Complete ROS2 franka_spine_msgs/srv/FaultReset_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state string Strict UTF-8 without NUL; length0..256 bytes.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_spine_msgsSrvFaultReset_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvFaultReset_Response.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/FaultReset_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/FaultReset_Response.
--- @brief Ros2Franka_spine_msgsSrvFaultReset_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvFaultReset_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvFaultReset_Response.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Franka_spine_msgsSrvFaultReset_Response.MAX_WIRE_BYTES: Inclusive complete maximum 521 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 521 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvFaultReset_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvFaultReset_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Response.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvFaultReset_Response
--- @brief Encode a complete Ros2Franka_spine_msgsSrvFaultReset_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvFaultReset_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..521 bytes.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Response.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvFaultReset_Response): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvFaultReset_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvFaultReset_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvFaultReset_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvFaultReset_Response
local Ros2Franka_spine_msgsSrvFaultReset_Response = classes["Ros2Franka_spine_msgsSrvFaultReset_Response"]

--- @class Ros2Franka_spine_msgsSrvGetParameters_Request
--- @brief Complete ROS2 franka_spine_msgs/srv/GetParameters_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Franka_spine_msgsSrvGetParameters_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvGetParameters_Request.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/GetParameters_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/GetParameters_Request.
--- @brief Ros2Franka_spine_msgsSrvGetParameters_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvGetParameters_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvGetParameters_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Franka_spine_msgsSrvGetParameters_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvGetParameters_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvGetParameters_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Request.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvGetParameters_Request
--- @brief Encode a complete Ros2Franka_spine_msgsSrvGetParameters_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvGetParameters_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Request.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvGetParameters_Request): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvGetParameters_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvGetParameters_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvGetParameters_Request
local Ros2Franka_spine_msgsSrvGetParameters_Request = classes["Ros2Franka_spine_msgsSrvGetParameters_Request"]

--- @class Ros2Franka_spine_msgsSrvGetParameters_Response
--- @brief Complete ROS2 franka_spine_msgs/srv/GetParameters_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field parameters table Complete nested franka_spine_msgs/msg/SpineParameters value; no native fields are projected
--away.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_spine_msgsSrvGetParameters_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvGetParameters_Response.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/GetParameters_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/GetParameters_Response.
--- @brief Ros2Franka_spine_msgsSrvGetParameters_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvGetParameters_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvGetParameters_Response.MIN_WIRE_BYTES: Inclusive complete minimum 21 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 21 bytes.
--- @brief Ros2Franka_spine_msgsSrvGetParameters_Response.MAX_WIRE_BYTES: Inclusive complete maximum 277 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 277 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvGetParameters_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvGetParameters_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Response.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvGetParameters_Response
--- @brief Encode a complete Ros2Franka_spine_msgsSrvGetParameters_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvGetParameters_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 21..277 bytes.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Response.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvGetParameters_Response): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvGetParameters_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvGetParameters_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvGetParameters_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvGetParameters_Response
local Ros2Franka_spine_msgsSrvGetParameters_Response = classes["Ros2Franka_spine_msgsSrvGetParameters_Response"]

--- @class Ros2Franka_spine_msgsSrvGetPosition_Request
--- @brief Complete ROS2 franka_spine_msgs/srv/GetPosition_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Franka_spine_msgsSrvGetPosition_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvGetPosition_Request.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/GetPosition_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/GetPosition_Request.
--- @brief Ros2Franka_spine_msgsSrvGetPosition_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvGetPosition_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvGetPosition_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Franka_spine_msgsSrvGetPosition_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvGetPosition_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvGetPosition_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Request.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvGetPosition_Request
--- @brief Encode a complete Ros2Franka_spine_msgsSrvGetPosition_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvGetPosition_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Request.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvGetPosition_Request): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvGetPosition_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvGetPosition_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvGetPosition_Request
local Ros2Franka_spine_msgsSrvGetPosition_Request = classes["Ros2Franka_spine_msgsSrvGetPosition_Request"]

--- @class Ros2Franka_spine_msgsSrvGetPosition_Response
--- @brief Complete ROS2 franka_spine_msgs/srv/GetPosition_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field position number Finite IEEE float64.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Franka_spine_msgsSrvGetPosition_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvGetPosition_Response.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/GetPosition_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/GetPosition_Response.
--- @brief Ros2Franka_spine_msgsSrvGetPosition_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvGetPosition_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvGetPosition_Response.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Franka_spine_msgsSrvGetPosition_Response.MAX_WIRE_BYTES: Inclusive complete maximum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 9 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvGetPosition_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvGetPosition_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Response.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvGetPosition_Response
--- @brief Encode a complete Ros2Franka_spine_msgsSrvGetPosition_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvGetPosition_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..9 bytes.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Response.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvGetPosition_Response): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvGetPosition_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvGetPosition_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvGetPosition_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvGetPosition_Response
local Ros2Franka_spine_msgsSrvGetPosition_Response = classes["Ros2Franka_spine_msgsSrvGetPosition_Response"]

--- @class Ros2Franka_spine_msgsSrvGetSpineState_Request
--- @brief Complete ROS2 franka_spine_msgs/srv/GetSpineState_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Franka_spine_msgsSrvGetSpineState_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvGetSpineState_Request.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/GetSpineState_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/GetSpineState_Request.
--- @brief Ros2Franka_spine_msgsSrvGetSpineState_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvGetSpineState_Request.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvGetSpineState_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Franka_spine_msgsSrvGetSpineState_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvGetSpineState_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvGetSpineState_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Request.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvGetSpineState_Request
--- @brief Encode a complete Ros2Franka_spine_msgsSrvGetSpineState_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvGetSpineState_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Request.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvGetSpineState_Request): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvGetSpineState_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvGetSpineState_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvGetSpineState_Request
local Ros2Franka_spine_msgsSrvGetSpineState_Request = classes["Ros2Franka_spine_msgsSrvGetSpineState_Request"]

--- @class Ros2Franka_spine_msgsSrvGetSpineState_Response
--- @brief Complete ROS2 franka_spine_msgs/srv/GetSpineState_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state string Strict UTF-8 without NUL; length0..256 bytes.
--- @field error_code string Strict UTF-8 without NUL; length0..256 bytes.
--- @field error_description string Strict UTF-8 without NUL; length0..256 bytes.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros2Franka_spine_msgsSrvGetSpineState_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvGetSpineState_Response.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/GetSpineState_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/GetSpineState_Response.
--- @brief Ros2Franka_spine_msgsSrvGetSpineState_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvGetSpineState_Response.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvGetSpineState_Response.MIN_WIRE_BYTES: Inclusive complete minimum 13 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 13 bytes.
--- @brief Ros2Franka_spine_msgsSrvGetSpineState_Response.MAX_WIRE_BYTES: Inclusive complete maximum 781 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 781 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvGetSpineState_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvGetSpineState_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Response.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvGetSpineState_Response
--- @brief Encode a complete Ros2Franka_spine_msgsSrvGetSpineState_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvGetSpineState_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 13..781 bytes.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Response.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvGetSpineState_Response): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvGetSpineState_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvGetSpineState_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvGetSpineState_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvGetSpineState_Response
local Ros2Franka_spine_msgsSrvGetSpineState_Response = classes["Ros2Franka_spine_msgsSrvGetSpineState_Response"]

--- @class Ros2Franka_spine_msgsSrvHalt_Request
--- @brief Complete ROS2 franka_spine_msgs/srv/Halt_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Franka_spine_msgsSrvHalt_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvHalt_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvHalt_Request.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/Halt_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvHalt_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/Halt_Request.
--- @brief Ros2Franka_spine_msgsSrvHalt_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvHalt_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvHalt_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvHalt_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvHalt_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvHalt_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Franka_spine_msgsSrvHalt_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvHalt_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvHalt_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvHalt_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvHalt_Request.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvHalt_Request
--- @brief Encode a complete Ros2Franka_spine_msgsSrvHalt_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvHalt_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Franka_spine_msgsSrvHalt_Request.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvHalt_Request): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvHalt_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvHalt_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvHalt_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvHalt_Request
local Ros2Franka_spine_msgsSrvHalt_Request = classes["Ros2Franka_spine_msgsSrvHalt_Request"]

--- @class Ros2Franka_spine_msgsSrvHalt_Response
--- @brief Complete ROS2 franka_spine_msgs/srv/Halt_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state string Strict UTF-8 without NUL; length0..256 bytes.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_spine_msgsSrvHalt_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvHalt_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvHalt_Response.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/Halt_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvHalt_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/Halt_Response.
--- @brief Ros2Franka_spine_msgsSrvHalt_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvHalt_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvHalt_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvHalt_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvHalt_Response.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvHalt_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Franka_spine_msgsSrvHalt_Response.MAX_WIRE_BYTES: Inclusive complete maximum 521 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvHalt_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 521 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvHalt_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvHalt_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvHalt_Response.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvHalt_Response
--- @brief Encode a complete Ros2Franka_spine_msgsSrvHalt_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvHalt_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..521 bytes.
--- @see Ros2Franka_spine_msgsSrvHalt_Response.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvHalt_Response): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvHalt_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvHalt_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvHalt_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvHalt_Response
local Ros2Franka_spine_msgsSrvHalt_Response = classes["Ros2Franka_spine_msgsSrvHalt_Response"]

--- @class Ros2Franka_spine_msgsSrvSwitchOff_Request
--- @brief Complete ROS2 franka_spine_msgs/srv/SwitchOff_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Franka_spine_msgsSrvSwitchOff_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvSwitchOff_Request.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/SwitchOff_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/SwitchOff_Request.
--- @brief Ros2Franka_spine_msgsSrvSwitchOff_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvSwitchOff_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvSwitchOff_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Franka_spine_msgsSrvSwitchOff_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvSwitchOff_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvSwitchOff_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Request.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvSwitchOff_Request
--- @brief Encode a complete Ros2Franka_spine_msgsSrvSwitchOff_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvSwitchOff_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Request.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvSwitchOff_Request): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvSwitchOff_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvSwitchOff_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvSwitchOff_Request
local Ros2Franka_spine_msgsSrvSwitchOff_Request = classes["Ros2Franka_spine_msgsSrvSwitchOff_Request"]

--- @class Ros2Franka_spine_msgsSrvSwitchOff_Response
--- @brief Complete ROS2 franka_spine_msgs/srv/SwitchOff_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state string Strict UTF-8 without NUL; length0..256 bytes.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_spine_msgsSrvSwitchOff_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvSwitchOff_Response.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/SwitchOff_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/SwitchOff_Response.
--- @brief Ros2Franka_spine_msgsSrvSwitchOff_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvSwitchOff_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvSwitchOff_Response.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Franka_spine_msgsSrvSwitchOff_Response.MAX_WIRE_BYTES: Inclusive complete maximum 521 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 521 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvSwitchOff_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvSwitchOff_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Response.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvSwitchOff_Response
--- @brief Encode a complete Ros2Franka_spine_msgsSrvSwitchOff_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvSwitchOff_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..521 bytes.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Response.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvSwitchOff_Response): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvSwitchOff_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvSwitchOff_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvSwitchOff_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvSwitchOff_Response
local Ros2Franka_spine_msgsSrvSwitchOff_Response = classes["Ros2Franka_spine_msgsSrvSwitchOff_Response"]

--- @class Ros2Franka_spine_msgsSrvSwitchOn_Request
--- @brief Complete ROS2 franka_spine_msgs/srv/SwitchOn_Request value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros2Franka_spine_msgsSrvSwitchOn_Request.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Request.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvSwitchOn_Request.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/SwitchOn_Request.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Request.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/SwitchOn_Request.
--- @brief Ros2Franka_spine_msgsSrvSwitchOn_Request.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Request.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvSwitchOn_Request.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Request.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvSwitchOn_Request.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Request.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros2Franka_spine_msgsSrvSwitchOn_Request.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Request.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvSwitchOn_Request with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvSwitchOn_Request value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Request.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvSwitchOn_Request
--- @brief Encode a complete Ros2Franka_spine_msgsSrvSwitchOn_Request value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvSwitchOn_Request [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Request.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvSwitchOn_Request): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvSwitchOn_Request canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvSwitchOn_Request value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Request.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvSwitchOn_Request
local Ros2Franka_spine_msgsSrvSwitchOn_Request = classes["Ros2Franka_spine_msgsSrvSwitchOn_Request"]

--- @class Ros2Franka_spine_msgsSrvSwitchOn_Response
--- @brief Complete ROS2 franka_spine_msgs/srv/SwitchOn_Response value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field state string Strict UTF-8 without NUL; length0..256 bytes.
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field message string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros2Franka_spine_msgsSrvSwitchOn_Response.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Response.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Franka_spine_msgsSrvSwitchOn_Response.NATIVE_TYPE: Exact normalized native type name
--franka_spine_msgs/srv/SwitchOn_Response.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Response.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_spine_msgs/srv/SwitchOn_Response.
--- @brief Ros2Franka_spine_msgsSrvSwitchOn_Response.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Response.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Franka_spine_msgsSrvSwitchOn_Response.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Response.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Franka_spine_msgsSrvSwitchOn_Response.MIN_WIRE_BYTES: Inclusive complete minimum 9 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Response.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 9 bytes.
--- @brief Ros2Franka_spine_msgsSrvSwitchOn_Response.MAX_WIRE_BYTES: Inclusive complete maximum 521 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Response.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 521 bytes.
--- @brief Construct Ros2Franka_spine_msgsSrvSwitchOn_Response with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Franka_spine_msgsSrvSwitchOn_Response value New mutable complete value; no ROS resource.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Response.encode
--- @field new fun(values?: table): Ros2Franka_spine_msgsSrvSwitchOn_Response
--- @brief Encode a complete Ros2Franka_spine_msgsSrvSwitchOn_Response value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Franka_spine_msgsSrvSwitchOn_Response [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 9..521 bytes.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Response.decode
--- @field encode fun(value: Ros2Franka_spine_msgsSrvSwitchOn_Response): string
--- @brief Decode exactly one complete Ros2Franka_spine_msgsSrvSwitchOn_Response canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Franka_spine_msgsSrvSwitchOn_Response value New complete value; failures raise Lua errors.
--- @see Ros2Franka_spine_msgsSrvSwitchOn_Response.encode
--- @field decode fun(bytes: string): Ros2Franka_spine_msgsSrvSwitchOn_Response
local Ros2Franka_spine_msgsSrvSwitchOn_Response = classes["Ros2Franka_spine_msgsSrvSwitchOn_Response"]

return classes, by_name
