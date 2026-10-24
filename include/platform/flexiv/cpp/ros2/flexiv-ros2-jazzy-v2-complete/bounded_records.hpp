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
#include <flexiv/c/ros2/flexiv-ros2-jazzy-v2-complete/bounded_records.h>
#if defined(__clang__)
# pragma clang diagnostic pop
#endif

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
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionGrasp_Goal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal Ros2Flexiv_msgsActionGrasp_Goal;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionGrasp_Result.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result Ros2Flexiv_msgsActionGrasp_Result;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionGrasp_Feedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback Ros2Flexiv_msgsActionGrasp_Feedback;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionMove_Goal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_Move_Goal Ros2Flexiv_msgsActionMove_Goal;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionMove_Result.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_Move_Result Ros2Flexiv_msgsActionMove_Result;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsActionMove_Feedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback Ros2Flexiv_msgsActionMove_Feedback;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgDigital.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_Digital Ros2Flexiv_msgsMsgDigital;
    /**
     * @brief Complete bounded storage for Ros2Flexiv_msgsMsgGPIOStates.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_valid
     */
    typedef roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates Ros2Flexiv_msgsMsgGPIOStates;
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
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgPoseStamped.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_PoseStamped Ros2Geometry_msgsMsgPoseStamped;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgVector3.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Vector3_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Vector3 Ros2Geometry_msgsMsgVector3;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgTwist.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Twist Ros2Geometry_msgsMsgTwist;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgTwistStamped.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_TwistStamped Ros2Geometry_msgsMsgTwistStamped;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgWrench.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Wrench_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Wrench Ros2Geometry_msgsMsgWrench;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgWrenchStamped.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped Ros2Geometry_msgsMsgWrenchStamped;
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
        static size_t const max_wire_bytes = 8;
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
    size_t const RecordMetadata_Ros2Builtin_interfacesMsgTime<T>::max_wire_bytes;
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
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_GOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionGrasp_Goal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Goal>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionGrasp_Goal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_wire_size
         */
        static size_t const max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionGrasp_Goal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionGrasp_Goal<T>::codec_identity =
        "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionGrasp_Goal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionGrasp_Goal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Goal> : RecordMetadata_Ros2Flexiv_msgsActionGrasp_Goal<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Goal>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionGrasp_Goal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionGrasp_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionGrasp_Goal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionGrasp_Goal& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_Grasp_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_RESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionGrasp_Result.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Result>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionGrasp_Result
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionGrasp_Result<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionGrasp_Result<T>::codec_identity =
        "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionGrasp_Result<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionGrasp_Result.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Result> :
        RecordMetadata_Ros2Flexiv_msgsActionGrasp_Result<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Result>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionGrasp_Result transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionGrasp_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionGrasp_Result.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionGrasp_Result& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_Grasp_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_GRASP_FEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionGrasp_Feedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Feedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionGrasp_Feedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_wire_size
         */
        static size_t const max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionGrasp_Feedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionGrasp_Feedback<T>::codec_identity =
        "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionGrasp_Feedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionGrasp_Feedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Feedback> :
        RecordMetadata_Ros2Flexiv_msgsActionGrasp_Feedback<uwvm_custom::Ros2Flexiv_msgsActionGrasp_Feedback>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionGrasp_Feedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionGrasp_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionGrasp_Feedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionGrasp_Feedback& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_Grasp_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_GOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionMove_Goal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Goal>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionMove_Goal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_wire_size
         */
        static size_t const max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionMove_Goal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionMove_Goal<T>::codec_identity =
        "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionMove_Goal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionMove_Goal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Goal> : RecordMetadata_Ros2Flexiv_msgsActionMove_Goal<uwvm_custom::Ros2Flexiv_msgsActionMove_Goal>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionMove_Goal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionMove_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionMove_Goal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionMove_Goal& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_Move_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_RESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionMove_Result.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Result>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionMove_Result
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionMove_Result<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionMove_Result<T>::codec_identity =
        "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionMove_Result<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionMove_Result.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Result> : RecordMetadata_Ros2Flexiv_msgsActionMove_Result<uwvm_custom::Ros2Flexiv_msgsActionMove_Result>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionMove_Result transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionMove_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_Move_Result_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_Move_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_Move_Result_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionMove_Result.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Result_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionMove_Result& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_Move_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_ACTION_MOVE_FEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsActionMove_Feedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Feedback>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsActionMove_Feedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_wire_size
         */
        static size_t const max_wire_bytes = 17;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsActionMove_Feedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsActionMove_Feedback<T>::codec_identity =
        "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsActionMove_Feedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsActionMove_Feedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsActionMove_Feedback> :
        RecordMetadata_Ros2Flexiv_msgsActionMove_Feedback<uwvm_custom::Ros2Flexiv_msgsActionMove_Feedback>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsActionMove_Feedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsActionMove_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsActionMove_Feedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsActionMove_Feedback& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_action_Move_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_DIGITAL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgDigital.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgDigital>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgDigital
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_wire_size
         */
        static size_t const max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgDigital<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgDigital<T>::codec_identity = "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgDigital<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgDigital.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgDigital> : RecordMetadata_Ros2Flexiv_msgsMsgDigital<uwvm_custom::Ros2Flexiv_msgsMsgDigital>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgDigital transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgDigital const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_Digital_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_Digital_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_Digital_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgDigital.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_Digital_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgDigital& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_Digital_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_FLEXIV_MSGS_MSG_GPIOSTATES 1

    /**
     * @brief ODR-safe wire metadata for Ros2Flexiv_msgsMsgGPIOStates.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Flexiv_msgsMsgGPIOStates>
     */
    template <class T>
    struct RecordMetadata_Ros2Flexiv_msgsMsgGPIOStates
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_wire_size
         */
        static size_t const max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgGPIOStates<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgGPIOStates<T>::codec_identity =
        "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Flexiv_msgsMsgGPIOStates<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Flexiv_msgsMsgGPIOStates.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Flexiv_msgsMsgGPIOStates> : RecordMetadata_Ros2Flexiv_msgsMsgGPIOStates<uwvm_custom::Ros2Flexiv_msgsMsgGPIOStates>
    {
        /**
         * @brief Encode all fields of Ros2Flexiv_msgsMsgGPIOStates transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_encode
         */
        static bool encode(uwvm_custom::Ros2Flexiv_msgsMsgGPIOStates const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Flexiv_msgsMsgGPIOStates.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Flexiv_msgsMsgGPIOStates& out)
        {
            return !roswasmc_bounded_2_flexiv_msgs_msg_GPIOStates_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
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
        static size_t const max_wire_bytes = 520;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_JointPosVel_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgJointPosVel<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgJointPosVel<T>::codec_identity =
        "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca";
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
        static constexpr char const* codec_identity = "UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgMode<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgMode<T>::codec_identity = "UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6";
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
        static size_t const max_wire_bytes = 268;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_std_msgs_msg_Header_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Std_msgsMsgHeader<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Std_msgsMsgHeader<T>::codec_identity = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b";
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
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_std_msgs_msg_Header_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_std_msgs_msg_Header_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSESTAMPED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgPoseStamped.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgPoseStamped>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgPoseStamped
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size
         */
        static size_t const max_wire_bytes = 324;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgPoseStamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgPoseStamped<T>::codec_identity =
        "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgPoseStamped<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgPoseStamped.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgPoseStamped> : RecordMetadata_Ros2Geometry_msgsMsgPoseStamped<uwvm_custom::Ros2Geometry_msgsMsgPoseStamped>
    {
        /**
         * @brief Construct the declared defaults of Ros2Geometry_msgsMsgPoseStamped.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_default
         */
        static uwvm_custom::Ros2Geometry_msgsMsgPoseStamped default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Geometry_msgsMsgPoseStamped value = uwvm_custom::Ros2Geometry_msgsMsgPoseStamped();
            (void)roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgPoseStamped transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgPoseStamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgPoseStamped.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgPoseStamped& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_decode(bytes.data(), bytes.size(), &out);
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWIST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgTwist.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgTwist>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgTwist
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size
         */
        static size_t const max_wire_bytes = 48;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgTwist<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgTwist<T>::codec_identity = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgTwist<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgTwist.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgTwist> : RecordMetadata_Ros2Geometry_msgsMsgTwist<uwvm_custom::Ros2Geometry_msgsMsgTwist>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgTwist transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgTwist const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Twist_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Twist_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgTwist.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Twist_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgTwist& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_TWISTSTAMPED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgTwistStamped.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgTwistStamped>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgTwistStamped
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_wire_size
         */
        static size_t const max_wire_bytes = 316;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgTwistStamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgTwistStamped<T>::codec_identity =
        "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgTwistStamped<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgTwistStamped.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgTwistStamped> : RecordMetadata_Ros2Geometry_msgsMsgTwistStamped<uwvm_custom::Ros2Geometry_msgsMsgTwistStamped>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgTwistStamped transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgTwistStamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgTwistStamped.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgTwistStamped& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_TwistStamped_decode(bytes.data(), bytes.size(), &out);
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_WRENCHSTAMPED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgWrenchStamped.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgWrenchStamped>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgWrenchStamped
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size
         */
        static size_t const max_wire_bytes = 316;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Geometry_msgsMsgWrenchStamped<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgWrenchStamped<T>::codec_identity =
        "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgWrenchStamped<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgWrenchStamped.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgWrenchStamped> :
        RecordMetadata_Ros2Geometry_msgsMsgWrenchStamped<uwvm_custom::Ros2Geometry_msgsMsgWrenchStamped>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgWrenchStamped transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgWrenchStamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgWrenchStamped.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgWrenchStamped& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_WrenchStamped_decode(bytes.data(), bytes.size(), &out);
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
        static size_t const max_wire_bytes = 5160;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_flexiv_msgs_msg_RobotStates_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros2Flexiv_msgsMsgRobotStates<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Flexiv_msgsMsgRobotStates<T>::codec_identity =
        "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a";
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
