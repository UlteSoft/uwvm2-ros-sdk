--- @brief Complete source-derived canonical Lua value classes.
--- @details Synchronous local values only; Lua5.4 with signed64-bit integers.
--- @see roswasm/wire.lua
local wire = require("roswasm.wire")
local schemas = {
    {
        ["symbol"] = "Ros2Flexiv_msgsMsgJointPosVel",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/JointPosVel",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8",
        ["minimum"] = 112,
        ["maximum"] = 112,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "positions",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "velocities",
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
        ["symbol"] = "Ros2Flexiv_msgsMsgMode",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/Mode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f",
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
            ["MODE_RT_JOINT_POSITION"] = 2,
            ["MODE_NRT_JOINT_POSITION"] = 3,
            ["MODE_NRT_PLAN_EXECUTION"] = 4,
            ["MODE_NRT_PRIMITIVE_EXECUTION"] = 5,
            ["MODE_RT_CARTESIAN_MOTION_FORCE_BASE"] = 6,
            ["MODE_RT_CARTESIAN_MOTION_FORCE_TCP"] = 7,
            ["MODE_NRT_CARTESIAN_MOTION_FORCE_BASE"] = 8,
            ["MODE_NRT_CARTESIAN_MOTION_FORCE_TCP"] = 9,
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
        ["symbol"] = "Ros2Flexiv_msgsMsgRobotStates",
        ["ros_version"] = 2,
        ["native_type"] = "flexiv_msgs/msg/RobotStates",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b",
        ["minimum"] = 864,
        ["maximum"] = 864,
        ["semantics"] = "",
        ["fields"] = {
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
                ["name"] = "theta",
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
                ["name"] = "dtheta",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_des",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_dot",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tau_ext",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 7,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "tcp_pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "tcp_pose_des",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "tcp_vel",
                ["type"] = "Ros2Geometry_msgsMsgAccel",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 48,
            },
            {
                ["name"] = "cam_pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "flange_pose",
                ["type"] = "Ros2Geometry_msgsMsgPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "ft_sensor_raw",
                ["type"] = "Ros2Geometry_msgsMsgWrench",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 48,
            },
            {
                ["name"] = "ext_wrench_tcp_frame",
                ["type"] = "Ros2Geometry_msgsMsgWrench",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 48,
            },
            {
                ["name"] = "ext_wrench_base_frame",
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
}
local classes, by_name = wire.records(schemas)

--- @class Ros2Flexiv_msgsMsgJointPosVel
--- @brief Complete ROS2 flexiv_msgs/msg/JointPosVel value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field positions number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are
--rejected.
--- @field velocities number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are
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
--- @brief Ros2Flexiv_msgsMsgJointPosVel.MIN_WIRE_BYTES: Inclusive complete minimum 112 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointPosVel.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 112 bytes.
--- @brief Ros2Flexiv_msgsMsgJointPosVel.MAX_WIRE_BYTES: Inclusive complete maximum 112 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgJointPosVel.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 112 bytes.
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
--- @return string bytes New immutable string, 112..112 bytes.
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
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_RT_JOINT_POSITION.
--- @details Original int8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_RT_JOINT_POSITION integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_JOINT_POSITION.
--- @details Original int8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_JOINT_POSITION integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_PLAN_EXECUTION.
--- @details Original int8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_PLAN_EXECUTION integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_PRIMITIVE_EXECUTION.
--- @details Original int8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_PRIMITIVE_EXECUTION integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_RT_CARTESIAN_MOTION_FORCE_BASE.
--- @details Original int8 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_RT_CARTESIAN_MOTION_FORCE_BASE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_RT_CARTESIAN_MOTION_FORCE_TCP.
--- @details Original int8 literal 7; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_RT_CARTESIAN_MOTION_FORCE_TCP integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_CARTESIAN_MOTION_FORCE_BASE.
--- @details Original int8 literal 8; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_CARTESIAN_MOTION_FORCE_BASE integer
--- @brief Native class constant Ros2Flexiv_msgsMsgMode.MODE_NRT_CARTESIAN_MOTION_FORCE_TCP.
--- @details Original int8 literal 9; consumes no instance wire bytes. Treat as read-only.
--- @see Ros2Flexiv_msgsMsgMode.new
--- @field MODE_NRT_CARTESIAN_MOTION_FORCE_TCP integer
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

--- @class Ros2Flexiv_msgsMsgRobotStates
--- @brief Complete ROS2 flexiv_msgs/msg/RobotStates value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field q number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field theta number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field dq number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field dtheta number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field tau number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field tau_des number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field tau_dot number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field tau_ext number[] Finite IEEE float64. Exactly 7 contiguous elements; holes and extra array keys are rejected.
--- @field tcp_pose table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field tcp_pose_des table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field tcp_vel table Complete nested geometry_msgs/msg/Accel value; no native fields are projected away.
--- @field cam_pose table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field flange_pose table Complete nested geometry_msgs/msg/Pose value; no native fields are projected away.
--- @field ft_sensor_raw table Complete nested geometry_msgs/msg/Wrench value; no native fields are projected away.
--- @field ext_wrench_tcp_frame table Complete nested geometry_msgs/msg/Wrench value; no native fields are projected
--away.
--- @field ext_wrench_base_frame table Complete nested geometry_msgs/msg/Wrench value; no native fields are projected
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
--- @brief Ros2Flexiv_msgsMsgRobotStates.MIN_WIRE_BYTES: Inclusive complete minimum 864 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotStates.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 864 bytes.
--- @brief Ros2Flexiv_msgsMsgRobotStates.MAX_WIRE_BYTES: Inclusive complete maximum 864 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Flexiv_msgsMsgRobotStates.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 864 bytes.
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
--- @return string bytes New immutable string, 864..864 bytes.
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
