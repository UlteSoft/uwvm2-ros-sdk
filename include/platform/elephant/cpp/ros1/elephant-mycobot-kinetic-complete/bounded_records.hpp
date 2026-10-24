/**
 * @file bounded_records.hpp
 * @brief Bind complete original C storage to checked C++ canonical codecs and declared defaults.
 * @details Owned inline fields retain original widths, bounds and units. Encode/decode commit
 * only complete accepted values. Metadata describes a codec and creates no ROS authority.
 */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <ros/cpp/roswasm/roswasmcpp.hpp>
#include <elephant/c/ros1/elephant-mycobot-kinetic-complete/bounded_records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationMycobotAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotAngles_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_MycobotAngles Ros1Mycobot_communicationMycobotAngles;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationMycobotCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotCoords_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_MycobotCoords Ros1Mycobot_communicationMycobotCoords;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationMycobotGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus Ros1Mycobot_communicationMycobotGripperStatus;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationMycobotPumpStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus Ros1Mycobot_communicationMycobotPumpStatus;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationMycobotSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_MycobotSetAngles Ros1Mycobot_communicationMycobotSetAngles;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationMycobotSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_MycobotSetCoords Ros1Mycobot_communicationMycobotSetCoords;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationGetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_GetAnglesRequest Ros1Mycobot_communicationGetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationGetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_GetAnglesResponse Ros1Mycobot_communicationGetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationGetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_GetCoordsRequest Ros1Mycobot_communicationGetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationGetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_GetCoordsResponse Ros1Mycobot_communicationGetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationGripperStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_GripperStatusRequest Ros1Mycobot_communicationGripperStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationGripperStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_GripperStatusResponse Ros1Mycobot_communicationGripperStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationPumpStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_PumpStatusRequest Ros1Mycobot_communicationPumpStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationPumpStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_PumpStatusResponse Ros1Mycobot_communicationPumpStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationSetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_SetAnglesRequest Ros1Mycobot_communicationSetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationSetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_SetAnglesResponse Ros1Mycobot_communicationSetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationSetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_SetCoordsRequest Ros1Mycobot_communicationSetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mycobot_communicationSetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mycobot_communication_SetCoordsResponse Ros1Mycobot_communicationSetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationMypalAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalAngles_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_MypalAngles Ros1Mypalletizer_communicationMypalAngles;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationMypalCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalCoords_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_MypalCoords Ros1Mypalletizer_communicationMypalCoords;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationMypalGripperStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus Ros1Mypalletizer_communicationMypalGripperStatus;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationMypalPumpStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus Ros1Mypalletizer_communicationMypalPumpStatus;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationMypalSetAngles.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles Ros1Mypalletizer_communicationMypalSetAngles;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationMypalSetCoords.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords Ros1Mypalletizer_communicationMypalSetCoords;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationGetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest Ros1Mypalletizer_communicationGetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationGetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse Ros1Mypalletizer_communicationGetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationGetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest Ros1Mypalletizer_communicationGetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationGetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse Ros1Mypalletizer_communicationGetCoordsResponse;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationGripperStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest Ros1Mypalletizer_communicationGripperStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationGripperStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse Ros1Mypalletizer_communicationGripperStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationPumpStatusRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest Ros1Mypalletizer_communicationPumpStatusRequest;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationPumpStatusResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse Ros1Mypalletizer_communicationPumpStatusResponse;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationSetAnglesRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest Ros1Mypalletizer_communicationSetAnglesRequest;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationSetAnglesResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse Ros1Mypalletizer_communicationSetAnglesResponse;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationSetCoordsRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest Ros1Mypalletizer_communicationSetCoordsRequest;
    /**
     * @brief Complete bounded storage for Ros1Mypalletizer_communicationSetCoordsResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_valid
     */
    typedef roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse Ros1Mypalletizer_communicationSetCoordsResponse;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationMycobotAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationMycobotAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationMycobotAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotAngles_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_MycobotAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationMycobotAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationMycobotAngles<T>::codec_identity =
        "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationMycobotAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationMycobotAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationMycobotAngles> :
        RecordMetadata_Ros1Mycobot_communicationMycobotAngles<uwvm_custom::Ros1Mycobot_communicationMycobotAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationMycobotAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationMycobotAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_MycobotAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_MycobotAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_MycobotAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationMycobotAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationMycobotAngles& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_MycobotAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationMycobotCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationMycobotCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationMycobotCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotCoords_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_MycobotCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationMycobotCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationMycobotCoords<T>::codec_identity =
        "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationMycobotCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationMycobotCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationMycobotCoords> :
        RecordMetadata_Ros1Mycobot_communicationMycobotCoords<uwvm_custom::Ros1Mycobot_communicationMycobotCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationMycobotCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationMycobotCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_MycobotCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_MycobotCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_MycobotCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationMycobotCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationMycobotCoords& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_MycobotCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationMycobotGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationMycobotGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationMycobotGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationMycobotGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationMycobotGripperStatus<T>::codec_identity =
        "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationMycobotGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationMycobotGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationMycobotGripperStatus> :
        RecordMetadata_Ros1Mycobot_communicationMycobotGripperStatus<uwvm_custom::Ros1Mycobot_communicationMycobotGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationMycobotGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationMycobotGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationMycobotGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationMycobotGripperStatus& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTPUMPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationMycobotPumpStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationMycobotPumpStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationMycobotPumpStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationMycobotPumpStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationMycobotPumpStatus<T>::codec_identity =
        "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationMycobotPumpStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationMycobotPumpStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationMycobotPumpStatus> :
        RecordMetadata_Ros1Mycobot_communicationMycobotPumpStatus<uwvm_custom::Ros1Mycobot_communicationMycobotPumpStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationMycobotPumpStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationMycobotPumpStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationMycobotPumpStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationMycobotPumpStatus& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationMycobotSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationMycobotSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationMycobotSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationMycobotSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationMycobotSetAngles<T>::codec_identity =
        "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationMycobotSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationMycobotSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationMycobotSetAngles> :
        RecordMetadata_Ros1Mycobot_communicationMycobotSetAngles<uwvm_custom::Ros1Mycobot_communicationMycobotSetAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationMycobotSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationMycobotSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationMycobotSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationMycobotSetAngles& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_MYCOBOTSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationMycobotSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationMycobotSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationMycobotSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationMycobotSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationMycobotSetCoords<T>::codec_identity =
        "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationMycobotSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationMycobotSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationMycobotSetCoords> :
        RecordMetadata_Ros1Mycobot_communicationMycobotSetCoords<uwvm_custom::Ros1Mycobot_communicationMycobotSetCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationMycobotSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationMycobotSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationMycobotSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationMycobotSetCoords& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationGetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationGetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationGetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationGetAnglesRequest<T>::codec_identity =
        "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationGetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationGetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationGetAnglesRequest> :
        RecordMetadata_Ros1Mycobot_communicationGetAnglesRequest<uwvm_custom::Ros1Mycobot_communicationGetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationGetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationGetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationGetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationGetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationGetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationGetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationGetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationGetAnglesResponse<T>::codec_identity =
        "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationGetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationGetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationGetAnglesResponse> :
        RecordMetadata_Ros1Mycobot_communicationGetAnglesResponse<uwvm_custom::Ros1Mycobot_communicationGetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationGetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationGetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationGetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationGetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationGetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationGetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationGetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationGetCoordsRequest<T>::codec_identity =
        "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationGetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationGetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationGetCoordsRequest> :
        RecordMetadata_Ros1Mycobot_communicationGetCoordsRequest<uwvm_custom::Ros1Mycobot_communicationGetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationGetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationGetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationGetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationGetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationGetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationGetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationGetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationGetCoordsResponse<T>::codec_identity =
        "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationGetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationGetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationGetCoordsResponse> :
        RecordMetadata_Ros1Mycobot_communicationGetCoordsResponse<uwvm_custom::Ros1Mycobot_communicationGetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationGetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationGetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationGetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationGetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationGripperStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGripperStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationGripperStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationGripperStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationGripperStatusRequest<T>::codec_identity =
        "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationGripperStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationGripperStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationGripperStatusRequest> :
        RecordMetadata_Ros1Mycobot_communicationGripperStatusRequest<uwvm_custom::Ros1Mycobot_communicationGripperStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationGripperStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationGripperStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationGripperStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationGripperStatusRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_GRIPPERSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationGripperStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationGripperStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationGripperStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationGripperStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationGripperStatusResponse<T>::codec_identity =
        "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationGripperStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationGripperStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationGripperStatusResponse> :
        RecordMetadata_Ros1Mycobot_communicationGripperStatusResponse<uwvm_custom::Ros1Mycobot_communicationGripperStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationGripperStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationGripperStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationGripperStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationGripperStatusResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationPumpStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationPumpStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationPumpStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationPumpStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationPumpStatusRequest<T>::codec_identity =
        "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationPumpStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationPumpStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationPumpStatusRequest> :
        RecordMetadata_Ros1Mycobot_communicationPumpStatusRequest<uwvm_custom::Ros1Mycobot_communicationPumpStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationPumpStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationPumpStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationPumpStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationPumpStatusRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_PUMPSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationPumpStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationPumpStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationPumpStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationPumpStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationPumpStatusResponse<T>::codec_identity =
        "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationPumpStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationPumpStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationPumpStatusResponse> :
        RecordMetadata_Ros1Mycobot_communicationPumpStatusResponse<uwvm_custom::Ros1Mycobot_communicationPumpStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationPumpStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationPumpStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationPumpStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationPumpStatusResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationSetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationSetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationSetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationSetAnglesRequest<T>::codec_identity =
        "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationSetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationSetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationSetAnglesRequest> :
        RecordMetadata_Ros1Mycobot_communicationSetAnglesRequest<uwvm_custom::Ros1Mycobot_communicationSetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationSetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationSetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationSetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationSetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationSetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationSetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationSetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationSetAnglesResponse<T>::codec_identity =
        "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationSetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationSetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationSetAnglesResponse> :
        RecordMetadata_Ros1Mycobot_communicationSetAnglesResponse<uwvm_custom::Ros1Mycobot_communicationSetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationSetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationSetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationSetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationSetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationSetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationSetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationSetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationSetCoordsRequest<T>::codec_identity =
        "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationSetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationSetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationSetCoordsRequest> :
        RecordMetadata_Ros1Mycobot_communicationSetCoordsRequest<uwvm_custom::Ros1Mycobot_communicationSetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationSetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationSetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationSetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationSetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYCOBOT_COMMUNICATION_SETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mycobot_communicationSetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mycobot_communicationSetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mycobot_communicationSetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mycobot_communicationSetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mycobot_communicationSetCoordsResponse<T>::codec_identity =
        "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mycobot_communicationSetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mycobot_communicationSetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mycobot_communicationSetCoordsResponse> :
        RecordMetadata_Ros1Mycobot_communicationSetCoordsResponse<uwvm_custom::Ros1Mycobot_communicationSetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mycobot_communicationSetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mycobot_communicationSetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mycobot_communicationSetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mycobot_communicationSetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationMypalAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationMypalAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalAngles_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_MypalAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationMypalAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationMypalAngles<T>::codec_identity =
        "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationMypalAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationMypalAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalAngles> :
        RecordMetadata_Ros1Mypalletizer_communicationMypalAngles<uwvm_custom::Ros1Mypalletizer_communicationMypalAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationMypalAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationMypalAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_MypalAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_MypalAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_MypalAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationMypalAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationMypalAngles& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_MypalAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationMypalCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationMypalCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalCoords_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_MypalCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationMypalCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationMypalCoords<T>::codec_identity =
        "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationMypalCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationMypalCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalCoords> :
        RecordMetadata_Ros1Mypalletizer_communicationMypalCoords<uwvm_custom::Ros1Mypalletizer_communicationMypalCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationMypalCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationMypalCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_MypalCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_MypalCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_MypalCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationMypalCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationMypalCoords& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_MypalCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALGRIPPERSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationMypalGripperStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalGripperStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationMypalGripperStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationMypalGripperStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationMypalGripperStatus<T>::codec_identity =
        "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationMypalGripperStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationMypalGripperStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalGripperStatus> :
        RecordMetadata_Ros1Mypalletizer_communicationMypalGripperStatus<uwvm_custom::Ros1Mypalletizer_communicationMypalGripperStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationMypalGripperStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationMypalGripperStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationMypalGripperStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationMypalGripperStatus& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALPUMPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationMypalPumpStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalPumpStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationMypalPumpStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationMypalPumpStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationMypalPumpStatus<T>::codec_identity =
        "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationMypalPumpStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationMypalPumpStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalPumpStatus> :
        RecordMetadata_Ros1Mypalletizer_communicationMypalPumpStatus<uwvm_custom::Ros1Mypalletizer_communicationMypalPumpStatus>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationMypalPumpStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationMypalPumpStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationMypalPumpStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationMypalPumpStatus& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETANGLES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationMypalSetAngles.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalSetAngles>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationMypalSetAngles
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_wire_size
         */
        static const size_t max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationMypalSetAngles<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationMypalSetAngles<T>::codec_identity =
        "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationMypalSetAngles<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationMypalSetAngles.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalSetAngles> :
        RecordMetadata_Ros1Mypalletizer_communicationMypalSetAngles<uwvm_custom::Ros1Mypalletizer_communicationMypalSetAngles>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationMypalSetAngles transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationMypalSetAngles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationMypalSetAngles.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationMypalSetAngles& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_MYPALSETCOORDS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationMypalSetCoords.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalSetCoords>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationMypalSetCoords
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_wire_size
         */
        static const size_t max_wire_bytes = 18;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationMypalSetCoords<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationMypalSetCoords<T>::codec_identity =
        "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationMypalSetCoords<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationMypalSetCoords.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationMypalSetCoords> :
        RecordMetadata_Ros1Mypalletizer_communicationMypalSetCoords<uwvm_custom::Ros1Mypalletizer_communicationMypalSetCoords>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationMypalSetCoords transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationMypalSetCoords const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationMypalSetCoords.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationMypalSetCoords& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationGetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationGetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationGetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationGetAnglesRequest<T>::codec_identity =
        "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationGetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationGetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesRequest> :
        RecordMetadata_Ros1Mypalletizer_communicationGetAnglesRequest<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationGetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationGetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationGetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationGetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationGetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationGetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationGetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationGetAnglesResponse<T>::codec_identity =
        "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationGetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationGetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesResponse> :
        RecordMetadata_Ros1Mypalletizer_communicationGetAnglesResponse<uwvm_custom::Ros1Mypalletizer_communicationGetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationGetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationGetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationGetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationGetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationGetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationGetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationGetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationGetCoordsRequest<T>::codec_identity =
        "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationGetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationGetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsRequest> :
        RecordMetadata_Ros1Mypalletizer_communicationGetCoordsRequest<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationGetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationGetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationGetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationGetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationGetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationGetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationGetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationGetCoordsResponse<T>::codec_identity =
        "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationGetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationGetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsResponse> :
        RecordMetadata_Ros1Mypalletizer_communicationGetCoordsResponse<uwvm_custom::Ros1Mypalletizer_communicationGetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationGetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationGetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationGetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationGetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationGripperStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationGripperStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationGripperStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationGripperStatusRequest<T>::codec_identity =
        "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationGripperStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationGripperStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusRequest> :
        RecordMetadata_Ros1Mypalletizer_communicationGripperStatusRequest<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationGripperStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationGripperStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationGripperStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationGripperStatusRequest& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_GRIPPERSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationGripperStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationGripperStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationGripperStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationGripperStatusResponse<T>::codec_identity =
        "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationGripperStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationGripperStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusResponse> :
        RecordMetadata_Ros1Mypalletizer_communicationGripperStatusResponse<uwvm_custom::Ros1Mypalletizer_communicationGripperStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationGripperStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationGripperStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationGripperStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationGripperStatusResponse& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationPumpStatusRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationPumpStatusRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationPumpStatusRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationPumpStatusRequest<T>::codec_identity =
        "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationPumpStatusRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationPumpStatusRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusRequest> :
        RecordMetadata_Ros1Mypalletizer_communicationPumpStatusRequest<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationPumpStatusRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationPumpStatusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationPumpStatusRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationPumpStatusRequest& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_PUMPSTATUSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationPumpStatusResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationPumpStatusResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationPumpStatusResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationPumpStatusResponse<T>::codec_identity =
        "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationPumpStatusResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationPumpStatusResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusResponse> :
        RecordMetadata_Ros1Mypalletizer_communicationPumpStatusResponse<uwvm_custom::Ros1Mypalletizer_communicationPumpStatusResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationPumpStatusResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationPumpStatusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationPumpStatusResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationPumpStatusResponse& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationSetAnglesRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationSetAnglesRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_wire_size
         */
        static const size_t max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationSetAnglesRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationSetAnglesRequest<T>::codec_identity =
        "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationSetAnglesRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationSetAnglesRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesRequest> :
        RecordMetadata_Ros1Mypalletizer_communicationSetAnglesRequest<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationSetAnglesRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationSetAnglesRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationSetAnglesRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationSetAnglesRequest& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETANGLESRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationSetAnglesResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationSetAnglesResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationSetAnglesResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationSetAnglesResponse<T>::codec_identity =
        "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationSetAnglesResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationSetAnglesResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesResponse> :
        RecordMetadata_Ros1Mypalletizer_communicationSetAnglesResponse<uwvm_custom::Ros1Mypalletizer_communicationSetAnglesResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationSetAnglesResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationSetAnglesResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationSetAnglesResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationSetAnglesResponse& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationSetCoordsRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationSetCoordsRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_wire_size
         */
        static const size_t max_wire_bytes = 18;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationSetCoordsRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationSetCoordsRequest<T>::codec_identity =
        "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationSetCoordsRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationSetCoordsRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsRequest> :
        RecordMetadata_Ros1Mypalletizer_communicationSetCoordsRequest<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsRequest>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationSetCoordsRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationSetCoordsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationSetCoordsRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationSetCoordsRequest& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_MYPALLETIZER_COMMUNICATION_SETCOORDSRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Mypalletizer_communicationSetCoordsResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Mypalletizer_communicationSetCoordsResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Mypalletizer_communicationSetCoordsResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Mypalletizer_communicationSetCoordsResponse<T>::codec_identity =
        "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Mypalletizer_communicationSetCoordsResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Mypalletizer_communicationSetCoordsResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsResponse> :
        RecordMetadata_Ros1Mypalletizer_communicationSetCoordsResponse<uwvm_custom::Ros1Mypalletizer_communicationSetCoordsResponse>
    {
        /**
         * @brief Encode all fields of Ros1Mypalletizer_communicationSetCoordsResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Mypalletizer_communicationSetCoordsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Mypalletizer_communicationSetCoordsResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Mypalletizer_communicationSetCoordsResponse& out)
        {
            return !roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
