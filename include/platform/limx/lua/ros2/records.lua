--- @brief Complete source-derived canonical Lua value classes.
--- @details Synchronous local values only; Lua5.4 with signed64-bit integers.
--- @see roswasm/wire.lua
local wire = require("roswasm.wire")
local schemas = {
    {
        ["symbol"] = "Ros2Uwvm_limx_bridgeMsgNativeHeader",
        ["ros_version"] = 2,
        ["native_type"] = "uwvm_limx_bridge/msg/NativeHeader",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d86b96b26db6c2a28dfa86e2255cb3cccd6cd24648e877746d8d75394d1635b2",
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
                ["name"] = "stamp_sec",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "stamp_nsec",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
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
        ["symbol"] = "Ros2Uwvm_limx_bridgeMsgImuData",
        ["ros_version"] = 2,
        ["native_type"] = "uwvm_limx_bridge/msg/ImuData",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_53ba9eb23b36de77e1793bdd19a31f708aca557b81f4ae72927b2a44f5ce097b",
        ["minimum"] = 132,
        ["maximum"] = 260,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Uwvm_limx_bridgeMsgNativeHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "imustamp",
                ["type"] = "uint64",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "status",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "euler",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "quat",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 4,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "acc",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
            {
                ["name"] = "gyro",
                ["type"] = "float64",
                ["array"] = "array",
                ["count"] = 3,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 8,
            },
        },
        ["constants"] = {},
    },
    {
        ["symbol"] = "Ros2Uwvm_limx_bridgeMsgJointState",
        ["ros_version"] = 2,
        ["native_type"] = "uwvm_limx_bridge/msg/JointState",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d99e5855c0dd55d4d1b5a724ad5719734a668a512ea09e553c8f4a560b97a3a4",
        ["minimum"] = 40,
        ["maximum"] = 5544,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Uwvm_limx_bridgeMsgNativeHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "q",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "v",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "vd",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tau",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "na",
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
        ["symbol"] = "Ros2Uwvm_limx_bridgeMsgJointCmd",
        ["ros_version"] = 2,
        ["native_type"] = "uwvm_limx_bridge/msg/JointCmd",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_8c477a93cc192cd3039b285f111a56eb1305707d798587ef7ab9504f714ce6f0",
        ["minimum"] = 48,
        ["maximum"] = 5872,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Uwvm_limx_bridgeMsgNativeHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "q",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "v",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tau",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kp",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kd",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "mode",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "na",
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
        ["symbol"] = "Ros2Uwvm_limx_bridgeMsgJointCmdLimx",
        ["ros_version"] = 2,
        ["native_type"] = "uwvm_limx_bridge/msg/JointCmdLimx",
        ["native_identity"] = nil,
        ["codec_identity"] = "UWVMROS1_d469dd32f446fb4013144b7e176cdb831c146b6a9279ea776ec4a0c053060be9",
        ["minimum"] = 52,
        ["maximum"] = 5940,
        ["semantics"] = "",
        ["fields"] = {
            {
                ["name"] = "header",
                ["type"] = "Ros2Uwvm_limx_bridgeMsgNativeHeader",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 16,
            },
            {
                ["name"] = "names",
                ["type"] = "string",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 64,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "q",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "v",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "tau",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kp",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "kd",
                ["type"] = "float32",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "mode",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
            {
                ["name"] = "na",
                ["type"] = "uint32",
                ["array"] = "",
                ["count"] = 0,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 4,
            },
            {
                ["name"] = "parallel_solver_mode",
                ["type"] = "uint8",
                ["array"] = "sequence",
                ["count"] = 64,
                ["string_bound"] = 0,
                ["raw"] = false,
                ["element_minimum"] = 1,
            },
        },
        ["constants"] = {},
    },
}
local classes, by_name = wire.records(schemas)

