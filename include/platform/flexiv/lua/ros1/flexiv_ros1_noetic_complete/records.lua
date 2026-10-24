--- @brief Complete source-derived canonical Lua value classes.
--- @details Synchronous local values only; Lua5.4 with signed64-bit integers.
--- @see roswasm/wire.lua
local wire = require("roswasm.wire")
local schemas = {
    {
        ["symbol"] = "Ros1Flexiv_msgsJointPosVel",
        ["ros_version"] = 1,
        ["native_type"] = "flexiv_msgs/JointPosVel",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa",
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
        ["symbol"] = "Ros1Flexiv_msgsMode",
        ["ros_version"] = 1,
        ["native_type"] = "flexiv_msgs/Mode",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422",
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
        ["symbol"] = "Ros1Geometry_msgsPoint",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Point",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b",
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
        ["symbol"] = "Ros1Geometry_msgsQuaternion",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Quaternion",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934",
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
            {
                ["name"] = "w",
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
        ["symbol"] = "Ros1Geometry_msgsPose",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Pose",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471",
        ["minimum"] = 56,
        ["maximum"] = 56,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "position",
                ["type"] = "Ros1Geometry_msgsPoint",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "orientation",
                ["type"] = "Ros1Geometry_msgsQuaternion",
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
        ["symbol"] = "Ros1Geometry_msgsVector3",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Vector3",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc",
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
        ["symbol"] = "Ros1Geometry_msgsAccel",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Accel",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed",
        ["minimum"] = 48,
        ["maximum"] = 48,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "linear",
                ["type"] = "Ros1Geometry_msgsVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "angular",
                ["type"] = "Ros1Geometry_msgsVector3",
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
        ["symbol"] = "Ros1Geometry_msgsWrench",
        ["ros_version"] = 1,
        ["native_type"] = "geometry_msgs/Wrench",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3",
        ["minimum"] = 48,
        ["maximum"] = 48,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "force",
                ["type"] = "Ros1Geometry_msgsVector3",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 24,
            },
            {
                ["name"] = "torque",
                ["type"] = "Ros1Geometry_msgsVector3",
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
        ["symbol"] = "Ros1Flexiv_msgsRobotStates",
        ["ros_version"] = 1,
        ["native_type"] = "flexiv_msgs/RobotStates",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8",
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
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "tcp_pose_des",
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "tcp_vel",
                ["type"] = "Ros1Geometry_msgsAccel",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 48,
            },
            {
                ["name"] = "cam_pose",
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "flange_pose",
                ["type"] = "Ros1Geometry_msgsPose",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 56,
            },
            {
                ["name"] = "ft_sensor_raw",
                ["type"] = "Ros1Geometry_msgsWrench",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 48,
            },
            {
                ["name"] = "ext_wrench_tcp_frame",
                ["type"] = "Ros1Geometry_msgsWrench",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 48,
            },
            {
                ["name"] = "ext_wrench_base_frame",
                ["type"] = "Ros1Geometry_msgsWrench",
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

--- @class Ros1Flexiv_msgsJointPosVel
--- @brief Complete ROS1 flexiv_msgs/JointPosVel value and codec.
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
--- @brief Ros1Flexiv_msgsJointPosVel.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsJointPosVel.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Flexiv_msgsJointPosVel.NATIVE_TYPE: Exact normalized native type name flexiv_msgs/JointPosVel.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsJointPosVel.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/JointPosVel.
--- @brief Ros1Flexiv_msgsJointPosVel.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsJointPosVel.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Flexiv_msgsJointPosVel.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsJointPosVel.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Flexiv_msgsJointPosVel.MIN_WIRE_BYTES: Inclusive complete minimum 112 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsJointPosVel.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 112 bytes.
--- @brief Ros1Flexiv_msgsJointPosVel.MAX_WIRE_BYTES: Inclusive complete maximum 112 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsJointPosVel.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 112 bytes.
--- @brief Construct Ros1Flexiv_msgsJointPosVel with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Flexiv_msgsJointPosVel value New mutable complete value; no ROS resource.
--- @see Ros1Flexiv_msgsJointPosVel.encode
--- @field new fun(values?: table): Ros1Flexiv_msgsJointPosVel
--- @brief Encode a complete Ros1Flexiv_msgsJointPosVel value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Flexiv_msgsJointPosVel [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 112..112 bytes.
--- @see Ros1Flexiv_msgsJointPosVel.decode
--- @field encode fun(value: Ros1Flexiv_msgsJointPosVel): string
--- @brief Decode exactly one complete Ros1Flexiv_msgsJointPosVel canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Flexiv_msgsJointPosVel value New complete value; failures raise Lua errors.
--- @see Ros1Flexiv_msgsJointPosVel.encode
--- @field decode fun(bytes: string): Ros1Flexiv_msgsJointPosVel
local Ros1Flexiv_msgsJointPosVel = classes["Ros1Flexiv_msgsJointPosVel"]

--- @class Ros1Flexiv_msgsMode
--- @brief Complete ROS1 flexiv_msgs/Mode value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field mode integer Exact int8 range -128..127.
--- @brief Ros1Flexiv_msgsMode.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsMode.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Flexiv_msgsMode.NATIVE_TYPE: Exact normalized native type name flexiv_msgs/Mode.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsMode.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/Mode.
--- @brief Ros1Flexiv_msgsMode.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsMode.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Flexiv_msgsMode.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsMode.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Flexiv_msgsMode.MIN_WIRE_BYTES: Inclusive complete minimum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsMode.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 1 bytes.
--- @brief Ros1Flexiv_msgsMode.MAX_WIRE_BYTES: Inclusive complete maximum 1 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsMode.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 1 bytes.
--- @brief Native class constant Ros1Flexiv_msgsMode.MODE_UNKNOWN.
--- @details Original int8 literal -1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Flexiv_msgsMode.new
--- @field MODE_UNKNOWN integer
--- @brief Native class constant Ros1Flexiv_msgsMode.MODE_IDLE.
--- @details Original int8 literal 0; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Flexiv_msgsMode.new
--- @field MODE_IDLE integer
--- @brief Native class constant Ros1Flexiv_msgsMode.MODE_RT_JOINT_TORQUE.
--- @details Original int8 literal 1; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Flexiv_msgsMode.new
--- @field MODE_RT_JOINT_TORQUE integer
--- @brief Native class constant Ros1Flexiv_msgsMode.MODE_RT_JOINT_POSITION.
--- @details Original int8 literal 2; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Flexiv_msgsMode.new
--- @field MODE_RT_JOINT_POSITION integer
--- @brief Native class constant Ros1Flexiv_msgsMode.MODE_NRT_JOINT_POSITION.
--- @details Original int8 literal 3; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Flexiv_msgsMode.new
--- @field MODE_NRT_JOINT_POSITION integer
--- @brief Native class constant Ros1Flexiv_msgsMode.MODE_NRT_PLAN_EXECUTION.
--- @details Original int8 literal 4; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Flexiv_msgsMode.new
--- @field MODE_NRT_PLAN_EXECUTION integer
--- @brief Native class constant Ros1Flexiv_msgsMode.MODE_NRT_PRIMITIVE_EXECUTION.
--- @details Original int8 literal 5; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Flexiv_msgsMode.new
--- @field MODE_NRT_PRIMITIVE_EXECUTION integer
--- @brief Native class constant Ros1Flexiv_msgsMode.MODE_RT_CARTESIAN_MOTION_FORCE_BASE.
--- @details Original int8 literal 6; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Flexiv_msgsMode.new
--- @field MODE_RT_CARTESIAN_MOTION_FORCE_BASE integer
--- @brief Native class constant Ros1Flexiv_msgsMode.MODE_RT_CARTESIAN_MOTION_FORCE_TCP.
--- @details Original int8 literal 7; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Flexiv_msgsMode.new
--- @field MODE_RT_CARTESIAN_MOTION_FORCE_TCP integer
--- @brief Native class constant Ros1Flexiv_msgsMode.MODE_NRT_CARTESIAN_MOTION_FORCE_BASE.
--- @details Original int8 literal 8; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Flexiv_msgsMode.new
--- @field MODE_NRT_CARTESIAN_MOTION_FORCE_BASE integer
--- @brief Native class constant Ros1Flexiv_msgsMode.MODE_NRT_CARTESIAN_MOTION_FORCE_TCP.
--- @details Original int8 literal 9; consumes no instance wire bytes. Treat as read-only.
--- @see Ros1Flexiv_msgsMode.new
--- @field MODE_NRT_CARTESIAN_MOTION_FORCE_TCP integer
--- @brief Construct Ros1Flexiv_msgsMode with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Flexiv_msgsMode value New mutable complete value; no ROS resource.
--- @see Ros1Flexiv_msgsMode.encode
--- @field new fun(values?: table): Ros1Flexiv_msgsMode
--- @brief Encode a complete Ros1Flexiv_msgsMode value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Flexiv_msgsMode [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 1..1 bytes.
--- @see Ros1Flexiv_msgsMode.decode
--- @field encode fun(value: Ros1Flexiv_msgsMode): string
--- @brief Decode exactly one complete Ros1Flexiv_msgsMode canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Flexiv_msgsMode value New complete value; failures raise Lua errors.
--- @see Ros1Flexiv_msgsMode.encode
--- @field decode fun(bytes: string): Ros1Flexiv_msgsMode
local Ros1Flexiv_msgsMode = classes["Ros1Flexiv_msgsMode"]

--- @class Ros1Geometry_msgsPoint
--- @brief Complete ROS1 geometry_msgs/Point value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float64.
--- @field y number Finite IEEE float64.
--- @field z number Finite IEEE float64.
--- @brief Ros1Geometry_msgsPoint.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPoint.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Geometry_msgsPoint.NATIVE_TYPE: Exact normalized native type name geometry_msgs/Point.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPoint.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/Point.
--- @brief Ros1Geometry_msgsPoint.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPoint.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Geometry_msgsPoint.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPoint.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Geometry_msgsPoint.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPoint.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Geometry_msgsPoint.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPoint.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Geometry_msgsPoint with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Geometry_msgsPoint value New mutable complete value; no ROS resource.
--- @see Ros1Geometry_msgsPoint.encode
--- @field new fun(values?: table): Ros1Geometry_msgsPoint
--- @brief Encode a complete Ros1Geometry_msgsPoint value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Geometry_msgsPoint [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Geometry_msgsPoint.decode
--- @field encode fun(value: Ros1Geometry_msgsPoint): string
--- @brief Decode exactly one complete Ros1Geometry_msgsPoint canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Geometry_msgsPoint value New complete value; failures raise Lua errors.
--- @see Ros1Geometry_msgsPoint.encode
--- @field decode fun(bytes: string): Ros1Geometry_msgsPoint
local Ros1Geometry_msgsPoint = classes["Ros1Geometry_msgsPoint"]

--- @class Ros1Geometry_msgsQuaternion
--- @brief Complete ROS1 geometry_msgs/Quaternion value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float64.
--- @field y number Finite IEEE float64.
--- @field z number Finite IEEE float64.
--- @field w number Finite IEEE float64.
--- @brief Ros1Geometry_msgsQuaternion.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Geometry_msgsQuaternion.NATIVE_TYPE: Exact normalized native type name geometry_msgs/Quaternion.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/Quaternion.
--- @brief Ros1Geometry_msgsQuaternion.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Geometry_msgsQuaternion.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Geometry_msgsQuaternion.MIN_WIRE_BYTES: Inclusive complete minimum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 32 bytes.
--- @brief Ros1Geometry_msgsQuaternion.MAX_WIRE_BYTES: Inclusive complete maximum 32 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 32 bytes.
--- @brief Construct Ros1Geometry_msgsQuaternion with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Geometry_msgsQuaternion value New mutable complete value; no ROS resource.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field new fun(values?: table): Ros1Geometry_msgsQuaternion
--- @brief Encode a complete Ros1Geometry_msgsQuaternion value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Geometry_msgsQuaternion [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 32..32 bytes.
--- @see Ros1Geometry_msgsQuaternion.decode
--- @field encode fun(value: Ros1Geometry_msgsQuaternion): string
--- @brief Decode exactly one complete Ros1Geometry_msgsQuaternion canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Geometry_msgsQuaternion value New complete value; failures raise Lua errors.
--- @see Ros1Geometry_msgsQuaternion.encode
--- @field decode fun(bytes: string): Ros1Geometry_msgsQuaternion
local Ros1Geometry_msgsQuaternion = classes["Ros1Geometry_msgsQuaternion"]

--- @class Ros1Geometry_msgsPose
--- @brief Complete ROS1 geometry_msgs/Pose value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field position table Complete nested geometry_msgs/Point value; no native fields are projected away.
--- @field orientation table Complete nested geometry_msgs/Quaternion value; no native fields are projected away.
--- @brief Ros1Geometry_msgsPose.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPose.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Geometry_msgsPose.NATIVE_TYPE: Exact normalized native type name geometry_msgs/Pose.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPose.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/Pose.
--- @brief Ros1Geometry_msgsPose.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPose.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Geometry_msgsPose.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPose.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Geometry_msgsPose.MIN_WIRE_BYTES: Inclusive complete minimum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPose.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 56 bytes.
--- @brief Ros1Geometry_msgsPose.MAX_WIRE_BYTES: Inclusive complete maximum 56 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsPose.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 56 bytes.
--- @brief Construct Ros1Geometry_msgsPose with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Geometry_msgsPose value New mutable complete value; no ROS resource.
--- @see Ros1Geometry_msgsPose.encode
--- @field new fun(values?: table): Ros1Geometry_msgsPose
--- @brief Encode a complete Ros1Geometry_msgsPose value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Geometry_msgsPose [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 56..56 bytes.
--- @see Ros1Geometry_msgsPose.decode
--- @field encode fun(value: Ros1Geometry_msgsPose): string
--- @brief Decode exactly one complete Ros1Geometry_msgsPose canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Geometry_msgsPose value New complete value; failures raise Lua errors.
--- @see Ros1Geometry_msgsPose.encode
--- @field decode fun(bytes: string): Ros1Geometry_msgsPose
local Ros1Geometry_msgsPose = classes["Ros1Geometry_msgsPose"]

--- @class Ros1Geometry_msgsVector3
--- @brief Complete ROS1 geometry_msgs/Vector3 value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field x number Finite IEEE float64.
--- @field y number Finite IEEE float64.
--- @field z number Finite IEEE float64.
--- @brief Ros1Geometry_msgsVector3.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsVector3.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Geometry_msgsVector3.NATIVE_TYPE: Exact normalized native type name geometry_msgs/Vector3.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsVector3.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/Vector3.
--- @brief Ros1Geometry_msgsVector3.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsVector3.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Geometry_msgsVector3.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsVector3.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Geometry_msgsVector3.MIN_WIRE_BYTES: Inclusive complete minimum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsVector3.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 24 bytes.
--- @brief Ros1Geometry_msgsVector3.MAX_WIRE_BYTES: Inclusive complete maximum 24 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsVector3.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 24 bytes.
--- @brief Construct Ros1Geometry_msgsVector3 with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Geometry_msgsVector3 value New mutable complete value; no ROS resource.
--- @see Ros1Geometry_msgsVector3.encode
--- @field new fun(values?: table): Ros1Geometry_msgsVector3
--- @brief Encode a complete Ros1Geometry_msgsVector3 value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Geometry_msgsVector3 [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 24..24 bytes.
--- @see Ros1Geometry_msgsVector3.decode
--- @field encode fun(value: Ros1Geometry_msgsVector3): string
--- @brief Decode exactly one complete Ros1Geometry_msgsVector3 canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Geometry_msgsVector3 value New complete value; failures raise Lua errors.
--- @see Ros1Geometry_msgsVector3.encode
--- @field decode fun(bytes: string): Ros1Geometry_msgsVector3
local Ros1Geometry_msgsVector3 = classes["Ros1Geometry_msgsVector3"]

--- @class Ros1Geometry_msgsAccel
--- @brief Complete ROS1 geometry_msgs/Accel value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field linear table Complete nested geometry_msgs/Vector3 value; no native fields are projected away.
--- @field angular table Complete nested geometry_msgs/Vector3 value; no native fields are projected away.
--- @brief Ros1Geometry_msgsAccel.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsAccel.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Geometry_msgsAccel.NATIVE_TYPE: Exact normalized native type name geometry_msgs/Accel.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsAccel.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/Accel.
--- @brief Ros1Geometry_msgsAccel.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsAccel.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Geometry_msgsAccel.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsAccel.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Geometry_msgsAccel.MIN_WIRE_BYTES: Inclusive complete minimum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsAccel.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 48 bytes.
--- @brief Ros1Geometry_msgsAccel.MAX_WIRE_BYTES: Inclusive complete maximum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsAccel.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 48 bytes.
--- @brief Construct Ros1Geometry_msgsAccel with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Geometry_msgsAccel value New mutable complete value; no ROS resource.
--- @see Ros1Geometry_msgsAccel.encode
--- @field new fun(values?: table): Ros1Geometry_msgsAccel
--- @brief Encode a complete Ros1Geometry_msgsAccel value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Geometry_msgsAccel [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 48..48 bytes.
--- @see Ros1Geometry_msgsAccel.decode
--- @field encode fun(value: Ros1Geometry_msgsAccel): string
--- @brief Decode exactly one complete Ros1Geometry_msgsAccel canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Geometry_msgsAccel value New complete value; failures raise Lua errors.
--- @see Ros1Geometry_msgsAccel.encode
--- @field decode fun(bytes: string): Ros1Geometry_msgsAccel
local Ros1Geometry_msgsAccel = classes["Ros1Geometry_msgsAccel"]

--- @class Ros1Geometry_msgsWrench
--- @brief Complete ROS1 geometry_msgs/Wrench value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field force table Complete nested geometry_msgs/Vector3 value; no native fields are projected away.
--- @field torque table Complete nested geometry_msgs/Vector3 value; no native fields are projected away.
--- @brief Ros1Geometry_msgsWrench.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsWrench.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Geometry_msgsWrench.NATIVE_TYPE: Exact normalized native type name geometry_msgs/Wrench.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsWrench.encode
--- @field NATIVE_TYPE string Exact normalized native type name geometry_msgs/Wrench.
--- @brief Ros1Geometry_msgsWrench.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsWrench.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Geometry_msgsWrench.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsWrench.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Geometry_msgsWrench.MIN_WIRE_BYTES: Inclusive complete minimum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsWrench.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 48 bytes.
--- @brief Ros1Geometry_msgsWrench.MAX_WIRE_BYTES: Inclusive complete maximum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Geometry_msgsWrench.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 48 bytes.
--- @brief Construct Ros1Geometry_msgsWrench with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Geometry_msgsWrench value New mutable complete value; no ROS resource.
--- @see Ros1Geometry_msgsWrench.encode
--- @field new fun(values?: table): Ros1Geometry_msgsWrench
--- @brief Encode a complete Ros1Geometry_msgsWrench value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Geometry_msgsWrench [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 48..48 bytes.
--- @see Ros1Geometry_msgsWrench.decode
--- @field encode fun(value: Ros1Geometry_msgsWrench): string
--- @brief Decode exactly one complete Ros1Geometry_msgsWrench canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Geometry_msgsWrench value New complete value; failures raise Lua errors.
--- @see Ros1Geometry_msgsWrench.encode
--- @field decode fun(bytes: string): Ros1Geometry_msgsWrench
local Ros1Geometry_msgsWrench = classes["Ros1Geometry_msgsWrench"]

--- @class Ros1Flexiv_msgsRobotStates
--- @brief Complete ROS1 flexiv_msgs/RobotStates value and codec.
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
--- @field tcp_pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field tcp_pose_des table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field tcp_vel table Complete nested geometry_msgs/Accel value; no native fields are projected away.
--- @field cam_pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field flange_pose table Complete nested geometry_msgs/Pose value; no native fields are projected away.
--- @field ft_sensor_raw table Complete nested geometry_msgs/Wrench value; no native fields are projected away.
--- @field ext_wrench_tcp_frame table Complete nested geometry_msgs/Wrench value; no native fields are projected away.
--- @field ext_wrench_base_frame table Complete nested geometry_msgs/Wrench value; no native fields are projected away.
--- @brief Ros1Flexiv_msgsRobotStates.ROS_VERSION: Read-only-by-contract backend value 1.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsRobotStates.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 1.
--- @brief Ros1Flexiv_msgsRobotStates.NATIVE_TYPE: Exact normalized native type name flexiv_msgs/RobotStates.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsRobotStates.encode
--- @field NATIVE_TYPE string Exact normalized native type name flexiv_msgs/RobotStates.
--- @brief Ros1Flexiv_msgsRobotStates.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not inferred
--compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsRobotStates.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros1Flexiv_msgsRobotStates.CODEC_IDENTITY: Finite canonical schema identity; does not replace native type
--agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsRobotStates.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros1Flexiv_msgsRobotStates.MIN_WIRE_BYTES: Inclusive complete minimum 864 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsRobotStates.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 864 bytes.
--- @brief Ros1Flexiv_msgsRobotStates.MAX_WIRE_BYTES: Inclusive complete maximum 864 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros1Flexiv_msgsRobotStates.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 864 bytes.
--- @brief Construct Ros1Flexiv_msgsRobotStates with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros1Flexiv_msgsRobotStates value New mutable complete value; no ROS resource.
--- @see Ros1Flexiv_msgsRobotStates.encode
--- @field new fun(values?: table): Ros1Flexiv_msgsRobotStates
--- @brief Encode a complete Ros1Flexiv_msgsRobotStates value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros1Flexiv_msgsRobotStates [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 864..864 bytes.
--- @see Ros1Flexiv_msgsRobotStates.decode
--- @field encode fun(value: Ros1Flexiv_msgsRobotStates): string
--- @brief Decode exactly one complete Ros1Flexiv_msgsRobotStates canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros1Flexiv_msgsRobotStates value New complete value; failures raise Lua errors.
--- @see Ros1Flexiv_msgsRobotStates.encode
--- @field decode fun(bytes: string): Ros1Flexiv_msgsRobotStates
local Ros1Flexiv_msgsRobotStates = classes["Ros1Flexiv_msgsRobotStates"]

return classes, by_name
