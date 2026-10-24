/**
 * @file bounded_records.hpp
 * @brief Bind complete original C storage to checked C++ canonical codecs and declared defaults.
 * @details Owned inline fields retain original widths, bounds and units. Encode/decode commit
 * only complete accepted values. Metadata describes a codec and creates no ROS authority.
 */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <ros/cpp/roswasm/roswasmcpp.hpp>
#include <ufactory/c/ros1/ufactory-xarm-ros1-legacy-complete/bounded_records.h>

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
     * @brief Complete bounded storage for Ros1Xarm_msgsIOState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_IOState_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_IOState Ros1Xarm_msgsIOState;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsRobotMsg.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_RobotMsg_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_RobotMsg Ros1Xarm_msgsRobotMsg;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsClearErrRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_ClearErrRequest Ros1Xarm_msgsClearErrRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsClearErrResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_ClearErrResponse Ros1Xarm_msgsClearErrResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetAnalogIORequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest Ros1Xarm_msgsGetAnalogIORequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetAnalogIOResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse Ros1Xarm_msgsGetAnalogIOResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetDigitalIORequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest Ros1Xarm_msgsGetDigitalIORequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsGetDigitalIOResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse Ros1Xarm_msgsGetDigitalIOResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsMoveRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_MoveRequest Ros1Xarm_msgsMoveRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsMoveResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_MoveResponse Ros1Xarm_msgsMoveResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetAxisRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetAxisRequest Ros1Xarm_msgsSetAxisRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetAxisResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetAxisResponse Ros1Xarm_msgsSetAxisResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetDigitalIORequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest Ros1Xarm_msgsSetDigitalIORequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetDigitalIOResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse Ros1Xarm_msgsSetDigitalIOResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetInt16Request.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetInt16Request Ros1Xarm_msgsSetInt16Request;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsSetInt16Response.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_SetInt16Response Ros1Xarm_msgsSetInt16Response;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsTCPOffsetRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest Ros1Xarm_msgsTCPOffsetRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_msgsTCPOffsetResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse Ros1Xarm_msgsTCPOffsetResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerExec_planRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_exec_planRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_exec_planRequest Ros1Xarm_plannerExec_planRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerExec_planResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_exec_planResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_exec_planResponse Ros1Xarm_plannerExec_planResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerJoint_planRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_joint_planRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_joint_planRequest Ros1Xarm_plannerJoint_planRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerJoint_planResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_joint_planResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_joint_planResponse Ros1Xarm_plannerJoint_planResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerPose_planRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_pose_planRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_pose_planRequest Ros1Xarm_plannerPose_planRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerPose_planResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_pose_planResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_pose_planResponse Ros1Xarm_plannerPose_planResponse;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerSingle_straight_planRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_single_straight_planRequest_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_single_straight_planRequest Ros1Xarm_plannerSingle_straight_planRequest;
    /**
     * @brief Complete bounded storage for Ros1Xarm_plannerSingle_straight_planResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_single_straight_planResponse_valid
     */
    typedef roswasmc_bounded_1_xarm_planner_single_straight_planResponse Ros1Xarm_plannerSingle_straight_planResponse;
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_IOSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsIOState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsIOState>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsIOState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_IOState_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_IOState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsIOState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsIOState<T>::codec_identity = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsIOState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsIOState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_IOState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsIOState> : RecordMetadata_Ros1Xarm_msgsIOState<uwvm_custom::Ros1Xarm_msgsIOState>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsIOState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_IOState_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsIOState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_IOState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_IOState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_IOState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsIOState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_IOState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsIOState& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_IOState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_ROBOTMSG 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsRobotMsg.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsRobotMsg>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsRobotMsg
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_RobotMsg_wire_size
         */
        static const size_t max_wire_bytes = 94;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_RobotMsg_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsRobotMsg<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsRobotMsg<T>::codec_identity = "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsRobotMsg<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsRobotMsg.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_RobotMsg_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsRobotMsg> : RecordMetadata_Ros1Xarm_msgsRobotMsg<uwvm_custom::Ros1Xarm_msgsRobotMsg>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsRobotMsg transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_RobotMsg_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsRobotMsg const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_RobotMsg_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_RobotMsg_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_RobotMsg_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsRobotMsg.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_RobotMsg_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsRobotMsg& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_RobotMsg_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsClearErrRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsClearErrRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsClearErrRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErrRequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsClearErrRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsClearErrRequest<T>::codec_identity =
        "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsClearErrRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsClearErrRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_ClearErrRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsClearErrRequest> : RecordMetadata_Ros1Xarm_msgsClearErrRequest<uwvm_custom::Ros1Xarm_msgsClearErrRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsClearErrRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErrRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsClearErrRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_ClearErrRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_ClearErrRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsClearErrRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErrRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsClearErrRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_ClearErrRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_CLEARERRRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsClearErrResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsClearErrResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsClearErrResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErrResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsClearErrResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsClearErrResponse<T>::codec_identity =
        "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsClearErrResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsClearErrResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_ClearErrResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsClearErrResponse> : RecordMetadata_Ros1Xarm_msgsClearErrResponse<uwvm_custom::Ros1Xarm_msgsClearErrResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsClearErrResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErrResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsClearErrResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_ClearErrResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_ClearErrResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsClearErrResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_ClearErrResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsClearErrResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_ClearErrResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIOREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetAnalogIORequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetAnalogIORequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetAnalogIORequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetAnalogIORequest<T>::codec_identity =
        "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetAnalogIORequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetAnalogIORequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest> : RecordMetadata_Ros1Xarm_msgsGetAnalogIORequest<uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetAnalogIORequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetAnalogIORequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetAnalogIORequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETANALOGIORESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetAnalogIOResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetAnalogIOResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_wire_size
         */
        static const size_t max_wire_bytes = 266;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetAnalogIOResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetAnalogIOResponse<T>::codec_identity =
        "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetAnalogIOResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetAnalogIOResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse> : RecordMetadata_Ros1Xarm_msgsGetAnalogIOResponse<uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetAnalogIOResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetAnalogIOResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetAnalogIOResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIOREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetDigitalIORequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetDigitalIORequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_wire_size
         */
        static const size_t max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetDigitalIORequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetDigitalIORequest<T>::codec_identity =
        "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetDigitalIORequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetDigitalIORequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest> : RecordMetadata_Ros1Xarm_msgsGetDigitalIORequest<uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetDigitalIORequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetDigitalIORequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetDigitalIORequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_GETDIGITALIORESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsGetDigitalIOResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsGetDigitalIOResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_wire_size
         */
        static const size_t max_wire_bytes = 270;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsGetDigitalIOResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsGetDigitalIOResponse<T>::codec_identity =
        "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsGetDigitalIOResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsGetDigitalIOResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse> :
        RecordMetadata_Ros1Xarm_msgsGetDigitalIOResponse<uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsGetDigitalIOResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsGetDigitalIOResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsGetDigitalIOResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVEREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsMoveRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsMoveRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_MoveRequest_wire_size
         */
        static const size_t max_wire_bytes = 148;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_MoveRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsMoveRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsMoveRequest<T>::codec_identity = "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsMoveRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsMoveRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsMoveRequest> : RecordMetadata_Ros1Xarm_msgsMoveRequest<uwvm_custom::Ros1Xarm_msgsMoveRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsMoveRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_MoveRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsMoveRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_MoveRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_MoveRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_MoveRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsMoveRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_MoveRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsMoveRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_MoveRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_MOVERESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsMoveResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsMoveResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsMoveResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_MoveResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_MoveResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsMoveResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsMoveResponse<T>::codec_identity = "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsMoveResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsMoveResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_MoveResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsMoveResponse> : RecordMetadata_Ros1Xarm_msgsMoveResponse<uwvm_custom::Ros1Xarm_msgsMoveResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsMoveResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_MoveResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsMoveResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_MoveResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_MoveResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_MoveResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsMoveResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_MoveResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsMoveResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_MoveResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetAxisRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetAxisRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetAxisRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxisRequest_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetAxisRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetAxisRequest<T>::codec_identity =
        "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetAxisRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetAxisRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetAxisRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetAxisRequest> : RecordMetadata_Ros1Xarm_msgsSetAxisRequest<uwvm_custom::Ros1Xarm_msgsSetAxisRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetAxisRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxisRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetAxisRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetAxisRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetAxisRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetAxisRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxisRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetAxisRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetAxisRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETAXISRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetAxisResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetAxisResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetAxisResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxisResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetAxisResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetAxisResponse<T>::codec_identity =
        "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetAxisResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetAxisResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetAxisResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetAxisResponse> : RecordMetadata_Ros1Xarm_msgsSetAxisResponse<uwvm_custom::Ros1Xarm_msgsSetAxisResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetAxisResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxisResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetAxisResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetAxisResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetAxisResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetAxisResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetAxisResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetAxisResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetAxisResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIOREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetDigitalIORequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetDigitalIORequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetDigitalIORequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetDigitalIORequest<T>::codec_identity =
        "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetDigitalIORequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetDigitalIORequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest> : RecordMetadata_Ros1Xarm_msgsSetDigitalIORequest<uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetDigitalIORequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetDigitalIORequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetDigitalIORequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETDIGITALIORESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetDigitalIOResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetDigitalIOResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetDigitalIOResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetDigitalIOResponse<T>::codec_identity =
        "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetDigitalIOResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetDigitalIOResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse> :
        RecordMetadata_Ros1Xarm_msgsSetDigitalIOResponse<uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetDigitalIOResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetDigitalIOResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetDigitalIOResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16REQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetInt16Request.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Request>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetInt16Request
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16Request_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetInt16Request<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetInt16Request<T>::codec_identity =
        "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetInt16Request<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetInt16Request.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetInt16Request_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Request> : RecordMetadata_Ros1Xarm_msgsSetInt16Request<uwvm_custom::Ros1Xarm_msgsSetInt16Request>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetInt16Request transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16Request_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetInt16Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetInt16Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetInt16Request_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetInt16Request.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16Request_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetInt16Request& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetInt16Request_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_SETINT16RESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsSetInt16Response.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Response>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsSetInt16Response
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16Response_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsSetInt16Response<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsSetInt16Response<T>::codec_identity =
        "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsSetInt16Response<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsSetInt16Response.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_SetInt16Response_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsSetInt16Response> : RecordMetadata_Ros1Xarm_msgsSetInt16Response<uwvm_custom::Ros1Xarm_msgsSetInt16Response>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsSetInt16Response transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16Response_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsSetInt16Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_SetInt16Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_SetInt16Response_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsSetInt16Response.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_SetInt16Response_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsSetInt16Response& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_SetInt16Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsTCPOffsetRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsTCPOffsetRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsTCPOffsetRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsTCPOffsetRequest<T>::codec_identity =
        "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsTCPOffsetRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsTCPOffsetRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest> : RecordMetadata_Ros1Xarm_msgsTCPOffsetRequest<uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsTCPOffsetRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsTCPOffsetRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsTCPOffsetRequest& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_MSGS_TCPOFFSETRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_msgsTCPOffsetResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_msgsTCPOffsetResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_wire_size
         */
        static const size_t max_wire_bytes = 262;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_msgsTCPOffsetResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_msgsTCPOffsetResponse<T>::codec_identity =
        "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_msgsTCPOffsetResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_msgsTCPOffsetResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse> : RecordMetadata_Ros1Xarm_msgsTCPOffsetResponse<uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_msgsTCPOffsetResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_msgsTCPOffsetResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_msgsTCPOffsetResponse& out)
        {
            return !roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerExec_planRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerExec_planRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerExec_planRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_exec_planRequest_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_exec_planRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerExec_planRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerExec_planRequest<T>::codec_identity =
        "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerExec_planRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerExec_planRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_exec_planRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerExec_planRequest> : RecordMetadata_Ros1Xarm_plannerExec_planRequest<uwvm_custom::Ros1Xarm_plannerExec_planRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerExec_planRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_exec_planRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerExec_planRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_exec_planRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_exec_planRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_exec_planRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerExec_planRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_exec_planRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerExec_planRequest& out)
        {
            return !roswasmc_bounded_1_xarm_planner_exec_planRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_EXEC_PLANRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerExec_planResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerExec_planResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerExec_planResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_exec_planResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_exec_planResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerExec_planResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerExec_planResponse<T>::codec_identity =
        "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerExec_planResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerExec_planResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_exec_planResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerExec_planResponse> :
        RecordMetadata_Ros1Xarm_plannerExec_planResponse<uwvm_custom::Ros1Xarm_plannerExec_planResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerExec_planResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_exec_planResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerExec_planResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_exec_planResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_exec_planResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_exec_planResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerExec_planResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_exec_planResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerExec_planResponse& out)
        {
            return !roswasmc_bounded_1_xarm_planner_exec_planResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerJoint_planRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerJoint_planRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerJoint_planRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_joint_planRequest_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_joint_planRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerJoint_planRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerJoint_planRequest<T>::codec_identity =
        "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerJoint_planRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerJoint_planRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_joint_planRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerJoint_planRequest> :
        RecordMetadata_Ros1Xarm_plannerJoint_planRequest<uwvm_custom::Ros1Xarm_plannerJoint_planRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerJoint_planRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_joint_planRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerJoint_planRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_joint_planRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_joint_planRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_joint_planRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerJoint_planRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_joint_planRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerJoint_planRequest& out)
        {
            return !roswasmc_bounded_1_xarm_planner_joint_planRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_JOINT_PLANRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerJoint_planResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerJoint_planResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerJoint_planResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_joint_planResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_joint_planResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerJoint_planResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerJoint_planResponse<T>::codec_identity =
        "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerJoint_planResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerJoint_planResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_joint_planResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerJoint_planResponse> :
        RecordMetadata_Ros1Xarm_plannerJoint_planResponse<uwvm_custom::Ros1Xarm_plannerJoint_planResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerJoint_planResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_joint_planResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerJoint_planResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_joint_planResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_joint_planResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_joint_planResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerJoint_planResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_joint_planResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerJoint_planResponse& out)
        {
            return !roswasmc_bounded_1_xarm_planner_joint_planResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerPose_planRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerPose_planRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerPose_planRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_pose_planRequest_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_pose_planRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerPose_planRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerPose_planRequest<T>::codec_identity =
        "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerPose_planRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerPose_planRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_pose_planRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerPose_planRequest> : RecordMetadata_Ros1Xarm_plannerPose_planRequest<uwvm_custom::Ros1Xarm_plannerPose_planRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerPose_planRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_pose_planRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerPose_planRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_pose_planRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_pose_planRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_pose_planRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerPose_planRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_pose_planRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerPose_planRequest& out)
        {
            return !roswasmc_bounded_1_xarm_planner_pose_planRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_POSE_PLANRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerPose_planResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerPose_planResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerPose_planResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_pose_planResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_pose_planResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerPose_planResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerPose_planResponse<T>::codec_identity =
        "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerPose_planResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerPose_planResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_pose_planResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerPose_planResponse> :
        RecordMetadata_Ros1Xarm_plannerPose_planResponse<uwvm_custom::Ros1Xarm_plannerPose_planResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerPose_planResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_pose_planResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerPose_planResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_pose_planResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_pose_planResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_pose_planResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerPose_planResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_pose_planResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerPose_planResponse& out)
        {
            return !roswasmc_bounded_1_xarm_planner_pose_planResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerSingle_straight_planRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerSingle_straight_planRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerSingle_straight_planRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_planRequest_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_single_straight_planRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerSingle_straight_planRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerSingle_straight_planRequest<T>::codec_identity =
        "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerSingle_straight_planRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerSingle_straight_planRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_single_straight_planRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerSingle_straight_planRequest> :
        RecordMetadata_Ros1Xarm_plannerSingle_straight_planRequest<uwvm_custom::Ros1Xarm_plannerSingle_straight_planRequest>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerSingle_straight_planRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_planRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerSingle_straight_planRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_single_straight_planRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_single_straight_planRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_single_straight_planRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerSingle_straight_planRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_planRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerSingle_straight_planRequest& out)
        {
            return !roswasmc_bounded_1_xarm_planner_single_straight_planRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_XARM_PLANNER_SINGLE_STRAIGHT_PLANRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Xarm_plannerSingle_straight_planResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Xarm_plannerSingle_straight_planResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Xarm_plannerSingle_straight_planResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_planResponse_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_xarm_planner_single_straight_planResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Xarm_plannerSingle_straight_planResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Xarm_plannerSingle_straight_planResponse<T>::codec_identity =
        "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Xarm_plannerSingle_straight_planResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Xarm_plannerSingle_straight_planResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_xarm_planner_single_straight_planResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Xarm_plannerSingle_straight_planResponse> :
        RecordMetadata_Ros1Xarm_plannerSingle_straight_planResponse<uwvm_custom::Ros1Xarm_plannerSingle_straight_planResponse>
    {
        /**
         * @brief Encode all fields of Ros1Xarm_plannerSingle_straight_planResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_planResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Xarm_plannerSingle_straight_planResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_xarm_planner_single_straight_planResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_xarm_planner_single_straight_planResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_xarm_planner_single_straight_planResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Xarm_plannerSingle_straight_planResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_xarm_planner_single_straight_planResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Xarm_plannerSingle_straight_planResponse& out)
        {
            return !roswasmc_bounded_1_xarm_planner_single_straight_planResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
