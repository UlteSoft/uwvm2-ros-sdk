/** @file Macro-selected C++ full-field bounded records. */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>
/** @brief Import complete C declarations with their intentional aggregate zero initialization. */
#if defined(__clang__)
# pragma clang diagnostic push
# pragma clang diagnostic ignored "-Wmissing-braces"
# pragma clang diagnostic ignored "-Wmissing-field-initializers"
#endif
#include <flexiv/c/ros2/flexiv-ros2-foxy-complete/bounded_records.h>
#if defined(__clang__)
# pragma clang diagnostic pop
#endif

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgJointPosVel.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel Ros2Flexiv_msgsMsgJointPosVel;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgMode.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_Mode Ros2Flexiv_msgsMsgMode;
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
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgVector3.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Vector3 Ros2Geometry_msgsMsgVector3;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgAccel.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Accel_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Accel Ros2Geometry_msgsMsgAccel;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgWrench.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Wrench Ros2Geometry_msgsMsgWrench;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgRobotStates.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_RobotStates Ros2Flexiv_msgsMsgRobotStates;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_JOINTPOSVEL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgJointPosVel.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgJointPosVel>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgJointPosVel
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_wire_size
         */
        static size_t const max_wire_bytes = 112;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgJointPosVel<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgJointPosVel<T>::codec_identity =
        "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgJointPosVel<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgJointPosVel.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgJointPosVel> : RecordMetadata_Ros2Flexiv_msgsMsgJointPosVel<uwvm_custom::Ros2Flexiv_msgsMsgJointPosVel>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgJointPosVel transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgJointPosVel const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgJointPosVel.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgJointPosVel& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_MODE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgMode.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgMode>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgMode
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_wire_size
         */
        static size_t const max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgMode<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgMode<T>::codec_identity = "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgMode<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgMode.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgMode> : RecordMetadata_Ros2Flexiv_msgsMsgMode<uwvm_custom::Ros2Flexiv_msgsMsgMode>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgMode transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgMode const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_Mode_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_Mode_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_Mode_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgMode.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_Mode_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgMode& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_Mode_decode(bytes.data(), bytes.size(), &out);
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
        static size_t const max_wire_bytes = 24;
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
    size_t const RecordMetadata_Ros2Geometry_msgsMsgPoint<T>::max_wire_bytes;
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
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Point_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
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
        static size_t const max_wire_bytes = 32;
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
    size_t const RecordMetadata_Ros2Geometry_msgsMsgQuaternion<T>::max_wire_bytes;
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
            uwvm_custom::Ros2Geometry_msgsMsgQuaternion value = uwvm_custom::Ros2Geometry_msgsMsgQuaternion();
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
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
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
        static size_t const max_wire_bytes = 56;
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
    size_t const RecordMetadata_Ros2Geometry_msgsMsgPose<T>::max_wire_bytes;
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
            uwvm_custom::Ros2Geometry_msgsMsgPose value = uwvm_custom::Ros2Geometry_msgsMsgPose();
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
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_VECTOR3 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgVector3.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgVector3>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgVector3
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size
         */
        static size_t const max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgVector3<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgVector3<T>::codec_identity =
        "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgVector3<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgVector3.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgVector3> : RecordMetadata_Ros2Geometry_msgsMsgVector3<uwvm_custom::Ros2Geometry_msgsMsgVector3>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgVector3 transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgVector3 const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Vector3_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgVector3.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgVector3& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_ACCEL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgAccel.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgAccel>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgAccel
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Accel_wire_size
         */
        static size_t const max_wire_bytes = 48;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Accel_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgAccel<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgAccel<T>::codec_identity = "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgAccel<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgAccel.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Accel_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgAccel> : RecordMetadata_Ros2Geometry_msgsMsgAccel<uwvm_custom::Ros2Geometry_msgsMsgAccel>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgAccel transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Accel_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgAccel const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Accel_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Accel_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Accel_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgAccel.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Accel_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgAccel& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Accel_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCH 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgWrench.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgWrench>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgWrench
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_wire_size
         */
        static size_t const max_wire_bytes = 48;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgWrench<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgWrench<T>::codec_identity =
        "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgWrench<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgWrench.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgWrench> : RecordMetadata_Ros2Geometry_msgsMsgWrench<uwvm_custom::Ros2Geometry_msgsMsgWrench>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgWrench transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgWrench const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Wrench_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Wrench_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgWrench.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgWrench& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Wrench_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_ROBOTSTATES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgRobotStates.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgRobotStates>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgRobotStates
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_wire_size
         */
        static size_t const max_wire_bytes = 864;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgRobotStates<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgRobotStates<T>::codec_identity =
        "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgRobotStates<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgRobotStates.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgRobotStates> : RecordMetadata_Ros2Flexiv_msgsMsgRobotStates<uwvm_custom::Ros2Flexiv_msgsMsgRobotStates>
    {
        /**
         * @brief Construct the declared defaults of Ros2Flexiv_msgsMsgRobotStates.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_default
         */
        static uwvm_custom::Ros2Flexiv_msgsMsgRobotStates default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Flexiv_msgsMsgRobotStates value = uwvm_custom::Ros2Flexiv_msgsMsgRobotStates();
            (void)roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgRobotStates transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgRobotStates const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgRobotStates.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgRobotStates& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
