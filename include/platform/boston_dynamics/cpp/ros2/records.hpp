/**
 * @file records.hpp
 * @brief Preserve the complete source-pinned platform interface.
 * @details Original declarations, field order, widths and protocol operations
 * are retained. Native deployment and permissions are configured separately.
 * See this platform's source inventory and language manual for exact bounds,
 * ownership and compilation/transport qualification.
 */
/** @file Macro-selected C++ full-field bounded records. */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <ros/cpp/roswasm/roswasmcpp.hpp>
#include <boston_dynamics/c/ros2/records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros2Uwvm_spot_bridgeSrvState_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Request_valid
     */
    typedef roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Request Ros2Uwvm_spot_bridgeSrvState_Request;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_spot_bridgeSrvState_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_valid
     */
    typedef roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response Ros2Uwvm_spot_bridgeSrvState_Response;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_spot_bridgeSrvLease_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Request_valid
     */
    typedef roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Request Ros2Uwvm_spot_bridgeSrvLease_Request;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_spot_bridgeSrvLease_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_valid
     */
    typedef roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response Ros2Uwvm_spot_bridgeSrvLease_Response;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_spot_bridgeSrvCommand_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Request_valid
     */
    typedef roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Request Ros2Uwvm_spot_bridgeSrvCommand_Request;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_spot_bridgeSrvCommand_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Response_valid
     */
    typedef roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Response Ros2Uwvm_spot_bridgeSrvCommand_Response;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_spot_bridgeSrvVelocity_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Request_valid
     */
    typedef roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Request Ros2Uwvm_spot_bridgeSrvVelocity_Request;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_spot_bridgeSrvVelocity_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Response_valid
     */
    typedef roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Response Ros2Uwvm_spot_bridgeSrvVelocity_Response;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_spot_bridgeSrvFeedback_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Request_valid
     */
    typedef roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Request Ros2Uwvm_spot_bridgeSrvFeedback_Request;
    /**
     * @brief Complete bounded storage for Ros2Uwvm_spot_bridgeSrvFeedback_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Response_valid
     */
    typedef roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Response Ros2Uwvm_spot_bridgeSrvFeedback_Response;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_STATE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_STATE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_spot_bridgeSrvState_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvState_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_spot_bridgeSrvState_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Request_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9becf278bc168ed6d5b15fe7f1ec35b83e274de8a5173cb2335948306bc7a47e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_spot_bridgeSrvState_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_spot_bridgeSrvState_Request<T>::codec_identity =
        "UWVMROS1_9becf278bc168ed6d5b15fe7f1ec35b83e274de8a5173cb2335948306bc7a47e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_spot_bridgeSrvState_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_spot_bridgeSrvState_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvState_Request> :
        RecordMetadata_Ros2Uwvm_spot_bridgeSrvState_Request<uwvm_custom::Ros2Uwvm_spot_bridgeSrvState_Request>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_spot_bridgeSrvState_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_spot_bridgeSrvState_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_spot_bridgeSrvState_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_spot_bridgeSrvState_Request& out)
        {
            return !roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_STATE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_STATE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_spot_bridgeSrvState_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvState_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_spot_bridgeSrvState_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_wire_size
         */
        static const size_t max_wire_bytes = 21433;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ab07340e952c2ff63f35dad37e9d4837a280eee9ce477ac5be4a05f82408ce0a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_spot_bridgeSrvState_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_spot_bridgeSrvState_Response<T>::codec_identity =
        "UWVMROS1_ab07340e952c2ff63f35dad37e9d4837a280eee9ce477ac5be4a05f82408ce0a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_spot_bridgeSrvState_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_spot_bridgeSrvState_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvState_Response> :
        RecordMetadata_Ros2Uwvm_spot_bridgeSrvState_Response<uwvm_custom::Ros2Uwvm_spot_bridgeSrvState_Response>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_spot_bridgeSrvState_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_spot_bridgeSrvState_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_spot_bridgeSrvState_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_spot_bridgeSrvState_Response& out)
        {
            return !roswasmc_bounded_2_uwvm_spot_bridge_srv_State_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_LEASE_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_LEASE_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_spot_bridgeSrvLease_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvLease_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_spot_bridgeSrvLease_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Request_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a9aacd78dc6ae9d18fb6bb0d185797c6463c882edadf251eb5c21e3aa3c538a1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_spot_bridgeSrvLease_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_spot_bridgeSrvLease_Request<T>::codec_identity =
        "UWVMROS1_a9aacd78dc6ae9d18fb6bb0d185797c6463c882edadf251eb5c21e3aa3c538a1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_spot_bridgeSrvLease_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_spot_bridgeSrvLease_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvLease_Request> :
        RecordMetadata_Ros2Uwvm_spot_bridgeSrvLease_Request<uwvm_custom::Ros2Uwvm_spot_bridgeSrvLease_Request>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_spot_bridgeSrvLease_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_spot_bridgeSrvLease_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_spot_bridgeSrvLease_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_spot_bridgeSrvLease_Request& out)
        {
            return !roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_LEASE_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_LEASE_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_spot_bridgeSrvLease_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvLease_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_spot_bridgeSrvLease_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_wire_size
         */
        static const size_t max_wire_bytes = 22;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ce875eb701b607c01f8a19dc8fcff607829824ad99276f906c7fc8fc5567f6d3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_spot_bridgeSrvLease_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_spot_bridgeSrvLease_Response<T>::codec_identity =
        "UWVMROS1_ce875eb701b607c01f8a19dc8fcff607829824ad99276f906c7fc8fc5567f6d3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_spot_bridgeSrvLease_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_spot_bridgeSrvLease_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvLease_Response> :
        RecordMetadata_Ros2Uwvm_spot_bridgeSrvLease_Response<uwvm_custom::Ros2Uwvm_spot_bridgeSrvLease_Response>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_spot_bridgeSrvLease_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_spot_bridgeSrvLease_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_spot_bridgeSrvLease_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_spot_bridgeSrvLease_Response& out)
        {
            return !roswasmc_bounded_2_uwvm_spot_bridge_srv_Lease_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_COMMAND_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_COMMAND_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_spot_bridgeSrvCommand_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvCommand_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_spot_bridgeSrvCommand_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Request_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_29996d4dacb4ea847c5d629cb634d4aa5e2451627d2469d6cdf301cc007968f8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_spot_bridgeSrvCommand_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_spot_bridgeSrvCommand_Request<T>::codec_identity =
        "UWVMROS1_29996d4dacb4ea847c5d629cb634d4aa5e2451627d2469d6cdf301cc007968f8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_spot_bridgeSrvCommand_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_spot_bridgeSrvCommand_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvCommand_Request> :
        RecordMetadata_Ros2Uwvm_spot_bridgeSrvCommand_Request<uwvm_custom::Ros2Uwvm_spot_bridgeSrvCommand_Request>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_spot_bridgeSrvCommand_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_spot_bridgeSrvCommand_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_spot_bridgeSrvCommand_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_spot_bridgeSrvCommand_Request& out)
        {
            return !roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_COMMAND_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_COMMAND_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_spot_bridgeSrvCommand_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvCommand_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_spot_bridgeSrvCommand_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Response_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e35556e7439c8d5ca79cb0f4ad23cf73c85a8a79d1382cde398dd85082dd1733";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_spot_bridgeSrvCommand_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_spot_bridgeSrvCommand_Response<T>::codec_identity =
        "UWVMROS1_e35556e7439c8d5ca79cb0f4ad23cf73c85a8a79d1382cde398dd85082dd1733";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_spot_bridgeSrvCommand_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_spot_bridgeSrvCommand_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvCommand_Response> :
        RecordMetadata_Ros2Uwvm_spot_bridgeSrvCommand_Response<uwvm_custom::Ros2Uwvm_spot_bridgeSrvCommand_Response>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_spot_bridgeSrvCommand_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_spot_bridgeSrvCommand_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_spot_bridgeSrvCommand_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_spot_bridgeSrvCommand_Response& out)
        {
            return !roswasmc_bounded_2_uwvm_spot_bridge_srv_Command_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_VELOCITY_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_VELOCITY_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_spot_bridgeSrvVelocity_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvVelocity_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_spot_bridgeSrvVelocity_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Request_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ffe3b1dec91a25cd84d221ba4ebeae576bd7d6b96f258579c0b3d280cad79f8d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_spot_bridgeSrvVelocity_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_spot_bridgeSrvVelocity_Request<T>::codec_identity =
        "UWVMROS1_ffe3b1dec91a25cd84d221ba4ebeae576bd7d6b96f258579c0b3d280cad79f8d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_spot_bridgeSrvVelocity_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_spot_bridgeSrvVelocity_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvVelocity_Request> :
        RecordMetadata_Ros2Uwvm_spot_bridgeSrvVelocity_Request<uwvm_custom::Ros2Uwvm_spot_bridgeSrvVelocity_Request>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_spot_bridgeSrvVelocity_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_spot_bridgeSrvVelocity_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_spot_bridgeSrvVelocity_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_spot_bridgeSrvVelocity_Request& out)
        {
            return !roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_VELOCITY_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_VELOCITY_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_spot_bridgeSrvVelocity_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvVelocity_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_spot_bridgeSrvVelocity_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Response_wire_size
         */
        static const size_t max_wire_bytes = 26;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_031f37beeb5a03c4e65d4be8fd70bc680408d110a020e066bea593d86498401a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_spot_bridgeSrvVelocity_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_spot_bridgeSrvVelocity_Response<T>::codec_identity =
        "UWVMROS1_031f37beeb5a03c4e65d4be8fd70bc680408d110a020e066bea593d86498401a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_spot_bridgeSrvVelocity_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_spot_bridgeSrvVelocity_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvVelocity_Response> :
        RecordMetadata_Ros2Uwvm_spot_bridgeSrvVelocity_Response<uwvm_custom::Ros2Uwvm_spot_bridgeSrvVelocity_Response>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_spot_bridgeSrvVelocity_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_spot_bridgeSrvVelocity_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_spot_bridgeSrvVelocity_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_spot_bridgeSrvVelocity_Response& out)
        {
            return !roswasmc_bounded_2_uwvm_spot_bridge_srv_Velocity_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_FEEDBACK_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_FEEDBACK_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_spot_bridgeSrvFeedback_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_spot_bridgeSrvFeedback_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Request_wire_size
         */
        static const size_t max_wire_bytes = 32;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_de64ce283f49f5c324912ec262f7d15b6fd828879c01039d455c765743c45ba3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_spot_bridgeSrvFeedback_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_spot_bridgeSrvFeedback_Request<T>::codec_identity =
        "UWVMROS1_de64ce283f49f5c324912ec262f7d15b6fd828879c01039d455c765743c45ba3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_spot_bridgeSrvFeedback_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_spot_bridgeSrvFeedback_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Request> :
        RecordMetadata_Ros2Uwvm_spot_bridgeSrvFeedback_Request<uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Request>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_spot_bridgeSrvFeedback_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_spot_bridgeSrvFeedback_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Request& out)
        {
            return !roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_FEEDBACK_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_UWVM_SPOT_BRIDGE_SRV_FEEDBACK_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Uwvm_spot_bridgeSrvFeedback_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Uwvm_spot_bridgeSrvFeedback_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Response_wire_size
         */
        static const size_t max_wire_bytes = 16429;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4a19efe7f64fe0d7f6f13abe8980fb55503d3b897af64abc73bbd236587adfe8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Uwvm_spot_bridgeSrvFeedback_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Uwvm_spot_bridgeSrvFeedback_Response<T>::codec_identity =
        "UWVMROS1_4a19efe7f64fe0d7f6f13abe8980fb55503d3b897af64abc73bbd236587adfe8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Uwvm_spot_bridgeSrvFeedback_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Uwvm_spot_bridgeSrvFeedback_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Response> :
        RecordMetadata_Ros2Uwvm_spot_bridgeSrvFeedback_Response<uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Response>
    {
        /**
         * @brief Encode all fields of Ros2Uwvm_spot_bridgeSrvFeedback_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Uwvm_spot_bridgeSrvFeedback_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Response& out)
        {
            return !roswasmc_bounded_2_uwvm_spot_bridge_srv_Feedback_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
