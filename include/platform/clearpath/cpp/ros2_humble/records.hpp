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
#include <clearpath/c/ros2_humble/records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros2Builtin_interfacesMsgDuration.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid
     */
    typedef roswasmc_bounded_2_builtin_interfaces_msg_Duration Ros2Builtin_interfacesMsgDuration;
    /**
     * @brief Complete bounded storage for Ros2Builtin_interfacesMsgTime.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_valid
     */
    typedef roswasmc_bounded_2_builtin_interfaces_msg_Time Ros2Builtin_interfacesMsgTime;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_motor_msgsMsgPumaFeedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaFeedback_valid
     */
    typedef roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaFeedback Ros2Clearpath_motor_msgsMsgPumaFeedback;
    /**
     * @brief Complete bounded storage for Ros2Std_msgsMsgHeader.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_std_msgs_msg_Header_valid
     */
    typedef roswasmc_bounded_2_std_msgs_msg_Header Ros2Std_msgsMsgHeader;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_motor_msgsMsgPumaMultiFeedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiFeedback_valid
     */
    typedef roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiFeedback Ros2Clearpath_motor_msgsMsgPumaMultiFeedback;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_motor_msgsMsgPumaStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaStatus_valid
     */
    typedef roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaStatus Ros2Clearpath_motor_msgsMsgPumaStatus;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_motor_msgsMsgPumaMultiStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiStatus_valid
     */
    typedef roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiStatus Ros2Clearpath_motor_msgsMsgPumaMultiStatus;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_platform_msgsMsgDrive.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Drive_valid
     */
    typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_Drive Ros2Clearpath_platform_msgsMsgDrive;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_platform_msgsMsgDriveFeedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_DriveFeedback_valid
     */
    typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_DriveFeedback Ros2Clearpath_platform_msgsMsgDriveFeedback;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_platform_msgsMsgFans.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Fans_valid
     */
    typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_Fans Ros2Clearpath_platform_msgsMsgFans;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_platform_msgsMsgFeedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Feedback_valid
     */
    typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_Feedback Ros2Clearpath_platform_msgsMsgFeedback;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_platform_msgsMsgRGB.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_valid
     */
    typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB Ros2Clearpath_platform_msgsMsgRGB;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_platform_msgsMsgLights.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Lights_valid
     */
    typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_Lights Ros2Clearpath_platform_msgsMsgLights;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_platform_msgsMsgPower.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Power_valid
     */
    typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_Power Ros2Clearpath_platform_msgsMsgPower;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_platform_msgsMsgStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_valid
     */
    typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_Status Ros2Clearpath_platform_msgsMsgStatus;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_platform_msgsMsgStopStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_valid
     */
    typedef roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus Ros2Clearpath_platform_msgsMsgStopStatus;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_platform_msgsSrvConfigureMcu_Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Request_valid
     */
    typedef roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Request Ros2Clearpath_platform_msgsSrvConfigureMcu_Request;
    /**
     * @brief Complete bounded storage for Ros2Clearpath_platform_msgsSrvConfigureMcu_Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Response_valid
     */
    typedef roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Response Ros2Clearpath_platform_msgsSrvConfigureMcu_Response;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_DURATION 1

    /**
     * @brief ODR-safe wire metadata for Ros2Builtin_interfacesMsgDuration.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Builtin_interfacesMsgDuration>
     */
    template <class T>
    struct RecordMetadata_Ros2Builtin_interfacesMsgDuration
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size
         */
        static const size_t max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Builtin_interfacesMsgDuration<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Builtin_interfacesMsgDuration<T>::codec_identity =
        "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Builtin_interfacesMsgDuration<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Builtin_interfacesMsgDuration.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Builtin_interfacesMsgDuration> :
        RecordMetadata_Ros2Builtin_interfacesMsgDuration<uwvm_custom::Ros2Builtin_interfacesMsgDuration>
    {
        /**
         * @brief Encode all fields of Ros2Builtin_interfacesMsgDuration transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode
         */
        static bool encode(uwvm_custom::Ros2Builtin_interfacesMsgDuration const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_builtin_interfaces_msg_Duration_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_builtin_interfaces_msg_Duration_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Builtin_interfacesMsgDuration.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Builtin_interfacesMsgDuration& out)
        {
            return !roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_BUILTIN_INTERFACES_MSG_TIME 1

    /**
     * @brief ODR-safe wire metadata for Ros2Builtin_interfacesMsgTime.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Builtin_interfacesMsgTime>
     */
    template <class T>
    struct RecordMetadata_Ros2Builtin_interfacesMsgTime
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size
         */
        static const size_t max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Builtin_interfacesMsgTime<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Builtin_interfacesMsgTime<T>::codec_identity =
        "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Builtin_interfacesMsgTime<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Builtin_interfacesMsgTime.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Builtin_interfacesMsgTime> : RecordMetadata_Ros2Builtin_interfacesMsgTime<uwvm_custom::Ros2Builtin_interfacesMsgTime>
    {
        /**
         * @brief Encode all fields of Ros2Builtin_interfacesMsgTime transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_encode
         */
        static bool encode(uwvm_custom::Ros2Builtin_interfacesMsgTime const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Builtin_interfacesMsgTime.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Builtin_interfacesMsgTime& out)
        {
            return !roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_MOTOR_MSGS_MSG_PUMAFEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_MOTOR_MSGS_MSG_PUMAFEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_motor_msgsMsgPumaFeedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaFeedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaFeedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaFeedback_wire_size
         */
        static const size_t max_wire_bytes = 293;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaFeedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c020162b07a55ac5f41df6021c0d3053d7302863f4e544a738b6cc5bc4dc9659";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaFeedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaFeedback<T>::codec_identity =
        "UWVMROS1_c020162b07a55ac5f41df6021c0d3053d7302863f4e544a738b6cc5bc4dc9659";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaFeedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_motor_msgsMsgPumaFeedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaFeedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaFeedback> :
        RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaFeedback<uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaFeedback>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_motor_msgsMsgPumaFeedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaFeedback_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaFeedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_motor_msgsMsgPumaFeedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaFeedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaFeedback& out)
        {
            return !roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_STD_MSGS_MSG_HEADER 1

    /**
     * @brief ODR-safe wire metadata for Ros2Std_msgsMsgHeader.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Std_msgsMsgHeader>
     */
    template <class T>
    struct RecordMetadata_Ros2Std_msgsMsgHeader
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_std_msgs_msg_Header_wire_size
         */
        static const size_t max_wire_bytes = 140;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_std_msgs_msg_Header_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Std_msgsMsgHeader<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Std_msgsMsgHeader<T>::codec_identity = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Std_msgsMsgHeader<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Std_msgsMsgHeader.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_std_msgs_msg_Header_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Std_msgsMsgHeader> : RecordMetadata_Ros2Std_msgsMsgHeader<uwvm_custom::Ros2Std_msgsMsgHeader>
    {
        /**
         * @brief Encode all fields of Ros2Std_msgsMsgHeader transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_std_msgs_msg_Header_encode
         */
        static bool encode(uwvm_custom::Ros2Std_msgsMsgHeader const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_std_msgs_msg_Header_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_std_msgs_msg_Header_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Std_msgsMsgHeader.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_std_msgs_msg_Header_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Std_msgsMsgHeader& out)
        {
            return !roswasmc_bounded_2_std_msgs_msg_Header_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_MOTOR_MSGS_MSG_PUMAMULTIFEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_MOTOR_MSGS_MSG_PUMAMULTIFEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_motor_msgsMsgPumaMultiFeedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaMultiFeedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiFeedback_wire_size
         */
        static const size_t max_wire_bytes = 1316;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiFeedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_638309564580ad23d585799dcd46156e1e4261ebf9febfbb91754c250907c947";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback<T>::codec_identity =
        "UWVMROS1_638309564580ad23d585799dcd46156e1e4261ebf9febfbb91754c250907c947";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_motor_msgsMsgPumaMultiFeedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiFeedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaMultiFeedback> :
        RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaMultiFeedback<uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaMultiFeedback>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_motor_msgsMsgPumaMultiFeedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiFeedback_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaMultiFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiFeedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_motor_msgsMsgPumaMultiFeedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiFeedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaMultiFeedback& out)
        {
            return !roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_MOTOR_MSGS_MSG_PUMASTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_MOTOR_MSGS_MSG_PUMASTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_motor_msgsMsgPumaStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaStatus_wire_size
         */
        static const size_t max_wire_bytes = 279;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a027229db2c8500f707d97064548b27e77e24ae4840ad9722d2dc74726099da8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaStatus<T>::codec_identity =
        "UWVMROS1_a027229db2c8500f707d97064548b27e77e24ae4840ad9722d2dc74726099da8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_motor_msgsMsgPumaStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaStatus> :
        RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaStatus<uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaStatus>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_motor_msgsMsgPumaStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_motor_msgsMsgPumaStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaStatus& out)
        {
            return !roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_MOTOR_MSGS_MSG_PUMAMULTISTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_MOTOR_MSGS_MSG_PUMAMULTISTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_motor_msgsMsgPumaMultiStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaMultiStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaMultiStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiStatus_wire_size
         */
        static const size_t max_wire_bytes = 1260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_30a0210fea4fffe07371c898c365ef9696501a7541935dd80770671a7163c8f2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaMultiStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaMultiStatus<T>::codec_identity =
        "UWVMROS1_30a0210fea4fffe07371c898c365ef9696501a7541935dd80770671a7163c8f2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaMultiStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_motor_msgsMsgPumaMultiStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaMultiStatus> :
        RecordMetadata_Ros2Clearpath_motor_msgsMsgPumaMultiStatus<uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaMultiStatus>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_motor_msgsMsgPumaMultiStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaMultiStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_motor_msgsMsgPumaMultiStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_motor_msgsMsgPumaMultiStatus& out)
        {
            return !roswasmc_bounded_2_clearpath_motor_msgs_msg_PumaMultiStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_DRIVE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_DRIVE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_platform_msgsMsgDrive.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgDrive>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_platform_msgsMsgDrive
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Drive_wire_size
         */
        static const size_t max_wire_bytes = 9;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Drive_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_platform_msgsMsgDrive<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_platform_msgsMsgDrive<T>::codec_identity =
        "UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_platform_msgsMsgDrive<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_platform_msgsMsgDrive.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Drive_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgDrive> :
        RecordMetadata_Ros2Clearpath_platform_msgsMsgDrive<uwvm_custom::Ros2Clearpath_platform_msgsMsgDrive>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_platform_msgsMsgDrive transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Drive_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_platform_msgsMsgDrive const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_platform_msgs_msg_Drive_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_platform_msgs_msg_Drive_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_platform_msgs_msg_Drive_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_platform_msgsMsgDrive.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Drive_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_platform_msgsMsgDrive& out)
        {
            return !roswasmc_bounded_2_clearpath_platform_msgs_msg_Drive_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_DRIVEFEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_DRIVEFEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_platform_msgsMsgDriveFeedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgDriveFeedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_platform_msgsMsgDriveFeedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_DriveFeedback_wire_size
         */
        static const size_t max_wire_bytes = 25;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_DriveFeedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_platform_msgsMsgDriveFeedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_platform_msgsMsgDriveFeedback<T>::codec_identity =
        "UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_platform_msgsMsgDriveFeedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_platform_msgsMsgDriveFeedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_DriveFeedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgDriveFeedback> :
        RecordMetadata_Ros2Clearpath_platform_msgsMsgDriveFeedback<uwvm_custom::Ros2Clearpath_platform_msgsMsgDriveFeedback>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_platform_msgsMsgDriveFeedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_DriveFeedback_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_platform_msgsMsgDriveFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_platform_msgs_msg_DriveFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_platform_msgs_msg_DriveFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_platform_msgs_msg_DriveFeedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_platform_msgsMsgDriveFeedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_DriveFeedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_platform_msgsMsgDriveFeedback& out)
        {
            return !roswasmc_bounded_2_clearpath_platform_msgs_msg_DriveFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_FANS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_FANS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_platform_msgsMsgFans.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgFans>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_platform_msgsMsgFans
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Fans_wire_size
         */
        static const size_t max_wire_bytes = 6;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Fans_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_addc15a9b6db4f7a0eba3545f02ece0800e48796f71e387b4d249af861f95317";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_platform_msgsMsgFans<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_platform_msgsMsgFans<T>::codec_identity =
        "UWVMROS1_addc15a9b6db4f7a0eba3545f02ece0800e48796f71e387b4d249af861f95317";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_platform_msgsMsgFans<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_platform_msgsMsgFans.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Fans_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgFans> :
        RecordMetadata_Ros2Clearpath_platform_msgsMsgFans<uwvm_custom::Ros2Clearpath_platform_msgsMsgFans>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_platform_msgsMsgFans transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Fans_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_platform_msgsMsgFans const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_platform_msgs_msg_Fans_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_platform_msgs_msg_Fans_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_platform_msgs_msg_Fans_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_platform_msgsMsgFans.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Fans_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_platform_msgsMsgFans& out)
        {
            return !roswasmc_bounded_2_clearpath_platform_msgs_msg_Fans_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_FEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_FEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_platform_msgsMsgFeedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgFeedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_platform_msgsMsgFeedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Feedback_wire_size
         */
        static const size_t max_wire_bytes = 192;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Feedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_platform_msgsMsgFeedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_platform_msgsMsgFeedback<T>::codec_identity =
        "UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_platform_msgsMsgFeedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_platform_msgsMsgFeedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Feedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgFeedback> :
        RecordMetadata_Ros2Clearpath_platform_msgsMsgFeedback<uwvm_custom::Ros2Clearpath_platform_msgsMsgFeedback>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_platform_msgsMsgFeedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Feedback_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_platform_msgsMsgFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_platform_msgs_msg_Feedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_platform_msgs_msg_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_platform_msgs_msg_Feedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_platform_msgsMsgFeedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Feedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_platform_msgsMsgFeedback& out)
        {
            return !roswasmc_bounded_2_clearpath_platform_msgs_msg_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_RGB
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_RGB 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_platform_msgsMsgRGB.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgRGB>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_platform_msgsMsgRGB
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_platform_msgsMsgRGB<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_platform_msgsMsgRGB<T>::codec_identity =
        "UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_platform_msgsMsgRGB<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_platform_msgsMsgRGB.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgRGB> :
        RecordMetadata_Ros2Clearpath_platform_msgsMsgRGB<uwvm_custom::Ros2Clearpath_platform_msgsMsgRGB>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_platform_msgsMsgRGB transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_platform_msgsMsgRGB const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_platform_msgsMsgRGB.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_platform_msgsMsgRGB& out)
        {
            return !roswasmc_bounded_2_clearpath_platform_msgs_msg_RGB_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_LIGHTS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_LIGHTS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_platform_msgsMsgLights.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgLights>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_platform_msgsMsgLights
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Lights_wire_size
         */
        static const size_t max_wire_bytes = 10;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Lights_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_14da254234c9c897e39bf4ee0db8faad0798d23fe7017195f35f88fb6e0b3332";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_platform_msgsMsgLights<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_platform_msgsMsgLights<T>::codec_identity =
        "UWVMROS1_14da254234c9c897e39bf4ee0db8faad0798d23fe7017195f35f88fb6e0b3332";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_platform_msgsMsgLights<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_platform_msgsMsgLights.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Lights_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgLights> :
        RecordMetadata_Ros2Clearpath_platform_msgsMsgLights<uwvm_custom::Ros2Clearpath_platform_msgsMsgLights>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_platform_msgsMsgLights transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Lights_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_platform_msgsMsgLights const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_platform_msgs_msg_Lights_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_platform_msgs_msg_Lights_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_platform_msgs_msg_Lights_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_platform_msgsMsgLights.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Lights_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_platform_msgsMsgLights& out)
        {
            return !roswasmc_bounded_2_clearpath_platform_msgs_msg_Lights_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_POWER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_POWER 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_platform_msgsMsgPower.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgPower>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_platform_msgsMsgPower
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Power_wire_size
         */
        static const size_t max_wire_bytes = 169;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Power_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e97ba89dea149ff43d0134038985ea45d2f072af592ea128aa5502a053478d22";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_platform_msgsMsgPower<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_platform_msgsMsgPower<T>::codec_identity =
        "UWVMROS1_e97ba89dea149ff43d0134038985ea45d2f072af592ea128aa5502a053478d22";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_platform_msgsMsgPower<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_platform_msgsMsgPower.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Power_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgPower> :
        RecordMetadata_Ros2Clearpath_platform_msgsMsgPower<uwvm_custom::Ros2Clearpath_platform_msgsMsgPower>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_platform_msgsMsgPower transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Power_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_platform_msgsMsgPower const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_platform_msgs_msg_Power_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_platform_msgs_msg_Power_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_platform_msgs_msg_Power_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_platform_msgsMsgPower.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Power_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_platform_msgsMsgPower& out)
        {
            return !roswasmc_bounded_2_clearpath_platform_msgs_msg_Power_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_STATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_STATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_platform_msgsMsgStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_platform_msgsMsgStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_wire_size
         */
        static const size_t max_wire_bytes = 684;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_331afb70728e70e0391da1b2a0f2b97fdc8742a363a2b007606121ad778dd5c1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_platform_msgsMsgStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_platform_msgsMsgStatus<T>::codec_identity =
        "UWVMROS1_331afb70728e70e0391da1b2a0f2b97fdc8742a363a2b007606121ad778dd5c1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_platform_msgsMsgStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_platform_msgsMsgStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgStatus> :
        RecordMetadata_Ros2Clearpath_platform_msgsMsgStatus<uwvm_custom::Ros2Clearpath_platform_msgsMsgStatus>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_platform_msgsMsgStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_platform_msgsMsgStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_platform_msgsMsgStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_platform_msgsMsgStatus& out)
        {
            return !roswasmc_bounded_2_clearpath_platform_msgs_msg_Status_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_STOPSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_MSG_STOPSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_platform_msgsMsgStopStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgStopStatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_platform_msgsMsgStopStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_wire_size
         */
        static const size_t max_wire_bytes = 143;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_platform_msgsMsgStopStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_platform_msgsMsgStopStatus<T>::codec_identity =
        "UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_platform_msgsMsgStopStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_platform_msgsMsgStopStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_platform_msgsMsgStopStatus> :
        RecordMetadata_Ros2Clearpath_platform_msgsMsgStopStatus<uwvm_custom::Ros2Clearpath_platform_msgsMsgStopStatus>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_platform_msgsMsgStopStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_platform_msgsMsgStopStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_platform_msgsMsgStopStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_platform_msgsMsgStopStatus& out)
        {
            return !roswasmc_bounded_2_clearpath_platform_msgs_msg_StopStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_SRV_CONFIGUREMCU_REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_SRV_CONFIGUREMCU_REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_platform_msgsSrvConfigureMcu_Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_platform_msgsSrvConfigureMcu_Request>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Request_wire_size
         */
        static const size_t max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_platform_msgsSrvConfigureMcu_Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_platform_msgsSrvConfigureMcu_Request<T>::codec_identity =
        "UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_platform_msgsSrvConfigureMcu_Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_platform_msgsSrvConfigureMcu_Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_platform_msgsSrvConfigureMcu_Request> :
        RecordMetadata_Ros2Clearpath_platform_msgsSrvConfigureMcu_Request<uwvm_custom::Ros2Clearpath_platform_msgsSrvConfigureMcu_Request>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_platform_msgsSrvConfigureMcu_Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Request_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_platform_msgsSrvConfigureMcu_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_platform_msgsSrvConfigureMcu_Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_platform_msgsSrvConfigureMcu_Request& out)
        {
            return !roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_SRV_CONFIGUREMCU_RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_CLEARPATH_PLATFORM_MSGS_SRV_CONFIGUREMCU_RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Clearpath_platform_msgsSrvConfigureMcu_Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Clearpath_platform_msgsSrvConfigureMcu_Response>
     */
    template <class T>
    struct RecordMetadata_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Response_wire_size
         */
        static const size_t max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response<T>::codec_identity =
        "UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Clearpath_platform_msgsSrvConfigureMcu_Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Clearpath_platform_msgsSrvConfigureMcu_Response> :
        RecordMetadata_Ros2Clearpath_platform_msgsSrvConfigureMcu_Response<uwvm_custom::Ros2Clearpath_platform_msgsSrvConfigureMcu_Response>
    {
        /**
         * @brief Encode all fields of Ros2Clearpath_platform_msgsSrvConfigureMcu_Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Response_encode
         */
        static bool encode(uwvm_custom::Ros2Clearpath_platform_msgsSrvConfigureMcu_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Clearpath_platform_msgsSrvConfigureMcu_Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Clearpath_platform_msgsSrvConfigureMcu_Response& out)
        {
            return !roswasmc_bounded_2_clearpath_platform_msgs_srv_ConfigureMcu_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
