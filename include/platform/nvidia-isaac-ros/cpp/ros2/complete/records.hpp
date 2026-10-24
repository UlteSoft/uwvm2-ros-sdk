/** @file Macro-selected C++ full-field bounded records. */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <nvidia-isaac-ros/c/ros2/complete/records.h>
#include <ros/cpp/roswasm/roswasmcpp.hpp>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros2Builtin_interfacesMsgTime.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_builtin_interfaces_msg_Time_valid
     */
    typedef roswasmc_bounded_2_builtin_interfaces_msg_Time Ros2Builtin_interfacesMsgTime;
    /**
     * @brief Complete bounded storage for Ros2Std_msgsMsgHeader.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_std_msgs_msg_Header_valid
     */
    typedef roswasmc_bounded_2_std_msgs_msg_Header Ros2Std_msgsMsgHeader;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgPoint.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Point_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Point Ros2Geometry_msgsMsgPoint;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgQuaternion.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Quaternion Ros2Geometry_msgsMsgQuaternion;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgPose.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Pose Ros2Geometry_msgsMsgPose;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgPoseWithCovariance.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance Ros2Geometry_msgsMsgPoseWithCovariance;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgPoseWithCovarianceStamped.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped Ros2Geometry_msgsMsgPoseWithCovarianceStamped;
    /**
     * @brief Complete bounded storage for Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid
     */
    typedef roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection;
    /**
     * @brief Complete bounded storage for Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid
     */
    typedef roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray;
}  // namespace uwvm_custom

namespace roswasmcpp
{
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
        static const size_t max_wire_bytes = 76;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_std_msgs_msg_Header_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Std_msgsMsgHeader<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Std_msgsMsgHeader<T>::codec_identity = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgPoint.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgPoint>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgPoint
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Point_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Geometry_msgsMsgPoint<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgPoint<T>::codec_identity = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgPoint<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgPoint.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Point_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgPoint> : RecordMetadata_Ros2Geometry_msgsMsgPoint<uwvm_custom::Ros2Geometry_msgsMsgPoint>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgPoint transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Point_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgPoint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Point_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgPoint.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Point_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgPoint& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Point_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgQuaternion.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgQuaternion>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgQuaternion
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size
         */
        static const size_t max_wire_bytes = 32;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Geometry_msgsMsgQuaternion<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgQuaternion<T>::codec_identity =
        "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgQuaternion<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgQuaternion.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgQuaternion> : RecordMetadata_Ros2Geometry_msgsMsgQuaternion<uwvm_custom::Ros2Geometry_msgsMsgQuaternion>
    {
        /**
         * @brief Construct the declared defaults of Ros2Geometry_msgsMsgQuaternion.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default
         */
        static uwvm_custom::Ros2Geometry_msgsMsgQuaternion default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Geometry_msgsMsgQuaternion value = {0};
            (void)roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgQuaternion transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgQuaternion const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgQuaternion.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgQuaternion& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgPose.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgPose>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgPose
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Geometry_msgsMsgPose<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgPose<T>::codec_identity = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgPose<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgPose.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgPose> : RecordMetadata_Ros2Geometry_msgsMsgPose<uwvm_custom::Ros2Geometry_msgsMsgPose>
    {
        /**
         * @brief Construct the declared defaults of Ros2Geometry_msgsMsgPose.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_default
         */
        static uwvm_custom::Ros2Geometry_msgsMsgPose default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Geometry_msgsMsgPose value = {0};
            (void)roswasmc_bounded_2_geometry_msgs_msg_Pose_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgPose transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgPose const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgPose.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgPose& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgPoseWithCovariance.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovariance>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgPoseWithCovariance
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size
         */
        static const size_t max_wire_bytes = 344;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Geometry_msgsMsgPoseWithCovariance<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgPoseWithCovariance<T>::codec_identity =
        "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgPoseWithCovariance<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgPoseWithCovariance.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovariance> :
        RecordMetadata_Ros2Geometry_msgsMsgPoseWithCovariance<uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovariance>
    {
        /**
         * @brief Construct the declared defaults of Ros2Geometry_msgsMsgPoseWithCovariance.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_default
         */
        static uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovariance default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovariance value = {0};
            (void)roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgPoseWithCovariance transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovariance const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgPoseWithCovariance.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovariance& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovariance_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSEWITHCOVARIANCESTAMPED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgPoseWithCovarianceStamped.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovarianceStamped>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgPoseWithCovarianceStamped
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size
         */
        static const size_t max_wire_bytes = 420;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Geometry_msgsMsgPoseWithCovarianceStamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgPoseWithCovarianceStamped<T>::codec_identity =
        "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgPoseWithCovarianceStamped<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgPoseWithCovarianceStamped.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovarianceStamped> :
        RecordMetadata_Ros2Geometry_msgsMsgPoseWithCovarianceStamped<uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovarianceStamped>
    {
        /**
         * @brief Construct the declared defaults of Ros2Geometry_msgsMsgPoseWithCovarianceStamped.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_default
         */
        static uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovarianceStamped default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovarianceStamped value = {0};
            (void)roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgPoseWithCovarianceStamped transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovarianceStamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgPoseWithCovarianceStamped.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgPoseWithCovarianceStamped& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_PoseWithCovarianceStamped_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTION 1

    /**
     * @brief ODR-safe wire metadata for Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection>
     */
    template <class T>
    struct RecordMetadata_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size
         */
        static const size_t max_wire_bytes = 612;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection<T>::codec_identity =
        "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection> :
        RecordMetadata_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection<uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection>
    {
        /**
         * @brief Construct the declared defaults of Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_default
         */
        static uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection value = {0};
            (void)roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
         * transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_encode
         */
        static bool encode(uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection& out)
        {
            return !roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetection_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_ISAAC_ROS_APRILTAG_INTERFACES_MSG_APRILTAGDETECTIONARRAY 1

    /**
     * @brief ODR-safe wire metadata for Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray>
     */
    template <class T>
    struct RecordMetadata_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_wire_size
         */
        static const size_t max_wire_bytes = 9872;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray<T>::codec_identity =
        "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for
     * Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray> :
        RecordMetadata_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray<uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray>
    {
        /**
         * @brief Construct the declared defaults of
         * Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_default
         */
        static uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray value = {0};
            (void)roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
         * transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode
         */
        static bool encode(uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_encode(&value,
                                                                                                  ::roswasmcpp::buffer_data(next),
                                                                                                  next.size(),
                                                                                                  &used) ||
               used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into
         * Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray& out)
        {
            return !roswasmc_bounded_2_isaac_ros_apriltag_interfaces_msg_AprilTagDetectionArray_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
