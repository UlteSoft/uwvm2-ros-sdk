/** @file Macro-selected C++ full-field bounded records. */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>
#include <limx/c/ros2/records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros2Uwvm_limx_bridgeMsgNativeHeader.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_NativeHeader_valid
     */
    typedef roswasmc_bounded_2_uwvm_limx_bridge_msg_NativeHeader Ros2Uwvm_limx_bridgeMsgNativeHeader;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_limx_bridgeMsgImuData.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData_valid
     */
    typedef roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData Ros2Uwvm_limx_bridgeMsgImuData;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_limx_bridgeMsgJointState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState_valid
     */
    typedef roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState Ros2Uwvm_limx_bridgeMsgJointState;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_limx_bridgeMsgJointCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmd_valid
     */
    typedef roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmd Ros2Uwvm_limx_bridgeMsgJointCmd;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_limx_bridgeMsgJointCmdLimx.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx_valid
     */
    typedef roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx Ros2Uwvm_limx_bridgeMsgJointCmdLimx;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_LIMX_BRIDGE_MSG_NATIVEHEADER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_LIMX_BRIDGE_MSG_NATIVEHEADER 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_limx_bridgeMsgNativeHeader.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_limx_bridgeMsgNativeHeader>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_limx_bridgeMsgNativeHeader
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_NativeHeader_wire_size
         */
        static const size_t max_wire_bytes = 144;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_NativeHeader_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d86b96b26db6c2a28dfa86e2255cb3cccd6cd24648e877746d8d75394d1635b2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_limx_bridgeMsgNativeHeader<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_limx_bridgeMsgNativeHeader<T>::codec_identity =
        "UWVMROS1_d86b96b26db6c2a28dfa86e2255cb3cccd6cd24648e877746d8d75394d1635b2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_limx_bridgeMsgNativeHeader<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_limx_bridgeMsgNativeHeader.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_NativeHeader_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_limx_bridgeMsgNativeHeader> :
        RecordMetadata_Ros2Uwvm_limx_bridgeMsgNativeHeader<uwvm_custom::Ros2Uwvm_limx_bridgeMsgNativeHeader>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_limx_bridgeMsgNativeHeader transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_NativeHeader_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_limx_bridgeMsgNativeHeader const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_limx_bridge_msg_NativeHeader_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_limx_bridge_msg_NativeHeader_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_limx_bridge_msg_NativeHeader_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_limx_bridgeMsgNativeHeader.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_NativeHeader_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_limx_bridgeMsgNativeHeader& out)
        {
            return !roswasmc_bounded_2_uwvm_limx_bridge_msg_NativeHeader_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_LIMX_BRIDGE_MSG_IMUDATA
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_LIMX_BRIDGE_MSG_IMUDATA 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_limx_bridgeMsgImuData.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_limx_bridgeMsgImuData>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_limx_bridgeMsgImuData
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_53ba9eb23b36de77e1793bdd19a31f708aca557b81f4ae72927b2a44f5ce097b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_limx_bridgeMsgImuData<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_limx_bridgeMsgImuData<T>::codec_identity =
        "UWVMROS1_53ba9eb23b36de77e1793bdd19a31f708aca557b81f4ae72927b2a44f5ce097b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_limx_bridgeMsgImuData<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_limx_bridgeMsgImuData.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_limx_bridgeMsgImuData> : RecordMetadata_Ros2Uwvm_limx_bridgeMsgImuData<uwvm_custom::Ros2Uwvm_limx_bridgeMsgImuData>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_limx_bridgeMsgImuData transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_limx_bridgeMsgImuData const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_limx_bridgeMsgImuData.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_limx_bridgeMsgImuData& out)
        {
            return !roswasmc_bounded_2_uwvm_limx_bridge_msg_ImuData_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_LIMX_BRIDGE_MSG_JOINTSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_LIMX_BRIDGE_MSG_JOINTSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_limx_bridgeMsgJointState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointState>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState_wire_size
         */
        static const size_t max_wire_bytes = 5544;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d99e5855c0dd55d4d1b5a724ad5719734a668a512ea09e553c8f4a560b97a3a4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointState<T>::codec_identity =
        "UWVMROS1_d99e5855c0dd55d4d1b5a724ad5719734a668a512ea09e553c8f4a560b97a3a4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_limx_bridgeMsgJointState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointState> :
        RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointState<uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointState>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_limx_bridgeMsgJointState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_limx_bridgeMsgJointState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointState& out)
        {
            return !roswasmc_bounded_2_uwvm_limx_bridge_msg_JointState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_LIMX_BRIDGE_MSG_JOINTCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_LIMX_BRIDGE_MSG_JOINTCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_limx_bridgeMsgJointCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointCmd>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmd_wire_size
         */
        static const size_t max_wire_bytes = 5872;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8c477a93cc192cd3039b285f111a56eb1305707d798587ef7ab9504f714ce6f0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointCmd<T>::codec_identity =
        "UWVMROS1_8c477a93cc192cd3039b285f111a56eb1305707d798587ef7ab9504f714ce6f0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_limx_bridgeMsgJointCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointCmd> : RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointCmd<uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointCmd>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_limx_bridgeMsgJointCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmd_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmd_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_limx_bridgeMsgJointCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointCmd& out)
        {
            return !roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_LIMX_BRIDGE_MSG_JOINTCMDLIMX
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_LIMX_BRIDGE_MSG_JOINTCMDLIMX 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_limx_bridgeMsgJointCmdLimx.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointCmdLimx>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointCmdLimx
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx_wire_size
         */
        static const size_t max_wire_bytes = 5940;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d469dd32f446fb4013144b7e176cdb831c146b6a9279ea776ec4a0c053060be9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointCmdLimx<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointCmdLimx<T>::codec_identity =
        "UWVMROS1_d469dd32f446fb4013144b7e176cdb831c146b6a9279ea776ec4a0c053060be9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointCmdLimx<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_limx_bridgeMsgJointCmdLimx.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointCmdLimx> :
        RecordMetadata_Ros2Uwvm_limx_bridgeMsgJointCmdLimx<uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointCmdLimx>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_limx_bridgeMsgJointCmdLimx transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointCmdLimx const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_limx_bridgeMsgJointCmdLimx.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_limx_bridgeMsgJointCmdLimx& out)
        {
            return !roswasmc_bounded_2_uwvm_limx_bridge_msg_JointCmdLimx_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
