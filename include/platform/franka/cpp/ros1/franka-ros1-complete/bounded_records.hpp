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
#include <franka/c/ros1/franka-ros1-complete/bounded_records.h>
#if defined(__clang__)
# pragma clang diagnostic pop
#endif

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros1Franka_example_controllersJointTorqueComparison.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_valid
     */
    typedef roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison Ros1Franka_example_controllersJointTorqueComparison;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperGraspEpsilon.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_GraspEpsilon_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_GraspEpsilon Ros1Franka_gripperGraspEpsilon;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperGraspGoal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_GraspGoal_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_GraspGoal Ros1Franka_gripperGraspGoal;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperGraspResult.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_GraspResult_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_GraspResult Ros1Franka_gripperGraspResult;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperGraspFeedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_GraspFeedback_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_GraspFeedback Ros1Franka_gripperGraspFeedback;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperHomingGoal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_HomingGoal_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_HomingGoal Ros1Franka_gripperHomingGoal;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperHomingResult.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_HomingResult_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_HomingResult Ros1Franka_gripperHomingResult;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperHomingFeedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_HomingFeedback_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_HomingFeedback Ros1Franka_gripperHomingFeedback;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperMoveGoal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_MoveGoal_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_MoveGoal Ros1Franka_gripperMoveGoal;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperMoveResult.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_MoveResult_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_MoveResult Ros1Franka_gripperMoveResult;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperMoveFeedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_MoveFeedback_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_MoveFeedback Ros1Franka_gripperMoveFeedback;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperStopGoal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_StopGoal_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_StopGoal Ros1Franka_gripperStopGoal;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperStopResult.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_StopResult_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_StopResult Ros1Franka_gripperStopResult;
    /**
     * @brief Complete bounded storage for Ros1Franka_gripperStopFeedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_StopFeedback_valid
     */
    typedef roswasmc_bounded_1_franka_gripper_StopFeedback Ros1Franka_gripperStopFeedback;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsErrorRecoveryGoal.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal Ros1Franka_msgsErrorRecoveryGoal;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsErrorRecoveryResult.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult Ros1Franka_msgsErrorRecoveryResult;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsErrorRecoveryFeedback.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback Ros1Franka_msgsErrorRecoveryFeedback;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsErrors.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_Errors_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_Errors Ros1Franka_msgsErrors;
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
     * @brief Complete bounded storage for Ros1Franka_msgsFrankaState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_FrankaState_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_FrankaState Ros1Franka_msgsFrankaState;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetCartesianImpedanceRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest Ros1Franka_msgsSetCartesianImpedanceRequest;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetCartesianImpedanceResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse Ros1Franka_msgsSetCartesianImpedanceResponse;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetEEFrameRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetEEFrameRequest Ros1Franka_msgsSetEEFrameRequest;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetEEFrameResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetEEFrameResponse Ros1Franka_msgsSetEEFrameResponse;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetFullCollisionBehaviorRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest Ros1Franka_msgsSetFullCollisionBehaviorRequest;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetFullCollisionBehaviorResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse Ros1Franka_msgsSetFullCollisionBehaviorResponse;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetJointImpedanceRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest Ros1Franka_msgsSetJointImpedanceRequest;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetJointImpedanceResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse Ros1Franka_msgsSetJointImpedanceResponse;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetKFrameRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetKFrameRequest_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetKFrameRequest Ros1Franka_msgsSetKFrameRequest;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetKFrameResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetKFrameResponse_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetKFrameResponse Ros1Franka_msgsSetKFrameResponse;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetLoadRequest.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetLoadRequest_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetLoadRequest Ros1Franka_msgsSetLoadRequest;
    /**
     * @brief Complete bounded storage for Ros1Franka_msgsSetLoadResponse.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetLoadResponse_valid
     */
    typedef roswasmc_bounded_1_franka_msgs_SetLoadResponse Ros1Franka_msgsSetLoadResponse;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_EXAMPLE_CONTROLLERS_JOINTTORQUECOMPARISON 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_example_controllersJointTorqueComparison.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_example_controllersJointTorqueComparison>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_example_controllersJointTorqueComparison
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_wire_size
         */
        static size_t const max_wire_bytes = 176;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_example_controllersJointTorqueComparison<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_example_controllersJointTorqueComparison<T>::codec_identity =
        "UWVMROS1_dde6eaf404002642e64af59eb5367948b00bc07c0b2fd8a57e359e9df3084254";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_example_controllersJointTorqueComparison<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_example_controllersJointTorqueComparison.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_example_controllersJointTorqueComparison> :
        RecordMetadata_Ros1Franka_example_controllersJointTorqueComparison<uwvm_custom::Ros1Franka_example_controllersJointTorqueComparison>
    {
        /**
         * @brief Encode all fields of Ros1Franka_example_controllersJointTorqueComparison transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_example_controllersJointTorqueComparison const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_example_controllersJointTorqueComparison.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_example_controllersJointTorqueComparison& out)
        {
            return !roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPEPSILON 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperGraspEpsilon.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperGraspEpsilon>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperGraspEpsilon
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_GraspEpsilon_wire_size
         */
        static size_t const max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_GraspEpsilon_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperGraspEpsilon<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperGraspEpsilon<T>::codec_identity =
        "UWVMROS1_538ac801e9874841f232909d2d9a16893a8d29c8380cd623c00c408690f978f9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperGraspEpsilon<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperGraspEpsilon.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_GraspEpsilon_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperGraspEpsilon> : RecordMetadata_Ros1Franka_gripperGraspEpsilon<uwvm_custom::Ros1Franka_gripperGraspEpsilon>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperGraspEpsilon transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_GraspEpsilon_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperGraspEpsilon const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_GraspEpsilon_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_GraspEpsilon_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_GraspEpsilon_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperGraspEpsilon.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_GraspEpsilon_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperGraspEpsilon& out)
        {
            return !roswasmc_bounded_1_franka_gripper_GraspEpsilon_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPGOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperGraspGoal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperGraspGoal>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperGraspGoal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_GraspGoal_wire_size
         */
        static size_t const max_wire_bytes = 40;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_GraspGoal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperGraspGoal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperGraspGoal<T>::codec_identity =
        "UWVMROS1_d3dd0d3f47e49e06a95d907a6219335b35234749518ab645e102257595ed7bcf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperGraspGoal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperGraspGoal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_GraspGoal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperGraspGoal> : RecordMetadata_Ros1Franka_gripperGraspGoal<uwvm_custom::Ros1Franka_gripperGraspGoal>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperGraspGoal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_GraspGoal_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperGraspGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_GraspGoal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_GraspGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_GraspGoal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperGraspGoal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_GraspGoal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperGraspGoal& out)
        {
            return !roswasmc_bounded_1_franka_gripper_GraspGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPRESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperGraspResult.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperGraspResult>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperGraspResult
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_GraspResult_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_GraspResult_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperGraspResult<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperGraspResult<T>::codec_identity =
        "UWVMROS1_9ce1e4f95f16fd6c1603f0b30a9fcc33e4f8436cdb96710ea91eb20b38a1e02e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperGraspResult<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperGraspResult.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_GraspResult_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperGraspResult> : RecordMetadata_Ros1Franka_gripperGraspResult<uwvm_custom::Ros1Franka_gripperGraspResult>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperGraspResult transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_GraspResult_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperGraspResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_GraspResult_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_GraspResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_GraspResult_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperGraspResult.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_GraspResult_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperGraspResult& out)
        {
            return !roswasmc_bounded_1_franka_gripper_GraspResult_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_GRASPFEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperGraspFeedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperGraspFeedback>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperGraspFeedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_GraspFeedback_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_GraspFeedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperGraspFeedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperGraspFeedback<T>::codec_identity =
        "UWVMROS1_24ca23625df0bd9fb984e65c8ecd7a3af162a3db00c15951225df5e18d3a4d0d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperGraspFeedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperGraspFeedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_GraspFeedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperGraspFeedback> : RecordMetadata_Ros1Franka_gripperGraspFeedback<uwvm_custom::Ros1Franka_gripperGraspFeedback>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperGraspFeedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_GraspFeedback_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperGraspFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_GraspFeedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_GraspFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_GraspFeedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperGraspFeedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_GraspFeedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperGraspFeedback& out)
        {
            return !roswasmc_bounded_1_franka_gripper_GraspFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGGOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperHomingGoal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperHomingGoal>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperHomingGoal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_HomingGoal_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_HomingGoal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperHomingGoal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperHomingGoal<T>::codec_identity =
        "UWVMROS1_4b4f861fa9ff44afda4217cf613720e90353b0d43c1fc3425d5937157353910f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperHomingGoal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperHomingGoal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_HomingGoal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperHomingGoal> : RecordMetadata_Ros1Franka_gripperHomingGoal<uwvm_custom::Ros1Franka_gripperHomingGoal>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperHomingGoal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_HomingGoal_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperHomingGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_HomingGoal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_HomingGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_HomingGoal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperHomingGoal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_HomingGoal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperHomingGoal& out)
        {
            return !roswasmc_bounded_1_franka_gripper_HomingGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGRESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperHomingResult.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperHomingResult>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperHomingResult
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_HomingResult_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_HomingResult_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperHomingResult<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperHomingResult<T>::codec_identity =
        "UWVMROS1_1ddf202b4e7dbf100d304b4eb32aa0ce8dca6ffadcf720820f2d7932af056477";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperHomingResult<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperHomingResult.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_HomingResult_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperHomingResult> : RecordMetadata_Ros1Franka_gripperHomingResult<uwvm_custom::Ros1Franka_gripperHomingResult>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperHomingResult transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_HomingResult_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperHomingResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_HomingResult_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_HomingResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_HomingResult_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperHomingResult.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_HomingResult_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperHomingResult& out)
        {
            return !roswasmc_bounded_1_franka_gripper_HomingResult_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_HOMINGFEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperHomingFeedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperHomingFeedback>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperHomingFeedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_HomingFeedback_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_HomingFeedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperHomingFeedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperHomingFeedback<T>::codec_identity =
        "UWVMROS1_4a1118d8ab544b2bc99ff878356aae49b4d3ecb4cb5ba7e2f93f7c0c7a29512e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperHomingFeedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperHomingFeedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_HomingFeedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperHomingFeedback> : RecordMetadata_Ros1Franka_gripperHomingFeedback<uwvm_custom::Ros1Franka_gripperHomingFeedback>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperHomingFeedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_HomingFeedback_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperHomingFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_HomingFeedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_HomingFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_HomingFeedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperHomingFeedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_HomingFeedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperHomingFeedback& out)
        {
            return !roswasmc_bounded_1_franka_gripper_HomingFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEGOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperMoveGoal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperMoveGoal>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperMoveGoal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_MoveGoal_wire_size
         */
        static size_t const max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_MoveGoal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperMoveGoal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperMoveGoal<T>::codec_identity =
        "UWVMROS1_c83296f2540854e78cc159691c229f5d50267b3fdb31789e325a55fcd7d6830a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperMoveGoal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperMoveGoal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_MoveGoal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperMoveGoal> : RecordMetadata_Ros1Franka_gripperMoveGoal<uwvm_custom::Ros1Franka_gripperMoveGoal>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperMoveGoal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_MoveGoal_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperMoveGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_MoveGoal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_MoveGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_MoveGoal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperMoveGoal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_MoveGoal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperMoveGoal& out)
        {
            return !roswasmc_bounded_1_franka_gripper_MoveGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVERESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperMoveResult.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperMoveResult>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperMoveResult
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_MoveResult_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_MoveResult_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperMoveResult<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperMoveResult<T>::codec_identity =
        "UWVMROS1_527adf0720dabcc91866a0858cddfbfae1ed4203d4eb34a3965ebe085d0ac3b3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperMoveResult<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperMoveResult.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_MoveResult_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperMoveResult> : RecordMetadata_Ros1Franka_gripperMoveResult<uwvm_custom::Ros1Franka_gripperMoveResult>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperMoveResult transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_MoveResult_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperMoveResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_MoveResult_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_MoveResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_MoveResult_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperMoveResult.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_MoveResult_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperMoveResult& out)
        {
            return !roswasmc_bounded_1_franka_gripper_MoveResult_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_MOVEFEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperMoveFeedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperMoveFeedback>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperMoveFeedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_MoveFeedback_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_MoveFeedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperMoveFeedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperMoveFeedback<T>::codec_identity =
        "UWVMROS1_8e02ca1d66ae38a5d71ca5f708aa2c57bb3df573d37b692e24986dba384c5f80";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperMoveFeedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperMoveFeedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_MoveFeedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperMoveFeedback> : RecordMetadata_Ros1Franka_gripperMoveFeedback<uwvm_custom::Ros1Franka_gripperMoveFeedback>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperMoveFeedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_MoveFeedback_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperMoveFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_MoveFeedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_MoveFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_MoveFeedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperMoveFeedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_MoveFeedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperMoveFeedback& out)
        {
            return !roswasmc_bounded_1_franka_gripper_MoveFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPGOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperStopGoal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperStopGoal>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperStopGoal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_StopGoal_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_StopGoal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperStopGoal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperStopGoal<T>::codec_identity =
        "UWVMROS1_ecb09ccc03cb2140a457a11c174a614392ce1f9263e46c5b82427a99f7ff0245";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperStopGoal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperStopGoal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_StopGoal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperStopGoal> : RecordMetadata_Ros1Franka_gripperStopGoal<uwvm_custom::Ros1Franka_gripperStopGoal>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperStopGoal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_StopGoal_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperStopGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_StopGoal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_StopGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_StopGoal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperStopGoal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_StopGoal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperStopGoal& out)
        {
            return !roswasmc_bounded_1_franka_gripper_StopGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPRESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperStopResult.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperStopResult>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperStopResult
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_StopResult_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_StopResult_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperStopResult<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperStopResult<T>::codec_identity =
        "UWVMROS1_343e16d9b839b61ed8f8c1ce93005cb3a21511a220095200eb075dfb62a40c61";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperStopResult<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperStopResult.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_StopResult_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperStopResult> : RecordMetadata_Ros1Franka_gripperStopResult<uwvm_custom::Ros1Franka_gripperStopResult>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperStopResult transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_StopResult_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperStopResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_StopResult_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_StopResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_StopResult_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperStopResult.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_StopResult_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperStopResult& out)
        {
            return !roswasmc_bounded_1_franka_gripper_StopResult_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_GRIPPER_STOPFEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_gripperStopFeedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_gripperStopFeedback>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_gripperStopFeedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_gripper_StopFeedback_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_gripper_StopFeedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_gripperStopFeedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_gripperStopFeedback<T>::codec_identity =
        "UWVMROS1_62b637081e95f59df491f71b0ca84394a7e1f36137ca389a8f6d0d3a0f19038d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_gripperStopFeedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_gripperStopFeedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_gripper_StopFeedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_gripperStopFeedback> : RecordMetadata_Ros1Franka_gripperStopFeedback<uwvm_custom::Ros1Franka_gripperStopFeedback>
    {
        /**
         * @brief Encode all fields of Ros1Franka_gripperStopFeedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_gripper_StopFeedback_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_gripperStopFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_gripper_StopFeedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_gripper_StopFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_gripper_StopFeedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_gripperStopFeedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_gripper_StopFeedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_gripperStopFeedback& out)
        {
            return !roswasmc_bounded_1_franka_gripper_StopFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYGOAL 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsErrorRecoveryGoal.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsErrorRecoveryGoal>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsErrorRecoveryGoal
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsErrorRecoveryGoal<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsErrorRecoveryGoal<T>::codec_identity =
        "UWVMROS1_b4f11555bc4919bf59aa548bd21046bdc7b1e2ed5cce6dc46298eb7486ef7b64";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsErrorRecoveryGoal<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsErrorRecoveryGoal.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsErrorRecoveryGoal> : RecordMetadata_Ros1Franka_msgsErrorRecoveryGoal<uwvm_custom::Ros1Franka_msgsErrorRecoveryGoal>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsErrorRecoveryGoal transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsErrorRecoveryGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsErrorRecoveryGoal.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsErrorRecoveryGoal& out)
        {
            return !roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYRESULT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsErrorRecoveryResult.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsErrorRecoveryResult>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsErrorRecoveryResult
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsErrorRecoveryResult<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsErrorRecoveryResult<T>::codec_identity =
        "UWVMROS1_6f06297f59f06dc46e3f983b72101ae3c25cd054bca44cea1f6dd11a9aaa7794";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsErrorRecoveryResult<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsErrorRecoveryResult.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsErrorRecoveryResult> :
        RecordMetadata_Ros1Franka_msgsErrorRecoveryResult<uwvm_custom::Ros1Franka_msgsErrorRecoveryResult>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsErrorRecoveryResult transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsErrorRecoveryResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsErrorRecoveryResult.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsErrorRecoveryResult& out)
        {
            return !roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORRECOVERYFEEDBACK 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsErrorRecoveryFeedback.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsErrorRecoveryFeedback>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsErrorRecoveryFeedback
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_wire_size
         */
        static size_t const max_wire_bytes = 0;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsErrorRecoveryFeedback<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsErrorRecoveryFeedback<T>::codec_identity =
        "UWVMROS1_3faee6d8afdc0524598cec0fe30fd51bd723e8e44849f035368723e59be87a21";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsErrorRecoveryFeedback<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsErrorRecoveryFeedback.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsErrorRecoveryFeedback> :
        RecordMetadata_Ros1Franka_msgsErrorRecoveryFeedback<uwvm_custom::Ros1Franka_msgsErrorRecoveryFeedback>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsErrorRecoveryFeedback transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsErrorRecoveryFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsErrorRecoveryFeedback.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsErrorRecoveryFeedback& out)
        {
            return !roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_ERRORS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsErrors.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsErrors>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsErrors
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_Errors_wire_size
         */
        static size_t const max_wire_bytes = 41;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_Errors_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsErrors<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsErrors<T>::codec_identity = "UWVMROS1_80e3d1157d53bf80d4db3621f9f22b35a1ef665382974599ff016709c6a629ca";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsErrors<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsErrors.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_Errors_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsErrors> : RecordMetadata_Ros1Franka_msgsErrors<uwvm_custom::Ros1Franka_msgsErrors>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsErrors transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_Errors_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsErrors const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_Errors_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_Errors_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_Errors_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsErrors.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_Errors_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsErrors& out)
        {
            return !roswasmc_bounded_1_franka_msgs_Errors_decode(bytes.data(), bytes.size(), &out);
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
        static size_t const max_wire_bytes = 8;
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
    size_t const RecordMetadata_Ros1Time<T>::max_wire_bytes;
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
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_time_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_time_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
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
        static size_t const max_wire_bytes = 144;
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
    size_t const RecordMetadata_Ros1Std_msgsHeader<T>::max_wire_bytes;
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
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_std_msgs_Header_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_Header_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
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
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_FRANKASTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsFrankaState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsFrankaState>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsFrankaState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_FrankaState_wire_size
         */
        static size_t const max_wire_bytes = 2619;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_FrankaState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsFrankaState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsFrankaState<T>::codec_identity =
        "UWVMROS1_79f22f36ce2c11f519ee29e65a248ec1b67240e27712b2667e9b803a2562ee71";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsFrankaState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsFrankaState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_FrankaState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsFrankaState> : RecordMetadata_Ros1Franka_msgsFrankaState<uwvm_custom::Ros1Franka_msgsFrankaState>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsFrankaState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_FrankaState_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsFrankaState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_FrankaState_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_FrankaState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_FrankaState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsFrankaState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_FrankaState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsFrankaState& out)
        {
            return !roswasmc_bounded_1_franka_msgs_FrankaState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCEREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetCartesianImpedanceRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetCartesianImpedanceRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetCartesianImpedanceRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_wire_size
         */
        static size_t const max_wire_bytes = 48;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetCartesianImpedanceRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetCartesianImpedanceRequest<T>::codec_identity =
        "UWVMROS1_ff604aae9ab1ef36b5af107966e64ee2115ee17618a4ece6f15997c889cacbdf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetCartesianImpedanceRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetCartesianImpedanceRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetCartesianImpedanceRequest> :
        RecordMetadata_Ros1Franka_msgsSetCartesianImpedanceRequest<uwvm_custom::Ros1Franka_msgsSetCartesianImpedanceRequest>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetCartesianImpedanceRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetCartesianImpedanceRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetCartesianImpedanceRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetCartesianImpedanceRequest& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETCARTESIANIMPEDANCERESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetCartesianImpedanceResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetCartesianImpedanceResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetCartesianImpedanceResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetCartesianImpedanceResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetCartesianImpedanceResponse<T>::codec_identity =
        "UWVMROS1_b091d2fe98c84528460ba3d84524c38355e725c161456edf0034e62c6f63ab5b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetCartesianImpedanceResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetCartesianImpedanceResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetCartesianImpedanceResponse> :
        RecordMetadata_Ros1Franka_msgsSetCartesianImpedanceResponse<uwvm_custom::Ros1Franka_msgsSetCartesianImpedanceResponse>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetCartesianImpedanceResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetCartesianImpedanceResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetCartesianImpedanceResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetCartesianImpedanceResponse& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMEREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetEEFrameRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetEEFrameRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetEEFrameRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_wire_size
         */
        static size_t const max_wire_bytes = 128;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetEEFrameRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetEEFrameRequest<T>::codec_identity =
        "UWVMROS1_1bc740d3998a14dd6c0604d5024ebda2b4916a8497950841b14a8073c6c1ecfc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetEEFrameRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetEEFrameRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetEEFrameRequest> : RecordMetadata_Ros1Franka_msgsSetEEFrameRequest<uwvm_custom::Ros1Franka_msgsSetEEFrameRequest>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetEEFrameRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetEEFrameRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetEEFrameRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetEEFrameRequest& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETEEFRAMERESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetEEFrameResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetEEFrameResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetEEFrameResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetEEFrameResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetEEFrameResponse<T>::codec_identity =
        "UWVMROS1_b40c9595d57d6ed52ea4eca78e21f2c3d81f5a0afaad2420511211931f7d1c67";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetEEFrameResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetEEFrameResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetEEFrameResponse> :
        RecordMetadata_Ros1Franka_msgsSetEEFrameResponse<uwvm_custom::Ros1Franka_msgsSetEEFrameResponse>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetEEFrameResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetEEFrameResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetEEFrameResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetEEFrameResponse& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_wire_size
         */
        static size_t const max_wire_bytes = 208;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest<T>::codec_identity =
        "UWVMROS1_2513f0ea74bf6a871a85ce00c0f822891f2c0bed890b87e35d25a637aa62c4b5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest> :
        RecordMetadata_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest<uwvm_custom::Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest
         * transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFORCETORQUECOLLISIONBEHAVIORRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse<T>::codec_identity =
        "UWVMROS1_72418d73d504ae385d7ddce7e3cef859a104346dbfea7fc9da82e0f7e33ca2f5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse> :
        RecordMetadata_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse<uwvm_custom::Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse
         * transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) ||
               used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetFullCollisionBehaviorRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetFullCollisionBehaviorRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetFullCollisionBehaviorRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_wire_size
         */
        static size_t const max_wire_bytes = 416;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetFullCollisionBehaviorRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetFullCollisionBehaviorRequest<T>::codec_identity =
        "UWVMROS1_47a86620ec5abdd6cc820b095d8f5f4214c1d9af00ac1ff0740137bbdda7217c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetFullCollisionBehaviorRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetFullCollisionBehaviorRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetFullCollisionBehaviorRequest> :
        RecordMetadata_Ros1Franka_msgsSetFullCollisionBehaviorRequest<uwvm_custom::Ros1Franka_msgsSetFullCollisionBehaviorRequest>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetFullCollisionBehaviorRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetFullCollisionBehaviorRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetFullCollisionBehaviorRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetFullCollisionBehaviorRequest& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETFULLCOLLISIONBEHAVIORRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetFullCollisionBehaviorResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetFullCollisionBehaviorResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetFullCollisionBehaviorResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetFullCollisionBehaviorResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetFullCollisionBehaviorResponse<T>::codec_identity =
        "UWVMROS1_26f46e286c42d51a8ef45db7c8b3bf315fb02faf7b2be5d3741563d43169a0e2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetFullCollisionBehaviorResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetFullCollisionBehaviorResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetFullCollisionBehaviorResponse> :
        RecordMetadata_Ros1Franka_msgsSetFullCollisionBehaviorResponse<uwvm_custom::Ros1Franka_msgsSetFullCollisionBehaviorResponse>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetFullCollisionBehaviorResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetFullCollisionBehaviorResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetFullCollisionBehaviorResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetFullCollisionBehaviorResponse& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCEREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetJointImpedanceRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetJointImpedanceRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetJointImpedanceRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_wire_size
         */
        static size_t const max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetJointImpedanceRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetJointImpedanceRequest<T>::codec_identity =
        "UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetJointImpedanceRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetJointImpedanceRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetJointImpedanceRequest> :
        RecordMetadata_Ros1Franka_msgsSetJointImpedanceRequest<uwvm_custom::Ros1Franka_msgsSetJointImpedanceRequest>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetJointImpedanceRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetJointImpedanceRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetJointImpedanceRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetJointImpedanceRequest& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETJOINTIMPEDANCERESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetJointImpedanceResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetJointImpedanceResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetJointImpedanceResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetJointImpedanceResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetJointImpedanceResponse<T>::codec_identity =
        "UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetJointImpedanceResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetJointImpedanceResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetJointImpedanceResponse> :
        RecordMetadata_Ros1Franka_msgsSetJointImpedanceResponse<uwvm_custom::Ros1Franka_msgsSetJointImpedanceResponse>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetJointImpedanceResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetJointImpedanceResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetJointImpedanceResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetJointImpedanceResponse& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMEREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetKFrameRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetKFrameRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetKFrameRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetKFrameRequest_wire_size
         */
        static size_t const max_wire_bytes = 128;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetKFrameRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetKFrameRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetKFrameRequest<T>::codec_identity =
        "UWVMROS1_36afcdc6402259fb5a71ae1b27be0bb8623a64dd93caffa376adea7862c86446";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetKFrameRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetKFrameRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetKFrameRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetKFrameRequest> : RecordMetadata_Ros1Franka_msgsSetKFrameRequest<uwvm_custom::Ros1Franka_msgsSetKFrameRequest>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetKFrameRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetKFrameRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetKFrameRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetKFrameRequest_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetKFrameRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetKFrameRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetKFrameRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetKFrameRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetKFrameRequest& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetKFrameRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETKFRAMERESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetKFrameResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetKFrameResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetKFrameResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetKFrameResponse_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetKFrameResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetKFrameResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetKFrameResponse<T>::codec_identity =
        "UWVMROS1_4ea77d3e827a9b9eaf3c3f9805f78c38bfe91789555d0469cffd4ff4266cd443";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetKFrameResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetKFrameResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetKFrameResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetKFrameResponse> : RecordMetadata_Ros1Franka_msgsSetKFrameResponse<uwvm_custom::Ros1Franka_msgsSetKFrameResponse>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetKFrameResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetKFrameResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetKFrameResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetKFrameResponse_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetKFrameResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetKFrameResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetKFrameResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetKFrameResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetKFrameResponse& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetKFrameResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADREQUEST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetLoadRequest.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetLoadRequest>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetLoadRequest
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetLoadRequest_wire_size
         */
        static size_t const max_wire_bytes = 104;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetLoadRequest_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetLoadRequest<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetLoadRequest<T>::codec_identity =
        "UWVMROS1_d7c08dd9105cb7b83cb251e80c7d2dd1e9f7bb2a43f614bff6d00d808cccbcb5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetLoadRequest<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetLoadRequest.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetLoadRequest_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetLoadRequest> : RecordMetadata_Ros1Franka_msgsSetLoadRequest<uwvm_custom::Ros1Franka_msgsSetLoadRequest>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetLoadRequest transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetLoadRequest_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetLoadRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetLoadRequest_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetLoadRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetLoadRequest_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetLoadRequest.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetLoadRequest_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetLoadRequest& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetLoadRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_FRANKA_MSGS_SETLOADRESPONSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Franka_msgsSetLoadResponse.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Franka_msgsSetLoadResponse>
     */
    template <class T>
    struct RecordMetadata_Ros1Franka_msgsSetLoadResponse
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_franka_msgs_SetLoadResponse_wire_size
         */
        static size_t const max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_franka_msgs_SetLoadResponse_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3";
# endif
    };
    template <class T>
    size_t const RecordMetadata_Ros1Franka_msgsSetLoadResponse<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Franka_msgsSetLoadResponse<T>::codec_identity =
        "UWVMROS1_f18952407bf9e2813deeaa3734a781e90b74cb79892919c1218812ad71255cf3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Franka_msgsSetLoadResponse<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Franka_msgsSetLoadResponse.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_franka_msgs_SetLoadResponse_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Franka_msgsSetLoadResponse> : RecordMetadata_Ros1Franka_msgsSetLoadResponse<uwvm_custom::Ros1Franka_msgsSetLoadResponse>
    {
        /**
         * @brief Encode all fields of Ros1Franka_msgsSetLoadResponse transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_franka_msgs_SetLoadResponse_encode
         */
        static bool encode(uwvm_custom::Ros1Franka_msgsSetLoadResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_franka_msgs_SetLoadResponse_valid(&value))
            {
                return false;
            }
            size_t n = roswasmc_bounded_1_franka_msgs_SetLoadResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_franka_msgs_SetLoadResponse_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
            {
                return false;
            }
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Franka_msgsSetLoadResponse.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_franka_msgs_SetLoadResponse_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Franka_msgsSetLoadResponse& out)
        {
            return !roswasmc_bounded_1_franka_msgs_SetLoadResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
