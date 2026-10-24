--- @brief Complete source-derived canonical Lua value classes.
--- @details Synchronous local values only; Lua5.4 with signed64-bit integers.
--- @see roswasm/wire.lua
local wire = require("roswasm.wire")
local schemas = {
    {
        ["symbol"] = "Ros1Franka_example_controllersJointTorqueComparison",
        ["ros_version"] = 1,
        ["native_type"] = "franka_example_controllers/JointTorqueComparison",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254",
        ["minimum"] = 176,
        ["maximum"] = 176,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "tau_error",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_commanded",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_measured",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "root_mean_square_error",
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
        ["symbol"] = "Ros1Franka_gripperGraspEpsilon",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/GraspEpsilon",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9",
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
            },
            {
                ["name"] = "outer",
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
        ["symbol"] = "Ros1Franka_gripperGraspGoal",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/GraspGoal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf",
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
                ["type"] = "Ros1Franka_gripperGraspEpsilon",
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
        ["symbol"] = "Ros1Franka_gripperGraspResult",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/GraspResult",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e",
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
        ["symbol"] = "Ros1Franka_gripperGraspFeedback",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/GraspFeedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Franka_gripperHomingGoal",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/HomingGoal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Franka_gripperHomingResult",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/HomingResult",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477",
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
        ["symbol"] = "Ros1Franka_gripperHomingFeedback",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/HomingFeedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Franka_gripperMoveGoal",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/MoveGoal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a",
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
        ["symbol"] = "Ros1Franka_gripperMoveResult",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/MoveResult",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3",
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
        ["symbol"] = "Ros1Franka_gripperMoveFeedback",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/MoveFeedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Franka_gripperStopGoal",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/StopGoal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Franka_gripperStopResult",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/StopResult",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61",
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
        ["symbol"] = "Ros1Franka_gripperStopFeedback",
        ["ros_version"] = 1,
        ["native_type"] = "franka_gripper/StopFeedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Franka_msgsErrorRecoveryGoal",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/ErrorRecoveryGoal",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Franka_msgsErrorRecoveryResult",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/ErrorRecoveryResult",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Franka_msgsErrorRecoveryFeedback",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/ErrorRecoveryFeedback",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21",
        ["minimum"] = 0,
        ["maximum"] = 0,
        ["semantics"] = "",
        ["fields"] = {},
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Franka_msgsErrors",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/Errors",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca",
        ["minimum"] = 41,
        ["maximum"] = 41,
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
            {
                ["name"] = "joint_move_in_wrong_direction",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "cartesian_spline_motion_generator_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "joint_via_motion_generator_planning_joint_limit_violation",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "base_acceleration_initialization_timeout",
                ["type"] = "bool",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "base_acceleration_invalid_reading",
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
        ["codec_identity"] = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435",
        ["minimum"] = 16,
        ["maximum"] = 144,
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
                ["string_bound"] = 128,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros1Franka_msgsFrankaState",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/FrankaState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71",
        ["minimum"] = 2491,
        ["maximum"] = 2619,
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
                ["name"] = "cartesian_collision",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "cartesian_contact",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "q",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "q_d",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "dq",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "dq_d",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
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
                ["name"] = "theta",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "dtheta",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_J",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "dtau_J",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_J_d",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "K_F_ext_hat_K",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "elbow",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "elbow_d",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "elbow_c",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "delbow_c",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "ddelbow_c",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 2,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "joint_collision",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "joint_contact",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "O_F_ext_hat_K",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "O_dP_EE_d",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "O_ddP_O",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "O_dP_EE_c",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "O_ddP_EE_c",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 6,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_ext_hat_filtered",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "m_ee",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "F_x_Cee",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "I_ee",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 9,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "m_load",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "F_x_Cload",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "I_load",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 9,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "m_total",
                ["type"] = "float64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "F_x_Ctotal",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "I_total",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 9,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "O_T_EE",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "O_T_EE_d",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "O_T_EE_c",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "F_T_EE",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "F_T_NE",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "NE_T_EE",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "EE_T_K",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 16,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
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
                ["type"] = "Ros1Franka_msgsErrors",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 41,
            },
            {
                ["name"] = "last_motion_errors",
                ["type"] = "Ros1Franka_msgsErrors",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 41,
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
        ["symbol"] = "Ros1Franka_msgsSetCartesianImpedanceRequest",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetCartesianImpedanceRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf",
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
        ["symbol"] = "Ros1Franka_msgsSetCartesianImpedanceResponse",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetCartesianImpedanceResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b",
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
        ["symbol"] = "Ros1Franka_msgsSetEEFrameRequest",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetEEFrameRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc",
        ["minimum"] = 128,
        ["maximum"] = 128,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "NE_T_EE",
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
        ["symbol"] = "Ros1Franka_msgsSetEEFrameResponse",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetEEFrameResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67",
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
        ["symbol"] = "Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetForceTorqueCollisionBehaviorRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5",
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
        ["symbol"] = "Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetForceTorqueCollisionBehaviorResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5",
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
        ["symbol"] = "Ros1Franka_msgsSetFullCollisionBehaviorRequest",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetFullCollisionBehaviorRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c",
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
        ["symbol"] = "Ros1Franka_msgsSetFullCollisionBehaviorResponse",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetFullCollisionBehaviorResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2",
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
        ["symbol"] = "Ros1Franka_msgsSetJointImpedanceRequest",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetJointImpedanceRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53",
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
        ["symbol"] = "Ros1Franka_msgsSetJointImpedanceResponse",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetJointImpedanceResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55",
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
        ["symbol"] = "Ros1Franka_msgsSetKFrameRequest",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetKFrameRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446",
        ["minimum"] = 128,
        ["maximum"] = 128,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "EE_T_K",
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
        ["symbol"] = "Ros1Franka_msgsSetKFrameResponse",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetKFrameResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443",
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
        ["symbol"] = "Ros1Franka_msgsSetLoadRequest",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetLoadRequest",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5",
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
                ["name"] = "F_x_center_load",
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
        ["symbol"] = "Ros1Franka_msgsSetLoadResponse",
        ["ros_version"] = 1,
        ["native_type"] = "franka_msgs/SetLoadResponse",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3",
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
}
local classes, by_name = wire.records(schemas)

--- @class Ros1Franka_example_controllersJointTorqueComparison
--- @brief Complete ROS1 franka_example_controllers/JointTorqueComparison value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field tau_error number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are
--rejected.
--- @field tau_commanded number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are
--rejected.
--- @field tau_measured number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are
--rejected.
--- @field root_mean_square_error number Finite IEEE float64.
--- @brief Ros1Franka_example_controllersJointTorqueComparison.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_example_controllersJointTorqueComparison.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_example_controllersJointTorqueComparison.NATIVE_TYPE: Exact normalized native type name
--franka_example_controllers/JointTorqueComparison.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_example_controllersJointTorqueComparison.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_example_controllers/JointTorqueComparison.
--- @brief Ros1Franka_example_controllersJointTorqueComparison.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_example_controllersJointTorqueComparison.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_example_controllersJointTorqueComparison.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_example_controllersJointTorqueComparison.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_example_controllersJointTorqueComparison.MIN_WIRE_BYTES: Inclusive complete minimum 176 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_example_controllersJointTorqueComparison.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 176 bytes.
--- @brief Ros1Franka_example_controllersJointTorqueComparison.MAX_WIRE_BYTES: Inclusive complete maximum 176 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_example_controllersJointTorqueComparison.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 176 bytes.
--- @brief Construct Ros1Franka_example_controllersJointTorqueComparison with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_example_controllersJointTorqueComparison value New mutable complete value; no ROS resource.
--- @see Ros1Franka_example_controllersJointTorqueComparison.encode
--- @field new fun(values?: table): Ros1Franka_example_controllersJointTorqueComparison
--- @brief Encode a complete Ros1Franka_example_controllersJointTorqueComparison value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_example_controllersJointTorqueComparison [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 176..176 bytes.
--- @see Ros1Franka_example_controllersJointTorqueComparison.decode
--- @field encode fun(value: Ros1Franka_example_controllersJointTorqueComparison): string
--- @brief Decode exactly one complete Ros1Franka_example_controllersJointTorqueComparison canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_example_controllersJointTorqueComparison value New complete value; failures raise Lua errors.
--- @see Ros1Franka_example_controllersJointTorqueComparison.encode
--- @field decode fun(bytes: string): Ros1Franka_example_controllersJointTorqueComparison
local Ros1Franka_example_controllersJointTorqueComparison = classes["Ros1Franka_example_controllersJointTorqueComparison"]

--- @class Ros1Franka_gripperGraspEpsilon
--- @brief Complete ROS1 franka_gripper/GraspEpsilon value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field inner number Finite IEEE float64.
--- @field outer number Finite IEEE float64.
--- @brief Ros1Franka_gripperGraspEpsilon.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspEpsilon.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperGraspEpsilon.NATIVE_TYPE: Exact normalized native type name franka_gripper/GraspEpsilon.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspEpsilon.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/GraspEpsilon.
--- @brief Ros1Franka_gripperGraspEpsilon.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspEpsilon.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperGraspEpsilon.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspEpsilon.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperGraspEpsilon.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspEpsilon.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Franka_gripperGraspEpsilon.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspEpsilon.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Franka_gripperGraspEpsilon with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperGraspEpsilon value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperGraspEpsilon.encode
--- @field new fun(values?: table): Ros1Franka_gripperGraspEpsilon
--- @brief Encode a complete Ros1Franka_gripperGraspEpsilon value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperGraspEpsilon [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Franka_gripperGraspEpsilon.decode
--- @field encode fun(value: Ros1Franka_gripperGraspEpsilon): string
--- @brief Decode exactly one complete Ros1Franka_gripperGraspEpsilon canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperGraspEpsilon value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperGraspEpsilon.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperGraspEpsilon
local Ros1Franka_gripperGraspEpsilon = classes["Ros1Franka_gripperGraspEpsilon"]

--- @class Ros1Franka_gripperGraspGoal
--- @brief Complete ROS1 franka_gripper/GraspGoal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field width number Finite IEEE float64.
--- @field epsilon table Complete nested franka_gripper/GraspEpsilon value; no native fields are projected away.
--- @field speed number Finite IEEE float64.
--- @field force number Finite IEEE float64.
--- @brief Ros1Franka_gripperGraspGoal.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspGoal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperGraspGoal.NATIVE_TYPE: Exact normalized native type name franka_gripper/GraspGoal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspGoal.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/GraspGoal.
--- @brief Ros1Franka_gripperGraspGoal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspGoal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperGraspGoal.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspGoal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperGraspGoal.MIN_WIRE_BYTES: Inclusive complete minimum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspGoal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 40 bytes.
--- @brief Ros1Franka_gripperGraspGoal.MAX_WIRE_BYTES: Inclusive complete maximum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspGoal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 40 bytes.
--- @brief Construct Ros1Franka_gripperGraspGoal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperGraspGoal value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperGraspGoal.encode
--- @field new fun(values?: table): Ros1Franka_gripperGraspGoal
--- @brief Encode a complete Ros1Franka_gripperGraspGoal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperGraspGoal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 40..40 bytes.
--- @see Ros1Franka_gripperGraspGoal.decode
--- @field encode fun(value: Ros1Franka_gripperGraspGoal): string
--- @brief Decode exactly one complete Ros1Franka_gripperGraspGoal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperGraspGoal value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperGraspGoal.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperGraspGoal
local Ros1Franka_gripperGraspGoal = classes["Ros1Franka_gripperGraspGoal"]

--- @class Ros1Franka_gripperGraspResult
--- @brief Complete ROS1 franka_gripper/GraspResult value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Franka_gripperGraspResult.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspResult.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperGraspResult.NATIVE_TYPE: Exact normalized native type name franka_gripper/GraspResult.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspResult.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/GraspResult.
--- @brief Ros1Franka_gripperGraspResult.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspResult.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperGraspResult.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspResult.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperGraspResult.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspResult.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Franka_gripperGraspResult.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspResult.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros1Franka_gripperGraspResult with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperGraspResult value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperGraspResult.encode
--- @field new fun(values?: table): Ros1Franka_gripperGraspResult
--- @brief Encode a complete Ros1Franka_gripperGraspResult value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperGraspResult [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros1Franka_gripperGraspResult.decode
--- @field encode fun(value: Ros1Franka_gripperGraspResult): string
--- @brief Decode exactly one complete Ros1Franka_gripperGraspResult canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperGraspResult value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperGraspResult.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperGraspResult
local Ros1Franka_gripperGraspResult = classes["Ros1Franka_gripperGraspResult"]

--- @class Ros1Franka_gripperGraspFeedback
--- @brief Complete ROS1 franka_gripper/GraspFeedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Franka_gripperGraspFeedback.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspFeedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperGraspFeedback.NATIVE_TYPE: Exact normalized native type name franka_gripper/GraspFeedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspFeedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/GraspFeedback.
--- @brief Ros1Franka_gripperGraspFeedback.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspFeedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperGraspFeedback.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspFeedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperGraspFeedback.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspFeedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Franka_gripperGraspFeedback.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperGraspFeedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Franka_gripperGraspFeedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperGraspFeedback value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperGraspFeedback.encode
--- @field new fun(values?: table): Ros1Franka_gripperGraspFeedback
--- @brief Encode a complete Ros1Franka_gripperGraspFeedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperGraspFeedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Franka_gripperGraspFeedback.decode
--- @field encode fun(value: Ros1Franka_gripperGraspFeedback): string
--- @brief Decode exactly one complete Ros1Franka_gripperGraspFeedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperGraspFeedback value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperGraspFeedback.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperGraspFeedback
local Ros1Franka_gripperGraspFeedback = classes["Ros1Franka_gripperGraspFeedback"]

--- @class Ros1Franka_gripperHomingGoal
--- @brief Complete ROS1 franka_gripper/HomingGoal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Franka_gripperHomingGoal.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingGoal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperHomingGoal.NATIVE_TYPE: Exact normalized native type name franka_gripper/HomingGoal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingGoal.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/HomingGoal.
--- @brief Ros1Franka_gripperHomingGoal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingGoal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperHomingGoal.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingGoal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperHomingGoal.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingGoal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Franka_gripperHomingGoal.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingGoal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Franka_gripperHomingGoal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperHomingGoal value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperHomingGoal.encode
--- @field new fun(values?: table): Ros1Franka_gripperHomingGoal
--- @brief Encode a complete Ros1Franka_gripperHomingGoal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperHomingGoal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Franka_gripperHomingGoal.decode
--- @field encode fun(value: Ros1Franka_gripperHomingGoal): string
--- @brief Decode exactly one complete Ros1Franka_gripperHomingGoal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperHomingGoal value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperHomingGoal.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperHomingGoal
local Ros1Franka_gripperHomingGoal = classes["Ros1Franka_gripperHomingGoal"]

--- @class Ros1Franka_gripperHomingResult
--- @brief Complete ROS1 franka_gripper/HomingResult value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Franka_gripperHomingResult.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingResult.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperHomingResult.NATIVE_TYPE: Exact normalized native type name franka_gripper/HomingResult.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingResult.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/HomingResult.
--- @brief Ros1Franka_gripperHomingResult.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingResult.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperHomingResult.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingResult.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperHomingResult.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingResult.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Franka_gripperHomingResult.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingResult.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros1Franka_gripperHomingResult with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperHomingResult value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperHomingResult.encode
--- @field new fun(values?: table): Ros1Franka_gripperHomingResult
--- @brief Encode a complete Ros1Franka_gripperHomingResult value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperHomingResult [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros1Franka_gripperHomingResult.decode
--- @field encode fun(value: Ros1Franka_gripperHomingResult): string
--- @brief Decode exactly one complete Ros1Franka_gripperHomingResult canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperHomingResult value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperHomingResult.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperHomingResult
local Ros1Franka_gripperHomingResult = classes["Ros1Franka_gripperHomingResult"]

--- @class Ros1Franka_gripperHomingFeedback
--- @brief Complete ROS1 franka_gripper/HomingFeedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Franka_gripperHomingFeedback.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingFeedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperHomingFeedback.NATIVE_TYPE: Exact normalized native type name
--franka_gripper/HomingFeedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingFeedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/HomingFeedback.
--- @brief Ros1Franka_gripperHomingFeedback.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingFeedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperHomingFeedback.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingFeedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperHomingFeedback.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingFeedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Franka_gripperHomingFeedback.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperHomingFeedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Franka_gripperHomingFeedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperHomingFeedback value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperHomingFeedback.encode
--- @field new fun(values?: table): Ros1Franka_gripperHomingFeedback
--- @brief Encode a complete Ros1Franka_gripperHomingFeedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperHomingFeedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Franka_gripperHomingFeedback.decode
--- @field encode fun(value: Ros1Franka_gripperHomingFeedback): string
--- @brief Decode exactly one complete Ros1Franka_gripperHomingFeedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperHomingFeedback value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperHomingFeedback.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperHomingFeedback
local Ros1Franka_gripperHomingFeedback = classes["Ros1Franka_gripperHomingFeedback"]

--- @class Ros1Franka_gripperMoveGoal
--- @brief Complete ROS1 franka_gripper/MoveGoal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field width number Finite IEEE float64.
--- @field speed number Finite IEEE float64.
--- @brief Ros1Franka_gripperMoveGoal.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveGoal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperMoveGoal.NATIVE_TYPE: Exact normalized native type name franka_gripper/MoveGoal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveGoal.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/MoveGoal.
--- @brief Ros1Franka_gripperMoveGoal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveGoal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperMoveGoal.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveGoal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperMoveGoal.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveGoal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Franka_gripperMoveGoal.MAX_WIRE_BYTES: Inclusive complete maximum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveGoal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 16 bytes.
--- @brief Construct Ros1Franka_gripperMoveGoal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperMoveGoal value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperMoveGoal.encode
--- @field new fun(values?: table): Ros1Franka_gripperMoveGoal
--- @brief Encode a complete Ros1Franka_gripperMoveGoal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperMoveGoal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..16 bytes.
--- @see Ros1Franka_gripperMoveGoal.decode
--- @field encode fun(value: Ros1Franka_gripperMoveGoal): string
--- @brief Decode exactly one complete Ros1Franka_gripperMoveGoal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperMoveGoal value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperMoveGoal.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperMoveGoal
local Ros1Franka_gripperMoveGoal = classes["Ros1Franka_gripperMoveGoal"]

--- @class Ros1Franka_gripperMoveResult
--- @brief Complete ROS1 franka_gripper/MoveResult value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Franka_gripperMoveResult.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveResult.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperMoveResult.NATIVE_TYPE: Exact normalized native type name franka_gripper/MoveResult.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveResult.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/MoveResult.
--- @brief Ros1Franka_gripperMoveResult.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveResult.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperMoveResult.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveResult.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperMoveResult.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveResult.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Franka_gripperMoveResult.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveResult.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros1Franka_gripperMoveResult with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperMoveResult value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperMoveResult.encode
--- @field new fun(values?: table): Ros1Franka_gripperMoveResult
--- @brief Encode a complete Ros1Franka_gripperMoveResult value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperMoveResult [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros1Franka_gripperMoveResult.decode
--- @field encode fun(value: Ros1Franka_gripperMoveResult): string
--- @brief Decode exactly one complete Ros1Franka_gripperMoveResult canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperMoveResult value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperMoveResult.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperMoveResult
local Ros1Franka_gripperMoveResult = classes["Ros1Franka_gripperMoveResult"]

--- @class Ros1Franka_gripperMoveFeedback
--- @brief Complete ROS1 franka_gripper/MoveFeedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Franka_gripperMoveFeedback.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveFeedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperMoveFeedback.NATIVE_TYPE: Exact normalized native type name franka_gripper/MoveFeedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveFeedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/MoveFeedback.
--- @brief Ros1Franka_gripperMoveFeedback.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveFeedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperMoveFeedback.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveFeedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperMoveFeedback.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveFeedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Franka_gripperMoveFeedback.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperMoveFeedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Franka_gripperMoveFeedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperMoveFeedback value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperMoveFeedback.encode
--- @field new fun(values?: table): Ros1Franka_gripperMoveFeedback
--- @brief Encode a complete Ros1Franka_gripperMoveFeedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperMoveFeedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Franka_gripperMoveFeedback.decode
--- @field encode fun(value: Ros1Franka_gripperMoveFeedback): string
--- @brief Decode exactly one complete Ros1Franka_gripperMoveFeedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperMoveFeedback value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperMoveFeedback.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperMoveFeedback
local Ros1Franka_gripperMoveFeedback = classes["Ros1Franka_gripperMoveFeedback"]

--- @class Ros1Franka_gripperStopGoal
--- @brief Complete ROS1 franka_gripper/StopGoal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Franka_gripperStopGoal.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopGoal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperStopGoal.NATIVE_TYPE: Exact normalized native type name franka_gripper/StopGoal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopGoal.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/StopGoal.
--- @brief Ros1Franka_gripperStopGoal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopGoal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperStopGoal.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopGoal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperStopGoal.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopGoal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Franka_gripperStopGoal.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopGoal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Franka_gripperStopGoal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperStopGoal value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperStopGoal.encode
--- @field new fun(values?: table): Ros1Franka_gripperStopGoal
--- @brief Encode a complete Ros1Franka_gripperStopGoal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperStopGoal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Franka_gripperStopGoal.decode
--- @field encode fun(value: Ros1Franka_gripperStopGoal): string
--- @brief Decode exactly one complete Ros1Franka_gripperStopGoal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperStopGoal value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperStopGoal.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperStopGoal
local Ros1Franka_gripperStopGoal = classes["Ros1Franka_gripperStopGoal"]

--- @class Ros1Franka_gripperStopResult
--- @brief Complete ROS1 franka_gripper/StopResult value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Franka_gripperStopResult.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopResult.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperStopResult.NATIVE_TYPE: Exact normalized native type name franka_gripper/StopResult.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopResult.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/StopResult.
--- @brief Ros1Franka_gripperStopResult.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopResult.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperStopResult.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopResult.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperStopResult.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopResult.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Franka_gripperStopResult.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopResult.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros1Franka_gripperStopResult with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperStopResult value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperStopResult.encode
--- @field new fun(values?: table): Ros1Franka_gripperStopResult
--- @brief Encode a complete Ros1Franka_gripperStopResult value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperStopResult [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros1Franka_gripperStopResult.decode
--- @field encode fun(value: Ros1Franka_gripperStopResult): string
--- @brief Decode exactly one complete Ros1Franka_gripperStopResult canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperStopResult value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperStopResult.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperStopResult
local Ros1Franka_gripperStopResult = classes["Ros1Franka_gripperStopResult"]

--- @class Ros1Franka_gripperStopFeedback
--- @brief Complete ROS1 franka_gripper/StopFeedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Franka_gripperStopFeedback.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopFeedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_gripperStopFeedback.NATIVE_TYPE: Exact normalized native type name franka_gripper/StopFeedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopFeedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_gripper/StopFeedback.
--- @brief Ros1Franka_gripperStopFeedback.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopFeedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_gripperStopFeedback.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopFeedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_gripperStopFeedback.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopFeedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Franka_gripperStopFeedback.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_gripperStopFeedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Franka_gripperStopFeedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_gripperStopFeedback value New mutable complete value; no ROS resource.
--- @see Ros1Franka_gripperStopFeedback.encode
--- @field new fun(values?: table): Ros1Franka_gripperStopFeedback
--- @brief Encode a complete Ros1Franka_gripperStopFeedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_gripperStopFeedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Franka_gripperStopFeedback.decode
--- @field encode fun(value: Ros1Franka_gripperStopFeedback): string
--- @brief Decode exactly one complete Ros1Franka_gripperStopFeedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_gripperStopFeedback value New complete value; failures raise Lua errors.
--- @see Ros1Franka_gripperStopFeedback.encode
--- @field decode fun(bytes: string): Ros1Franka_gripperStopFeedback
local Ros1Franka_gripperStopFeedback = classes["Ros1Franka_gripperStopFeedback"]

--- @class Ros1Franka_msgsErrorRecoveryGoal
--- @brief Complete ROS1 franka_msgs/ErrorRecoveryGoal value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Franka_msgsErrorRecoveryGoal.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryGoal.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsErrorRecoveryGoal.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/ErrorRecoveryGoal.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryGoal.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/ErrorRecoveryGoal.
--- @brief Ros1Franka_msgsErrorRecoveryGoal.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryGoal.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsErrorRecoveryGoal.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryGoal.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsErrorRecoveryGoal.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryGoal.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Franka_msgsErrorRecoveryGoal.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryGoal.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Franka_msgsErrorRecoveryGoal with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsErrorRecoveryGoal value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsErrorRecoveryGoal.encode
--- @field new fun(values?: table): Ros1Franka_msgsErrorRecoveryGoal
--- @brief Encode a complete Ros1Franka_msgsErrorRecoveryGoal value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsErrorRecoveryGoal [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Franka_msgsErrorRecoveryGoal.decode
--- @field encode fun(value: Ros1Franka_msgsErrorRecoveryGoal): string
--- @brief Decode exactly one complete Ros1Franka_msgsErrorRecoveryGoal canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsErrorRecoveryGoal value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsErrorRecoveryGoal.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsErrorRecoveryGoal
local Ros1Franka_msgsErrorRecoveryGoal = classes["Ros1Franka_msgsErrorRecoveryGoal"]

--- @class Ros1Franka_msgsErrorRecoveryResult
--- @brief Complete ROS1 franka_msgs/ErrorRecoveryResult value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Franka_msgsErrorRecoveryResult.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryResult.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsErrorRecoveryResult.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/ErrorRecoveryResult.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryResult.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/ErrorRecoveryResult.
--- @brief Ros1Franka_msgsErrorRecoveryResult.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryResult.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsErrorRecoveryResult.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryResult.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsErrorRecoveryResult.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryResult.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Franka_msgsErrorRecoveryResult.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryResult.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Franka_msgsErrorRecoveryResult with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsErrorRecoveryResult value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsErrorRecoveryResult.encode
--- @field new fun(values?: table): Ros1Franka_msgsErrorRecoveryResult
--- @brief Encode a complete Ros1Franka_msgsErrorRecoveryResult value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsErrorRecoveryResult [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Franka_msgsErrorRecoveryResult.decode
--- @field encode fun(value: Ros1Franka_msgsErrorRecoveryResult): string
--- @brief Decode exactly one complete Ros1Franka_msgsErrorRecoveryResult canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsErrorRecoveryResult value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsErrorRecoveryResult.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsErrorRecoveryResult
local Ros1Franka_msgsErrorRecoveryResult = classes["Ros1Franka_msgsErrorRecoveryResult"]

--- @class Ros1Franka_msgsErrorRecoveryFeedback
--- @brief Complete ROS1 franka_msgs/ErrorRecoveryFeedback value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @brief Ros1Franka_msgsErrorRecoveryFeedback.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryFeedback.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsErrorRecoveryFeedback.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/ErrorRecoveryFeedback.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryFeedback.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/ErrorRecoveryFeedback.
--- @brief Ros1Franka_msgsErrorRecoveryFeedback.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryFeedback.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsErrorRecoveryFeedback.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryFeedback.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsErrorRecoveryFeedback.MIN_WIRE_BYTES: Inclusive complete minimum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryFeedback.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 0 bytes.
--- @brief Ros1Franka_msgsErrorRecoveryFeedback.MAX_WIRE_BYTES: Inclusive complete maximum 0 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrorRecoveryFeedback.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 0 bytes.
--- @brief Construct Ros1Franka_msgsErrorRecoveryFeedback with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsErrorRecoveryFeedback value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsErrorRecoveryFeedback.encode
--- @field new fun(values?: table): Ros1Franka_msgsErrorRecoveryFeedback
--- @brief Encode a complete Ros1Franka_msgsErrorRecoveryFeedback value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsErrorRecoveryFeedback [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 0..0 bytes.
--- @see Ros1Franka_msgsErrorRecoveryFeedback.decode
--- @field encode fun(value: Ros1Franka_msgsErrorRecoveryFeedback): string
--- @brief Decode exactly one complete Ros1Franka_msgsErrorRecoveryFeedback canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsErrorRecoveryFeedback value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsErrorRecoveryFeedback.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsErrorRecoveryFeedback
local Ros1Franka_msgsErrorRecoveryFeedback = classes["Ros1Franka_msgsErrorRecoveryFeedback"]

--- @class Ros1Franka_msgsErrors
--- @brief Complete ROS1 franka_msgs/Errors value and codec.
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
--- @field joint_move_in_wrong_direction boolean Exact boolean; encoded as one byte0/1.
--- @field cartesian_spline_motion_generator_violation boolean Exact boolean; encoded as one byte0/1.
--- @field joint_via_motion_generator_planning_joint_limit_violation boolean Exact boolean; encoded as one byte0/1.
--- @field base_acceleration_initialization_timeout boolean Exact boolean; encoded as one byte0/1.
--- @field base_acceleration_invalid_reading boolean Exact boolean; encoded as one byte0/1.
--- @brief Ros1Franka_msgsErrors.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrors.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsErrors.NATIVE_TYPE: Exact normalized native type name franka_msgs/Errors.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrors.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/Errors.
--- @brief Ros1Franka_msgsErrors.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrors.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsErrors.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrors.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsErrors.MIN_WIRE_BYTES: Inclusive complete minimum 41 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrors.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 41 bytes.
--- @brief Ros1Franka_msgsErrors.MAX_WIRE_BYTES: Inclusive complete maximum 41 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsErrors.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 41 bytes.
--- @brief Construct Ros1Franka_msgsErrors with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsErrors value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsErrors.encode
--- @field new fun(values?: table): Ros1Franka_msgsErrors
--- @brief Encode a complete Ros1Franka_msgsErrors value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsErrors [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 41..41 bytes.
--- @see Ros1Franka_msgsErrors.decode
--- @field encode fun(value: Ros1Franka_msgsErrors): string
--- @brief Decode exactly one complete Ros1Franka_msgsErrors canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsErrors value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsErrors.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsErrors
local Ros1Franka_msgsErrors = classes["Ros1Franka_msgsErrors"]

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
--- @field frame_id string Strict UTF-8 without NUL; length0..128 bytes.
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
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Std_msgsHeader.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Std_msgsHeader.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros1Std_msgsHeader.MAX_WIRE_BYTES: Inclusive complete maximum 144 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Std_msgsHeader.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 144 bytes.
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
--- @return string bytes New immutable string, 16..144 bytes.
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

--- @class Ros1Franka_msgsFrankaState
--- @brief Complete ROS1 franka_msgs/FrankaState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested std_msgs/Header value; no native fields are projected away.
--- @field cartesian_collision number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra array keys
--are rejected.
--- @field cartesian_contact number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra array keys are
--rejected.
--- @field q number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field q_d number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field dq number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field dq_d number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field ddq_d number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field theta number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field dtheta number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field tau_J number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field dtau_J number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field tau_J_d number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field K_F_ext_hat_K number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra array keys are
--rejected.
--- @field elbow number[] Finite IEEE float64. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @field elbow_d number[] Finite IEEE float64. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @field elbow_c number[] Finite IEEE float64. Exactly 2 contiguous elements; holes and extra array keys are rejected.
--- @field delbow_c number[] Finite IEEE float64. Exactly 2 contiguous elements; holes and extra array keys are
--rejected.
--- @field ddelbow_c number[] Finite IEEE float64. Exactly 2 contiguous elements; holes and extra array keys are
--rejected.
--- @field joint_collision number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are
--rejected.
--- @field joint_contact number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are
--rejected.
--- @field O_F_ext_hat_K number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra array keys are
--rejected.
--- @field O_dP_EE_d number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra array keys are
--rejected.
--- @field O_ddP_O number[] Finite IEEE float64. Exactly 3 contiguous elements; holes and extra array keys are rejected.
--- @field O_dP_EE_c number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra array keys are
--rejected.
--- @field O_ddP_EE_c number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra array keys are
--rejected.
--- @field tau_ext_hat_filtered number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys
--are rejected.
--- @field m_ee number Finite IEEE float64.
--- @field F_x_Cee number[] Finite IEEE float64. Exactly 3 contiguous elements; holes and extra array keys are rejected.
--- @field I_ee number[] Finite IEEE float64. Exactly 9 contiguous elements; holes and extra array keys are rejected.
--- @field m_load number Finite IEEE float64.
--- @field F_x_Cload number[] Finite IEEE float64. Exactly 3 contiguous elements; holes and extra array keys are
--rejected.
--- @field I_load number[] Finite IEEE float64. Exactly 9 contiguous elements; holes and extra array keys are rejected.
--- @field m_total number Finite IEEE float64.
--- @field F_x_Ctotal number[] Finite IEEE float64. Exactly 3 contiguous elements; holes and extra array keys are
--rejected.
--- @field I_total number[] Finite IEEE float64. Exactly 9 contiguous elements; holes and extra array keys are rejected.
--- @field O_T_EE number[] Finite IEEE float64. Exactly 16 contiguous elements; holes and extra array keys are rejected.
--- @field O_T_EE_d number[] Finite IEEE float64. Exactly 16 contiguous elements; holes and extra array keys are
--rejected.
--- @field O_T_EE_c number[] Finite IEEE float64. Exactly 16 contiguous elements; holes and extra array keys are
--rejected.
--- @field F_T_EE number[] Finite IEEE float64. Exactly 16 contiguous elements; holes and extra array keys are rejected.
--- @field F_T_NE number[] Finite IEEE float64. Exactly 16 contiguous elements; holes and extra array keys are rejected.
--- @field NE_T_EE number[] Finite IEEE float64. Exactly 16 contiguous elements; holes and extra array keys are
--rejected.
--- @field EE_T_K number[] Finite IEEE float64. Exactly 16 contiguous elements; holes and extra array keys are rejected.
--- @field time number Finite IEEE float64.
--- @field control_command_success_rate number Finite IEEE float64.
--- @field robot_mode integer Exact uint8 range 0..255.
--- @field current_errors table Complete nested franka_msgs/Errors value; no native fields are projected away.
--- @field last_motion_errors table Complete nested franka_msgs/Errors value; no native fields are projected away.
--- @brief Ros1Franka_msgsFrankaState.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsFrankaState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsFrankaState.NATIVE_TYPE: Exact normalized native type name franka_msgs/FrankaState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsFrankaState.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/FrankaState.
--- @brief Ros1Franka_msgsFrankaState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsFrankaState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsFrankaState.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsFrankaState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsFrankaState.MIN_WIRE_BYTES: Inclusive complete minimum 2491 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsFrankaState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 2491 bytes.
--- @brief Ros1Franka_msgsFrankaState.MAX_WIRE_BYTES: Inclusive complete maximum 2619 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsFrankaState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 2619 bytes.
--- @brief Native class constant Ros1Franka_msgsFrankaState.ROBOT_MODE_OTHER.
--- @details Original uint8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Franka_msgsFrankaState.new
--- @field ROBOT_MODE_OTHER integer
--- @brief Native class constant Ros1Franka_msgsFrankaState.ROBOT_MODE_IDLE.
--- @details Original uint8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Franka_msgsFrankaState.new
--- @field ROBOT_MODE_IDLE integer
--- @brief Native class constant Ros1Franka_msgsFrankaState.ROBOT_MODE_MOVE.
--- @details Original uint8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Franka_msgsFrankaState.new
--- @field ROBOT_MODE_MOVE integer
--- @brief Native class constant Ros1Franka_msgsFrankaState.ROBOT_MODE_GUIDING.
--- @details Original uint8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Franka_msgsFrankaState.new
--- @field ROBOT_MODE_GUIDING integer
--- @brief Native class constant Ros1Franka_msgsFrankaState.ROBOT_MODE_REFLEX.
--- @details Original uint8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Franka_msgsFrankaState.new
--- @field ROBOT_MODE_REFLEX integer
--- @brief Native class constant Ros1Franka_msgsFrankaState.ROBOT_MODE_USER_STOPPED.
--- @details Original uint8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Franka_msgsFrankaState.new
--- @field ROBOT_MODE_USER_STOPPED integer
--- @brief Native class constant Ros1Franka_msgsFrankaState.ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY.
--- @details Original uint8 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Franka_msgsFrankaState.new
--- @field ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY integer
--- @brief Construct Ros1Franka_msgsFrankaState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsFrankaState value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsFrankaState.encode
--- @field new fun(values?: table): Ros1Franka_msgsFrankaState
--- @brief Encode a complete Ros1Franka_msgsFrankaState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsFrankaState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 2491..2619 bytes.
--- @see Ros1Franka_msgsFrankaState.decode
--- @field encode fun(value: Ros1Franka_msgsFrankaState): string
--- @brief Decode exactly one complete Ros1Franka_msgsFrankaState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsFrankaState value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsFrankaState.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsFrankaState
local Ros1Franka_msgsFrankaState = classes["Ros1Franka_msgsFrankaState"]

--- @class Ros1Franka_msgsSetCartesianImpedanceRequest
--- @brief Complete ROS1 franka_msgs/SetCartesianImpedanceRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field cartesian_stiffness number[] Finite IEEE float64. Exactly 6 contiguous elements; holes and extra array keys
--are rejected.
--- @brief Ros1Franka_msgsSetCartesianImpedanceRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetCartesianImpedanceRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetCartesianImpedanceRequest.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/SetCartesianImpedanceRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetCartesianImpedanceRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetCartesianImpedanceRequest.
--- @brief Ros1Franka_msgsSetCartesianImpedanceRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetCartesianImpedanceRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetCartesianImpedanceRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetCartesianImpedanceRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetCartesianImpedanceRequest.MIN_WIRE_BYTES: Inclusive complete minimum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetCartesianImpedanceRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 48 bytes.
--- @brief Ros1Franka_msgsSetCartesianImpedanceRequest.MAX_WIRE_BYTES: Inclusive complete maximum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetCartesianImpedanceRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 48 bytes.
--- @brief Construct Ros1Franka_msgsSetCartesianImpedanceRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetCartesianImpedanceRequest value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetCartesianImpedanceRequest.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetCartesianImpedanceRequest
--- @brief Encode a complete Ros1Franka_msgsSetCartesianImpedanceRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetCartesianImpedanceRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 48..48 bytes.
--- @see Ros1Franka_msgsSetCartesianImpedanceRequest.decode
--- @field encode fun(value: Ros1Franka_msgsSetCartesianImpedanceRequest): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetCartesianImpedanceRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetCartesianImpedanceRequest value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetCartesianImpedanceRequest.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetCartesianImpedanceRequest
local Ros1Franka_msgsSetCartesianImpedanceRequest = classes["Ros1Franka_msgsSetCartesianImpedanceRequest"]

--- @class Ros1Franka_msgsSetCartesianImpedanceResponse
--- @brief Complete ROS1 franka_msgs/SetCartesianImpedanceResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Franka_msgsSetCartesianImpedanceResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetCartesianImpedanceResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetCartesianImpedanceResponse.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/SetCartesianImpedanceResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetCartesianImpedanceResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetCartesianImpedanceResponse.
--- @brief Ros1Franka_msgsSetCartesianImpedanceResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetCartesianImpedanceResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetCartesianImpedanceResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetCartesianImpedanceResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetCartesianImpedanceResponse.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetCartesianImpedanceResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Franka_msgsSetCartesianImpedanceResponse.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetCartesianImpedanceResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros1Franka_msgsSetCartesianImpedanceResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetCartesianImpedanceResponse value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetCartesianImpedanceResponse.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetCartesianImpedanceResponse
--- @brief Encode a complete Ros1Franka_msgsSetCartesianImpedanceResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetCartesianImpedanceResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros1Franka_msgsSetCartesianImpedanceResponse.decode
--- @field encode fun(value: Ros1Franka_msgsSetCartesianImpedanceResponse): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetCartesianImpedanceResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetCartesianImpedanceResponse value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetCartesianImpedanceResponse.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetCartesianImpedanceResponse
local Ros1Franka_msgsSetCartesianImpedanceResponse = classes["Ros1Franka_msgsSetCartesianImpedanceResponse"]

--- @class Ros1Franka_msgsSetEEFrameRequest
--- @brief Complete ROS1 franka_msgs/SetEEFrameRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field NE_T_EE number[] Finite IEEE float64. Exactly 16 contiguous elements; holes and extra array keys are
--rejected.
--- @brief Ros1Franka_msgsSetEEFrameRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetEEFrameRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetEEFrameRequest.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/SetEEFrameRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetEEFrameRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetEEFrameRequest.
--- @brief Ros1Franka_msgsSetEEFrameRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetEEFrameRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetEEFrameRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetEEFrameRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetEEFrameRequest.MIN_WIRE_BYTES: Inclusive complete minimum 128 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetEEFrameRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 128 bytes.
--- @brief Ros1Franka_msgsSetEEFrameRequest.MAX_WIRE_BYTES: Inclusive complete maximum 128 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetEEFrameRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 128 bytes.
--- @brief Construct Ros1Franka_msgsSetEEFrameRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetEEFrameRequest value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetEEFrameRequest.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetEEFrameRequest
--- @brief Encode a complete Ros1Franka_msgsSetEEFrameRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetEEFrameRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 128..128 bytes.
--- @see Ros1Franka_msgsSetEEFrameRequest.decode
--- @field encode fun(value: Ros1Franka_msgsSetEEFrameRequest): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetEEFrameRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetEEFrameRequest value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetEEFrameRequest.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetEEFrameRequest
local Ros1Franka_msgsSetEEFrameRequest = classes["Ros1Franka_msgsSetEEFrameRequest"]

--- @class Ros1Franka_msgsSetEEFrameResponse
--- @brief Complete ROS1 franka_msgs/SetEEFrameResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Franka_msgsSetEEFrameResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetEEFrameResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetEEFrameResponse.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/SetEEFrameResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetEEFrameResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetEEFrameResponse.
--- @brief Ros1Franka_msgsSetEEFrameResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetEEFrameResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetEEFrameResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetEEFrameResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetEEFrameResponse.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetEEFrameResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Franka_msgsSetEEFrameResponse.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetEEFrameResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros1Franka_msgsSetEEFrameResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetEEFrameResponse value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetEEFrameResponse.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetEEFrameResponse
--- @brief Encode a complete Ros1Franka_msgsSetEEFrameResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetEEFrameResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros1Franka_msgsSetEEFrameResponse.decode
--- @field encode fun(value: Ros1Franka_msgsSetEEFrameResponse): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetEEFrameResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetEEFrameResponse value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetEEFrameResponse.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetEEFrameResponse
local Ros1Franka_msgsSetEEFrameResponse = classes["Ros1Franka_msgsSetEEFrameResponse"]

--- @class Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
--- @brief Complete ROS1 franka_msgs/SetForceTorqueCollisionBehaviorRequest value and codec.
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
--- @brief Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/SetForceTorqueCollisionBehaviorRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetForceTorqueCollisionBehaviorRequest.
--- @brief Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.MIN_WIRE_BYTES: Inclusive complete minimum 208 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 208 bytes.
--- @brief Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.MAX_WIRE_BYTES: Inclusive complete maximum 208 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 208 bytes.
--- @brief Construct Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
--- @brief Encode a complete Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 208..208 bytes.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.decode
--- @field encode fun(value: Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
local Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest = classes["Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest"]

--- @class Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
--- @brief Complete ROS1 franka_msgs/SetForceTorqueCollisionBehaviorResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/SetForceTorqueCollisionBehaviorResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetForceTorqueCollisionBehaviorResponse.
--- @brief Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.NATIVE_IDENTITY: Exact supplied native identity; nil
--means absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.CODEC_IDENTITY: Finite canonical schema identity; does
--not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
--- @brief Encode a complete Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.decode
--- @field encode fun(value: Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
local Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse = classes["Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse"]

--- @class Ros1Franka_msgsSetFullCollisionBehaviorRequest
--- @brief Complete ROS1 franka_msgs/SetFullCollisionBehaviorRequest value and codec.
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
--- @brief Ros1Franka_msgsSetFullCollisionBehaviorRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetFullCollisionBehaviorRequest.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/SetFullCollisionBehaviorRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetFullCollisionBehaviorRequest.
--- @brief Ros1Franka_msgsSetFullCollisionBehaviorRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetFullCollisionBehaviorRequest.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetFullCollisionBehaviorRequest.MIN_WIRE_BYTES: Inclusive complete minimum 416 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 416 bytes.
--- @brief Ros1Franka_msgsSetFullCollisionBehaviorRequest.MAX_WIRE_BYTES: Inclusive complete maximum 416 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 416 bytes.
--- @brief Construct Ros1Franka_msgsSetFullCollisionBehaviorRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetFullCollisionBehaviorRequest value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorRequest.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetFullCollisionBehaviorRequest
--- @brief Encode a complete Ros1Franka_msgsSetFullCollisionBehaviorRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetFullCollisionBehaviorRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 416..416 bytes.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorRequest.decode
--- @field encode fun(value: Ros1Franka_msgsSetFullCollisionBehaviorRequest): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetFullCollisionBehaviorRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetFullCollisionBehaviorRequest value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorRequest.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetFullCollisionBehaviorRequest
local Ros1Franka_msgsSetFullCollisionBehaviorRequest = classes["Ros1Franka_msgsSetFullCollisionBehaviorRequest"]

--- @class Ros1Franka_msgsSetFullCollisionBehaviorResponse
--- @brief Complete ROS1 franka_msgs/SetFullCollisionBehaviorResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Franka_msgsSetFullCollisionBehaviorResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetFullCollisionBehaviorResponse.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/SetFullCollisionBehaviorResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetFullCollisionBehaviorResponse.
--- @brief Ros1Franka_msgsSetFullCollisionBehaviorResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means
--absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetFullCollisionBehaviorResponse.CODEC_IDENTITY: Finite canonical schema identity; does not
--replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetFullCollisionBehaviorResponse.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Franka_msgsSetFullCollisionBehaviorResponse.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros1Franka_msgsSetFullCollisionBehaviorResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetFullCollisionBehaviorResponse value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorResponse.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetFullCollisionBehaviorResponse
--- @brief Encode a complete Ros1Franka_msgsSetFullCollisionBehaviorResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetFullCollisionBehaviorResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorResponse.decode
--- @field encode fun(value: Ros1Franka_msgsSetFullCollisionBehaviorResponse): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetFullCollisionBehaviorResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetFullCollisionBehaviorResponse value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetFullCollisionBehaviorResponse.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetFullCollisionBehaviorResponse
local Ros1Franka_msgsSetFullCollisionBehaviorResponse = classes["Ros1Franka_msgsSetFullCollisionBehaviorResponse"]

--- @class Ros1Franka_msgsSetJointImpedanceRequest
--- @brief Complete ROS1 franka_msgs/SetJointImpedanceRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field joint_stiffness number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are
--rejected.
--- @brief Ros1Franka_msgsSetJointImpedanceRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetJointImpedanceRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetJointImpedanceRequest.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/SetJointImpedanceRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetJointImpedanceRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetJointImpedanceRequest.
--- @brief Ros1Franka_msgsSetJointImpedanceRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetJointImpedanceRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetJointImpedanceRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetJointImpedanceRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetJointImpedanceRequest.MIN_WIRE_BYTES: Inclusive complete minimum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetJointImpedanceRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 56 bytes.
--- @brief Ros1Franka_msgsSetJointImpedanceRequest.MAX_WIRE_BYTES: Inclusive complete maximum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetJointImpedanceRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 56 bytes.
--- @brief Construct Ros1Franka_msgsSetJointImpedanceRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetJointImpedanceRequest value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetJointImpedanceRequest.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetJointImpedanceRequest
--- @brief Encode a complete Ros1Franka_msgsSetJointImpedanceRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetJointImpedanceRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 56..56 bytes.
--- @see Ros1Franka_msgsSetJointImpedanceRequest.decode
--- @field encode fun(value: Ros1Franka_msgsSetJointImpedanceRequest): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetJointImpedanceRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetJointImpedanceRequest value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetJointImpedanceRequest.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetJointImpedanceRequest
local Ros1Franka_msgsSetJointImpedanceRequest = classes["Ros1Franka_msgsSetJointImpedanceRequest"]

--- @class Ros1Franka_msgsSetJointImpedanceResponse
--- @brief Complete ROS1 franka_msgs/SetJointImpedanceResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Franka_msgsSetJointImpedanceResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetJointImpedanceResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetJointImpedanceResponse.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/SetJointImpedanceResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetJointImpedanceResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetJointImpedanceResponse.
--- @brief Ros1Franka_msgsSetJointImpedanceResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetJointImpedanceResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetJointImpedanceResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetJointImpedanceResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetJointImpedanceResponse.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetJointImpedanceResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Franka_msgsSetJointImpedanceResponse.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetJointImpedanceResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros1Franka_msgsSetJointImpedanceResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetJointImpedanceResponse value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetJointImpedanceResponse.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetJointImpedanceResponse
--- @brief Encode a complete Ros1Franka_msgsSetJointImpedanceResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetJointImpedanceResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros1Franka_msgsSetJointImpedanceResponse.decode
--- @field encode fun(value: Ros1Franka_msgsSetJointImpedanceResponse): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetJointImpedanceResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetJointImpedanceResponse value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetJointImpedanceResponse.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetJointImpedanceResponse
local Ros1Franka_msgsSetJointImpedanceResponse = classes["Ros1Franka_msgsSetJointImpedanceResponse"]

--- @class Ros1Franka_msgsSetKFrameRequest
--- @brief Complete ROS1 franka_msgs/SetKFrameRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field EE_T_K number[] Finite IEEE float64. Exactly 16 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros1Franka_msgsSetKFrameRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetKFrameRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetKFrameRequest.NATIVE_TYPE: Exact normalized native type name franka_msgs/SetKFrameRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetKFrameRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetKFrameRequest.
--- @brief Ros1Franka_msgsSetKFrameRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetKFrameRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetKFrameRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetKFrameRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetKFrameRequest.MIN_WIRE_BYTES: Inclusive complete minimum 128 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetKFrameRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 128 bytes.
--- @brief Ros1Franka_msgsSetKFrameRequest.MAX_WIRE_BYTES: Inclusive complete maximum 128 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetKFrameRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 128 bytes.
--- @brief Construct Ros1Franka_msgsSetKFrameRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetKFrameRequest value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetKFrameRequest.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetKFrameRequest
--- @brief Encode a complete Ros1Franka_msgsSetKFrameRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetKFrameRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 128..128 bytes.
--- @see Ros1Franka_msgsSetKFrameRequest.decode
--- @field encode fun(value: Ros1Franka_msgsSetKFrameRequest): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetKFrameRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetKFrameRequest value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetKFrameRequest.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetKFrameRequest
local Ros1Franka_msgsSetKFrameRequest = classes["Ros1Franka_msgsSetKFrameRequest"]

--- @class Ros1Franka_msgsSetKFrameResponse
--- @brief Complete ROS1 franka_msgs/SetKFrameResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Franka_msgsSetKFrameResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetKFrameResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetKFrameResponse.NATIVE_TYPE: Exact normalized native type name
--franka_msgs/SetKFrameResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetKFrameResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetKFrameResponse.
--- @brief Ros1Franka_msgsSetKFrameResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetKFrameResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetKFrameResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native
--type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetKFrameResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetKFrameResponse.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetKFrameResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Franka_msgsSetKFrameResponse.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetKFrameResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros1Franka_msgsSetKFrameResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetKFrameResponse value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetKFrameResponse.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetKFrameResponse
--- @brief Encode a complete Ros1Franka_msgsSetKFrameResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetKFrameResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros1Franka_msgsSetKFrameResponse.decode
--- @field encode fun(value: Ros1Franka_msgsSetKFrameResponse): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetKFrameResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetKFrameResponse value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetKFrameResponse.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetKFrameResponse
local Ros1Franka_msgsSetKFrameResponse = classes["Ros1Franka_msgsSetKFrameResponse"]

--- @class Ros1Franka_msgsSetLoadRequest
--- @brief Complete ROS1 franka_msgs/SetLoadRequest value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mass number Finite IEEE float64.
--- @field F_x_center_load number[] Finite IEEE float64. Exactly 3 contiguous elements; holes and extra array keys are
--rejected.
--- @field load_inertia number[] Finite IEEE float64. Exactly 9 contiguous elements; holes and extra array keys are
--rejected.
--- @brief Ros1Franka_msgsSetLoadRequest.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetLoadRequest.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetLoadRequest.NATIVE_TYPE: Exact normalized native type name franka_msgs/SetLoadRequest.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetLoadRequest.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetLoadRequest.
--- @brief Ros1Franka_msgsSetLoadRequest.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetLoadRequest.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetLoadRequest.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetLoadRequest.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetLoadRequest.MIN_WIRE_BYTES: Inclusive complete minimum 104 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetLoadRequest.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 104 bytes.
--- @brief Ros1Franka_msgsSetLoadRequest.MAX_WIRE_BYTES: Inclusive complete maximum 104 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetLoadRequest.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 104 bytes.
--- @brief Construct Ros1Franka_msgsSetLoadRequest with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetLoadRequest value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetLoadRequest.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetLoadRequest
--- @brief Encode a complete Ros1Franka_msgsSetLoadRequest value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetLoadRequest [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 104..104 bytes.
--- @see Ros1Franka_msgsSetLoadRequest.decode
--- @field encode fun(value: Ros1Franka_msgsSetLoadRequest): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetLoadRequest canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetLoadRequest value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetLoadRequest.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetLoadRequest
local Ros1Franka_msgsSetLoadRequest = classes["Ros1Franka_msgsSetLoadRequest"]

--- @class Ros1Franka_msgsSetLoadResponse
--- @brief Complete ROS1 franka_msgs/SetLoadResponse value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field success boolean Exact boolean; encoded as one byte0/1.
--- @field error string Strict UTF-8 without NUL; length0..256 bytes.
--- @brief Ros1Franka_msgsSetLoadResponse.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetLoadResponse.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Franka_msgsSetLoadResponse.NATIVE_TYPE: Exact normalized native type name franka_msgs/SetLoadResponse.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetLoadResponse.encode
--- @field NATIVE_TYPE string Exact normalized native type name franka_msgs/SetLoadResponse.
--- @brief Ros1Franka_msgsSetLoadResponse.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetLoadResponse.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Franka_msgsSetLoadResponse.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetLoadResponse.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Franka_msgsSetLoadResponse.MIN_WIRE_BYTES: Inclusive complete minimum 5 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetLoadResponse.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 5 bytes.
--- @brief Ros1Franka_msgsSetLoadResponse.MAX_WIRE_BYTES: Inclusive complete maximum 261 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Franka_msgsSetLoadResponse.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 261 bytes.
--- @brief Construct Ros1Franka_msgsSetLoadResponse with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Franka_msgsSetLoadResponse value New mutable complete value; no ROS resource.
--- @see Ros1Franka_msgsSetLoadResponse.encode
--- @field new fun(values?: table): Ros1Franka_msgsSetLoadResponse
--- @brief Encode a complete Ros1Franka_msgsSetLoadResponse value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Franka_msgsSetLoadResponse [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 5..261 bytes.
--- @see Ros1Franka_msgsSetLoadResponse.decode
--- @field encode fun(value: Ros1Franka_msgsSetLoadResponse): string
--- @brief Decode exactly one complete Ros1Franka_msgsSetLoadResponse canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Franka_msgsSetLoadResponse value New complete value; failures raise Lua errors.
--- @see Ros1Franka_msgsSetLoadResponse.encode
--- @field decode fun(bytes: string): Ros1Franka_msgsSetLoadResponse
local Ros1Franka_msgsSetLoadResponse = classes["Ros1Franka_msgsSetLoadResponse"]

return classes, by_name
