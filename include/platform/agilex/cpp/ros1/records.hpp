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
#include <agilex/c/ros1/records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsPoint.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Point_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Point Ros1Geometry_msgsPoint;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsQuaternion.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Quaternion_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Quaternion Ros1Geometry_msgsQuaternion;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsPose.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Pose_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Pose Ros1Geometry_msgsPose;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsPoseWithCovariance.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_PoseWithCovariance Ros1Geometry_msgsPoseWithCovariance;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsVector3.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Vector3_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Vector3 Ros1Geometry_msgsVector3;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsTwist.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Twist_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Twist Ros1Geometry_msgsTwist;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsTwistWithCovariance.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_TwistWithCovariance Ros1Geometry_msgsTwistWithCovariance;
    /**
     * @brief Complete bounded storage for Ros1Time.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_time_valid
     */
    typedef roswasmc_bounded_1_time Ros1Time;
    /**
     * @brief Complete bounded storage for Ros1Std_msgsHeader.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_std_msgs_Header_valid
     */
    typedef roswasmc_bounded_1_std_msgs_Header Ros1Std_msgsHeader;
    /**
     * @brief Complete bounded storage for Ros1Nav_msgsOdometry.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_nav_msgs_Odometry_valid
     */
    typedef roswasmc_bounded_1_nav_msgs_Odometry Ros1Nav_msgsOdometry;
    /**
     * @brief Complete bounded storage for Ros1Scout_msgsScoutBmsStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutBmsStatus_valid
     */
    typedef roswasmc_bounded_1_scout_msgs_ScoutBmsStatus Ros1Scout_msgsScoutBmsStatus;
    /**
     * @brief Complete bounded storage for Ros1Scout_msgsScoutDriverState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutDriverState_valid
     */
    typedef roswasmc_bounded_1_scout_msgs_ScoutDriverState Ros1Scout_msgsScoutDriverState;
    /**
     * @brief Complete bounded storage for Ros1Scout_msgsScoutLightCmd.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutLightCmd_valid
     */
    typedef roswasmc_bounded_1_scout_msgs_ScoutLightCmd Ros1Scout_msgsScoutLightCmd;
    /**
     * @brief Complete bounded storage for Ros1Scout_msgsScoutLightState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutLightState_valid
     */
    typedef roswasmc_bounded_1_scout_msgs_ScoutLightState Ros1Scout_msgsScoutLightState;
    /**
     * @brief Complete bounded storage for Ros1Scout_msgsScoutMotorState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutMotorState_valid
     */
    typedef roswasmc_bounded_1_scout_msgs_ScoutMotorState Ros1Scout_msgsScoutMotorState;
    /**
     * @brief Complete bounded storage for Ros1Scout_msgsScoutRsStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutRsStatus_valid
     */
    typedef roswasmc_bounded_1_scout_msgs_ScoutRsStatus Ros1Scout_msgsScoutRsStatus;
    /**
     * @brief Complete bounded storage for Ros1Scout_msgsScoutStatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutStatus_valid
     */
    typedef roswasmc_bounded_1_scout_msgs_ScoutStatus Ros1Scout_msgsScoutStatus;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsPoint.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsPoint>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsPoint
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Point_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Point_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsPoint<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsPoint<T>::codec_identity = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsPoint<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsPoint.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Point_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPoint> : RecordMetadata_Ros1Geometry_msgsPoint<uwvm_custom::Ros1Geometry_msgsPoint>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsPoint transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Point_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsPoint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Point_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Point_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Point_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsPoint.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Point_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsPoint& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Point_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsQuaternion.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsQuaternion>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsQuaternion
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size
         */
        static const size_t max_wire_bytes = 32;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Quaternion_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsQuaternion<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsQuaternion<T>::codec_identity =
        "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsQuaternion<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsQuaternion.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Quaternion_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsQuaternion> : RecordMetadata_Ros1Geometry_msgsQuaternion<uwvm_custom::Ros1Geometry_msgsQuaternion>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsQuaternion transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Quaternion_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsQuaternion const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Quaternion_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Quaternion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsQuaternion.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Quaternion_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsQuaternion& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Quaternion_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsPose.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsPose>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsPose
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Pose_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Pose_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsPose<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsPose<T>::codec_identity = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsPose<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsPose.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Pose_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPose> : RecordMetadata_Ros1Geometry_msgsPose<uwvm_custom::Ros1Geometry_msgsPose>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsPose transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Pose_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsPose const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Pose_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Pose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Pose_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsPose.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Pose_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsPose& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Pose_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSEWITHCOVARIANCE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsPoseWithCovariance.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsPoseWithCovariance>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsPoseWithCovariance
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_wire_size
         */
        static const size_t max_wire_bytes = 344;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsPoseWithCovariance<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsPoseWithCovariance<T>::codec_identity =
        "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsPoseWithCovariance<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsPoseWithCovariance.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPoseWithCovariance> :
        RecordMetadata_Ros1Geometry_msgsPoseWithCovariance<uwvm_custom::Ros1Geometry_msgsPoseWithCovariance>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsPoseWithCovariance transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsPoseWithCovariance const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsPoseWithCovariance.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsPoseWithCovariance& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_VECTOR3 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsVector3.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsVector3>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsVector3
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Vector3_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Vector3_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsVector3<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsVector3<T>::codec_identity = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsVector3<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsVector3.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Vector3_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsVector3> : RecordMetadata_Ros1Geometry_msgsVector3<uwvm_custom::Ros1Geometry_msgsVector3>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsVector3 transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Vector3_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsVector3 const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Vector3_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsVector3.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Vector3_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsVector3& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Vector3_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWIST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsTwist.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsTwist>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsTwist
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Twist_wire_size
         */
        static const size_t max_wire_bytes = 48;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Twist_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsTwist<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsTwist<T>::codec_identity = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsTwist<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsTwist.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Twist_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsTwist> : RecordMetadata_Ros1Geometry_msgsTwist<uwvm_custom::Ros1Geometry_msgsTwist>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsTwist transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Twist_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsTwist const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Twist_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Twist_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Twist_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsTwist.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Twist_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsTwist& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Twist_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_TWISTWITHCOVARIANCE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsTwistWithCovariance.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsTwistWithCovariance>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsTwistWithCovariance
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_wire_size
         */
        static const size_t max_wire_bytes = 336;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsTwistWithCovariance<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsTwistWithCovariance<T>::codec_identity =
        "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsTwistWithCovariance<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsTwistWithCovariance.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsTwistWithCovariance> :
        RecordMetadata_Ros1Geometry_msgsTwistWithCovariance<uwvm_custom::Ros1Geometry_msgsTwistWithCovariance>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsTwistWithCovariance transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsTwistWithCovariance const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsTwistWithCovariance.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsTwistWithCovariance& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_TwistWithCovariance_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_TIME
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_TIME 1

    /**
     * @brief ODR-safe wire metadata for Ros1Time.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Time>
     */
    template <class T>
    struct RecordMetadata_Ros1Time
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_time_wire_size
         */
        static const size_t max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_time_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Time<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Time<T>::codec_identity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Time<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Time.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_time_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Time> : RecordMetadata_Ros1Time<uwvm_custom::Ros1Time>
    {
        /**
         * @brief Encode all fields of Ros1Time transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_time_encode
         */
        static bool encode(uwvm_custom::Ros1Time const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_time_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_time_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_time_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Time.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_time_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Time& out)
        {
            return !roswasmc_bounded_1_time_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER 1

    /**
     * @brief ODR-safe wire metadata for Ros1Std_msgsHeader.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Std_msgsHeader>
     */
    template <class T>
    struct RecordMetadata_Ros1Std_msgsHeader
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_std_msgs_Header_wire_size
         */
        static const size_t max_wire_bytes = 144;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_std_msgs_Header_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Std_msgsHeader<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Std_msgsHeader<T>::codec_identity = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Std_msgsHeader<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Std_msgsHeader.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_std_msgs_Header_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsHeader> : RecordMetadata_Ros1Std_msgsHeader<uwvm_custom::Ros1Std_msgsHeader>
    {
        /**
         * @brief Encode all fields of Ros1Std_msgsHeader transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_std_msgs_Header_encode
         */
        static bool encode(uwvm_custom::Ros1Std_msgsHeader const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_Header_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_Header_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_Header_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Std_msgsHeader.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_std_msgs_Header_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Std_msgsHeader& out)
        {
            return !roswasmc_bounded_1_std_msgs_Header_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_NAV_MSGS_ODOMETRY 1

    /**
     * @brief ODR-safe wire metadata for Ros1Nav_msgsOdometry.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Nav_msgsOdometry>
     */
    template <class T>
    struct RecordMetadata_Ros1Nav_msgsOdometry
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_nav_msgs_Odometry_wire_size
         */
        static const size_t max_wire_bytes = 956;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_nav_msgs_Odometry_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c10d3ce1f2824c33d728d0006fb83134330d0332af122f179cf2dac32181a2ca";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Nav_msgsOdometry<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Nav_msgsOdometry<T>::codec_identity = "UWVMROS1_c10d3ce1f2824c33d728d0006fb83134330d0332af122f179cf2dac32181a2ca";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Nav_msgsOdometry<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Nav_msgsOdometry.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_nav_msgs_Odometry_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Nav_msgsOdometry> : RecordMetadata_Ros1Nav_msgsOdometry<uwvm_custom::Ros1Nav_msgsOdometry>
    {
        /**
         * @brief Encode all fields of Ros1Nav_msgsOdometry transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_nav_msgs_Odometry_encode
         */
        static bool encode(uwvm_custom::Ros1Nav_msgsOdometry const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_nav_msgs_Odometry_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_nav_msgs_Odometry_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_nav_msgs_Odometry_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Nav_msgsOdometry.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_nav_msgs_Odometry_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Nav_msgsOdometry& out)
        {
            return !roswasmc_bounded_1_nav_msgs_Odometry_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTBMSSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTBMSSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Scout_msgsScoutBmsStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Scout_msgsScoutBmsStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Scout_msgsScoutBmsStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_scout_msgs_ScoutBmsStatus_wire_size
         */
        static const size_t max_wire_bytes = 44;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_scout_msgs_ScoutBmsStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6921538c08e86ab5b9ecdbf974c6cb5b580488f4ed96ccbdb8b7824d51e9cf95";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Scout_msgsScoutBmsStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Scout_msgsScoutBmsStatus<T>::codec_identity =
        "UWVMROS1_6921538c08e86ab5b9ecdbf974c6cb5b580488f4ed96ccbdb8b7824d51e9cf95";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Scout_msgsScoutBmsStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Scout_msgsScoutBmsStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutBmsStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Scout_msgsScoutBmsStatus> : RecordMetadata_Ros1Scout_msgsScoutBmsStatus<uwvm_custom::Ros1Scout_msgsScoutBmsStatus>
    {
        /**
         * @brief Encode all fields of Ros1Scout_msgsScoutBmsStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_scout_msgs_ScoutBmsStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Scout_msgsScoutBmsStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_scout_msgs_ScoutBmsStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_scout_msgs_ScoutBmsStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_scout_msgs_ScoutBmsStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Scout_msgsScoutBmsStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_scout_msgs_ScoutBmsStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Scout_msgsScoutBmsStatus& out)
        {
            return !roswasmc_bounded_1_scout_msgs_ScoutBmsStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTDRIVERSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTDRIVERSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Scout_msgsScoutDriverState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Scout_msgsScoutDriverState>
     */
    template <class T>
    struct RecordMetadata_Ros1Scout_msgsScoutDriverState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_scout_msgs_ScoutDriverState_wire_size
         */
        static const size_t max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_scout_msgs_ScoutDriverState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4c56c71ae621b2b8822d742894d19946492002453c93b72faccb4f2abc9d4275";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Scout_msgsScoutDriverState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Scout_msgsScoutDriverState<T>::codec_identity =
        "UWVMROS1_4c56c71ae621b2b8822d742894d19946492002453c93b72faccb4f2abc9d4275";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Scout_msgsScoutDriverState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Scout_msgsScoutDriverState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutDriverState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Scout_msgsScoutDriverState> : RecordMetadata_Ros1Scout_msgsScoutDriverState<uwvm_custom::Ros1Scout_msgsScoutDriverState>
    {
        /**
         * @brief Encode all fields of Ros1Scout_msgsScoutDriverState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_scout_msgs_ScoutDriverState_encode
         */
        static bool encode(uwvm_custom::Ros1Scout_msgsScoutDriverState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_scout_msgs_ScoutDriverState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_scout_msgs_ScoutDriverState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_scout_msgs_ScoutDriverState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Scout_msgsScoutDriverState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_scout_msgs_ScoutDriverState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Scout_msgsScoutDriverState& out)
        {
            return !roswasmc_bounded_1_scout_msgs_ScoutDriverState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTLIGHTCMD
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTLIGHTCMD 1

    /**
     * @brief ODR-safe wire metadata for Ros1Scout_msgsScoutLightCmd.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Scout_msgsScoutLightCmd>
     */
    template <class T>
    struct RecordMetadata_Ros1Scout_msgsScoutLightCmd
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_scout_msgs_ScoutLightCmd_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_scout_msgs_ScoutLightCmd_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cf08cccf454f88111d5cc4a4b1ace08de72cf1ae9a9400c23a148126da95942a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Scout_msgsScoutLightCmd<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Scout_msgsScoutLightCmd<T>::codec_identity =
        "UWVMROS1_cf08cccf454f88111d5cc4a4b1ace08de72cf1ae9a9400c23a148126da95942a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Scout_msgsScoutLightCmd<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Scout_msgsScoutLightCmd.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutLightCmd_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Scout_msgsScoutLightCmd> : RecordMetadata_Ros1Scout_msgsScoutLightCmd<uwvm_custom::Ros1Scout_msgsScoutLightCmd>
    {
        /**
         * @brief Encode all fields of Ros1Scout_msgsScoutLightCmd transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_scout_msgs_ScoutLightCmd_encode
         */
        static bool encode(uwvm_custom::Ros1Scout_msgsScoutLightCmd const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_scout_msgs_ScoutLightCmd_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_scout_msgs_ScoutLightCmd_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_scout_msgs_ScoutLightCmd_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Scout_msgsScoutLightCmd.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_scout_msgs_ScoutLightCmd_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Scout_msgsScoutLightCmd& out)
        {
            return !roswasmc_bounded_1_scout_msgs_ScoutLightCmd_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTLIGHTSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTLIGHTSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Scout_msgsScoutLightState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Scout_msgsScoutLightState>
     */
    template <class T>
    struct RecordMetadata_Ros1Scout_msgsScoutLightState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_scout_msgs_ScoutLightState_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_scout_msgs_ScoutLightState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_af55048f9200cfa80fc419664204a515f628cc610a352ab3ed8443dd7ac0ae51";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Scout_msgsScoutLightState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Scout_msgsScoutLightState<T>::codec_identity =
        "UWVMROS1_af55048f9200cfa80fc419664204a515f628cc610a352ab3ed8443dd7ac0ae51";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Scout_msgsScoutLightState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Scout_msgsScoutLightState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutLightState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Scout_msgsScoutLightState> : RecordMetadata_Ros1Scout_msgsScoutLightState<uwvm_custom::Ros1Scout_msgsScoutLightState>
    {
        /**
         * @brief Encode all fields of Ros1Scout_msgsScoutLightState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_scout_msgs_ScoutLightState_encode
         */
        static bool encode(uwvm_custom::Ros1Scout_msgsScoutLightState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_scout_msgs_ScoutLightState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_scout_msgs_ScoutLightState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_scout_msgs_ScoutLightState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Scout_msgsScoutLightState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_scout_msgs_ScoutLightState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Scout_msgsScoutLightState& out)
        {
            return !roswasmc_bounded_1_scout_msgs_ScoutLightState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTMOTORSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTMOTORSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Scout_msgsScoutMotorState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Scout_msgsScoutMotorState>
     */
    template <class T>
    struct RecordMetadata_Ros1Scout_msgsScoutMotorState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_scout_msgs_ScoutMotorState_wire_size
         */
        static const size_t max_wire_bytes = 32;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_scout_msgs_ScoutMotorState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ca67a704d7bb4ba6b2839db1fdb8a75bc753868ec871d101c24c85d8202a79b7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Scout_msgsScoutMotorState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Scout_msgsScoutMotorState<T>::codec_identity =
        "UWVMROS1_ca67a704d7bb4ba6b2839db1fdb8a75bc753868ec871d101c24c85d8202a79b7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Scout_msgsScoutMotorState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Scout_msgsScoutMotorState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutMotorState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Scout_msgsScoutMotorState> : RecordMetadata_Ros1Scout_msgsScoutMotorState<uwvm_custom::Ros1Scout_msgsScoutMotorState>
    {
        /**
         * @brief Encode all fields of Ros1Scout_msgsScoutMotorState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_scout_msgs_ScoutMotorState_encode
         */
        static bool encode(uwvm_custom::Ros1Scout_msgsScoutMotorState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_scout_msgs_ScoutMotorState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_scout_msgs_ScoutMotorState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_scout_msgs_ScoutMotorState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Scout_msgsScoutMotorState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_scout_msgs_ScoutMotorState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Scout_msgsScoutMotorState& out)
        {
            return !roswasmc_bounded_1_scout_msgs_ScoutMotorState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTRSSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTRSSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Scout_msgsScoutRsStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Scout_msgsScoutRsStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Scout_msgsScoutRsStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_scout_msgs_ScoutRsStatus_wire_size
         */
        static const size_t max_wire_bytes = 153;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_scout_msgs_ScoutRsStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_deb068b75fb629df3724c141ed3be9f6ee8a4aac7727cdaa28769cb61211f7de";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Scout_msgsScoutRsStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Scout_msgsScoutRsStatus<T>::codec_identity =
        "UWVMROS1_deb068b75fb629df3724c141ed3be9f6ee8a4aac7727cdaa28769cb61211f7de";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Scout_msgsScoutRsStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Scout_msgsScoutRsStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutRsStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Scout_msgsScoutRsStatus> : RecordMetadata_Ros1Scout_msgsScoutRsStatus<uwvm_custom::Ros1Scout_msgsScoutRsStatus>
    {
        /**
         * @brief Encode all fields of Ros1Scout_msgsScoutRsStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_scout_msgs_ScoutRsStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Scout_msgsScoutRsStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_scout_msgs_ScoutRsStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_scout_msgs_ScoutRsStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_scout_msgs_ScoutRsStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Scout_msgsScoutRsStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_scout_msgs_ScoutRsStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Scout_msgsScoutRsStatus& out)
        {
            return !roswasmc_bounded_1_scout_msgs_ScoutRsStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_SCOUT_MSGS_SCOUTSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Scout_msgsScoutStatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Scout_msgsScoutStatus>
     */
    template <class T>
    struct RecordMetadata_Ros1Scout_msgsScoutStatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_scout_msgs_ScoutStatus_wire_size
         */
        static const size_t max_wire_bytes = 381;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_scout_msgs_ScoutStatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ff62854d4de0aae3dfbbc312822c6f912294f0feb04a7fff943df602d40bcbe2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Scout_msgsScoutStatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Scout_msgsScoutStatus<T>::codec_identity = "UWVMROS1_ff62854d4de0aae3dfbbc312822c6f912294f0feb04a7fff943df602d40bcbe2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Scout_msgsScoutStatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Scout_msgsScoutStatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_scout_msgs_ScoutStatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Scout_msgsScoutStatus> : RecordMetadata_Ros1Scout_msgsScoutStatus<uwvm_custom::Ros1Scout_msgsScoutStatus>
    {
        /**
         * @brief Encode all fields of Ros1Scout_msgsScoutStatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_scout_msgs_ScoutStatus_encode
         */
        static bool encode(uwvm_custom::Ros1Scout_msgsScoutStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_scout_msgs_ScoutStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_scout_msgs_ScoutStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_scout_msgs_ScoutStatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Scout_msgsScoutStatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_scout_msgs_ScoutStatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Scout_msgsScoutStatus& out)
        {
            return !roswasmc_bounded_1_scout_msgs_ScoutStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
