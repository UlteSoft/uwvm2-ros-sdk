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
#include <flexiv/c/ros1/flexiv-ros1-noetic-complete/bounded_records.h>
#if defined(__clang__)
# pragma clang diagnostic pop
#endif

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros1Flexiv_msgsJointPosVel.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_flexiv_msgs_JointPosVel_valid
     */
    typedef roswasmc_bounded_1_flexiv_msgs_JointPosVel Ros1Flexiv_msgsJointPosVel;
    /**
     * @brief Complete bounded storage for Ros1Flexiv_msgsMode.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_flexiv_msgs_Mode_valid
     */
    typedef roswasmc_bounded_1_flexiv_msgs_Mode Ros1Flexiv_msgsMode;
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
     * @brief Complete bounded storage for Ros1Geometry_msgsVector3.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Vector3_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Vector3 Ros1Geometry_msgsVector3;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsAccel.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Accel_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Accel Ros1Geometry_msgsAccel;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsWrench.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Wrench_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Wrench Ros1Geometry_msgsWrench;
    /**
     * @brief Complete bounded storage for Ros1Flexiv_msgsRobotStates.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_flexiv_msgs_RobotStates_valid
     */
    typedef roswasmc_bounded_1_flexiv_msgs_RobotStates Ros1Flexiv_msgsRobotStates;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_JOINTPOSVEL 1

    /**
     * @brief ODR-safe wire metadata for Ros1Flexiv_msgsJointPosVel.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Flexiv_msgsJointPosVel>
     */
    template <class T>
    struct RecordMetadata_Ros1Flexiv_msgsJointPosVel
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_flexiv_msgs_JointPosVel_wire_size
         */
        static size_t const max_wire_bytes = 112;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_flexiv_msgs_JointPosVel_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Flexiv_msgsJointPosVel<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Flexiv_msgsJointPosVel<T>::codec_identity =
        "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Flexiv_msgsJointPosVel<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Flexiv_msgsJointPosVel.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_flexiv_msgs_JointPosVel_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Flexiv_msgsJointPosVel> : RecordMetadata_Ros1Flexiv_msgsJointPosVel<uwvm_custom::Ros1Flexiv_msgsJointPosVel>
    {
        /**
         * @brief Encode all fields of Ros1Flexiv_msgsJointPosVel transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_flexiv_msgs_JointPosVel_encode
         */
        static bool encode(uwvm_custom::Ros1Flexiv_msgsJointPosVel const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_flexiv_msgs_JointPosVel_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_flexiv_msgs_JointPosVel_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_flexiv_msgs_JointPosVel_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Flexiv_msgsJointPosVel.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_flexiv_msgs_JointPosVel_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Flexiv_msgsJointPosVel& out)
        {
            return !roswasmc_bounded_1_flexiv_msgs_JointPosVel_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_MODE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Flexiv_msgsMode.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Flexiv_msgsMode>
     */
    template <class T>
    struct RecordMetadata_Ros1Flexiv_msgsMode
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_flexiv_msgs_Mode_wire_size
         */
        static size_t const max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_flexiv_msgs_Mode_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Flexiv_msgsMode<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Flexiv_msgsMode<T>::codec_identity = "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Flexiv_msgsMode<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Flexiv_msgsMode.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_flexiv_msgs_Mode_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Flexiv_msgsMode> : RecordMetadata_Ros1Flexiv_msgsMode<uwvm_custom::Ros1Flexiv_msgsMode>
    {
        /**
         * @brief Encode all fields of Ros1Flexiv_msgsMode transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_flexiv_msgs_Mode_encode
         */
        static bool encode(uwvm_custom::Ros1Flexiv_msgsMode const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_flexiv_msgs_Mode_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_flexiv_msgs_Mode_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_flexiv_msgs_Mode_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Flexiv_msgsMode.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_flexiv_msgs_Mode_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Flexiv_msgsMode& out)
        {
            return !roswasmc_bounded_1_flexiv_msgs_Mode_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
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
        static size_t const max_wire_bytes = 24;
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
    size_t const RecordMetadata_Ros1Geometry_msgsPoint<T>::max_wire_bytes;
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
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_geometry_msgs_Point_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Point_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
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
        static size_t const max_wire_bytes = 32;
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
    size_t const RecordMetadata_Ros1Geometry_msgsQuaternion<T>::max_wire_bytes;
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
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Quaternion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
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
        static size_t const max_wire_bytes = 56;
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
    size_t const RecordMetadata_Ros1Geometry_msgsPose<T>::max_wire_bytes;
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
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_geometry_msgs_Pose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Pose_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
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
        static size_t const max_wire_bytes = 24;
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
    size_t const RecordMetadata_Ros1Geometry_msgsVector3<T>::max_wire_bytes;
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
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Vector3_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_ACCEL 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsAccel.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsAccel>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsAccel
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Accel_wire_size
         */
        static size_t const max_wire_bytes = 48;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Accel_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Geometry_msgsAccel<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsAccel<T>::codec_identity = "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsAccel<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsAccel.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Accel_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsAccel> : RecordMetadata_Ros1Geometry_msgsAccel<uwvm_custom::Ros1Geometry_msgsAccel>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsAccel transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Accel_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsAccel const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Accel_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_geometry_msgs_Accel_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Accel_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsAccel.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Accel_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsAccel& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Accel_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_WRENCH 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsWrench.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsWrench>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsWrench
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Wrench_wire_size
         */
        static size_t const max_wire_bytes = 48;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Wrench_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Geometry_msgsWrench<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsWrench<T>::codec_identity = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsWrench<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsWrench.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Wrench_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsWrench> : RecordMetadata_Ros1Geometry_msgsWrench<uwvm_custom::Ros1Geometry_msgsWrench>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsWrench transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Wrench_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsWrench const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Wrench_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_geometry_msgs_Wrench_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Wrench_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsWrench.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Wrench_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsWrench& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Wrench_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FLEXIV_MSGS_ROBOTSTATES 1

    /**
     * @brief ODR-safe wire metadata for Ros1Flexiv_msgsRobotStates.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Flexiv_msgsRobotStates>
     */
    template <class T>
    struct RecordMetadata_Ros1Flexiv_msgsRobotStates
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_flexiv_msgs_RobotStates_wire_size
         */
        static size_t const max_wire_bytes = 864;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_flexiv_msgs_RobotStates_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Flexiv_msgsRobotStates<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Flexiv_msgsRobotStates<T>::codec_identity =
        "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Flexiv_msgsRobotStates<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Flexiv_msgsRobotStates.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_flexiv_msgs_RobotStates_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Flexiv_msgsRobotStates> : RecordMetadata_Ros1Flexiv_msgsRobotStates<uwvm_custom::Ros1Flexiv_msgsRobotStates>
    {
        /**
         * @brief Encode all fields of Ros1Flexiv_msgsRobotStates transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_flexiv_msgs_RobotStates_encode
         */
        static bool encode(uwvm_custom::Ros1Flexiv_msgsRobotStates const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_flexiv_msgs_RobotStates_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_flexiv_msgs_RobotStates_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_flexiv_msgs_RobotStates_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Flexiv_msgsRobotStates.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_flexiv_msgs_RobotStates_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Flexiv_msgsRobotStates& out)
        {
            return !roswasmc_bounded_1_flexiv_msgs_RobotStates_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