--- @class Ros2Uwvm_limx_bridgeMsgNativeHeader
--- @brief Complete ROS2 uwvm_limx_bridge/msg/NativeHeader value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field seq integer Exact uint32 range 0..4294967295.
--- @field stamp_sec integer Exact uint32 range 0..4294967295.
--- @field stamp_nsec integer Exact uint32 range 0..4294967295.
--- @field frame_id string Strict UTF-8 without NUL; length0..128 bytes.
--- @brief Ros2Uwvm_limx_bridgeMsgNativeHeader.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgNativeHeader.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Uwvm_limx_bridgeMsgNativeHeader.NATIVE_TYPE: Exact normalized native type name
--- uwvm_limx_bridge/msg/NativeHeader.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgNativeHeader.encode
--- @field NATIVE_TYPE string Exact normalized native type name uwvm_limx_bridge/msg/NativeHeader.
--- @brief Ros2Uwvm_limx_bridgeMsgNativeHeader.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgNativeHeader.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Uwvm_limx_bridgeMsgNativeHeader.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgNativeHeader.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Uwvm_limx_bridgeMsgNativeHeader.MIN_WIRE_BYTES: Inclusive complete minimum 16 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgNativeHeader.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 16 bytes.
--- @brief Ros2Uwvm_limx_bridgeMsgNativeHeader.MAX_WIRE_BYTES: Inclusive complete maximum 144 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgNativeHeader.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 144 bytes.
--- @brief Construct Ros2Uwvm_limx_bridgeMsgNativeHeader with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Uwvm_limx_bridgeMsgNativeHeader value New mutable complete value; no ROS resource.
--- @see Ros2Uwvm_limx_bridgeMsgNativeHeader.encode
--- @field new fun(values?: table): Ros2Uwvm_limx_bridgeMsgNativeHeader
--- @brief Encode a complete Ros2Uwvm_limx_bridgeMsgNativeHeader value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Uwvm_limx_bridgeMsgNativeHeader [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 16..144 bytes.
--- @see Ros2Uwvm_limx_bridgeMsgNativeHeader.decode
--- @field encode fun(value: Ros2Uwvm_limx_bridgeMsgNativeHeader): string
--- @brief Decode exactly one complete Ros2Uwvm_limx_bridgeMsgNativeHeader canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Uwvm_limx_bridgeMsgNativeHeader value New complete value; failures raise Lua errors.
--- @see Ros2Uwvm_limx_bridgeMsgNativeHeader.encode
--- @field decode fun(bytes: string): Ros2Uwvm_limx_bridgeMsgNativeHeader
local Ros2Uwvm_limx_bridgeMsgNativeHeader = classes["Ros2Uwvm_limx_bridgeMsgNativeHeader"]

--- @class Ros2Uwvm_limx_bridgeMsgImuData
--- @brief Complete ROS2 uwvm_limx_bridge/msg/ImuData value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested uwvm_limx_bridge/msg/NativeHeader value; no native fields are projected away.
--- @field imustamp string Exactly eight little-endian bytes; never a Lua number.
--- @field status integer Exact uint32 range 0..4294967295.
--- @field euler number[] Finite IEEE float64. Exactly 3 contiguous elements; holes and extra array keys are rejected.
--- @field quat number[] Finite IEEE float64. Exactly 4 contiguous elements; holes and extra array keys are rejected.
--- @field acc number[] Finite IEEE float64. Exactly 3 contiguous elements; holes and extra array keys are rejected.
--- @field gyro number[] Finite IEEE float64. Exactly 3 contiguous elements; holes and extra array keys are rejected.
--- @brief Ros2Uwvm_limx_bridgeMsgImuData.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgImuData.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Uwvm_limx_bridgeMsgImuData.NATIVE_TYPE: Exact normalized native type name uwvm_limx_bridge/msg/ImuData.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgImuData.encode
--- @field NATIVE_TYPE string Exact normalized native type name uwvm_limx_bridge/msg/ImuData.
--- @brief Ros2Uwvm_limx_bridgeMsgImuData.NATIVE_IDENTITY: Exact supplied native identity; nil means absent, not
--- inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgImuData.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Uwvm_limx_bridgeMsgImuData.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgImuData.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Uwvm_limx_bridgeMsgImuData.MIN_WIRE_BYTES: Inclusive complete minimum 132 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgImuData.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 132 bytes.
--- @brief Ros2Uwvm_limx_bridgeMsgImuData.MAX_WIRE_BYTES: Inclusive complete maximum 260 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgImuData.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 260 bytes.
--- @brief Construct Ros2Uwvm_limx_bridgeMsgImuData with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Uwvm_limx_bridgeMsgImuData value New mutable complete value; no ROS resource.
--- @see Ros2Uwvm_limx_bridgeMsgImuData.encode
--- @field new fun(values?: table): Ros2Uwvm_limx_bridgeMsgImuData
--- @brief Encode a complete Ros2Uwvm_limx_bridgeMsgImuData value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Uwvm_limx_bridgeMsgImuData [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 132..260 bytes.
--- @see Ros2Uwvm_limx_bridgeMsgImuData.decode
--- @field encode fun(value: Ros2Uwvm_limx_bridgeMsgImuData): string
--- @brief Decode exactly one complete Ros2Uwvm_limx_bridgeMsgImuData canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Uwvm_limx_bridgeMsgImuData value New complete value; failures raise Lua errors.
--- @see Ros2Uwvm_limx_bridgeMsgImuData.encode
--- @field decode fun(bytes: string): Ros2Uwvm_limx_bridgeMsgImuData
local Ros2Uwvm_limx_bridgeMsgImuData = classes["Ros2Uwvm_limx_bridgeMsgImuData"]

--- @class Ros2Uwvm_limx_bridgeMsgJointState
--- @brief Complete ROS2 uwvm_limx_bridge/msg/JointState value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested uwvm_limx_bridge/msg/NativeHeader value; no native fields are projected away.
--- @field names string[] Strict UTF-8 without NUL; length0..64 bytes. At most 64 contiguous elements; holes and
--- extra array keys are rejected.
--- @field q number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field v number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field vd number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field tau number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field na integer Exact uint32 range 0..4294967295.
--- @brief Ros2Uwvm_limx_bridgeMsgJointState.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointState.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Uwvm_limx_bridgeMsgJointState.NATIVE_TYPE: Exact normalized native type name
--- uwvm_limx_bridge/msg/JointState.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointState.encode
--- @field NATIVE_TYPE string Exact normalized native type name uwvm_limx_bridge/msg/JointState.
--- @brief Ros2Uwvm_limx_bridgeMsgJointState.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--- not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointState.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Uwvm_limx_bridgeMsgJointState.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointState.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Uwvm_limx_bridgeMsgJointState.MIN_WIRE_BYTES: Inclusive complete minimum 40 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointState.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 40 bytes.
--- @brief Ros2Uwvm_limx_bridgeMsgJointState.MAX_WIRE_BYTES: Inclusive complete maximum 5544 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointState.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5544 bytes.
--- @brief Construct Ros2Uwvm_limx_bridgeMsgJointState with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Uwvm_limx_bridgeMsgJointState value New mutable complete value; no ROS resource.
--- @see Ros2Uwvm_limx_bridgeMsgJointState.encode
--- @field new fun(values?: table): Ros2Uwvm_limx_bridgeMsgJointState
--- @brief Encode a complete Ros2Uwvm_limx_bridgeMsgJointState value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Uwvm_limx_bridgeMsgJointState [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 40..5544 bytes.
--- @see Ros2Uwvm_limx_bridgeMsgJointState.decode
--- @field encode fun(value: Ros2Uwvm_limx_bridgeMsgJointState): string
--- @brief Decode exactly one complete Ros2Uwvm_limx_bridgeMsgJointState canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Uwvm_limx_bridgeMsgJointState value New complete value; failures raise Lua errors.
--- @see Ros2Uwvm_limx_bridgeMsgJointState.encode
--- @field decode fun(bytes: string): Ros2Uwvm_limx_bridgeMsgJointState
local Ros2Uwvm_limx_bridgeMsgJointState = classes["Ros2Uwvm_limx_bridgeMsgJointState"]

--- @class Ros2Uwvm_limx_bridgeMsgJointCmd
--- @brief Complete ROS2 uwvm_limx_bridge/msg/JointCmd value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested uwvm_limx_bridge/msg/NativeHeader value; no native fields are projected away.
--- @field names string[] Strict UTF-8 without NUL; length0..64 bytes. At most 64 contiguous elements; holes and
--- extra array keys are rejected.
--- @field q number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field v number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field tau number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field kp number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field kd number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field mode integer[] Exact uint8 range 0..255. At most 64 contiguous elements; holes and extra array keys
--- are rejected.
--- @field na integer Exact uint32 range 0..4294967295.
--- @brief Ros2Uwvm_limx_bridgeMsgJointCmd.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmd.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Uwvm_limx_bridgeMsgJointCmd.NATIVE_TYPE: Exact normalized native type name uwvm_limx_bridge/msg/JointCmd.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmd.encode
--- @field NATIVE_TYPE string Exact normalized native type name uwvm_limx_bridge/msg/JointCmd.
--- @brief Ros2Uwvm_limx_bridgeMsgJointCmd.NATIVE_IDENTITY: Exact supplied native identity; nil means absent,
--- not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmd.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Uwvm_limx_bridgeMsgJointCmd.CODEC_IDENTITY: Finite canonical schema identity; does not replace
--- native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmd.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Uwvm_limx_bridgeMsgJointCmd.MIN_WIRE_BYTES: Inclusive complete minimum 48 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmd.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 48 bytes.
--- @brief Ros2Uwvm_limx_bridgeMsgJointCmd.MAX_WIRE_BYTES: Inclusive complete maximum 5872 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmd.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5872 bytes.
--- @brief Construct Ros2Uwvm_limx_bridgeMsgJointCmd with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Uwvm_limx_bridgeMsgJointCmd value New mutable complete value; no ROS resource.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmd.encode
--- @field new fun(values?: table): Ros2Uwvm_limx_bridgeMsgJointCmd
--- @brief Encode a complete Ros2Uwvm_limx_bridgeMsgJointCmd value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Uwvm_limx_bridgeMsgJointCmd [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 48..5872 bytes.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmd.decode
--- @field encode fun(value: Ros2Uwvm_limx_bridgeMsgJointCmd): string
--- @brief Decode exactly one complete Ros2Uwvm_limx_bridgeMsgJointCmd canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Uwvm_limx_bridgeMsgJointCmd value New complete value; failures raise Lua errors.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmd.encode
--- @field decode fun(bytes: string): Ros2Uwvm_limx_bridgeMsgJointCmd
local Ros2Uwvm_limx_bridgeMsgJointCmd = classes["Ros2Uwvm_limx_bridgeMsgJointCmd"]

--- @class Ros2Uwvm_limx_bridgeMsgJointCmdLimx
--- @brief Complete ROS2 uwvm_limx_bridge/msg/JointCmdLimx value and codec.
--- @details Preserves every declared native field and the finite canonical bounds.
--- Instances own fresh defaults; explicit initializer tables/nested values are retained
--- by reference. Encode/decode validate values synchronously and perform no I/O.
--- This type is not a grant, native registry entry or upstream ROS client.
--- Units are those of the original native schema; this IR declares no additional units.
--- @see roswasm/wire.lua
--- @field header table Complete nested uwvm_limx_bridge/msg/NativeHeader value; no native fields are projected away.
--- @field names string[] Strict UTF-8 without NUL; length0..64 bytes. At most 64 contiguous elements; holes and
--- extra array keys are rejected.
--- @field q number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field v number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field tau number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field kp number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field kd number[] Finite IEEE float32. Rounds to binary32 and rejects overflow. At most 64 contiguous
--- elements; holes and extra array keys are rejected.
--- @field mode integer[] Exact uint8 range 0..255. At most 64 contiguous elements; holes and extra array keys
--- are rejected.
--- @field na integer Exact uint32 range 0..4294967295.
--- @field parallel_solver_mode integer[] Exact uint8 range 0..255. At most 64 contiguous elements; holes and
--- extra array keys are rejected.
--- @brief Ros2Uwvm_limx_bridgeMsgJointCmdLimx.ROS_VERSION: Read-only-by-contract backend value 2.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmdLimx.encode
--- @field ROS_VERSION integer Read-only-by-contract backend value 2.
--- @brief Ros2Uwvm_limx_bridgeMsgJointCmdLimx.NATIVE_TYPE: Exact normalized native type name
--- uwvm_limx_bridge/msg/JointCmdLimx.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmdLimx.encode
--- @field NATIVE_TYPE string Exact normalized native type name uwvm_limx_bridge/msg/JointCmdLimx.
--- @brief Ros2Uwvm_limx_bridgeMsgJointCmdLimx.NATIVE_IDENTITY: Exact supplied native identity; nil means
--- absent, not inferred compatibility.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmdLimx.encode
--- @field NATIVE_IDENTITY string|nil Exact supplied native identity; nil means absent, not inferred compatibility.
--- @brief Ros2Uwvm_limx_bridgeMsgJointCmdLimx.CODEC_IDENTITY: Finite canonical schema identity; does not
--- replace native type agreement.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmdLimx.encode
--- @field CODEC_IDENTITY string Finite canonical schema identity; does not replace native type agreement.
--- @brief Ros2Uwvm_limx_bridgeMsgJointCmdLimx.MIN_WIRE_BYTES: Inclusive complete minimum 52 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmdLimx.encode
--- @field MIN_WIRE_BYTES integer Inclusive complete minimum 52 bytes.
--- @brief Ros2Uwvm_limx_bridgeMsgJointCmdLimx.MAX_WIRE_BYTES: Inclusive complete maximum 5940 bytes.
--- @details Class metadata is inherited by values; do not write it as an instance field.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmdLimx.encode
--- @field MAX_WIRE_BYTES integer Inclusive complete maximum 5940 bytes.
--- @brief Construct Ros2Uwvm_limx_bridgeMsgJointCmdLimx with complete fresh defaults.
--- @details Optional plain-table initializer is shallow: supplied values are retained.
--- Unknown keys raise a Lua error; encode performs full domain/semantic validation.
--- @param values? table [in] Native field-name overrides; caller retains ownership.
--- @return Ros2Uwvm_limx_bridgeMsgJointCmdLimx value New mutable complete value; no ROS resource.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmdLimx.encode
--- @field new fun(values?: table): Ros2Uwvm_limx_bridgeMsgJointCmdLimx
--- @brief Encode a complete Ros2Uwvm_limx_bridgeMsgJointCmdLimx value to canonical LE bytes.
--- @details Requires this exact class; rejects extra/missing fields, invalid domains,
--- count/extent/UTF-8/finite-float and record semantic violations with Lua errors.
--- No I/O, permission change, retry or mutation of the input is performed.
--- @param value Ros2Uwvm_limx_bridgeMsgJointCmdLimx [in] Complete value borrowed synchronously.
--- @return string bytes New immutable string, 52..5940 bytes.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmdLimx.decode
--- @field encode fun(value: Ros2Uwvm_limx_bridgeMsgJointCmdLimx): string
--- @brief Decode exactly one complete Ros2Uwvm_limx_bridgeMsgJointCmdLimx canonical value.
--- @details Rejects malformed, truncated, trailing or semantically invalid data.
--- The returned value and nested arrays/records are fresh and independent of input.
--- @param bytes string [in] Immutable canonical bytes within the complete byte bounds.
--- @return Ros2Uwvm_limx_bridgeMsgJointCmdLimx value New complete value; failures raise Lua errors.
--- @see Ros2Uwvm_limx_bridgeMsgJointCmdLimx.encode
--- @field decode fun(bytes: string): Ros2Uwvm_limx_bridgeMsgJointCmdLimx
local Ros2Uwvm_limx_bridgeMsgJointCmdLimx = classes["Ros2Uwvm_limx_bridgeMsgJointCmdLimx"]

return classes, by_name
